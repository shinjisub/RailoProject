package com.test.controller;

import java.util.ArrayList;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.test.mybatis.Criteria;
import com.test.mybatis.FileBean;
import com.test.mybatis.PageMaker;
import com.test.mybatis.Railo;
import com.test.mybatis.RailoDAOService;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class RailoController
{

	@Autowired
	private RailoDAOService railoDAOService;

	private static final Logger logger = LoggerFactory.getLogger(RailoController.class);

	// 메인
	@RequestMapping(value = "/main", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView main(Locale locale, Model model, HttpServletRequest request, Criteria cri)
	{
		logger.info("Welcome main.", locale);

		// view 화면인 main.jsp에 DB로부터 읽어온 데이터를 보여준다.
		ModelAndView result = new ModelAndView();
		PageMaker pageMaker = new PageMaker();

		// 추천정보 리스트

		ArrayList<Railo> infolist = railoDAOService.info_list();

		result.addObject("infolist", infolist);

		// 문의 목록 리스트 ArrayList<Railo>
		cri.setPerPageNum(5);// 페이지에 띄울 게시물 수
		String searchType = request.getParameter("searchType");// 셀렉박스 값
		String keyword = request.getParameter("keyword");// 검색값
		cri.setSearchType(searchType); // cri에 셀렉박스값 넣기
		cri.setKeyword(keyword);
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(railoDAOService.getlistnum(cri));

		ArrayList<Railo> queslist = railoDAOService.ques_list2(cri);
		result.addObject("queslist", queslist);
		result.addObject("pageMaker", pageMaker);
		result.setViewName("railomain");
		return result;
	}

	@RequestMapping(value = "/infolist", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView infolist(HttpServletRequest request, Criteria cri)
	{
		ModelAndView result = new ModelAndView();
		PageMaker pageMaker = new PageMaker();

		cri.setPerPageNum(5);// 페이지에 띄울 게시물 수

		String searchType = request.getParameter("searchType");// 셀렉박스 값
		String keyword = request.getParameter("keyword");// 검색값
		cri.setSearchType(searchType); // cri에 셀렉박스값 넣기
		cri.setKeyword(keyword);

		pageMaker.setCri(cri);
		pageMaker.setTotalCount(railoDAOService.infogetlistnum(cri));

		ArrayList<Railo> list = railoDAOService.info_list2(cri);

		result.addObject("list", list);
		result.addObject("pageMaker", pageMaker);
		
		
		HttpSession session = request.getSession();
		String admin_id = (String) session.getAttribute("admin_id");

		// --관리자 아이디 비번 확인 부분 id,pw =(1)로 반환
		if (admin_id != null)
		{
			result.setViewName("admin_infolist");
		} else
			result.setViewName("admin_login");
		
		
		
		return result;
	}

	// --추정정보 삭제Controller
	@RequestMapping(value = "/admin_info_delete", method = RequestMethod.GET)
	public ModelAndView admin_info_delete(HttpServletRequest request)
	{
		ModelAndView result = new ModelAndView();
		String info_num = request.getParameter("info_num");

		railoDAOService.info_delete(info_num);

		result.setViewName("redirect:infolist");
		return result;
	}

	// 문의 입력
	@RequestMapping(value = "/quesinsertcheck", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json; charset=utf-8")
	public ModelAndView quesinsert(Locale locale, @ModelAttribute Railo railo)
	{
		logger.info("Welcome main.", locale);

		// view 화면인 main.jsp에 DB로부터 읽어온 데이터를 보여준다.
		ModelAndView result = new ModelAndView();
		/*
		 * System.out.println(railo.getQues_cont());
		 * System.out.println(railo.getQues_title());
		 * System.out.println(railo.getNic());
		 */

		railoDAOService.ques_insert(railo);

		result.setViewName("redirect:main");

		return result;
	}

	// 문의 보기
	@RequestMapping(value = "/search", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView detailajax(String ques_num)
	{
		ModelAndView result = new ModelAndView();
		Railo rail = railoDAOService.ques_data(ques_num);

		result.addObject("rail", rail);
		/*
		 * System.out.println(rail.getQues_cont());
		 * System.out.println(rail.getQues_date());
		 * System.out.println(rail.getNic());
		 * System.out.println(rail.getQues_title());
		 */

		result.setViewName("detailAjax");

		return result;
	}

	// 조회수 증가
	@RequestMapping(value = "/countup", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json; charset=utf-8")
	public ModelAndView infocount(String info_num)
	{
		// view 화면인 main.jsp에 DB로부터 읽어온 데이터를 보여준다.
		ModelAndView result = new ModelAndView();
		/*
		 * System.out.println(railo.getQues_cont());
		 * System.out.println(railo.getQues_title());
		 * System.out.println(railo.getNic());
		 */

		railoDAOService.info_count(info_num);
		return result;
	}

	// 관리자
	@RequestMapping(value = "/admin", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView adminview(Locale locale, Model model, HttpServletRequest request)
	{
		ModelAndView result = new ModelAndView();
		logger.info("Welcome main.", locale);
		HttpSession session = request.getSession();
		String admin_id = (String) session.getAttribute("admin_id");
		System.out.println("괸리자 id"+admin_id);

		// --관리자 아이디 비번 확인 부분 id,pw =(1)로 반환
		if (admin_id != null)
		{
			result.setViewName("/adminView");
		} else
			result.setViewName("redirect:admin_login");

		return result;
	}

	@RequestMapping(value = "/admin_login", method = { RequestMethod.GET, RequestMethod.POST })
	public String admin_login(Locale locale, Model model, HttpServletRequest request)
	{

		return "/admin_login";
	}

	// 로그 아웃
	@RequestMapping(value = "/admin_logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(Locale locale, Model model, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		System.out.println("로그아웃");
		session.setAttribute("admin_id", null);

		return "/admin_login";
	}

	// 로그인 체크Controller
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login_check(Locale locale, Model model, HttpServletRequest request)
	{
		Railo railo = new Railo();
		String admin_id = request.getParameter("id");
		String admin_pw = request.getParameter("password");
		railo.setAdmin_id(admin_id);
		railo.setAdmin_pw(admin_pw);
		int count = railoDAOService.admin_login(railo);

		String result = "";
		if (count > 0)
		{
			System.out.println("로그인 성공");
			result = "adminView";
			HttpSession session = request.getSession();
			session.setAttribute("admin_id", admin_id);
			session.setMaxInactiveInterval(60 * 60);
		} else
		{
			System.out.println("로그인 실패");
			result = "/admin_login";
		}

		return result;
	}

	// 추천정보 입력 페이지
	@RequestMapping(value = "/infoinsertform", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json; charset=utf-8")
	public String infoinsertform(Locale locale, Model model, HttpServletRequest request)
	{
		logger.info("Welcome main.", locale);

		String result = "";

		HttpSession session = request.getSession();

		String admin_id = (String) session.getAttribute("admin_id");

		if (admin_id != null)
		{
			result = "infoinsertform";
		} else
			result = "redirect:admin_login";

		return result;
	}

	@RequestMapping(value = "/infoupdateform", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json; charset=utf-8")
	public ModelAndView infoupdateform(Locale locale, Model model, String info_num, HttpServletRequest request)
	{
		logger.info("Welcome main.", locale);

		Railo railo = new Railo();

		railo = railoDAOService.info_data(info_num);

		String cont = railo.getInfo_cont().replaceAll("\r\n", "");

		railo.setInfo_cont(cont);
		railo.setInfo_num(info_num);
		ModelAndView result = new ModelAndView();

		HttpSession session = request.getSession();
		String admin_id = (String) session.getAttribute("admin_id");

		// --관리자 아이디 비번 확인 부분 id,pw =(1)로 반환
		if (admin_id != null)
		{
			result.setViewName("infoupdateform");
		} else
			result.setViewName("redirect:admin_login");

		result.addObject("railo", railo);

		return result;
	}

	// 추천정보 수정
	@RequestMapping(value = "/infoupdatecheck", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json; charset=utf-8")
	public ModelAndView infoupdate(Locale locale, @ModelAttribute Railo railo)
	{
		logger.info("Welcome main.", locale);

		// view 화면인 main.jsp에 DB로부터 읽어온 데이터를 보여준다.
		ModelAndView result = new ModelAndView();

		int start = 0;
		int end = 0;
		String cont = railo.getInfo_cont();
		System.out.println(railo.getInfo_num());
		System.out.println(railo.getInfo_code());
		System.out.println(railo.getInfo_cont());
		System.out.println(railo.getInfo_title());
		System.out.println(railo.getStation_code());
		start = cont.indexOf("/mybatis4/");
		// System.out.println("미리보기 시작지점"+start);

		end = cont.indexOf("style") - 2;

		// System.out.println("미리보기 끝지점"+end);
		String image = cont.substring(start, end) + "";
		System.out.println("미리보기 이미지" + image);
		railo.setImage(image);
		System.out.println("정보유형코드" + railo.getInfo_code());

		System.out.println("정보만 입력");
		railoDAOService.info_update(railo);

		result.setViewName("redirect:infolist");

		return result;
	}

	// 추천정보 입력
	@RequestMapping(value = "/infoinsertcheck", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json; charset=utf-8")
	public ModelAndView infoinsert(Locale locale, @ModelAttribute Railo railo)
	{
		logger.info("Welcome main.", locale);

		// view 화면인 main.jsp에 DB로부터 읽어온 데이터를 보여준다.
		ModelAndView result = new ModelAndView();

		int start = 0;
		int end = 0;
		String cont = railo.getInfo_cont();
		start = cont.indexOf("/mybatis4/");
		// System.out.println("미리보기 시작지점"+start);

		end = cont.indexOf("style") - 2;

		// System.out.println("미리보기 끝지점"+end);
		String image = cont.substring(start, end) + "";
		System.out.println("미리보기 이미지" + image);
		railo.setImage(image);
		System.out.println("정보유형코드" + railo.getInfo_code());

		System.out.println("정보만 입력");
		railoDAOService.info_insert(railo);

		result.setViewName("redirect:infolist");

		return result;
	}

	// 추천정보 수정
	// 추천정보 삭제

	// ck에디터 기능

	@RequestMapping("/ckeditorImageUpload")
	public String procFileUpload(FileBean fileBean, HttpServletRequest request, Model model)
	{
		HttpSession session = request.getSession();
		String root_path = session.getServletContext().getRealPath("/");
		String attach_path = "resources/img/ckeditor/";

		MultipartFile upload = fileBean.getUpload();
		String filename = "";
		String CKEditorFuncNum = "";

		if (upload != null)
		{
			filename = upload.getOriginalFilename();
			fileBean.setFilename(filename);
			CKEditorFuncNum = fileBean.getCKEditorFuncNum();
			try
			{
				File file = new File(root_path + attach_path + filename);
				System.out.println("씨아프" + root_path + attach_path + filename);
				upload.transferTo(file);
			} catch (IOException e)
			{
				e.printStackTrace();
			}
		}

		String file_path = attach_path + filename;
		request.setAttribute("file_path", file_path);
		request.setAttribute("CKEditorFuncNum", CKEditorFuncNum);
		return "editor";
	}

	@RequestMapping(value = "/community/imageUpload", method = { RequestMethod.GET, RequestMethod.POST })
	public void communityImageUpload(HttpServletRequest request, HttpServletResponse response,
			@RequestParam MultipartFile upload)
	{
		OutputStream out = null;
		OutputStream backup = null;
		PrintWriter printWriter = null;
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		try
		{

			String now = new SimpleDateFormat("yyyyMMddHmsS").format(new Date()); // 현재시간
			String fileName = now + "_" + upload.getOriginalFilename();
			request.setAttribute("mainimage", fileName);

			HttpSession session = request.getSession();
			String root_path = session.getServletContext().getRealPath("/");
			String attach_path = "resources/img/ckeditor/";

			File dir = new File(root_path + attach_path);
			if (!dir.exists())
				dir.mkdirs();

			System.out.println(fileName);
			byte[] bytes = upload.getBytes();
			String uploadPath = root_path + attach_path + fileName;// 저장경로
			System.out.println(uploadPath);
			out = new FileOutputStream(new File(uploadPath));
			out.write(bytes);

			backup = new FileOutputStream(new File("C:\\Downloads\\imagebackup\\" + fileName));
			backup.write(bytes);

			String callback = request.getParameter("CKEditorFuncNum");
			printWriter = response.getWriter();
			String fileUrl = "/mybatis4/" + attach_path + fileName;

			System.out.println(fileUrl);
			printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction(" + callback
					+ ",'" + fileUrl + "','이미지를 업로드 하였습니다.'" + ")" + "</script>");
			printWriter.flush();

		} catch (IOException e)
		{
			e.printStackTrace();
		} finally
		{
			try
			{
				if (out != null)
				{
					out.close();
				}
				if (printWriter != null)
				{
					printWriter.close();
				}
			} catch (IOException e)
			{
				e.printStackTrace();
			}
		}

		return;
	}

	// 관리자 질문 controller
	@RequestMapping(value = "/admin_queslist", method = RequestMethod.GET)
	public ModelAndView listfranchise(Criteria cri, Model model, HttpServletRequest request)
	{
		PageMaker pageMaker = new PageMaker();
		Railo dto = new Railo();
		ModelAndView mvc = new ModelAndView();
		cri.setPerPageNum(5);
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		System.out.println(searchType);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(railoDAOService.getlistnum(cri));
		ArrayList<Railo> admin_queslist = railoDAOService.ques_list2(cri);
		

		mvc.addObject("queslist", admin_queslist);
		mvc.addObject("pageMaker", pageMaker);

		HttpSession session = request.getSession();
		String admin_id = (String) session.getAttribute("admin_id");
		System.out.println(admin_id);

		// --관리자 아이디 비번 확인 부분 id,pw =(1)로 반환
		if (admin_id != null)
		{
			mvc.setViewName("admin_queslist");
		} else
			mvc.setViewName("admin_login");

		return mvc;
	}
	
	// 관리자 질문 삭제 controller
		@RequestMapping(value = "/admin_quesdelete", method = RequestMethod.GET)
		public ModelAndView ques_delete(Criteria cri, Model model, HttpServletRequest request)
		{
			ModelAndView mvc = new ModelAndView();
			String quesnum = request.getParameter("ques_num");
			railoDAOService.ques_delete(quesnum);
			mvc.setViewName("redirect:admin_queslist");
			return mvc;
			
		}

	// 관리자 답변입력 Controller
	@RequestMapping(value = "/admin_anser", method = RequestMethod.GET)
	public ModelAndView anser(Locale locale, Model model, HttpServletRequest request)
	{
		Railo dto = new Railo();
		ModelAndView result = new ModelAndView();
		String num = request.getParameter("ques_num");
		dto.setQues_num(num);

		ArrayList<Railo> queslist = railoDAOService.ques_detail_search(dto);
		result.addObject("result", queslist);
		result.setViewName("admin_anser");

		return result;
	}

	// 관리자 답변입력 Controller
	@RequestMapping(value = "/admin_insert", method = RequestMethod.GET)
	public ModelAndView amdin_anserinsert(Locale locale, Model model, HttpServletRequest request)
	{
		String ques_num = request.getParameter("num");
		String anser_cont = request.getParameter("anser");
		Railo dto = new Railo();
		dto.setQues_num(ques_num);
		dto.setAnser_cont(anser_cont);

		ModelAndView mvc = new ModelAndView();
		railoDAOService.anser_insert(dto);
		mvc.setViewName("redirect:admin_queslist");
		return mvc;
	}

	// 관리자 답변 삭제 controller
	@RequestMapping(value = "/admin_delete", method = RequestMethod.GET)
	public ModelAndView anser_delete(Locale locale, Model model, HttpServletRequest request)
	{
		ModelAndView result = new ModelAndView();
		String ques_num = request.getParameter("ques_num");
		railoDAOService.anser_delete(ques_num);

		result.setViewName("redirect:admin_queslist");
		return result;
	}

	// 관리자 답변입력 Controller
	@RequestMapping(value = "/admin_detail", method = RequestMethod.GET)
	public ModelAndView admin_datail(Locale locale, Model model, HttpServletRequest request)
	{
		Railo dto = new Railo();
		ModelAndView result = new ModelAndView();
		String num = request.getParameter("ques_num");
		dto.setQues_num(num);

		ArrayList<Railo> queslist = railoDAOService.ques_detail_search(dto);
		result.addObject("result", queslist);
		result.setViewName("admin_detail");
		return result;
	}

	// 정차역 리스트 Controller
	@RequestMapping(value = "/trail", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView train_list(Locale locale, Model model, HttpServletRequest request)
	{
		ModelAndView result = new ModelAndView();
		String city_code = request.getParameter("city_code");

		ArrayList<Railo> train_list = railoDAOService.train_list(city_code);
		result.addObject("trail", train_list);
		result.setViewName("trail");
		return result;
	}

	// 관리자답변 수정폼Controller
	@RequestMapping(value = "/admin_updateform", method = RequestMethod.GET)
	public ModelAndView ques_update(Locale locale, Model model, HttpServletRequest request)
	{
		ModelAndView result = new ModelAndView();
		Railo railo = new Railo();
		String ques_num = request.getParameter("ques_num");
		railo.setQues_num(ques_num);
		ArrayList<Railo> list = railoDAOService.admin_QAlistsearch(ques_num);

		result.addObject("list", list);
		result.setViewName("admin_updateform");

		return result;
	}

	// 답변수정액션처리Controller
	@RequestMapping(value = "/admin_update", method = RequestMethod.GET)
	public ModelAndView admin_anser_update(Locale locale, Model model, HttpServletRequest request)
	{
		ModelAndView result = new ModelAndView();
		Railo railo = new Railo();
		String ques_num = request.getParameter("num");
		String anser_cont = request.getParameter("anser");
		railo.setQues_num(ques_num);
		railo.setAnser_cont(anser_cont);
		railoDAOService.anser_update(railo);

		result.setViewName("redirect:admin_queslist");

		return result;
	}

}

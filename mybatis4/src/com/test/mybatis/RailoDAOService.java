package com.test.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class RailoDAOService implements RailoDAO
{
	@Autowired
	private SqlSession sqlSession;
	
	 public ArrayList<Railo> ques_detail_search(Railo railo)
	   {
	      RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
	      ArrayList<Railo> result =railoMapper.ques_detail_search(railo);
	      
	      return result;
	   }

	

	@Override
	public void ques_insert(Railo railo)
	{
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		railoMapper.ques_insert(railo);
	}

	@Override
	public void anser_insert(Railo railo)
	{
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		railoMapper.anser_insert(railo);
	}

	@Override
	public void anser_update(Railo railo)
	{
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		railoMapper.anser_update(railo);
	}
	//질문과답변리스트 검색
   @Override
   public ArrayList<Railo> admin_QAlistsearch(String ques_num)
   {
      RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
      ArrayList<Railo> result = railoMapper.admin_QAlistsearch(ques_num);
      System.out.println(result);
      return result;
   }
   
   
	@Override
	public void anser_delete(String ques_num)
	{
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		railoMapper.anser_delete(ques_num);
	}

	@Override
	public void info_insert(Railo railo)
	{
		System.out.println("제목 : "+railo.getInfo_title());
		System.out.println("내용 : "+railo.getInfo_cont());
		System.out.println("정차역코드 : "+railo.getStation_code());
		System.out.println("지역코드"+railo.getCity_code());
		System.out.println("정보유형코드"+railo.getInfo_code());
		System.out.println("미리보기 이미지"+railo.getImage());
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		railoMapper.info_insert(railo);
	}

	@Override
	public void info_update(Railo railo)
	{
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		railoMapper.info_update(railo);
	}

	@Override
	public void info_delete(String info_num)
	{
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		railoMapper.info_delete(info_num);
	}

	@Override
	public Railo ques_data(String ques_num)
	{
		Railo result = new Railo();
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		result = railoMapper.ques_data(ques_num);
		
		return result;
	}

	
	

	@Override
	public ArrayList<Railo> train_list(String city_code)
	{
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		ArrayList<Railo> result = railoMapper.train_list(city_code);
		return result;
	}
	
	@Override
	public void info_count(String info_num)
	{
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		railoMapper.info_count(info_num);
	}
	
	@Override
	public ArrayList<Railo>ques_search_anser()
	{
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		ArrayList<Railo> result = railoMapper.ques_search_anser();
		
		return result;
		
	}
	
	//관리자 로그인
	   @Override
	   public int admin_login(Railo railo)
	   {
	      RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
	      int result=0;
	      System.out.println("-------------------------------------------");
	      System.out.println("로그인한 ID  : "+railo.getAdmin_id());
	      System.out.println("로그인한 PW  : "+railo.getAdmin_pw());
	      System.out.println("-------------------------------------------");
	      result = (Integer)railoMapper.admin_login(railo);
	      
	      return result;
	   }

	@Override
	public Railo info_data(String info_num)
	{
		RailoMapper railoMapper = sqlSession.getMapper(RailoMapper.class);
		Railo result = railoMapper.info_data(info_num);
		
		return result;
	}

	//추천정보 게시물수
	   @Override
	   public int infogetlistnum(Criteria cri)
	   {
	      RailoMapper railomapper = sqlSession.getMapper(RailoMapper.class);
	      int result = railomapper.infogetlistnum(cri);
	      return result;
	   }

	   //질문 리스트 게시물수
	   @Override
	   public int getlistnum(Criteria cri)
	   {
	      RailoMapper railomapper = sqlSession.getMapper(RailoMapper.class);
	      int result = railomapper.getlistnum(cri);
	      return result;
	   }

	   //문의 리스트 2
	   @Override
	   public ArrayList<Railo> ques_list2(Criteria cri)
	   {
	      RailoMapper railomapper = sqlSession.getMapper(RailoMapper.class);
	      ArrayList<Railo> result = railomapper.ques_list2(cri);
	       return result;
	   }

	   //정보리스트 2
	   public ArrayList<Railo> info_list2(Criteria cri)
	   {
	      RailoMapper railomapper = sqlSession.getMapper(RailoMapper.class);
	      ArrayList<Railo> result = railomapper.info_list2(cri);
	       return result;
	   }

	@Override
	public ArrayList<Railo> info_list()
	{
		 RailoMapper railomapper = sqlSession.getMapper(RailoMapper.class);
	      ArrayList<Railo> result = railomapper.info_list();
	       return result;
	}



	@Override
	public ArrayList<Railo> area_chart()
	{
		RailoMapper railomapper = sqlSession.getMapper(RailoMapper.class);
	    ArrayList<Railo> result = railomapper.area_chart();
	    return result;
	}



	@Override
	public ArrayList<Railo> donut_chart()
	{
		RailoMapper railomapper = sqlSession.getMapper(RailoMapper.class);
	    ArrayList<Railo> result = railomapper.donut_chart();
	    
	    return result;
	}



	@Override
	public ArrayList<Railo> bar_chart()
	{
		RailoMapper railomapper = sqlSession.getMapper(RailoMapper.class);
	    ArrayList<Railo> result = railomapper.bar_chart();
	    return result;
	}



	@Override
	public void ques_delete(String num)
	{
		RailoMapper railomapper = sqlSession.getMapper(RailoMapper.class);
		railomapper.ques_delete(num);
	}
	
	
}

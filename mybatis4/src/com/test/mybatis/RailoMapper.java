package com.test.mybatis;

import java.util.ArrayList;

public interface RailoMapper
{
		//추천정보 리스트
		public ArrayList<Railo>info_list();
		
		//문의 입력(수정 삭제 불필요 가능하게 할려면 패스워드 추가)
		public void ques_insert(Railo railo);
		//문의삭제
		public void ques_delete(String num);
		//문의 정보 출력
		public Railo ques_data(String info_num);
		//추천 정보 출력 생각해보니 필요 없음...
		
		public ArrayList<Railo>ques_detail_search(Railo railo);
		

		//-------------------------- 관리자
		//문의 리스트 출력(위의것 사용)
		//답변 입력 수정 삭제
		public void anser_insert(Railo railo);
		public void anser_update(Railo railo);
		public void anser_delete(String ques_num);
		//추천정보 입력 수정 삭제
		public void info_insert(Railo railo);
		public void info_update(Railo railo);
		public void info_delete(String info_num);
		public void info_count(String info_num);
		
		
		//정차역 리스트
		public ArrayList<Railo> train_list (String city_code);
		
		//질문과답변리스트 검색
	   public ArrayList<Railo> admin_QAlistsearch(String ques_num);
	   
	   //답변없음 검색
	   public ArrayList<Railo>ques_search_anser();
	   
	 //관리자 로그인
	   public int admin_login(Railo railo);
	   
	   // 추천정보 출력
	   public Railo info_data(String info_num);
	   
	 //추천정보 게시물수
	   public int infogetlistnum(Criteria cri);
	   
	   //질문 리스트 게시물수
	   public int getlistnum(Criteria cri);
	   
	   //문의 리스트 2
	   public ArrayList<Railo> ques_list2(Criteria cri);
	   
	   //추천정보 리스트 2
	   
	   public ArrayList<Railo> info_list2(Criteria cri);
	   
	   public ArrayList<Railo>area_chart();
	   public ArrayList<Railo>donut_chart();
	   public ArrayList<Railo>bar_chart();
	   
}

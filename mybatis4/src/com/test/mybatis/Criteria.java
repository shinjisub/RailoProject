package com.test.mybatis;

public class Criteria
{
   
   private int page;// 寃뚯떆�뙋�쑝濡� �룎�븘媛덈븣 遺곷쭏�겕
   private int perPageNum;// 寃뚯떆�뙋�쑝濡� �룎�븘媛덈븣 遺곷쭏�겕
   private String searchType;// 寃��깋���엯 遺꾨쪟
   private String keyword;// 寃��깋 �궡�슜

   public String toUrl(){
      return "?page="+page+"&perPageNum="+perPageNum+"&searchType="+searchType+"&keyword="+keyword;
   }
   
   @Override
   public String toString() {
      return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", searchType=" + searchType + ", keyword="
            + keyword + "]";
   }
   
   public String getSearchType() {
      return searchType;
   }

   public void setSearchType(String searchType) {
      this.searchType = searchType;
   }

   public String getKeyword() {
      return keyword;
   }

   public void setKeyword(String keyword) {
      this.keyword = keyword;
   }

   public Criteria() {
      this.page = 1;
      this.perPageNum = 5;
   }

   public void setPage(int page) {
      if (page <= 0) {
         this.page = 1;
         return;
         // �럹�씠吏�瑜� 0�씠�븯濡� �몢硫� 1濡쒖큹湲고솕�떆�궡
      }
      this.page = page;
   }

   public void setPerPageNum(int perPageNum) {
      if (perPageNum < 0 || perPageNum > 100) {
         this.perPageNum = 10;
         return;
      }
      this.perPageNum = perPageNum;
   }

   public int getPage() {
      return page;
   }

   // method for MyBatis SQL Mapper
   public int getPerPageNum() {
      return perPageNum;
   }

   // method for MyBatis SQL Mapper
   public int getPageStart() {
      return ((this.page - 1) * perPageNum)+1;
   }

   // method for MyBatis SQL Mapper
   public int getPageEnd() {
      return perPageNum + getPageStart() - 1;
   }


}
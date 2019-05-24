package com.wyq.Mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Insert;

public interface submitPageMapper {
	
	 @Insert("insert into tb_page set pageid=#{pageid},userid=#{userid},artical=#{artical},title=#{title},tag=#{tag},open=#{open}")
	    int submit(@Param("pageid")String pageid,@Param("userid")String userid,@Param("title")String title,@Param("artical")String artical,@Param("tag")String tag,@Param("open")String open);
	 
	 @Select("select count(*) from tb_page")
	 int getPagenum();
	 @Select("select pagenum from tb_conf limit 0,1")
	 int getid();
	 @Update("update tb_conf set pagenum=#{pagenum}")
	  int updateid(@Param("pagenum")int num);
	 @Insert("insert into tb_user set userid=#{userid},password=#{password},name=#{name},email=#{email},qq=#{qq},sex=#{sex},tele=#{tele}")
	  int submituser(@Param("userid")String userid,@Param("password")String password,@Param("name")String name,@Param("email")String email,@Param("qq")String qq,@Param("tele")String tele,@Param("sex")String sex);
	 @Select("select count(*) from tb_user where userid=#{userid}")
	  int ID(@Param("userid")String id);
}

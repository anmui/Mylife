package com.wyq.Mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

public interface alertPageMapper {
	@Update("update tb_page set artical=#{artical},title=#{title} where pageid=#{pageid}")
    int update(@Param("pageid")String pageid,@Param("title")String title,@Param("artical")String artical);
	@Update("update tb_page set open=#{open} where pageid=#{pageid}")
	int updateopen(@Param("pageid")String pageid,@Param("open")String open);
	@Update("update tb_page set tag=#{tag} where pageid=#{pageid}")
	int updatetag(@Param("pageid")String pageid,@Param("tag") String tag);
	@Update("update tb_user set name=#{name} ,password=#{password},email=#{email},qq=#{qq},tele=#{phone} ,sex=#{sex} where userid=#{userid}")
	int alertu(@Param("userid")String userid, @Param("name")String name, @Param("password")String password, @Param("sex")String sex, @Param("phone")String phone, @Param("qq")String qq, @Param("email")String email);
}

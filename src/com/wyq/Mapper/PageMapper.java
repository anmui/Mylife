package com.wyq.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.wyq.Bean.page;


public interface PageMapper {
	 @Select("select artical from tb_page where pageid=#{pageid}")
	    String content(@Param("pageid")String pageid);
	 
	 @Select("select * from tb_page where pageid=#{pageid}")
	 	List<page> oneArtical(@Param("pageid")String pageid);
	 

}

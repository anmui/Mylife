package com.wyq.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import com.wyq.Bean.page;

public interface ALLPageMapper {
    
    @Select("select * from tb_page order by time")
    List<page> findAll();
    @Select("select * from tb_page where open= 'on' order by time limit #{startindex},#{size} ")
    List<page> findOne(@Param("startindex")int startindex,@Param("size")int size);
    @Select("select count(*) from tb_page where open='on'")
    int Count();
   
    @Select("select count(*) from tb_page where userid= #{userid}")
    int Countone(@Param("userid")String userid);
    @Select("select * from tb_page where userid= #{userid} order by time limit #{startindex},#{size} ")
    List<page> findOneuser(@Param("userid")String userid,@Param("startindex")int startindex,@Param("size")int size);
    
	 @Select("select * from tb_page where tag=#{tag} and open='on' order by time limit #{startindex},#{size} ")
	 List<page> gettagpage(@Param("tag")String tag,@Param("startindex")int startindex,@Param("size")int size) ;
	 
	 @Select("select count(*) from tb_page where open='on' and tag=#{tag}")
	    int tagCount(@Param("tag")String tag);
    
}
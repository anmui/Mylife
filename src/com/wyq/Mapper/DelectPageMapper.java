package com.wyq.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.wyq.Bean.page;

public interface DelectPageMapper {
	 @Delete("Delete from tb_page where pageid=#{pageid}")
	 int Delect(@Param("pageid")String pageid);

}

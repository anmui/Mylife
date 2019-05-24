package com.wyq.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.wyq.Bean.content;
import com.wyq.Bean.reply;


public interface ContentMapper {
	
	@Select("select * from tb_reply where pageid=#{pageid} order by time")
	List<reply> findallreply(@Param("pageid")String pageid);

	@Select("select * from tb_content where pageid=#{pageid} order by time")
    List<content> findAllcontent(@Param("pageid")String pageid);

    @Select("select contentnum from tb_conf limit 0,1")
	int getcontentid();
    @Select("select replynum from tb_conf limit 0,1")
	int getreplyid();
    @Update("update tb_conf set replynum =#{count}")
	int setcount(@Param("count")int count);
    @Insert("insert into tb_reply set replyid=#{replyid},pageid=#{pageid},rfrom_id=#{rfrom_id},rto_id=#{rto_id},contentid=#{contentid},content=#{content},time=#{time},rfrom_name=#{rfrom_name},rto_name=#{rto_name}")
	int submitreply(@Param("replyid")String replyid,@Param("rfrom_id") String rfrom_id,@Param("rto_id") String rto_id,@Param("contentid") String contentid,@Param("content") String content, @Param("time")String time,
			@Param("rfrom_name")String rfrom_name, @Param("rto_name")String rto_name,@Param("pageid") String pageid);
    
}

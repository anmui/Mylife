package com.wyq.Service;

import java.util.List;



import com.wyq.Bean.content;
import com.wyq.Bean.reply;


public interface ContentService {

	int getreplyid();
	List<content> getallContent(String pageid);
	List<reply> getallreply(String pageid);
	int getid();
	String getname(String id);
	int submitcontent(String replyid,String rfrom_id,String rto_id,String contentid,String content,String time,String rfrom_name,String rto_name,String pageid);
	int setcount(int count);

}

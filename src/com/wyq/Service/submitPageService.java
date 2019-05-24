package com.wyq.Service;

import org.apache.ibatis.annotations.Param;

public interface submitPageService {
	
	int getpagenum();
	int submitpage(String pageid,String userid,String title,String artical,String tag,String open);
	int gatid();
	int setid(int num);
	int submituser(String userid,String password,String name,String email,String qq,String tele,String sex);
	int IDok(String id);
}

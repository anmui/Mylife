package com.wyq.Service;

public interface AlertService {
	
	int Alertpage(String pageid,String title,String artical);
	int Alertopen(String pageid,String open);
	int Alerttag(String pageid, String tag);
	int Alertuser(String userid, String name, String password, String sex, String phone, String qQ, String email);

}

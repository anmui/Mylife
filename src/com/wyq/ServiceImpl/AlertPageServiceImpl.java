package com.wyq.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wyq.Mapper.alertPageMapper;
import com.wyq.Service.AlertService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)  
@Service("AlertService")
public class AlertPageServiceImpl implements AlertService{
	 @Autowired
	    private alertPageMapper alertpagemapper;

	 @Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW)
	public int Alertpage(String pageid, String title, String artical) {
		// TODO 自动生成的方法存根
		return alertpagemapper.update(pageid, title, artical);
	}
	 @Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW)
	@Override
	public int Alertopen(String pageid, String open) {
		// TODO 自动生成的方法存根
		System.out.println(pageid);
		return alertpagemapper.updateopen(pageid, open);
	}
	@Override
	public int Alerttag(String pageid, String tag) {
		// TODO 自动生成的方法存根
		return alertpagemapper.updatetag(pageid, tag);
	}
	@Override
	public int Alertuser(String userid, String name, String password, String sex, String phone, String qq,
			String email) {
		// TODO 自动生成的方法存根
		return alertpagemapper.alertu(userid,name,password,sex,phone,qq,email);
	}

}

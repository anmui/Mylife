package com.wyq.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wyq.Mapper.submitPageMapper;
import com.wyq.Service.submitPageService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)  
@Service("submitPageService")
public class submitPageServiceImpl implements submitPageService{
	
    @Autowired
    private submitPageMapper submitpagemapper;

    @Transactional(readOnly=true)
	public int getpagenum()
	{
    	return submitpagemapper.getPagenum();
	}
    @Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW)
	public int submitpage(String pageid,String userid,String title,String artical,String tag,String open)
	{
		return submitpagemapper.submit(pageid, userid, title, artical,tag,open);
	}
    @Transactional(readOnly=true)
	public int gatid() {
		
		return submitpagemapper.getid();
	}
    @Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW)
	public int setid(int num) {
		
		return submitpagemapper.updateid(num);
	}
    @Transactional(readOnly = false, propagation = Propagation.REQUIRES_NEW)
	@Override
	public int submituser(String userid, String password, String name, String email, String qq, String tele,
			String sex) {
		// TODO 自动生成的方法存根
		return submitpagemapper.submituser(userid, password, name, email, qq, tele, sex);
	}
	@Override
	public int IDok(String id) {
		// TODO 自动生成的方法存根
		return submitpagemapper.ID(id);
	}

}

package com.wyq.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wyq.Bean.User;
import com.wyq.Mapper.UserMapper;
import com.wyq.Service.UserService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("userService")
public class UserServiceImpl implements UserService{    
    
    @Autowired
    private UserMapper usermapper;
    
    @Transactional(readOnly=true)
    public User login(String loginname, String password) {
    	System.out.println(loginname);
        return usermapper.finwithLoginnameAndPassword(loginname,password);
        
    }

    @Transactional(readOnly=true)
	public User getUser(String userid) {
		
    	
		return usermapper.Usermessage(userid);
	}
    
}

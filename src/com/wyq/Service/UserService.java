package com.wyq.Service;

import com.wyq.Bean.User;

public interface UserService {
    
    User login(String Loginname,String password);
    User getUser(String userid);

}
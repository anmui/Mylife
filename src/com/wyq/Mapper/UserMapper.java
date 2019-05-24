package com.wyq.Mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.wyq.Bean.User;

public interface UserMapper {

    @Select("select * from tb_user where tb_user.password = #{password} and tb_user.userid = #{loginname}")
    public User finwithLoginnameAndPassword(@Param("loginname")String loginname,@Param("password")String password);//@param表示上面sql中的参数
    
    @Select("select * from tb_user where tb_user.userid=#{userid}")
    public User Usermessage(@Param("userid")String Userid);
    
    @Select("select name from tb_user where tb_user.userid=#{userid}")
    String getname(@Param("userid")String Userid);

	
  
}
package com.food.mapper;

import com.food.pojo.Account;
import com.food.pojo.Customer;
import org.apache.ibatis.annotations.*;

public interface AccountMapper {

	@Insert("insert into customer(id,tel) values(#{id},#{tel})")
	int insUserId(@Param("id")Integer id,@Param("tel")String tel);

	// 登录
	@Select("select * from account where username=#{username} and password=#{password}")
	Account selAccount(@Param("username")String username,@Param("password")String password);

	// 注册
	@Insert("insert into account(username,password) values(#{username},#{password})")
	int insAccount(@Param("username")String username ,@Param("password")String password);

	@Select("select * from customer where username=#{username} and password=#{password}")
	Customer selCusomerLogin(@Param("username")String username , @Param("password")String passsword);

	// 更改密码
	@Update("update account set password=#{oldPwd} where id=#{uid} and password=#{pwd1}")
	int updAccountPassword(@Param("uid")Integer uid, @Param("oldPwd")String oldPwd,@Param("pwd1")String pwd1);

	// 检查用户名是否已经注册了
	@Select("select username from account where username=#{username}")
	Account SelUsername(@Param("username")String username);

}



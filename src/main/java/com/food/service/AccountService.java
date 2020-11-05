package com.food.service;

import com.food.pojo.Account;
import com.food.pojo.Customer;

public interface AccountService {

	// 注册
	public int insRegisterAccount(String username ,String password,String tel);

	// 登录
	public Account login(String username, String paswword);

	// 更改密码
	int updateAccountPassword(Integer uid,String oldPwd,String pwd1);

	Account CheckUsername(String username);

}

package com.food.service.impl;

import javax.annotation.Resource;

import com.food.pojo.Account;
import org.springframework.stereotype.Service;

import com.food.mapper.AccountMapper;
import com.food.service.AccountService;
import org.springframework.web.bind.annotation.ResponseBody;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Resource
    AccountMapper accountMapper;

	// 注册
	@Override
	@ResponseBody
	public int insRegisterAccount(String username ,String password,String tel) {
		password=MD5Encoder.generateMD5(password);

		// 该用户名 是否已经注册过
		Account account = accountMapper.SelUsername(username);
		if(account!=null){	// 是否有相同的
			return 0;
		}else{	 // 没有相同的
			int flag= accountMapper.insAccount(username , password);

			Account a = accountMapper.selAccount(username,password);

			flag = accountMapper.insUserId(a.getId(),tel);
			return flag;
		}
	}

	@Override
	@ResponseBody
	public Account login(String username, String paswword) {
		paswword=MD5Encoder.generateMD5(paswword);
		return accountMapper.selAccount(username,paswword);
	}

	// 更改密码
	@Override
	public int updateAccountPassword(Integer uid,String oldPwd,String pwd1) {
		oldPwd=MD5Encoder.generateMD5(oldPwd);
		pwd1=MD5Encoder.generateMD5(pwd1);

		return accountMapper.updAccountPassword(uid,oldPwd,pwd1);
	}

	@Override
	public Account CheckUsername(String username) {
		return accountMapper.SelUsername(username);
	}

}

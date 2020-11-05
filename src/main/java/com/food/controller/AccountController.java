package com.food.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.food.pojo.Account;
import com.food.pojo.Customer;
import com.food.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.food.service.AccountService;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/account")
public class AccountController {

	@Autowired
    AccountService accountServiceImpl;

	@Autowired
	CustomerService customerServiceImpl;

	@ResponseBody
	@RequestMapping("/register")
	public String Register(String username,String password,String tel) {
		int flag = accountServiceImpl.insRegisterAccount(username,password,tel);

		if(flag>0){
			return "1";
		}else{
			return "0";
		}
	}

	//  注册用户名效验
	@ResponseBody
	@RequestMapping("/checkUsername")
	public String checkUseranme(String username) {
		Account account= accountServiceImpl.CheckUsername(username);
		if(account!=null){
			return "1";
		}else{
			return "0";
		}
	}

	@ResponseBody
	@RequestMapping("/login")
	public String login(String username,String password,HttpServletRequest request) {
		Account account = accountServiceImpl.login(username, password);
		if(account!=null){
			HttpSession session = request.getSession();
			Customer customer =customerServiceImpl.selCustomerInfo(account.getId());
			session.setAttribute("customerInfo", customer);
			return "1";
		}
		return "0";
	}

	@RequestMapping("/updPwd")
	public String updAccountPwd(Integer uid,String oldPwd,String pwd1) {
		int flag= accountServiceImpl.updateAccountPassword(uid,oldPwd,pwd1);
		return "redirect:/food/showSomefoods";
	}

}


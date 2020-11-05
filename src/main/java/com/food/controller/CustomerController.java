package com.food.controller;

import com.food.pojo.Customer;
import com.food.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    CustomerService customerServiceImpl;

    // 用户的所有信息
    @RequestMapping("/ShowCustomerInfo")
    public String customerInfo(Integer id, HttpServletRequest request) {
        Customer customer = customerServiceImpl.selCustomerInfo(id);
        return "redirect:/view/info.jsp";
    }

    // 更新用户信息
    @RequestMapping("/updCustomerInfo")
    public String updcustomerInfo(Customer cm, HttpServletRequest request) {
        System.out.println(cm.getId());
        int flag =customerServiceImpl.updCustomerInfo(cm);
        Customer customer = customerServiceImpl.selCustomerInfo(cm.getId());
        HttpSession session = request.getSession();
        session.setAttribute("customerInfo", customer);
        return "redirect:/view/info.jsp";
    }

}

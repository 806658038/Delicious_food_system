package com.food.test;

import com.food.pojo.Account;
import com.food.service.AccountService;
import com.food.service.impl.MD5Encoder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext.xml")
public class AccountTest {

    @Autowired
    AccountService accountServiceImpl;

    @Test
    public void registerTest(){
        System.out.println(accountServiceImpl.insRegisterAccount("12345","12345","15870088320"));

    }

    @Test
    public void loginTest(){
        System.out.println(accountServiceImpl.login("123","123"));
    }

    @Test
    public void Md5Test() throws Exception {

     //   System.out.println(MD5Encoder.md5("123456","111"));

     //   System.out.println(MD5Encoder.generateMD5("123"));
        System.out.println("@~@,`(^@),%(~&%`(^$`~&!%@.@#$`&~".equals(MD5Encoder.generateMD5("123")));

    }




}

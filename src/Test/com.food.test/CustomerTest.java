package com.food.test;


import com.food.pojo.Customer;
import com.food.service.CustomerService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext.xml")
public class CustomerTest {

    @Autowired
    CustomerService customerServiceImpl;

    @Test
    public void customerInfoTest(){
        Customer customer = new Customer();
        customer.setId(1);
        customer.setUname("huang");
        customer.setAge(20);
        customer.setSex("男");
        customer.setTel("15870088320");
        customer.setAddress("江西");
        System.out.println(customerServiceImpl.updCustomerInfo(customer));

    }

    @Test
    public void customerInfoFind(){
        System.out.println(customerServiceImpl.selCustomerInfo(1));

    }





}

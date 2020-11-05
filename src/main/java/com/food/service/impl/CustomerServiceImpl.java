package com.food.service.impl;

import com.food.mapper.CustomerMapper;
import com.food.pojo.Customer;
import com.food.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl  implements CustomerService {

    @Autowired
    CustomerMapper customerMapper;

    // 更新用户信息
    @Override
    public int updCustomerInfo(Customer customer) {
        return customerMapper.updCustomerInfo(customer);
    }

    // 查看用户信息
    @Override
    public Customer selCustomerInfo(int id) {
        return customerMapper.selCustomerInfo(id);
    }
}

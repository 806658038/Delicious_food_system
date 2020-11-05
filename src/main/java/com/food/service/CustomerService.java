package com.food.service;

import com.food.pojo.Customer;

public interface CustomerService {

    int updCustomerInfo(Customer customer);

    Customer selCustomerInfo(int id);


}

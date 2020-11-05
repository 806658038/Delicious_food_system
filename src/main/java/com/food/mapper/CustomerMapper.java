package com.food.mapper;

import com.food.pojo.Account;
import com.food.pojo.Customer;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface CustomerMapper {

    // 更新用户信息
    @Update("update customer set uname=#{uname},sex=#{sex},age=#{age},tel=#{tel},address=#{address} where id=#{id}")
    int updCustomerInfo(Customer customer);

    // 查询用户信息
    @Select("select * from customer where id=#{id}")
    Customer selCustomerInfo(int id);


}

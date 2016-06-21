package com.hotel.service;

import java.util.List;

import com.hotel.entity.Customer;
import com.hotel.exception.ServException;

public interface UserService {
	public Customer login(Customer customer) throws ServException;
	public void exit(Customer customer) throws ServException;
	public void updateInf(Customer customer) throws ServException;
	public void ajaxLog(Customer customer) throws ServException;
	public void regist(Customer customer) throws ServException;
	public List<Customer> findCustomers() throws ServException;
	public Customer findCustomer(String phone,String password) throws ServException;
}

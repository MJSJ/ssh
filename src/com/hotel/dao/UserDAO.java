package com.hotel.dao;

import java.sql.SQLException;
import java.util.List;

import com.hotel.entity.Customer;


public interface UserDAO {
	public void addCustomer(Customer customer)throws SQLException;
	public void updateCustomer(Customer customer)throws SQLException;
	public void deleteCustomer(Customer customer)throws SQLException;
	public void deleteCustomerById(String cusId)throws SQLException;
	public Customer findCustomer(String phone,String password) throws SQLException;
	public List<Customer> findCustomers() throws SQLException;
}

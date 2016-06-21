package com.hotel.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.hotel.dao.UserDAO;
import com.hotel.entity.Customer;
import com.hotel.exception.ServException;
import com.hotel.service.UserService;

public class UserServiceImpl implements UserService{
	private UserDAO userDAO;
	@Override
	public Customer login(Customer customer) throws ServException {
		try {
			Customer loginCustomer = userDAO.findCustomer(customer.getPhone(), customer.getPassword());
			return loginCustomer;
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServException("登录失败");
		}
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public void exit(Customer customer) throws ServException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateInf(Customer customer) throws ServException {
		try {
			userDAO.updateCustomer(customer);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void ajaxLog(Customer customer) throws ServException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void regist(Customer customer) throws ServException {
		try {
			//未上传图片
			customer.setBirthday(customer.getIDCard().substring(6, 14));
			customer.setType("0");
			userDAO.addCustomer(customer);
		} catch (SQLException e) {
			throw new ServException("注册失败");
		}
	}

	@Override
	public Customer findCustomer(String phone,String password) throws ServException {
		try {
			return userDAO.findCustomer(phone, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Customer> findCustomers() throws ServException {
		try {
			return userDAO.findCustomers();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}

}

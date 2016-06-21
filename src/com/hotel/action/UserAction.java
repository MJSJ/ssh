package com.hotel.action;

import java.util.List;

import com.hotel.entity.Customer;
import com.hotel.exception.ServException;
import com.hotel.service.UserService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

public class UserAction extends BaseAction implements ServletRequestAware, ServletResponseAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;
	private Customer customer;
	private String newPass;
	private String oldPass;
	private String newPhone;
	private String code;
	private String result;
	private List<Customer> customers;
	private HttpServletResponse response;
	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	private HttpServletRequest request;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String findCustomers(){

        response.addHeader("Access-Control-Allow-Origin", "http://localhost:8080");
			try {
				customers = userService.findCustomers();
				result = "fuck";
				System.out.println(customers);
			} catch (ServException e) {
				customers = null;
				e.printStackTrace();
			}
	
		return "findCustomers";
	}
	public String login(){
		try {
			Customer loginCustomer = userService.login(customer);
			if(loginCustomer!=null){
				session.put("loginCustomer", loginCustomer);
				return "success";
			}else{
				return "login";
			}
		} catch (ServException e) {
			e.printStackTrace();
			return "error";
		}
	}
	
	public String regist(){
		try {
			userService.regist(customer);
			Customer loginCustomer = userService.login(customer);
			session.put("loginCustomer", loginCustomer);
			setResult("注册成功");
			return "success";
		} catch (ServException e) {
			e.printStackTrace();
			return "regist";
		}
	}
	
	
	public String toChangePhone(){
		try {
			customer =  userService.findCustomer(customer.getPhone(), customer.getPassword());
			session.put("changeCustomer", customer);
			if(customer!=null){
				setResult("验证成功，请输入新手机号码");
			}else{
				setResult("验证失败，手机或密码错误");
			}
		} catch (ServException e) {
			e.printStackTrace();
		}
		return "toChangePhone";
	}
	
	public String changePhone(){
		customer = (Customer) session.get("changeCustomer");
		customer.setPhone(newPhone);
		try {
			userService.updateInf(customer);
			setResult("修改成功");
		} catch (ServException e) {
			e.printStackTrace();
			setResult("发生异常，请重试");
		}
		return "changePhone";
	}
	
	public String changePassword(){
		customer = (Customer) session.get("loginCustomer");
		if(customer.getPassword().equalsIgnoreCase(oldPass)){
			customer.setPassword(newPass);
			try {
				userService.updateInf(customer);
				setResult("修改成功");
			} catch (ServException e) {
				e.printStackTrace();
				setResult("发生异常，请重试");
			}
		}else{
			setResult("密码不正确");
		}
		return "changePassword";
	}
	
	
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}


	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getNewPhone() {
		return newPhone;
	}

	public void setNewPhone(String newPhone) {
		this.newPhone = newPhone;
	}

	public String getNewPass() {
		return newPass;
	}

	public void setNewPass(String newPass) {
		this.newPass = newPass;
	}

	public String getOldPass() {
		return oldPass;
	}

	public void setOldPass(String oldPass) {
		this.oldPass = oldPass;
	}

	public List<Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}

	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
}

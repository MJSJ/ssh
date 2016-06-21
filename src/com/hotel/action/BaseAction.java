package com.hotel.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements SessionAware,RequestAware{
	protected Map<String, Object> session;
	private String result;
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	protected Map<String, Object> request;
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
}

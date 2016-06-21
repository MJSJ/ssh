package com.hotel.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hotel.dao.UserDAO;
import com.hotel.entity.Customer;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO{

	@Override
	public void addCustomer(Customer customer) throws SQLException {
		this.getHibernateTemplate().save(customer);
		
	}

	@Override
	public void updateCustomer(Customer customer) throws SQLException {
		this.getHibernateTemplate().update(customer);
		
	}

	@Override
	public void deleteCustomer(Customer customer) throws SQLException {
		this.getHibernateTemplate().delete(customer);		
	}

	@Override
	public void deleteCustomerById(String cusId) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Customer findCustomer(final String phone, final String password)
			throws SQLException {
		return (Customer)this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				Query query = 
					session.createQuery("from Customer c where c.phone=? and c.password=?");
				query.setString(0, phone);
				query.setString(1, password);
				return query.uniqueResult();
			}
		});
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Customer> findCustomers() throws SQLException {
		return (List<Customer>)this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				Query query = 
					session.createQuery("from Customer c");
				List<Customer> list = query.list();
				return list;
			}
		});
	}

}

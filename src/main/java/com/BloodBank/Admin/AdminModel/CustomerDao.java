package com.BloodBank.Admin.AdminModel;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class CustomerDao {
	private Configuration con;
	private SessionFactory factory;
	private Session session;
	private Transaction t;

	public void saveData(final Customer e) {
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		session.save(e);
		t.commit();

	}

	public List displayData() {
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		List list = session.createQuery("from Customer").list();
		return list;
	}

	public List searchData(Customer e) {
		List li = new ArrayList();
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		List list = session.createQuery("from Customer").list();
		Iterator it = list.iterator();
		while (it.hasNext()) {
			Customer emp = (Customer) it.next();
			if (e.getCustomerid() == emp.getCustomerid() || (e.getCustomername().equals(emp.getCustomername())
					|| (e.getCustomerAdharno().equals(emp.getCustomerAdharno())
							))) {
				Customer obj = new Customer();
				obj.setCustomerid(emp.getCustomerid());
				obj.setCustomername(emp.getCustomername());
				obj.setCustomerAdharno(emp.getCustomerAdharno());
				obj.setCustomerAddress(emp.getCustomerAddress());
				obj.setCustomerbloodGroup(emp.getCustomerbloodGroup());
				obj.setCustomerMobileNo(emp.getCustomerMobileNo());
				
				obj.setRequest(emp.getRequest());
				obj.setBloodbankname(emp.getBloodbankname());
				obj.setCustomerAge(emp.getCustomerAge());
				obj.setCustomerGender(emp.getCustomerGender());
				obj.setReason(emp.getReason());
				li.add(obj);
			}
		}
		return li;
	}

	public void updateData(Customer emp) {
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		Customer obj = session.get(Customer.class, emp.getCustomerid());
		obj.setCustomername(emp.getCustomername());
		obj.setCustomerbloodGroup(emp.getCustomerbloodGroup());
		obj.setCustomerAddress(emp.getCustomerAddress());
		obj.setCustomerAdharno(emp.getCustomerAdharno());
		obj.setCustomerMobileNo(emp.getCustomerMobileNo());
		
		obj.setRequest(emp.getRequest());
		obj.setBloodbankname(emp.getBloodbankname());
		obj.setCustomerAge(emp.getCustomerAge());
		obj.setCustomerGender(emp.getCustomerGender());
		obj.setReason(emp.getReason());
		session.update(obj);
		t.commit();
	}

	public void deleteData(Customer emp) {
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		Customer obj = session.get(Customer.class, emp.getCustomerid());
		session.delete(obj);
		t.commit();

	}

	
}

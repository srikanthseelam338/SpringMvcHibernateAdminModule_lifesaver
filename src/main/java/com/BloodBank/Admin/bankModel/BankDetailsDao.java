package com.BloodBank.Admin.bankModel;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.BloodBank.Admin.AdminModel.Customer;

public class BankDetailsDao {
	private Configuration con;
	private SessionFactory factory;
	private Session session;
	private Transaction t;

	public void saveData(final BankDetails e) {
		con = new Configuration().configure("hibernate1.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		session.save(e);
		t.commit();

	}

	public List displayData() {
		con = new Configuration().configure("hibernate1.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		List list = session.createQuery("from BankDetails").list();
		return list;
	}

	public List searchData(BankDetails e) {
		List li = new ArrayList();
		con = new Configuration().configure("hibernate1.cfg.xml" );
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		List list = session.createQuery("from BankDetails").list();
		Iterator it = list.iterator();
		while (it.hasNext()) {
			BankDetails emp = (BankDetails) it.next();
			if ( (e.getBloodBankname().equals(emp.getBloodBankname()))||(e.getBloodBankLoc().equals(emp.getBloodBankLoc())))

			{
				BankDetails obj = new BankDetails();
				obj.setBloodBankAddress(emp.getBloodBankAddress());
				obj.setBloodBankContactNumber(emp.getBloodBankContactNumber());
				obj.setBloodBankLoc(emp.getBloodBankLoc());
				obj.setBloodBankname(emp.getBloodBankname());
				obj.setSerialNo(emp.getSerialNo());

				li.add(obj);
			}
		}
		return li;
	}

	public void updateData(BankDetails emp) {
		con = new Configuration().configure("hibernate1.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		BankDetails obj = session.get(BankDetails.class, emp.getSerialNo());
		obj.setBloodBankAddress(emp.getBloodBankAddress());
		obj.setBloodBankContactNumber(emp.getBloodBankContactNumber());
		obj.setBloodBankLoc(emp.getBloodBankLoc());
		obj.setBloodBankname(emp.getBloodBankname());
		session.update(obj);
		t.commit();
	}

	public void deleteData(BankDetails emp) {
		con = new Configuration().configure("hibernate1.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		BankDetails obj = session.get(BankDetails.class, emp.getSerialNo());
		session.delete(obj);
		t.commit();

	}
}

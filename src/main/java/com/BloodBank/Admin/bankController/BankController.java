package com.BloodBank.Admin.bankController;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.BloodBank.Admin.AdminModel.CustomerDao;
import com.BloodBank.Admin.bankModel.BankDetails;
import com.BloodBank.Admin.bankModel.BankDetailsDao;

@Controller
public class BankController {
	private ApplicationContext conn;

	@RequestMapping("/Availablity")
	public String view0() {
		System.out.println("hgello");
		return "Admin/Availablity";
	}

	@RequestMapping("/Adminhome1")
	public String view1() {
		System.out.println("hgello");
		return "Admin/Adminhome1";
	}

	@RequestMapping("/register1")
	public String view2(final Model m) {
		System.out.println("sreekanth hello how are u");
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		final BankDetails emp = conn.getBean("add", BankDetails.class);
		m.addAttribute("bean", emp);
		return "Admin/register1";
	}

	@RequestMapping("/store1")
	public String view3(@ModelAttribute("bean") final BankDetails e, final Model m) {
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		BankDetailsDao obj = conn.getBean("sreekanth", BankDetailsDao.class);
		obj.saveData(e);
		m.addAttribute("msg", " Blood Bank Details SucessFully Entered");
		return "Admin/register1";
	}

	@RequestMapping("/view1")
	public String view4(final Model m) {
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		final BankDetailsDao obj = conn.getBean("sreekanth", BankDetailsDao.class);
		final List list = obj.displayData();

		m.addAttribute("data", list);

		return "Admin/view1";

	}

	@RequestMapping("/find1")
	public String view5(final Model m) {
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		final BankDetails emp = conn.getBean("add", BankDetails.class);
		m.addAttribute("bean", emp);

		return "Admin/search1";

	}

	@RequestMapping("/search1")
	public String view5(@ModelAttribute("bean") final BankDetails e, final Model m) {
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		final BankDetailsDao obj = conn.getBean("sreekanth", BankDetailsDao.class);
		final List list = obj.searchData(e);
		if (!list.isEmpty()) {
			m.addAttribute("li", list);
		} else {
			m.addAttribute("msg", "oops! record not found");
		}
		return "Admin/search1";

	}

	@RequestMapping("/update1")
	public String view6(@ModelAttribute("bean") final BankDetails emp, final Model m) {
		System.out.println("my name is update");
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		BankDetailsDao obj = conn.getBean("sreekanth", BankDetailsDao.class);
		obj.updateData(emp);
		m.addAttribute("msg", "BloodBank Details Update SucessFully ");
		return "Admin/search1";
	}

	@RequestMapping("/delete1")
	public String view7(@ModelAttribute("bean") final BankDetails emp, final Model m) {
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		final BankDetailsDao obj = conn.getBean("sreekanth", BankDetailsDao.class);
		obj.deleteData(emp);
		m.addAttribute("msg", "BloodBank Details Delete SucessFully ");
		return "Admin/search1";

	}
}

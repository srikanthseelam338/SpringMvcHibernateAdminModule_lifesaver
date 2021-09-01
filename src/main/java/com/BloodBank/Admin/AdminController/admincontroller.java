package com.BloodBank.Admin.AdminController;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.BloodBank.Admin.AdminModel.Customer;
import com.BloodBank.Admin.AdminModel.CustomerDao;

@Controller
public class admincontroller {
	private ApplicationContext conn;

	@RequestMapping("/Adminhome")
	public String view1() {
		System.out.println("hgello");
		return "Admin/Adminhome";
	}

	@RequestMapping("/register")
	public String view2(final Model m) {
		System.out.println("sreekanth hello how are u");
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		Customer emp = conn.getBean("info", Customer.class);
		m.addAttribute("bean", emp);
		return "Admin/register";
	}

	@RequestMapping("/store")
	public String view3(@ModelAttribute("bean") final Customer e, final Model m) {
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		CustomerDao obj = conn.getBean("dao", CustomerDao.class);
		obj.saveData(e);
		m.addAttribute("msg", "Customer Details SucessFully Entered");
		return "Admin/register";
	}

	@RequestMapping("/view")
	public String view4(final Model m) {
		System.out.println("im  view4 sreekanth");
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		CustomerDao obj = conn.getBean("dao", CustomerDao.class);
		List list = obj.displayData();

		m.addAttribute("data", list);

		return "Admin/view";

	}

	@RequestMapping("/find")
	public String view5(final Model m) {
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		Customer emp = conn.getBean("info", Customer.class);
		m.addAttribute("bean", emp);

		return "Admin/search";

	}

	@RequestMapping("/search")
	public String view5(@ModelAttribute("bean") final Customer e, final Model m) {
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		CustomerDao obj = conn.getBean("dao", CustomerDao.class);
		List list = obj.searchData(e);
		if (!list.isEmpty()) {
			m.addAttribute("li", list);
		} else {
			m.addAttribute("msg", "oops! record not found");
		}
		return "Admin/search";

	}

	@RequestMapping("/update")
	public String view6(@ModelAttribute("bean") final Customer emp, final Model m) {

		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		CustomerDao obj = conn.getBean("dao", CustomerDao.class);
		obj.updateData(emp);
		m.addAttribute("msg", "Customer Details Update SucessFully ");
		return "Admin/search";
	}

	@RequestMapping("/delete")
	public String view7(@ModelAttribute("bean") final Customer emp, final Model m) {
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		CustomerDao obj = conn.getBean("dao", CustomerDao.class);
		obj.deleteData(emp);
		m.addAttribute("msg", "Customer Details Delete SucessFully ");
		return "Admin/search";

	}

}

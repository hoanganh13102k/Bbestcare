package admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.model.Customer;


@Transactional
@Controller
@RequestMapping("/manage/customer/")
public class CustomerController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("index")  
	public String index(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM Customer";   
		Query query = session.createQuery(hql);   
		List<Customer> list = query.list();   
		model.addAttribute("customers", list);   
		return "manage/customer/index";  
		}
	
}

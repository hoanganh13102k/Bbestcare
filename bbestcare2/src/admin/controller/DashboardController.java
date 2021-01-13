package admin.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.model.Staff;


@Transactional
@Controller
@RequestMapping("/manage/dashboard/")
public class DashboardController {
	@Autowired
	SessionFactory factory;
	
	
	@RequestMapping("dashboard")  
	public String dashboard() {    
		return "manage/dashboard/dashboard";  
		}

	
	@RequestMapping("error")  
	public String error(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM Staff";   
		Query query = session.createQuery(hql);   
		List<Staff> list = query.list();   
		model.addAttribute("staffs", list);   
		return "manage/dashboard/error";  
		}
	
	
	
}

package admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import admin.model.Customer;
import admin.model.Staff;


@Transactional
@Controller
@RequestMapping("/manage/staff/")
public class StaffController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("insert")  
	public String insert(ModelMap model) {     
		return "manage/staff/insert";  
		}
	
	@RequestMapping("index")  
	public String index(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM Staff where status='Passed'";   
		Query query = session.createQuery(hql);  
		List<Staff> list = query.list();   
		model.addAttribute("staffs", list);   
		return "manage/staff/index";  
		}
	
//	
//	@RequestMapping("login")   
//	public String login(ModelMap model) {   
//		Session session = factory.getCurrentSession();   
//		String hql = "FROM Staff";   
//		Query query = session.createQuery(hql);   
//		List<Staff> list = query.list();   
//		model.addAttribute("staffs", list);   
//		return "manage/staff/login";  
//		}
//
//	
//	@RequestMapping(value="login", method=RequestMethod.POST)
//	public String login(ModelMap model, 
//			@RequestParam("username") String username,
//			@RequestParam("password") String password,
//			HttpSession httpSession) {
//		Session session = factory.getCurrentSession();
//		try {
//			Users user = (Users) session.get(Users.class, username);
//			if(!user.getPassword().equals(password)){
//				model.addAttribute("message", "Sai máº­t kháº©u !");
//				return "manage/staff/login";
//			}
//			else{
//				httpSession.setAttribute("user", user);
//				model.addAttribute("message", "Ä�Äƒng nháº­p thÃ nh cÃ´ng !");
//				return "redirect:/manage/staff/index.htm";
//
//				}
//		} 
//		catch (Exception e) {
//			model.addAttribute("message", "Sai tÃªn Ä‘Äƒng nháº­p !");
//		}
//		
//		return "user/login";
//	}
	@RequestMapping("login")
	public String loginCustomer() {
		return "manage/staff/login";
	}
	@RequestMapping("profile")
	public String profile() {
		return "manage/staff/profile";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginCustomer(ModelMap model, 
			@RequestParam("phone") String phone,
			@RequestParam("password") String password,
			HttpSession httpSession) {
		Session session = factory.getCurrentSession();
		try {
			
			Staff user = (Staff) session.get(Staff.class, phone);
			if(!user.getPassword().equals(password)){
				model.addAttribute("message", "Sai tÃ i khoáº£n hoáº·c máº­t kháº©u!");
				return "manage/staff/login";
			}
			else{
				httpSession.setAttribute("user", user);
				model.addAttribute("message", "Ä�Äƒng nháº­p thÃ nh cÃ´ng !");
				return "redirect:/manage/dashboard/dashboard.htm";
				}
		} 
		catch (Exception e) {
			model.addAttribute("message", "Sai tÃªn Ä‘Äƒng nháº­p !");
		}
		
		return "manage/staff/login";
	}
	
	@RequestMapping("profile/{phone}")
	public String edit(ModelMap model, @PathVariable("phone") String phone) {
		Session session = factory.getCurrentSession();
		Staff staff = (Staff) session.get(Staff.class, phone);
		model.addAttribute("staff", staff);
		return "manage/staff/profile";
	}
	
//	@RequestMapping("profile/{username}")
//	public String edit(ModelMap model, @PathVariable("username") String username) {
//		Session session = factory.getCurrentSession();
////		System.out.println("username: "+username);
////		Users user = (Users) session.get(Users.class, username);
//		Query query = session.createQuery("FROM Staff s WHERE s.username.username =:user");
//		query.setString("user", username);
//		Staff staff = (Staff) query.list().get(0);
////		Staff staff = (Staff) session.
//		model.addAttribute("staff", staff);
//		return "manage/staff/profile";
//	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
    public String logout(HttpServletRequest request) {
    System.out.println("logout()");
    HttpSession httpSession = request.getSession();
    httpSession.invalidate();
    return "redirect:/client/loginAdmin.htm";
     
}
}

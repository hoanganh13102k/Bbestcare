package admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import admin.model.Customer;
import admin.model.LichKhachHang;
import admin.model.Rate;
import admin.model.Staff;
@Transactional
@Controller
@RequestMapping("/client/")
public class HomeController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("home")
	public String index() {
		return "client/home";
	}
	@RequestMapping("loginAdmin")
	public String loginAdmin() {
		return "client/loginAdmin";
	}
	@RequestMapping("loginCustomer")
	public String loginCustomer() {
		return "client/loginCustomer";
	}
	@RequestMapping("profile")
	public String profile() {
		return "client/profile";
	}
	@RequestMapping("myorder")
	public String myorder() {
		return "client/myorder";
	}
	@RequestMapping("about")
	public String about() {
		return "client/about";
	}
	@RequestMapping("rate")
	public String rate() {
		return "client/rate";
	}
	@RequestMapping("rated")
	public String rated() {
		return "client/rated";
	}
	@RequestMapping("notfoundpage")
	public String notfoundpage() {
		return "client/notfoundpage";
	}
	@RequestMapping("calendarOrderCustomer")
	public String calendarOrderCustomer() {
		return "client/calendarOrderCustomer";
	}
	
	@RequestMapping(value="loginCustomer", method=RequestMethod.POST)
	public String loginCustomer(ModelMap model, 
			@RequestParam("phone") String phone,
			@RequestParam("password") String password,
			HttpSession httpSession) {
		Session session = factory.getCurrentSession();
		try {	
			Customer customer = (Customer) session.get(Customer.class, phone);
			if(!customer.getPassword().equals(password)){
				model.addAttribute("message", "Sai tÃ i khoáº£n hoáº·c máº­t kháº©u!");
				return "client/loginCustomer";
			}
			else{
				httpSession.setAttribute("user", customer);
				model.addAttribute("message", "Ä�Äƒng nháº­p thÃ nh cÃ´ng !");
				return "redirect:/client/home.htm";
				}
		} 
		
		catch (Exception e) {
			model.addAttribute("message", "Sai tÃªn Ä‘Äƒng nháº­p !");
		}
		
		return "client/loginCustomer";
	}
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginAdmin(ModelMap model, 
			@RequestParam("phone") String phone,
			@RequestParam("password") String password,
			HttpSession httpSession) {
		Session session = factory.getCurrentSession();
		try {
			
			Staff user = (Staff) session.get(Staff.class, phone);
			if(!user.getPassword().equals(password)){
				model.addAttribute("message", "Sai tÃ i khoáº£n hoáº·c máº­t kháº©u!");
				return "client/loginAdmin";
			}
			else{
				httpSession.setAttribute("staff", user);
				model.addAttribute("message", "Ä�Äƒng nháº­p thÃ nh cÃ´ng !");
				return "redirect:/manage/dashboard/dashboard.htm";
				}
		} 
		catch (Exception e) {
			model.addAttribute("message", "Sai tÃªn Ä‘Äƒng nháº­p !");
		}
		
		return "client/loginAdmin";
	}

	@RequestMapping("delete/{phone}")
	public String delete(ModelMap model, @PathVariable("phone") String phone) {
		Session session = factory.getCurrentSession();
		Customer customer = (Customer) session.get(Customer.class, phone);
		session.delete(customer);
		return "redirect:/manage/customer/index.htm";
	}
	
	//thÃƒÂªm customer(khÃƒÂ¡ch hÃƒÂ ng tÃ¡Â»Â± tÃ¡ÂºÂ¡o)
	@RequestMapping(value="create-account", method=RequestMethod.GET) 
	public String createaccount(ModelMap model) {
		model.addAttribute("customer", new Customer());  
		return "client/create-account"; 
		}
	@RequestMapping(value="create-account", method=RequestMethod.POST) 
	public String create(ModelMap model, @ModelAttribute("customer") Customer customer ) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();  
		try {
			session.save(customer);   
			t.commit();   
			model.addAttribute("message", "Ä�Äƒng kÃ½ thÃ nh cÃ´ng !"); 
		}   
		catch (Exception e) {
			t.rollback();   
			model.addAttribute("message", "Ä�Äƒng kÃ½ tháº¥t báº¡i !");  
		}  
		finally {   
			session.close();  
			}  
		return "redirect:/client/loginCustomer.htm";
	}	
	@RequestMapping("forgot-password")  
	public String forgotpassword(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM Customer";   
		Query query = session.createQuery(hql);   
		List<Customer> list = query.list();   
		model.addAttribute("customers", list);   
		return "client/forgot-password";  
		}
	@RequestMapping("order")  
	public String order(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM Customer";   
		Query query = session.createQuery(hql);   
		List<Customer> list = query.list();   
		model.addAttribute("customers", list);   
		return "client/order";  
		}
	@RequestMapping(value="profile", method=RequestMethod.GET) 
	public String update(ModelMap model) {
		model.addAttribute("customers", new Customer());  
		return "client/profile"; 
		}
	
	@RequestMapping("profile/{phone}")
	public String edit(ModelMap model, @PathVariable("phone") String phone) {
		Session session = factory.getCurrentSession();
		Customer customer = (Customer) session.get(Customer.class, phone);
		model.addAttribute("customers", customer);
		return "client/profile";
	}
	

	@RequestMapping(value="profile", method=RequestMethod.POST) 
	public String update(ModelMap model, @ModelAttribute("customers") Customer customer) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();  
		try {
			session.update(customer);   
			t.commit();   
			model.addAttribute("message", "Cáº­p nháº­t thÃ nh cÃ´ng!"); 
		}   
		catch (Exception e) {
			t.rollback();   
			model.addAttribute("message", "Cáº­p nháº­t tháº¥t báº¡i!");  
		}  
		finally {   
			session.close();  
			}  
		return "client/profile";
	}
		
		@RequestMapping(value="logout", method=RequestMethod.GET)
	    public String logout(HttpServletRequest request) {
	    System.out.println("logout()");
        HttpSession httpSession = request.getSession();
        httpSession.invalidate();
        return "redirect:/client/home.htm";
         
    }
		
	/* List đánh giá */
		@ModelAttribute("listFeedback")
		public List<Rate> list(ModelMap model){
				Session session = factory.getCurrentSession();
				String hql = "From Rate";
				Query q = session.createQuery(hql);
				List<Rate> list = q.list();		
			return list;
		}
		@RequestMapping("delete1/{id}")
		public String delete123(ModelMap model, @PathVariable("id") Integer id) {
			Session session = factory.getCurrentSession();
			LichKhachHang customer = (LichKhachHang) session.get(LichKhachHang.class, id);
			session.delete(customer);
			return "redirect:/client/calendarOrderCustomer.htm";
		}
}


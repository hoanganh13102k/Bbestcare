package admin.controller;

import java.util.List;

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

import admin.model.LichKhachHang;

@Transactional
@Controller
@RequestMapping("/manage/ordered/")
public class OrderedController {
	@Autowired
	SessionFactory factory;
	
	@ModelAttribute("order")
	public List<LichKhachHang> list(ModelMap model){
			Session session = factory.getCurrentSession();
			String hql = "From LichKhachHang";
			Query q = session.createQuery(hql);
			List<LichKhachHang> list = q.list();		
		return list;
	}
	@RequestMapping("index")
	public String index(ModelMap model) {
		LichKhachHang lich = new LichKhachHang(); 
		 model.addAttribute("lichkhachhangs",lich); 
		return "manage/ordered/index";
	}
	@RequestMapping("delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		LichKhachHang lichkhachhang = (LichKhachHang) session.get(LichKhachHang.class, id);
		session.delete(lichkhachhang);
		return "redirect:/manage/ordered/index.htm";
	}
	
	@RequestMapping(value="update", method=RequestMethod.GET) 
	public String update(ModelMap model) {
		model.addAttribute("lichkhachhang", new LichKhachHang());  
		return "manage/ordered/update"; 
		}
	@RequestMapping("update/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		LichKhachHang lichkhachhang = (LichKhachHang) session.get(LichKhachHang.class, id);
		model.addAttribute("lichkhachhang", lichkhachhang);
		return "manage/ordered/update";
	}
	


	@RequestMapping(value="update", method=RequestMethod.POST) 
	public String update(ModelMap model, @ModelAttribute("lichkhachhang") LichKhachHang lichkhachhang) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();  
		try {
			session.update(lichkhachhang);   
			t.commit();   
			model.addAttribute("message", "cập nhật Thành Công!"); 
		}   
		catch (Exception e) {
			t.rollback();   
			model.addAttribute("message", "cập nhật Thất Bại!");  
		}  
		finally {   
			session.close();  
			}  
		return "redirect:/manage/ordered/index.htm";
	}
}

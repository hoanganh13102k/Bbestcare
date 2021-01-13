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
import admin.model.LichNhanVien;


@Transactional
@Controller
@RequestMapping("/manage/calendar/")
public class LichNhanVienController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("indexCalendar")  
	public String indexCalendar() {    
		return "manage/calendar/indexCalendar";  
		}
	@RequestMapping("scheduling")  
	public String scheduling() {    
		return "manage/calendar/scheduling";  
		}
//	@RequestMapping("index")  
//	public String index(ModelMap model) {   
//		Session session = factory.getCurrentSession();   
//		String hql = "FROM LichNhanVien";   
//		Query query = session.createQuery(hql);   
//		List<LichNhanVien> list = query.list();   
//		model.addAttribute("lichnhanviens", list);   
//		return "manage/calendar/index";  
//		}
	
	@ModelAttribute("listCalenda")
	public List<LichNhanVien> list(ModelMap model){
			Session session = factory.getCurrentSession();
			String hql = "From LichNhanVien";
			Query q = session.createQuery(hql);
			List<LichNhanVien> list = q.list();		
		return list;
	}
	@RequestMapping("index")
	public String index(ModelMap model) {
		LichNhanVien lich = new LichNhanVien(); 
		 model.addAttribute("lichnhanviens",lich); 
		return "manage/calendar/index";
	}
	
	@RequestMapping("delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		LichNhanVien lichnhanvien = (LichNhanVien) session.get(LichNhanVien.class, id);
		session.delete(lichnhanvien);
		return "redirect:/manage/calendar/index.htm";
	}
	
	@RequestMapping(value="insert", method=RequestMethod.GET) 
	public String insert(ModelMap model) {
		model.addAttribute("lichnhanvien", new LichNhanVien());  
		return "manage/calendar/insert"; 
		}
	
	@RequestMapping(value="insert", method=RequestMethod.POST) 
	public String insert(ModelMap model, @ModelAttribute("lichnhanvien") LichNhanVien lichnhanvien ) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();  
		try {
			session.save(lichnhanvien);   
			t.commit();   
			model.addAttribute("message", "Thêm mới thành công !"); 
		}   
		catch (Exception e) {
			t.rollback();   
			model.addAttribute("message", "Thêm mới thất bại !");  
		}  
		finally {   
			session.close();  
			}  
		return "redirect:/manage/calendar/index.htm";
	}
	
	@RequestMapping(value="update", method=RequestMethod.GET) 
	public String update(ModelMap model) {
		model.addAttribute("lichkhachhang", new LichKhachHang());  
		return "lichkhachhang/update"; 
		}
	@RequestMapping("update/{id}")
	public String edit(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		LichKhachHang lichkhachhang = (LichKhachHang) session.get(LichKhachHang.class, id);
		model.addAttribute("lichkhachhang", lichkhachhang);
		return "manage/calendar/update";
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
		return "redirect:/manage/calendar/scheduling.htm";
	}
	
	/* New */
	@RequestMapping("abcOrder")  
	public String index2(ModelMap model) {    
		return "manage/calendar/abcOrder";  
		}
	@RequestMapping("orderLichNhanVien")  
	public String index3(ModelMap model) {    
		return "manage/calendar/orderLichNhanVien";  
		}
}

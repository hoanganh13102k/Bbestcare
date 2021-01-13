package admin.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import admin.model.Staff;

@Transactional
@Controller
@RequestMapping("/client/")
public class RecruitmentClientController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("recruitment")
	public String index() {
		return "client/recruitment";
	}

	@RequestMapping(value = "recruitment", method = RequestMethod.GET)
	public String createaccount(ModelMap model) {
		model.addAttribute("recruitment", new Staff());
		return "client/recruitment";
	}

	@RequestMapping(value = "recruitment", method = RequestMethod.POST)
	public String create(ModelMap model, @ModelAttribute("recruitment") Staff recruitment) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(recruitment);
			t.commit();
			model.addAttribute("message",
					" <i class=\"fas fa-user-check\" style=\"color: green; font-size: 50px;\"></i>Đã gửi thông tin tuyển dụng!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Lỗi gửi thông tin tuyển dụng");
		} finally {

			session.close();

		}
		return "client/recruitment";
	}

//    @RequestMapping( value="insert",method = RequestMethod.GET)
//    public String viewRegistration(Map<String, Object> model) {
//        Recruitment recument = new Recruitment();    
//        model.put("recument", recument);
//        return "client/recruitment";
//    }
//     
//    @RequestMapping(value="insert",method = RequestMethod.POST)
//    public String processRegistration(@ModelAttribute("recument") Recruitment recument,
//            Map<String, Object> model) {
//         
//        // implement your own registration logic here...
//         
//         
//        return "client/recruitment";
//    }
//	@RequestMapping(value="insert", method=RequestMethod.GET) 
//	public String insert(ModelMap model) {
//		model.addAttribute("tuyendungs", new Recruitment());  
//		return "client/recruitment"; 
//		}
//	
//	@RequestMapping(value="insert", method=RequestMethod.POST) 
//	public String insert(ModelMap model, @ModelAttribute("tuyendungs") Recruitment tuyendung ) {
//		Session session = factory.openSession();  
//		Transaction t = session.beginTransaction();  
//		try {
//			session.save(tuyendung);   
//			t.commit();   
//			model.addAttribute("message", "Ã„ï¿½ÃƒÂ£ Ã¡Â»Â©ng tuyÃ¡Â»Æ’n!"); 
//		}   
//		
//		catch (Exception e) {
//			t.rollback();   
//			model.addAttribute("message", "erorr");  
//		}  
//		finally {   
//			session.close();  
//			}  
//		return "redirect:/client/recruitment.htm";
//	}
}

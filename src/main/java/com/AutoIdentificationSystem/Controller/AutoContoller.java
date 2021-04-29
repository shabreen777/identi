package com.AutoIdentificationSystem.Controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.AutoIdentificationSystem.Validator.CustomValidator;
import com.AutoIdentificationSystem.model.CustomerBean;
import com.AutoIdentificationSystem.model.RegistrationForm;
import com.AutoIdentificationSystem.model.UsersBean;
import com.AutoIdentificationSystem.service.AutoService;

@SessionAttributes("name")
@Controller
public class AutoContoller {

	@Autowired
	private AutoService service;

	@Autowired
	private CustomValidator validator;
	
	@GetMapping("/")
	public String home() {
		return "role";
	}
	
	@GetMapping("/homepage")
	public String home1() {
		return "role";
	}

	@GetMapping("/adminRole")
	public String role(ModelMap model) {
		model.addAttribute("users", new UsersBean());
		return "adminPage";
	}

	@PostMapping("/aipPage")
	public String Admin(@ModelAttribute("users") UsersBean user, ModelMap model) {
			if (service.validateAdmin(user.getUserid(), user.getPassword())) {
			List<CustomerBean> auto = service.getAutoDefaults();
			List<CustomerBean> manual = service.getManualDefaults();
			model.addAttribute("auto", auto);
			model.addAttribute("manual", manual);
			model.addAttribute("name", user.getUserid());
			return "AdminSuccess";
		} else {
			model.addAttribute("error", "Invalid UserId / Password");
			return "adminPage";
		}
	}

	@GetMapping("/aipPage")
	public String Admin2(@RequestParam String userid, ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("name", userid);
		List<CustomerBean> auto = service.getAutoDefaults();
		List<CustomerBean> manual = service.getManualDefaults();
		model.addAttribute("auto", auto);
		model.addAttribute("manual", manual);
		// model.addAttribute("name", userid);
		return "AdminSuccess";
	}

//	@GetMapping(value = "/logout")
//	public String showlogout() {
//		return "adminPage";
//	}
//
//	@PostMapping(value = "/logout")
//	public String logout(HttpSession session) {
//		session.invalidate();
//		return "adminPage";
//	}

	@GetMapping("/editCust")
	public String editCust(@ModelAttribute("cust") CustomerBean cust, Model model) {
		String name = cust.getCustName();
		CustomerBean c = service.getSingleCust(name);
		model.addAttribute("cust", new CustomerBean());
		model.addAttribute("customer", c);
		return "editCust";
	}

	@GetMapping("/updateEdited")
	public String saveEdited(@ModelAttribute("cust") CustomerBean c, ModelMap model) {
		// String name = c.getCustName();
		service.updateSingleCust(c);
		model.put("customer", c);
		// model.addAttribute("customer", c);
		return "editSuccess";
	}

	@GetMapping("dueList")
	public String dueList(@ModelAttribute("cust") CustomerBean cust, Model model) {
		List<CustomerBean> due = service.dueGT180();
		model.addAttribute("dueList", due);
		return "duePage";
	}

	@GetMapping("sendAlert")
	public String sendAlert(@ModelAttribute("cust") CustomerBean cust, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		UsersBean user = new UsersBean();
		session.setAttribute("name", user.getUserid());
		String nam = cust.getCustName();
		CustomerBean c = service.getSingleCust(nam);
		model.addAttribute("email", c.getEmail());
		Date plus = null;
		model.addAttribute("date", service.datePlus(plus));
		return "alert";
	}

	@GetMapping("employeeRole")
	public String role1(ModelMap model) {
		model.addAttribute("users", new UsersBean());
		return "bankEmployee";
	}

	@GetMapping("/signup")
	public String bank(ModelMap model) {
		model.addAttribute("register", new RegistrationForm());
		return "EmpSignup";
	}

	@PostMapping("/signUpSuccess")
	public String signUp(@ModelAttribute("register") RegistrationForm reg, BindingResult b, ModelMap model) {
		validator.validate(reg, b);
		if (b.hasErrors()) {
			return "EmpSignup";
		}
		String user = reg.getUserId();
		model.addAttribute("userId", user);
		service.addBEmployee(reg);
		return "BankEmpSuccess";
	}

	@GetMapping(value = "/bankEmp")
	public String bankEmp(@ModelAttribute("users") @Valid UsersBean user, ModelMap model) {
		String userid = user.getUserid();
		String pass = user.getPassword();
		if (service.validateBankEmployee(userid, pass)) {
			List<CustomerBean> allDef = service.getAllDefaulters();
			// model.addAttribute("cust", cust.getDefaultStatus());
			model.addAttribute("list", allDef);
			model.addAttribute("user", userid);
			return "EmpLogIn";
		} else {
			model.addAttribute("error", "Invalid UserId / Password");
			return "bankEmployee";
		}
	}

	@GetMapping("viewCust")
	public String view(@ModelAttribute("customer") CustomerBean c, Model model) {
		String name = c.getCustName();
		CustomerBean s = service.getSingleCust(name);
		model.addAttribute("details", s);
		return "viewCust";
	}

	@GetMapping(value = "/less90")
	public String d1(@ModelAttribute ("cust") CustomerBean c, Model model) {
		List<CustomerBean> list = service.lessThan3();
		model.addAttribute("list", list);
		return "90";
	}
	
	@GetMapping("alert90")
	public String alert90(@ModelAttribute ("cust") CustomerBean c, Model model) {
		String name = c.getCustName();
		CustomerBean s = service.getSingleCust(name);
		long a = (long) (s.getAmountUsed() * 10/100);
		String emai = s.getEmail();
		model.addAttribute("amount", a);
		model.addAttribute("nam", name);
		model.addAttribute("email", emai);
		return "alert90";
	}

	@GetMapping(value = "/90-180")
	public String d2(Model model) {
		List<CustomerBean> list = service.great3Less6();
		model.addAttribute("list", list);
		return "90-180";
	}
	
	@GetMapping("alert90-180")
	public String g90L180(@ModelAttribute ("cust") CustomerBean c, Model model){
		String name = c.getCustName();
		CustomerBean s = service.getSingleCust(name);
		model.addAttribute("email", s.getEmail());
		Date plus = null;
		model.addAttribute("date", service.datePlus(plus));
		return "alert90-180";
	}

	@GetMapping(value = "/180-365")
	public String d3(Model model) {
		List<CustomerBean> list = service.great6Less12();
		model.addAttribute("list", list);
		return "180-365";
	}
	
	@GetMapping("blockCard")
	public String block(@ModelAttribute ("cust") CustomerBean c, Model model) {
		String name = c.getCustName();
		CustomerBean s = service.getSingleCust(name);
		model.addAttribute("state", s.getCardStatus());
		model.addAttribute("nam", s.getCustName());
		return "blockcard";
	}

	@GetMapping(value = "/great365")
	public String d4(Model model) {
		List<CustomerBean> list =  service.great12();
		model.addAttribute("list", list);
		return "365";
	}
}

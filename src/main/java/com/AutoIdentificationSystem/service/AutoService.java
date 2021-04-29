package com.AutoIdentificationSystem.service;

import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.AutoIdentificationSystem.daoimpl.AutoDaoImpl;
import com.AutoIdentificationSystem.model.CustomerBean;
import com.AutoIdentificationSystem.model.RegistrationForm;
import com.AutoIdentificationSystem.model.UsersBean;

@Service
public class AutoService {

	@Autowired
	AutoDaoImpl impl;

	public boolean validateAdmin(String userid, String password) {
		UsersBean user = impl.getAdmin(userid, password);
		if (user != null) {
			if (user.getUserid().contentEquals(userid) && user.getPassword().contentEquals(password))
				return true;

			return false;
		}
		return false;
	}

	public boolean validateBankEmployee(String userid, String password) {
		UsersBean user = impl.getBankEmployee(userid, password);
		if (user != null) {
			if (user.getUserid().contentEquals(userid) && user.getPassword().contentEquals(password))
				return true;

			return false;
		}
		return false;
	}

	public void addBEmployee(RegistrationForm emp) {
		impl.addEmployee(emp);
	}

	public List<CustomerBean> getAutoDefaults() {
		List<CustomerBean> cust = impl.getAutoDefaults();
		return cust;
	}

	public List<CustomerBean> getManualDefaults() {
		List<CustomerBean> cust = impl.getManualDefaults();
		return cust;
	}

	public List<CustomerBean> getAllDefaulters() {
		List<CustomerBean> list = impl.getAllDefaulters();
		return list;
	}

	public List<CustomerBean> dueGT180() {
		return impl.dueGT6M();
	}

	public List<CustomerBean> lessThan3() {
		return impl.lessThan3();
	}

	public List<CustomerBean> great3Less6() {
		return impl.great3Less6();
	}

	public List<CustomerBean> great6Less12() {
		return impl.great6Less12();
	}

	public List<CustomerBean> great12() {
		return impl.great12();
	}

	public RegistrationForm getName(String firstName, String userid) {
		return impl.getFirstName(firstName, userid);
	}

	public CustomerBean getSingleCust(String name) {
		return impl.getSingleCust(name);
	}

	public CustomerBean updateSingleCust(CustomerBean c) {
		impl.updateSingleCust(c);
		return c;
	}

	public String datePlus(Date plus) {
		LocalDateTime today = LocalDateTime.now();
		LocalDateTime after7Days = today.plusDays(7);
		DateTimeFormatter format = DateTimeFormatter.ofPattern("E dd-MM-yyyy 'at' HH:mm:ss a");
		String formatDateTime = after7Days.format(format);
		return formatDateTime;

	}
}

package com.AutoIdentificationSystem.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.AutoIdentificationSystem.model.CustomerBean;
import com.AutoIdentificationSystem.model.RegistrationForm;

@Component
public interface AutoDao {

	public void addEmployee(RegistrationForm emp);
	
	//public RegistrationForm getEmployee();
	
	public List<CustomerBean> getAutoDefaults();
	
	public List<CustomerBean> getManualDefaults();
	
	public List<CustomerBean> getAllDefaulters();
	
	public List<CustomerBean> dueGT6M();
	
	int update(CustomerBean c);
	
//	public UsersBean getAdmin(String userid, String password);
//	
//	public UsersBean getBankEmployee(String userid, String password);

}

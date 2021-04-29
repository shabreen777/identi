package com.Dinesh.AutoIdentificationSystem;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import com.AutoIdentificationSystem.Controller.AutoContoller;
import com.AutoIdentificationSystem.model.UsersBean;

@SpringBootTest
class AutoIdentificationSystemApplicationTests {

	@Autowired
	private AutoContoller controller;

	@Test
	public void controllerIsNotNull() {
		assertThat(controller).isNotNull();
	}
	
	@Test
	public void testHomeController() {
		String result  = controller.home();
		assertEquals(result, "role");
	}
	
	@Test
	public void testAdminRole() {
		String result = controller.role(new ModelMap());
		assertEquals("adminPage", result);
	}

//	@Test
//	void admloginLogOutTest() {
//	assertEquals("adminLogout", controller.adminLogOut(new ModelMap()));
//	}
//	
	@Test
	public void BankEmployeeRoleTest() {
		String result = controller.role1(new ModelMap());
		assertEquals("bankEmployee", result);
	}
	
	@Test
	public void BankEmployeeSignUpTest() {
		String result = controller.bank(new ModelMap());
		assertEquals("EmpSignup", result);
	}
	
//	@Test
//	public void AdminTest() {
//		String result = controller.Admin(new UsersBean(), new ModelMap());
//		assertEquals("adminPage", result);
//		assertNotEquals("AdminSuccess", result);
//	}
	

}

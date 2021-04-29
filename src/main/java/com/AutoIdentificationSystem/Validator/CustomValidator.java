package com.AutoIdentificationSystem.Validator;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.AutoIdentificationSystem.model.RegistrationForm;

@Service
public class CustomValidator implements Validator {

	@Override
	public boolean supports(Class<?> target) {
		return RegistrationForm.class.equals(target);
	}

	@Override
	public void validate(Object target, Errors errors) {

		RegistrationForm form = (RegistrationForm) target;
		String phoneNo = String.format("%s", form.getContactNumber());
		
		if (!phoneNo.matches("[0-9]{10}")) {
			errors.rejectValue("contactNumber", "", "*Contact Number should be of 10 digits");
		} /*
			 * else if (phoneNo == "") { errors.rejectValue("contactNumber", "",
			 * "*Contact Number should not be blank"); }
			 */

		if (form.getFirstName().length() < 4 || form.getFirstName().length() > 50) {
			errors.rejectValue("firstName", "", "First Name should be in range 4-50");
		} else if (form.getLastName().length() < 4 || form.getLastName().length() > 50) {
			errors.rejectValue("lastName", "", "Last Name should be in range 4-50");
		}

		if (form.getPassword().length() < 6
				|| !(form.getPassword().matches("(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@$]).{6,}"))) {
			errors.rejectValue("password", "",
					"*Password should contain minimum 6 letters with special characters included");
		}

		if (form.getCity().isEmpty() || form.getFirstName().isEmpty() || form.getLastName().isEmpty()) {
			errors.rejectValue("gender", "", "Please enter the (*) mandatory fields");
		}

	}
}

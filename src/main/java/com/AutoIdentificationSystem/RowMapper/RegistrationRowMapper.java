package com.AutoIdentificationSystem.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.AutoIdentificationSystem.model.RegistrationForm;

public class RegistrationRowMapper implements RowMapper<RegistrationForm>{

	@Override
	public RegistrationForm mapRow(ResultSet rs, int rowNum) throws SQLException {
		RegistrationForm reg = new RegistrationForm();
		reg.setFirstName(rs.getString("firstName"));
		reg.setUserId(rs.getString("userId"));
		return null;
	}

}

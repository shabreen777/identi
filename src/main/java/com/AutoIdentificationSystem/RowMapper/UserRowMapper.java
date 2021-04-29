package com.AutoIdentificationSystem.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.AutoIdentificationSystem.model.UsersBean;

public class UserRowMapper implements RowMapper<UsersBean> {

	@Override
	public UsersBean mapRow(ResultSet rs, int rowNum) throws SQLException {
		UsersBean user = new UsersBean();
		user.setUserid(rs.getString("userid"));
		user.setPassword(rs.getString("pass"));
		return user;
	}

}

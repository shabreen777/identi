package com.AutoIdentificationSystem.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.AutoIdentificationSystem.model.CustomerBean;

public class CustomerRowMapper implements RowMapper<CustomerBean> {

	@Override
	public CustomerBean mapRow(ResultSet rs, int rowNum) throws SQLException {
		CustomerBean c = new CustomerBean();
		c.setId(rs.getInt(1));
		c.setCustName(rs.getString(2));
		c.setCustAccNum(rs.getLong(3));
		c.setDebitNum(rs.getLong(4));
		c.setCreditNum(rs.getLong(5));
		c.setCreditLimit(rs.getLong(6));
		c.setCreditStatus(rs.getBoolean(7));
		c.setBorrowerRate(rs.getInt(8));
		c.setAccuralStatus(rs.getInt(9));
		c.setEmail(rs.getString(10));
		c.setAmountUsed(rs.getLong(11));
		c.setPaymentUsedDate(rs.getDate(12));
		c.setRepaymentDate(rs.getDate(13));
		c.setPastDue(rs.getInt(14));
		c.setDefaultStatus(rs.getString(15));
		c.setComments(rs.getString(16));
		c.setCardStatus(rs.getString(17));
		return c;
	}

}

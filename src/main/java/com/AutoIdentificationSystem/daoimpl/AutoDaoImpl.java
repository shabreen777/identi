package com.AutoIdentificationSystem.daoimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.AutoIdentificationSystem.RowMapper.CustomerRowMapper;
import com.AutoIdentificationSystem.RowMapper.RegistrationRowMapper;
import com.AutoIdentificationSystem.RowMapper.UserRowMapper;
import com.AutoIdentificationSystem.dao.AutoDao;
import com.AutoIdentificationSystem.model.CustomerBean;
import com.AutoIdentificationSystem.model.RegistrationForm;
import com.AutoIdentificationSystem.model.UsersBean;

@Component
public class AutoDaoImpl implements AutoDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void addEmployee(RegistrationForm emp) {
		String query = "insert into bank_employee (firstname , lastname , dateofbirth , gender , contactnumber ,city , state , userid , pass) values(?,?,?,?,?,?,?,?,?);";
		jdbcTemplate.update(query, emp.getFirstName(), emp.getLastName(), emp.getDateOfBirth(), emp.getGender(),
				emp.getContactNumber(), emp.getCity(), emp.getState(), emp.getUserId(), emp.getPassword());
	}

	public void addCustomer(CustomerBean c) {
		String sql = "insert into customer (BorrowerRate,AccuralStatus,pastdue)values(?,?,?)";
		jdbcTemplate.update(sql, c.getBorrowerRate(), c.getAccuralStatus(), c.getPastDue());

	}

	@Override
	public int update(CustomerBean c) {
		String sql = "update customer set BorrowerRate=?, AccuralStatus=? where Id=?";
		int form = jdbcTemplate.update(sql, c.getBorrowerRate(), c.getAccuralStatus(), c.getId());
		return form;
	}

	public UsersBean getAdmin(String userid, String password) {
		try {
			String sql = "select userid,pass from admin where userid=? and pass=?";
			UsersBean user = jdbcTemplate.queryForObject(sql, new UserRowMapper(), userid, password);
			return user;
		} catch (EmptyResultDataAccessException e) {

			return null;
		}
	}

	public UsersBean getBankEmployee(String userid, String password) {
		try {
			String sql = "select userid,pass from bank_employee where userid=? and pass=?";
			UsersBean user = jdbcTemplate.queryForObject(sql, new UserRowMapper(), userid, password);
			return user;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	public RegistrationForm getFirstName(String firstName, String userid) {
		try {
			String sql = "select firstname,userid from bank_employee where firstname=? and  userid=?";
			RegistrationForm user = jdbcTemplate.queryForObject(sql, new RegistrationRowMapper(), firstName, userid);
			return user;
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	@Override
	public List<CustomerBean> getAutoDefaults() {
		String sql = "select * from customer where BorrowerRate>7 and (AccuralStatus=2 or AccuralStatus=3 or AccuralStatus=4 or AccuralStatus=5)";
		List<CustomerBean> list = jdbcTemplate.query(sql, new CustomerRowMapper());
		return list;
	}

	@Override
	public List<CustomerBean> getManualDefaults() {
		String sql = "select * from customer where (BorrowerRate>4 and BorrowerRate<8) or (AccuralStatus=1 or AccuralStatus=6 or AccuralStatus=7) and pastdue>=90";
		List<CustomerBean> list = jdbcTemplate.query(sql, new CustomerRowMapper());
		return list;
	}

	@Override
	public List<CustomerBean> getAllDefaulters() {
		String sql = "select * from customer";
		List<CustomerBean> list = jdbcTemplate.query(sql, new CustomerRowMapper());
		return list;
	}

	@Override
	public List<CustomerBean> dueGT6M() {
		String sql = "select * from customer where pastdue>=180";
		List<CustomerBean> list = jdbcTemplate.query(sql, new CustomerRowMapper());
		return list;
	}

	public List<CustomerBean> lessThan3() {
		String sql = "select * from customer where pastdue<=90";
		List<CustomerBean> list = jdbcTemplate.query(sql, new CustomerRowMapper());
		return list;
	}

	public List<CustomerBean> great3Less6() {
		String sql = "select * from customer where pastdue>90 and pastdue<=180";
		List<CustomerBean> list = jdbcTemplate.query(sql, new CustomerRowMapper());
		return list;
	}

	public List<CustomerBean> great6Less12() {
		String sql = "select * from customer where pastdue>180 and pastdue<=365";
		List<CustomerBean> list = jdbcTemplate.query(sql, new CustomerRowMapper());
		return list;
	}

	public List<CustomerBean> great12() {
		String sql = "select * from customer where pastdue>365";
		List<CustomerBean> list = jdbcTemplate.query(sql, new CustomerRowMapper());
		return list;
	}

	public CustomerBean getSingleCust(String name) {
		try {
			String sql = "select * from customer where CustName=?";
			CustomerBean cust = jdbcTemplate.queryForObject(sql, new CustomerRowMapper(), name);
			return cust;
		} catch (EmptyResultDataAccessException e) {
			System.out.println("Exception Caught!!");
			return null;
		}
	}

	public CustomerBean updateSingleCust(CustomerBean cust) {
		String sql = "update customer set BorrowerRate=?,AccuralStatus=?,pastdue=?, DefaultStatus=?, comments=? where CustName=?";
		jdbcTemplate.update(sql, cust.getBorrowerRate(), cust.getAccuralStatus(), cust.getPastDue(),
				cust.getDefaultStatus(), cust.getComments(), cust.getCustName());
		return cust;
	}

}

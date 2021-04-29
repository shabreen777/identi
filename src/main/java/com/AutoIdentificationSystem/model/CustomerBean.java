package com.AutoIdentificationSystem.model;

import java.sql.Date;

public class CustomerBean {

	private int id;
	private String custName;
	private long custAccNum;
	private long debitNum;
	private long creditNum;
	private long creditLimit;
	private boolean creditStatus;
	private int borrowerRate;
	private int accuralStatus;
	private String email;
	private long amountUsed;
	private Date paymentUsedDate;
	private Date repaymentDate;
	private int pastDue;
	private String defaultStatus;
	private String comments;
	private String cardStatus;

	public CustomerBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public long getCustAccNum() {
		return custAccNum;
	}

	public void setCustAccNum(long custAccNum) {
		this.custAccNum = custAccNum;
	}

	public long getDebitNum() {
		return debitNum;
	}

	public void setDebitNum(long debitNum) {
		this.debitNum = debitNum;
	}

	public long getCreditNum() {
		return creditNum;
	}

	public void setCreditNum(long creditNum) {
		this.creditNum = creditNum;
	}

	public long getCreditLimit() {
		return creditLimit;
	}

	public void setCreditLimit(long creditLimit) {
		this.creditLimit = creditLimit;
	}

	public boolean isCreditStatus() {
		return creditStatus;
	}

	public void setCreditStatus(boolean creditStatus) {
		this.creditStatus = creditStatus;
	}

	public int getBorrowerRate() {
		return borrowerRate;
	}

	public void setBorrowerRate(int borrowerRate) {
		this.borrowerRate = borrowerRate;
	}

	public int getAccuralStatus() {
		return accuralStatus;
	}

	public void setAccuralStatus(int accuralStatus) {
		this.accuralStatus = accuralStatus;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getAmountUsed() {
		return amountUsed;
	}

	public void setAmountUsed(long amountUsed) {
		this.amountUsed = amountUsed;
	}

	public Date getPaymentUsedDate() {
		return paymentUsedDate;
	}

	public void setPaymentUsedDate(Date paymentUsedDate) {
		this.paymentUsedDate = paymentUsedDate;
	}

	public Date getRepaymentDate() {
		return repaymentDate;
	}

	public void setRepaymentDate(Date repaymentDate) {
		this.repaymentDate = repaymentDate;
	}

	public int getPastDue() {
		return pastDue;
	}

	public void setPastDue(int pastDue) {
		this.pastDue = pastDue;
	}

	public String getDefaultStatus() {
		return defaultStatus;
	}

	public void setDefaultStatus(String defaultStatus) {
		this.defaultStatus = defaultStatus;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getCardStatus() {
		return cardStatus;
	}

	public void setCardStatus(String cardStatus) {
		this.cardStatus = cardStatus;
	}

	public CustomerBean(int id, String custName, long custAccNum, long debitNum, long creditNum, long creditLimit,
			boolean creditStatus, int borrowerRate, int accuralStatus, String email, long amountUsed,
			Date paymentUsedDate, Date repaymentDate, int pastDue, String defaultStatus, String comments,
			String cardStatus) {
		super();
		this.id = id;
		this.custName = custName;
		this.custAccNum = custAccNum;
		this.debitNum = debitNum;
		this.creditNum = creditNum;
		this.creditLimit = creditLimit;
		this.creditStatus = creditStatus;
		this.borrowerRate = borrowerRate;
		this.accuralStatus = accuralStatus;
		this.email = email;
		this.amountUsed = amountUsed;
		this.paymentUsedDate = paymentUsedDate;
		this.repaymentDate = repaymentDate;
		this.pastDue = pastDue;
		this.defaultStatus = defaultStatus;
		this.comments = comments;
		this.cardStatus = cardStatus;
	}

	@Override
	public String toString() {
		return "CustomerBean [id=" + id + ", custName=" + custName + ", custAccNum=" + custAccNum + ", debitNum="
				+ debitNum + ", creditNum=" + creditNum + ", creditLimit=" + creditLimit + ", creditStatus="
				+ creditStatus + ", borrowerRate=" + borrowerRate + ", accuralStatus=" + accuralStatus + ", email="
				+ email + ", amountUsed=" + amountUsed + ", paymentUsedDate=" + paymentUsedDate + ", repaymentDate="
				+ repaymentDate + ", pastDue=" + pastDue + ", defaultStatus=" + defaultStatus + ", comments=" + comments
				+ ", cardStatus=" + cardStatus + "]";
	}

}

package com.grit.lecture.model;

import java.sql.Timestamp;

public class LectureVO {
	private int cNo;
	private String cCategory;
	private String cName;
	private String cTeacherIntro;
	private String cStatus;
	private String cSummary;
	private String cDetail;
	private Timestamp cDate;
	private String cLocation;
	private String cMaxPerson;
	private String cPerson;
	private String cPay;
	private int cMoney;
	private String cAccount;
	private int imgNo;
	private String cBank;
	private int cReadCount;
	private Timestamp cRegdate;
	private String cDelflag;
	private String cRecommand;
	private String memUserid;

	public LectureVO() {
		super();
	}

	public LectureVO(int cNo, String cCategory, String cName, String cTeacherIntro, String cStatus, String cSummary,
			String cDetail, Timestamp cDate, String cLocation, String cMaxPerson, String cPerson, String cPay,
			int cMoney, String cAccount, int imgNo, String cBank, int cReadCount, Timestamp cRegdate, String cDelflag,
			String cRecommand, String memUserid) {
		super();
		this.cNo = cNo;
		this.cCategory = cCategory;
		this.cName = cName;
		this.cTeacherIntro = cTeacherIntro;
		this.cStatus = cStatus;
		this.cSummary = cSummary;
		this.cDetail = cDetail;
		this.cDate = cDate;
		this.cLocation = cLocation;
		this.cMaxPerson = cMaxPerson;
		this.cPerson = cPerson;
		this.cPay = cPay;
		this.cMoney = cMoney;
		this.cAccount = cAccount;
		this.imgNo = imgNo;
		this.cBank = cBank;
		this.cReadCount = cReadCount;
		this.cRegdate = cRegdate;
		this.cDelflag = cDelflag;
		this.cRecommand = cRecommand;
		this.memUserid = memUserid;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public String getcCategory() {
		return cCategory;
	}

	public void setcCategory(String cCategory) {
		this.cCategory = cCategory;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcTeacherIntro() {
		return cTeacherIntro;
	}

	public void setcTeacherIntro(String cTeacherIntro) {
		this.cTeacherIntro = cTeacherIntro;
	}

	public String getcStatus() {
		return cStatus;
	}

	public void setcStatus(String cStatus) {
		this.cStatus = cStatus;
	}

	public String getcSummary() {
		return cSummary;
	}

	public void setcSummary(String cSummary) {
		this.cSummary = cSummary;
	}

	public String getcDetail() {
		return cDetail;
	}

	public void setcDetail(String cDetail) {
		this.cDetail = cDetail;
	}

	public Timestamp getcDate() {
		return cDate;
	}

	public void setcDate(Timestamp cDate) {
		this.cDate = cDate;
	}

	public String getcLocation() {
		return cLocation;
	}

	public void setcLocation(String cLocation) {
		this.cLocation = cLocation;
	}

	public String getcMaxPerson() {
		return cMaxPerson;
	}

	public void setcMaxPerson(String cMaxPerson) {
		this.cMaxPerson = cMaxPerson;
	}

	public String getcPerson() {
		return cPerson;
	}

	public void setcPerson(String cPerson) {
		this.cPerson = cPerson;
	}

	public String getcPay() {
		return cPay;
	}

	public void setcPay(String cPay) {
		this.cPay = cPay;
	}

	public int getcMoney() {
		return cMoney;
	}

	public void setcMoney(int cMoney) {
		this.cMoney = cMoney;
	}

	public String getcAccount() {
		return cAccount;
	}

	public void setcAccount(String cAccount) {
		this.cAccount = cAccount;
	}

	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public String getcBank() {
		return cBank;
	}

	public void setcBank(String cBank) {
		this.cBank = cBank;
	}

	public int getcReadCount() {
		return cReadCount;
	}

	public void setcReadCount(int cReadCount) {
		this.cReadCount = cReadCount;
	}

	public Timestamp getcRegdate() {
		return cRegdate;
	}

	public void setcRegdate(Timestamp cRegdate) {
		this.cRegdate = cRegdate;
	}

	public String getcDelflag() {
		return cDelflag;
	}

	public void setcDelflag(String cDelflag) {
		this.cDelflag = cDelflag;
	}

	public String getcRecommand() {
		return cRecommand;
	}

	public void setcRecommand(String cRecommand) {
		this.cRecommand = cRecommand;
	}

	public String getMemUserid() {
		return memUserid;
	}

	public void setMemUserid(String memUserid) {
		this.memUserid = memUserid;
	}

	@Override
	public String toString() {
		return "LectureVO [cNo=" + cNo + ", cCategory=" + cCategory + ", cName=" + cName + ", cTeacherIntro="
				+ cTeacherIntro + ", cStatus=" + cStatus + ", cSummary=" + cSummary + ", cDetail=" + cDetail
				+ ", cDate=" + cDate + ", cLocation=" + cLocation + ", cMaxPerson=" + cMaxPerson + ", cPerson="
				+ cPerson + ", cPay=" + cPay + ", cMoney=" + cMoney + ", cAccount=" + cAccount + ", imgNo=" + imgNo
				+ ", cBank=" + cBank + ", cReadCount=" + cReadCount + ", cRegdate=" + cRegdate + ", cDelflag="
				+ cDelflag + ", cRecommand=" + cRecommand + ", memUserid=" + memUserid + "]";
	}
	
}

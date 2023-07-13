package com.vehicle;

public class vehicle {
	private String vNo;
	private String vType;
	private String vChassisNo;
	private String vSeatCap;
	private String vOwnerName;
	private String vOwnerNIC;
	private String vOwnerAddress;
	private String vOwnerPhone;
	
	public vehicle(String vNo, String vType, String vChassisNo, String vSeatCap, String vOwnerName, String vOwnerNIC,
			String vOwnerAddress, String vOwnerPhone) {
		super();
		this.vNo = vNo;
		this.vType = vType;
		this.vChassisNo = vChassisNo;
		this.vSeatCap = vSeatCap;
		this.vOwnerName = vOwnerName;
		this.vOwnerNIC = vOwnerNIC;
		this.vOwnerAddress = vOwnerAddress;
		this.vOwnerPhone = vOwnerPhone;
	}

	public String getvNo() {
		return vNo;
	}

	public void setvNo(String vNo) {
		this.vNo = vNo;
	}

	public String getvType() {
		return vType;
	}

	public void setvType(String vType) {
		this.vType = vType;
	}

	public String getvChassisNo() {
		return vChassisNo;
	}

	public void setvChassisNo(String vChassisNo) {
		this.vChassisNo = vChassisNo;
	}

	public String getvSeatCap() {
		return vSeatCap;
	}

	public void setvSeatCap(String vSeatCap) {
		this.vSeatCap = vSeatCap;
	}

	public String getvOwnerName() {
		return vOwnerName;
	}

	public void setvOwnerName(String vOwnerName) {
		this.vOwnerName = vOwnerName;
	}

	public String getvOwnerNIC() {
		return vOwnerNIC;
	}

	public void setvOwnerNIC(String vOwnerNIC) {
		this.vOwnerNIC = vOwnerNIC;
	}

	public String getvOwnerAddress() {
		return vOwnerAddress;
	}

	public void setvOwnerAddress(String vOwnerAddress) {
		this.vOwnerAddress = vOwnerAddress;
	}

	public String getvOwnerPhone() {
		return vOwnerPhone;
	}

	public void setvOwnerPhone(String vOwnerPhone) {
		this.vOwnerPhone = vOwnerPhone;
	}
	
	
	
	
	
	
	
}

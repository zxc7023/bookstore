package com.junkikim.vo;

public class UserVO {

	String id;
	String password;
	String name;
	int postcode;
	String address;
	String detailAddress;
	String phone;
	int member_type;

	public UserVO() {
	}

	public UserVO(String id, String password, String name, int postcode, String address, String detailAddress,
			String phone, int member_type) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.postcode = postcode;
		this.address = address;
		this.detailAddress = detailAddress;
		this.phone = phone;
		this.member_type = member_type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPostcode() {
		return postcode;
	}

	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getMember_type() {
		return member_type;
	}

	public void setMember_type(int member_type) {
		this.member_type = member_type;
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", password=" + password + ", name=" + name + ", postcode=" + postcode
				+ ", address=" + address + ", detailAddress=" + detailAddress + ", phone=" + phone + ", member_type="
				+ member_type + "]";
	}

}

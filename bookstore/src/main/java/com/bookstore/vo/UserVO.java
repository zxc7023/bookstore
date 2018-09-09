package com.bookstore.vo;

public class UserVO {

	String id;
	String password;
	String name;
	int postcode;
	String address;
	String detail_address;
	String phone;
	int type;

	public UserVO() {
	}

	public UserVO(String id, String password, String name, int postcode, String address, String detail_address,
			String phone, int type) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.postcode = postcode;
		this.address = address;
		this.detail_address = detail_address;
		this.phone = phone;
		this.type = type;
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

	public String getDetail_address() {
		return detail_address;
	}

	public void setDetail_address(String detail_address) {
		this.detail_address = detail_address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", password=" + password + ", name=" + name + ", postcode=" + postcode
				+ ", address=" + address + ", detail_address=" + detail_address + ", phone=" + phone + ", type=" + type
				+ "]";
	}

}

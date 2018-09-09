package com.bookstore.vo;

import java.util.Date;

public class BookVO {

	int book_no;
	String book_name;
	String book_author;
	String book_publication;
	Date book_pub_date;
	int book_price;
	String book_info;
	int book_quantity;
	String book_image;
	String book_type;
	String book_type_name;

	public BookVO() {
		
	}
	
	public BookVO(int book_no, String book_name, String book_author, String book_publication, Date book_pub_date,
			int book_price, String book_info, int book_quantity, String book_image, String book_type,
			String book_type_name) {
		super();
		this.book_no = book_no;
		this.book_name = book_name;
		this.book_author = book_author;
		this.book_publication = book_publication;
		this.book_pub_date = book_pub_date;
		this.book_price = book_price;
		this.book_info = book_info;
		this.book_quantity = book_quantity;
		this.book_image = book_image;
		this.book_type = book_type;
		this.book_type_name = book_type_name;
	}

	public int getBook_no() {
		return book_no;
	}

	public void setBook_no(int book_no) {
		this.book_no = book_no;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getBook_author() {
		return book_author;
	}

	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}

	public String getBook_publication() {
		return book_publication;
	}

	public void setBook_publication(String book_publication) {
		this.book_publication = book_publication;
	}

	public Date getBook_pub_date() {
		return book_pub_date;
	}

	public void setBook_pub_date(Date book_pub_date) {
		this.book_pub_date = book_pub_date;
	}

	public int getBook_price() {
		return book_price;
	}

	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}

	public String getBook_info() {
		return book_info;
	}

	public void setBook_info(String book_info) {
		this.book_info = book_info;
	}

	public int getBook_quantity() {
		return book_quantity;
	}

	public void setBook_quantity(int book_quantity) {
		this.book_quantity = book_quantity;
	}

	public String getBook_image() {
		return book_image;
	}

	public void setBook_image(String book_image) {
		this.book_image = book_image;
	}

	public String getBook_type() {
		return book_type;
	}

	public void setBook_type(String book_type) {
		this.book_type = book_type;
	}

	public String getBook_type_name() {
		return book_type_name;
	}

	public void setBook_type_name(String book_type_name) {
		this.book_type_name = book_type_name;
	}

	@Override
	public String toString() {
		return "BookVO [book_no=" + book_no + ", book_name=" + book_name + ", book_author=" + book_author
				+ ", book_publication=" + book_publication + ", book_pub_date=" + book_pub_date + ", book_price="
				+ book_price + ", book_info=" + book_info + ", book_quantity=" + book_quantity + ", book_image="
				+ book_image + ", book_type=" + book_type + ", book_type_name=" + book_type_name + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + book_no;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BookVO other = (BookVO) obj;
		if (book_no != other.book_no)
			return false;
		return true;
	}
	
	
	
	
	

}

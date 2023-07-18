package courier;

import java.sql.*;

public class Parcel {
	int parcel_id;
	double parcel_kg;
	String parcel_type;
	String sender_name;
	String sender_address	;
	String sender_pnum;
	String rece_name;
	String rece_address;
	String rece_pnum;
	
	
	public Parcel() {
		super();
	}


	public Parcel(int parcel_id, double parcel_kg, String parcel_type, String sender_name,
			String sender_address, String sender_pnum, String rece_name, String rece_address, String rece_pnum) {
		super();
		this.parcel_id = parcel_id;
		this.parcel_kg = parcel_kg;
		this.parcel_type = parcel_type;
		this.sender_name = sender_name;
		this.sender_address = sender_address;
		this.sender_pnum = sender_pnum;
		this.rece_name = rece_name;
		this.rece_address = rece_address;
		this.rece_pnum = rece_pnum;
	}


	public int getParcel_id() {
		return parcel_id;
	}


	public void setParcel_id(int parcel_id) {
		this.parcel_id = parcel_id;
	}


	public double getParcel_kg() {
		return parcel_kg;
	}


	public void setParcel_kg(double parcel_kg) {
		this.parcel_kg = parcel_kg;
	}


	public String getParcel_type() {
		return parcel_type;
	}


	public void setParcel_type(String parcel_type) {
		this.parcel_type = parcel_type;
	}



	public String getSender_name() {
		return sender_name;
	}


	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}


	public String getSender_address() {
		return sender_address;
	}


	public void setSender_address(String sender_address) {
		this.sender_address = sender_address;
	}


	public String getSender_pnum() {
		return sender_pnum;
	}


	public void setSender_pnum(String sender_pnum) {
		this.sender_pnum = sender_pnum;
	}


	public String getRece_name() {
		return rece_name;
	}


	public void setRece_name(String rece_name) {
		this.rece_name = rece_name;
	}


	public String getRece_address() {
		return rece_address;
	}


	public void setRece_address(String rece_address) {
		this.rece_address = rece_address;
	}


	public String getRece_pnum() {
		return rece_pnum;
	}


	public void setRece_pnum(String rece_pnum) {
		this.rece_pnum = rece_pnum;
	}


	
}

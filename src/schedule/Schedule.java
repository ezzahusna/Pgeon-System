package schedule;

import java.sql.*;

public class Schedule {
	int parcel_id;
	Date schedule_date;
	int staff_id;
	String staff_name;
	
	
	public Schedule() {
		super();
	}


	public Schedule(int parcel_id, Date schedule_date, int staff_id, String staff_name ) {
		super();
		this.parcel_id = parcel_id;
		this.schedule_date = schedule_date;
		this.staff_id= staff_id;
		this.staff_name = staff_name;
	}


	public int getParcel_id() {
		return parcel_id;
	}


	public void setParcel_id(int parcel_id) {
		this.parcel_id = parcel_id;
	}


	public Date getSchedule_date() {
		return schedule_date;
	}


	public void setSchedule_date(Date schedule_date) {
		this.schedule_date = schedule_date;
	}


	public int getStaff_id() {
		return staff_id;
	}


	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
	}


	public String getStaff_name() {
		return staff_name;
	}


	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}


	
}
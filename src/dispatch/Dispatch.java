package dispatch;


import java.sql.*;

public class Dispatch {
	int dis_id;
	String dis_tel;
	String dis_name;
	

	public Dispatch() {
		super();
	}


	public Dispatch(int dis_id, String dis_tel, String dis_name ) {
		super();
		this.dis_id = dis_id;
		this.dis_tel = dis_tel;
		this.dis_name = dis_name;
		
	}


	public int getDis_id() {
		return dis_id;
	}


	public void setDis_id(int dis_id) {
		this.dis_id = dis_id;
	}


	public String getDis_tel() {
		return dis_tel;
	}


	public void setDis_tel(String dis_tel) {
		this.dis_tel = dis_tel;
	}


	public String getDis_name() {
		return dis_name;
	}


	public void setDis_name(String dis_name) {
		this.dis_name = dis_name;
	}

}
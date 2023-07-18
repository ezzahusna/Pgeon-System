package courier;
import java.sql.*;
import java.util.ArrayList;

import courier.Parcel;

public class parcelModel {
	private Statement statement;
	private PreparedStatement ps;
	private Connection connection;
	
	public parcelModel(){
		super();
	}
	
	public parcelModel(Statement statement, PreparedStatement ps, Connection connection) {
		super();
		this.statement = statement;
		this.ps = ps;
		this.connection = connection;
	} 
	
	public void initJDBC() throws ClassNotFoundException, SQLException{
		
		//Load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("Driver loaded");
		connection = DriverManager.getConnection ("jdbc:mysql://localhost/test" , "root", "");
		System.out.println("Database connected");
	}
	
	public ArrayList<Parcel> viewParcel() throws ClassNotFoundException, 
SQLException {
		
		initJDBC();
		ArrayList<Parcel> pcList = null;
		
		try {
			
			pcList = new ArrayList<Parcel>();
			Statement statement = connection.createStatement();
			
			ResultSet rset = statement.executeQuery("SELECT * FROM parcel"); 
			
				while (rset.next()) {
					Parcel pc = new Parcel();
					pc.setParcel_id(rset.getInt("parcel_id"));
					pc.setParcel_type(rset.getString("parcel_type"));
					pc.setParcel_kg(rset.getDouble("parcel_kg"));
					pc.setSender_name(rset.getString("sender_name"));
					pc.setSender_address(rset.getString("sender_address"));
					pc.setSender_pnum(rset.getString("sender_pnum"));
					pc.setRece_name(rset.getString("rece_name"));
					pc.setRece_address(rset.getString("rece_address"));
					pc.setRece_pnum(rset.getString("rece_pnum"));
					
					pcList.add(pc);
				}
			}
		
		catch(Exception ex){
			System.out.println("viewParcel():" + ex);
			ex.printStackTrace();
		}
		// Close the connection
		connection.close();
		return pcList;
	}
	
	//Create a record
	public void addParcel(Parcel pc) throws ClassNotFoundException, SQLException{
		
		initJDBC();
		try {
			String addSQL = "insert into parcel(parcel_type, parcel_kg,  sender_name, sender_address,"
					+ " sender_pnum, rece_name,rece_address, rece_pnum) values(?, ?, ?, ?, ?, ?, ?, ?)";
			ps = connection.prepareStatement(addSQL,Statement.RETURN_GENERATED_KEYS); 
		
			ps.setString(1,pc.getParcel_type());
			ps.setDouble(2,pc.getParcel_kg());
			ps.setString(3, pc.getSender_name());
			ps.setString(4, pc.getSender_address());
			ps.setString(5, pc.getSender_pnum());
			ps.setString(6, pc.getRece_name());
			ps.setString(7, pc.getRece_address());
			ps.setString(8, pc.getRece_pnum());
			ps.executeUpdate(); 
		}
		
		catch (Exception ex) {
			System.out.println("addParcel(): " + ex);
			ex.printStackTrace();
		}
		
	}
	
	//Read a record
	public Parcel getParcelById(int parcel_id){
		
		Parcel pcById = new Parcel();
		
		try {
			initJDBC();
			String selectSQL = "SELECT * FROM parcel WHERE parcel_id = ?"; 
			ps = connection.prepareStatement(selectSQL); 
			ps.setInt(1, parcel_id);
			ResultSet rset = ps.executeQuery();
			while(rset.next())
			{
				pcById.setParcel_id(rset.getInt("parcel_id"));
				pcById.setParcel_type(rset.getString("parcel_type"));
				pcById.setParcel_kg(rset.getDouble("parcel_kg"));	
				pcById.setSender_name(rset.getString("sender_name"));
				pcById.setSender_address(rset.getString("sender_address"));
				pcById.setRece_name(rset.getString("rece_name"));
				pcById.setRece_address(rset.getString("rece_address"));
				pcById.setRece_pnum(rset.getString("rece_pnum"));
				
				}
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
		return pcById;
	}
	//Update a record
	public void updateParcel(Parcel pc)throws SQLException, ClassNotFoundException {
		
		initJDBC();
		try {
			String updateSQL = "UPDATE parcel SET parcel_type = ?, parcel_kg = ?, sender_name = ?,sender_address = ?,sender_pnum = ?,rece_name = ?, rece_address = ?, rece_pnum = ? WHERE parcel_id = ?";
			ps = connection.prepareStatement(updateSQL,Statement.RETURN_GENERATED_KEYS); 
			ps.setString(1,pc.getParcel_type());
			ps.setDouble(2,pc.getParcel_kg());
			ps.setString(3, pc.getSender_name());
			ps.setString(4, pc.getSender_address());
			ps.setString(5, pc.getSender_pnum());
			ps.setString(6, pc.getRece_name());
			ps.setString(7, pc.getRece_address());
			ps.setString(8, pc.getRece_pnum());
			ps.executeUpdate(); 
			}
		catch (Exception ex) {
			System.out.println("updateParcel(); " + ex);
			ex.printStackTrace();
			}
	}
	
	//Delete a record
	public void deleteParcelById (int parcel_id) throws ClassNotFoundException, SQLException{
		try {
			initJDBC();
			String deleteSQL = ("DELETE from parcel WHERE parcel_id = ?");
			PreparedStatement ps = connection.prepareStatement(deleteSQL);
			ps.setInt(1, parcel_id);
			ps.executeUpdate();
			System.out.println("The record has been deleted");
			}
		catch (Exception ex) {
			System.out.println("deleteParcelById(): "+ ex);
			ex.printStackTrace();
			}
	}
}
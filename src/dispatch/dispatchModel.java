package dispatch;
import java.sql.*;
import java.util.ArrayList;

import courier.Parcel;
import dispatch.Dispatch;

public class dispatchModel {
	private Statement statement;
	private PreparedStatement ps;
	private Connection connection;
	
	public dispatchModel(){
		super();
	}
	
	public dispatchModel(Statement statement, PreparedStatement ps, Connection connection) {
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
	
	public ArrayList<Dispatch> viewDispatch() throws ClassNotFoundException, 
SQLException {
		
		initJDBC();
		ArrayList<Dispatch> pcList = null;
		
		try {
			
			pcList = new ArrayList<Dispatch>();
			Statement statement = connection.createStatement();
			
			ResultSet rset = statement.executeQuery("SELECT * FROM dispatch"); 
			
				while (rset.next()) {
					Dispatch pc = new Dispatch();
					pc.setDis_id(rset.getInt("dis_id"));					
					pc.setDis_tel(rset.getString("dis_tel"));
					pc.setDis_name(rset.getString("dis_name"));
	
					pcList.add(pc);
				}
			}
		
		catch(Exception ex){
			System.out.println("viewDispatch():" + ex);
			ex.printStackTrace();
		}
		// Close the connection
		connection.close();
		return pcList;
	}
	
	//Create a record
	public void addDispatch(Dispatch pc) throws ClassNotFoundException, SQLException{
		
		initJDBC();
		try {
			String addSQL = "insert into dispatch(dis_id, dis_tel, dis_name) values(?, ?, ?)";
			ps = connection.prepareStatement(addSQL,Statement.RETURN_GENERATED_KEYS); 
		
			ps.setString(1, pc.getDis_tel());
			ps.setString(2, pc.getDis_name());
			ps.executeUpdate(); 
		}
		
		catch (Exception ex) {
			System.out.println("addDispatch(): " + ex);
			ex.printStackTrace();
		}
		
	}
	
	//Read a record
	public Dispatch getDispatchById(int dis_id){
		
		Dispatch pcById = new Dispatch();
		
		try {
			initJDBC();
			String selectSQL = "SELECT * FROM dispatch WHERE dis_id = ?"; 
			ps = connection.prepareStatement(selectSQL); 
			ps.setInt(1, dis_id);
			ResultSet rset = ps.executeQuery();
			while(rset.next())
			{
				pcById.setDis_id(rset.getInt("dis_id"));
				pcById.setDis_tel(rset.getString("dis_tel"));
				pcById.setDis_name(rset.getString("dis_name"));
				
				}
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
		return pcById;
	}
	//Update a record
		public void updateDispatch(Dispatch pc)throws SQLException, ClassNotFoundException {
			
			initJDBC();
			try {
				String updateSQL = "UPDATE dispatch SET dis_tel = ?, dis_name = ? WHERE dis_id = ?";
				ps = connection.prepareStatement(updateSQL,Statement.RETURN_GENERATED_KEYS); 
				ps.setString(1,pc.getDis_tel());
				ps.setString(2,pc.getDis_name());
				ps.executeUpdate(); 
				}
			catch (Exception ex) {
				System.out.println("updateDispatch(); " + ex);
				ex.printStackTrace();
				}
		}
		
		//Delete a record
		public void deleteDispatchById (int dis_id) throws ClassNotFoundException, SQLException{
			try {
				initJDBC();
				String deleteSQL = ("DELETE from dispatch WHERE dis_id = ?");
				PreparedStatement ps = connection.prepareStatement(deleteSQL);
				ps.setInt(1, dis_id);
				ps.executeUpdate();
				System.out.println("The record has been deleted");
				}
			catch (Exception ex) {
				System.out.println("deleteDispatchById(): "+ ex);
				ex.printStackTrace();
				}
		}
}
package courier;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class InventoryUpdate
 */
@WebServlet("/parUpdate")
public class parUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public parUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String parcel_id = request.getParameter("parcel_id");
		String parcel_type = request.getParameter("parcel_type");
		double parcel_kg = Double.parseDouble(request.getParameter("parcel_kg"));
   	 	String sender_name = request.getParameter("sender_name");
    	String sender_address = request.getParameter("sender_address");	    
    	String sender_pnum = request.getParameter("sender_pnum");
    	String rece_name = request.getParameter("rece_name");
    	String rece_address = request.getParameter("rece_address");	    
    	String rece_pnum = request.getParameter("rece_pnum");
    	
    	Parcel pc = new Parcel(); //set all values retrieved to this using setters
    	
    	pc.setParcel_id(Integer.parseInt(parcel_id));
    	pc.setParcel_type(parcel_type);
		pc.setParcel_kg(parcel_kg);
		pc.setSender_name(sender_name);
		pc.setSender_address(sender_address);
		pc.setSender_pnum(sender_pnum);
		pc.setRece_name(rece_name);
		pc.setRece_address(rece_address);
		pc.setRece_pnum(rece_pnum);
		
		parcelModel par = new parcelModel();
		try {
			par.updateParcel(pc);
			} 
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			}
		response.sendRedirect("parView.jsp");
		}

}

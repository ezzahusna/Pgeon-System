package dispatch;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class disUpdate
 */
@WebServlet("/disUpdate")
public class disUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public disUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String dis_id = request.getParameter("dis_id");
		String dis_tel = request.getParameter("dis_tel");
   	 	String dis_name = request.getParameter("dis_name");
  
    	
    	Dispatch pc = new Dispatch(); //set all values retrieved to this using setters
    	
    	pc.setDis_id(Integer.parseInt(dis_id));
    	pc.setDis_tel(dis_tel);
		pc.setDis_name(dis_name);
		
		
		dispatchModel par = new dispatchModel();
		try {
			par.updateDispatch(pc);
			} 
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			}
		response.sendRedirect("disView.jsp");
		}

}

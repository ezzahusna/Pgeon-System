package dispatch;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class disAdd
 */
@WebServlet("/disAdd")
public class disAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public disAdd() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			    
		String dis_tel = request.getParameter("dis_tel");
    	String dis_name = request.getParameter("dis_name");
    	
		
		Dispatch pc = new Dispatch(); //set all values retrieved to this using setters
		
		pc.setDis_tel(dis_tel);
		pc.setDis_name(dis_name);
	
		
		dispatchModel par = new dispatchModel();
		try {
			par.addDispatch(pc);
		} 
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			}
		response.sendRedirect("disView.jsp");
		}
}

package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MovieRegisterService;


@WebServlet("/mediajoin")
public class MovieRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MovieRegisterController() {
        super();
     
    }

	protected void doprocess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MovieRegisterService mRegisterService = new MovieRegisterService();
		int MregisterResult = mRegisterService.movieRegisterFile(request, response);
		if(MregisterResult > 0) {
			response.sendRedirect("Movie_Main.jsp");
		}else {
			response.sendRedirect("Movie_Review_File.jsp");
		}
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doprocess(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doprocess(request, response);
	}

}

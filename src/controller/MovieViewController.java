package controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.MovieDTO;
import Service.MovieViewService;

@WebServlet("/Moviedview")
public class MovieViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public MovieViewController() {
        super();
    }
    
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	MovieViewService bViewService = new MovieViewService();
    	MovieDTO MovieView = new MovieDTO();
    	MovieView = bViewService.movieView(request, response);
    	request.setAttribute("MovieView", MovieView);
    	RequestDispatcher dispatcher = request.getRequestDispatcher("MovieView.jsp");
    	dispatcher.forward(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doProcess(request, response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
}

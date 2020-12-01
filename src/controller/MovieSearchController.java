package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.MovieDTO;
import service.MovieSearchService;


@WebServlet("/moviesearch")
public class MovieSearchController extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    
    public MovieSearchController() {
        super();
       
    }

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MovieSearchService mSearchSearchService = new MovieSearchService();
		List<MovieDTO> searchList = new ArrayList<MovieDTO>();
		searchList = mSearchSearchService.MovieSearch(request, response);
		if(searchList != null) {
			request.setAttribute("searchList", searchList);
			RequestDispatcher dispatcher =
					request.getRequestDispatcher("Movie_List_Search.jsp");
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("Movie_List_Search_Fail.jsp");
		}
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}

}

package service;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import DAO.MovieDAO;
import DTO.MovieDTO;

public class MovieViewService {

	public MovieDTO boardView(HttpServletRequest request, HttpServletResponse response) {
		int mnumber = Integer.parseInt(request.getParameter("mnumber"));
		MovieDAO mDAO = new MovieDAO();
		mDAO.dbConnection();
		
		mDAO.boardHits(mnumber);
		MovieDTO MovieView = mDAO.MovieView(mnumber);
		mDAO.dbClose();
		
		return MovieView;
	}


}



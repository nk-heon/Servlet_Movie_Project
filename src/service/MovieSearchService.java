package service;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.MovieDAO;

import dto.MovieDTO;

public class MovieSearchService {

	public List<MovieDTO> MovieSearch(HttpServletRequest request, HttpServletResponse response) {
	 	request.setCharacterEncoding("UTF-8");
    	BoardSearchService bSearchService = new BoardSearchService();
    	List<BoardDTO> searchList = new ArrayList<BoardDTO>();
    	searchList = bSearchService.boardSearch(request, response);
    	if(searchList != null) {
    		request.setAttribute("boardList", searchList);
    		RequestDispatcher dispatcher = request.getRequestDispatcher("BoardMain.jsp");
    		dispatcher.forward(request, response);
    	}else {
    		response.sendRedirect("BoardSearchFail.jsp");
    	}
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}
package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.MovieDTO;
import DAO.MovieDAO;
import DTO.PageDTO;


public class MovieListPagingService {
	/*
	 * 상수 선언
	 * 상수:바뀌지 않는 값이며, 현재 클래스 내에서 고정값으로 사용히 가능함.
	 * 		상수에 담긴값을 변환을 할 수 없음.*/ 
	//PAGE_LIMIT : 한 페이지에 보여줄 글 갯수
	private static final int PAGE_LIMIT = 10;
	//BLOCK_LIMIT : 한 화면상에 노출되는 페이지 갯수
	//예를 들어 1~5까지 보이고 그다음은 6~10, 11~15..........
	private static final int BLOCK_LIMIT = 11;

	public List<MovieDTO> boardList(HttpServletRequest request, HttpServletResponse response) {
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		MovieDAO mDAO = new MovieDAO();
		mDAO.dbConnection();
		/*
		 * page 가 1이면
		 * startRow = (1-1)*3 + 1 = 1
		 * endRow = 1 * 3 = 3
		 * page가 2면 
		 * startRow = (2-1)*3 + 1 = 4
		 * endRow = 2 * 3 = 6
		 * page가 3면 
		 * startRow = (3-1)*3 + 1 = 7
		 * endRow = 3 * 3 = 9
		 */
		int startRow = (page-1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;
		
		List<MovieDTO> boardList = mDAO.movieListPaging(startRow, endRow);
		mDAO.dbClose();
		
		//현재 페이지에 필요한 글만 가지고 와서 컨트롤러로 간다.
		
		return boardList;
	}

	public PageDTO paging(HttpServletRequest request, HttpServletResponse response) {
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		BoardDAO bDAO = new BoardDAO();
		bDAO.dbConnection();
		//DB에 저장된 전체 글 갯수 가져옴
		int listCount = bDAO.listCount();
		
		bDAO.dbClose();
		//최대 필요한 페이지 갯수
		//한페이지에 보여줄 글 갯수 3개
		//전체 글 갯수 8개
		//필요한 최대 페이지 갯수는??
		int maxPage = (int)(Math.ceil((double)listCount/PAGE_LIMIT));
		//시작 페이지(1, 6, 11, 16, 21,.......)
		int startPage = (((int)(Math.ceil((double)page/BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		//마지막 폐이지(5, 10, 15, 20,.........)
		int endPage = startPage + BLOCK_LIMIT - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}
		PageDTO paging = new PageDTO();
		paging.setPage(page);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setMaxPage(maxPage);
		
		return paging;
	}

}
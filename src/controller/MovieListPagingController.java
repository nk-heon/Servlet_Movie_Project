package controller;

@WebServlet("/movielistpaging")
public class MovieListPagingControllerextends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MovieListPagingController() {
        super();
        
    }


	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MovieListPagingService bListPagingService = new MovieListPagingService();
		//클릭한 페이지에 필요한 글만 가져오기 위한 메소드 호출
		List<MovieDTO> boardList = bListPagingService.MovieList(request, response);
		// 페이지 번호와 관련된 정보 등을 결정하기 위한 메소드 호출
		PageDTO paging = bListPagingService.paging(request, response);
		
		request.setAttribute("MovieList", boardList);
    	request.setAttribute("paging", paging);
    	
    	RequestDispatcher dispatcher = request.getRequestDispatcher("MovieListPaging.jsp");
		dispatcher.forward(request, response);
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
 

}

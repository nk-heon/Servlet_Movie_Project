package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.MemberJoinService;
import service.MemberLoginService;


@WebServlet("/movielogin")
public class MemberLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MemberLoginController() {
        super();
      
    }


	protected void doprocess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MemberLoginService mLoginService = new MemberLoginService();
		String loginId = mLoginService.memberLogin(request, response);
		HttpSession session = request.getSession();
		if(loginId != null) {
			session.setAttribute("loginId", loginId);
			request.setAttribute("loginIdreq", loginId);
			response.sendRedirect("Movie_Main.jsp");
		} else {
			response.sendRedirect("Movie_Member_LoginFail.jsp");
		}
		
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doprocess(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doprocess(request, response);
	}

}

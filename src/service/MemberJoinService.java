package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberDTO;

public class MemberJoinService {

	public int memberjoin(HttpServletRequest request, HttpServletResponse response) {
		String mid = request.getParameter("mid");
		String mpassword = request.getParameter("mpassword");
		String mbyname = request.getParameter("mbyname");
		
		MemberDTO member = new MemberDTO();
		member.setMid(mid);
		member.setMpassword(mpassword);
		member.setMbyname(mbyname);
		
		
		MemberDAO mDAO = new MemberDAO();
		mDAO.dbConnection();
		int joinResult = mDAO.memberJoin(member);
		
		mDAO.dbClose();
		return joinResult;
	}

}

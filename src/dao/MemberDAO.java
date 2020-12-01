package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBConnection;
import dto.MemberDTO;

public class MemberDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public void dbConnection() {
		con = DBConnection.getConnection();
	}
	
	public void dbClose() {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public void pstmtClose() {
		try {
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public void rsClose() {
		try {
			rs.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	public int memberJoin(MemberDTO member) {
		String sql = "INSERT INTO MOVIE_MEMBER(MID,MPASSWORD,MBYNAME) VALUES(?,?,?)";
		int joinResult = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getMid());
			pstmt.setString(2, member.getMpassword());
			pstmt.setString(3, member.getMbyname());
			joinResult = pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return joinResult;
	}

	public boolean memberLogin(String mid, String mpassword) {
		String sql = "SELECT * FROM MOVIE_MEMBER WHERE MID=? AND MPASSWORD=?";
		boolean loginResult = false;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpassword);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				loginResult = true;
			} else {
				loginResult = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			rsClose();
			pstmtClose();
		}
		return loginResult;
	}

}

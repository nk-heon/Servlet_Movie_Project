package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DAO.String;
import DTO.BoardDTO;
import db.DBConnection;

import dto.MovieDTO;

public class MovieDAO {
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

		public int RegisterFile(MovieDTO movie) {
			String sql = "INSERT INTO MOVIE_REVIEWS(MNUMBER,MTITLE,MCONTENTS,MIMAGE,MMOVIE,MGENRE,MLINK)"
					+ " VALUES(SEQ_MOVIE_REVIEWS.NEXTVAL,?,?,?,?,?,?)";
			int RegisterResult = 0;
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, movie.getMtitle());
				pstmt.setString(2, movie.getMcontents());
				pstmt.setString(3, movie.getMimage());
				pstmt.setString(4, movie.getMmovie());
				pstmt.setString(5, movie.getMgenre());
				pstmt.setString(6, movie.getMlink());
				RegisterResult = pstmt.executeUpdate();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}finally {
				pstmtClose();
			}
			return RegisterResult;
		}

		public List<MovieDTO> movieSearch(String keyword) {
			List<MovieDTO> movieList = new ArrayList<MovieDTO>();
			String sql = "SELECT * FROM MOVIE_REVIEWS WHERE MTITLE LIKE ?";
			MovieDTO movie = null;
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, '%'+keyword+'%');
				rs = pstmt.executeQuery();
				while(rs.next()) {
					movie = new MovieDTO();
					movie.setMnumber(rs.getInt("MNUMBER"));
					movie.setMtitle(rs.getString("MTITLE"));
					movie.setMcontents(rs.getString("MCONTENTS"));
					movie.setMimage(rs.getString("MIMAGE"));
					movie.setMmovie(rs.getString("MMOVIE"));
					movie.setMgenre(rs.getString("MGENRE"));
					movie.setMlink(rs.getString("MLINK"));
					movieList.add(movie);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				pstmtClose();
				rsClose();
			}
			return movieList;
		}
		
		public MovieDTO MovieView(int bnumber) {
			String sql = "SELECT * FROM MOVIE_REVIEWS WHERE MNUMBER=?";
			MovieDTO boardView = null;
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, mnumber);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					boardView = new MovieDTO();
					boardView.setBnumber(rs.getInt("MNUMBER"));
					boardView.setBwriter(rs.getString("MWRITER"));
					boardView.setBtitle(rs.getString("MTITLE"));
					boardView.setBcontents(rs.getString("MCONTENTS"));
					boardView.setBdate(rs.getString("MDATE"));
					boardView.setBfilename(rs.getString("MFILENAME"));
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	finally {
					pstmtClose();
					rsClose();
			}
			return boardView;
		}
		
		public List<MovieDTO> MovieListPaging(int startRow, int endRow) {
			String sql = "SELECT * FROM MOVIE_REVIEWS WHERE RN BETWEEN ? AND ?";
			List<BoardDTO> boardList = new ArrayList<BoardDTO>();
			MovieDTO board = null;
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Movie = new MovieDTO();
					movie.setMnumber(rs.getInt("MNUMBER"));
					movie.setMtitle(rs.getString("MTITLE"));
					movie.setMcontents(rs.getString("MCONTENTS"));
					movie.setMimage(rs.getString("MIMAGE"));
					movie.setMmovie(rs.getString("MMOVIE"));
					movie.setMgenre(rs.getString("MGENRE"));
					movie.setMlink(rs.getString("MLINK"));
					movieList.add(movie);
					
					boardList.add(board);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				pstmtClose();
				rsClose();
			}
			return boardList;
		}

		public int listCount() {
			String sql = "SELECT COUNT(MNUMBER) FROM MOVIE_REVIEWS";
			int listCount = 0;
			try {
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					listCount = rs.getInt(1);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				pstmtClose();
				rsClose();
			}
			return listCount;
		}

		
	
}

}

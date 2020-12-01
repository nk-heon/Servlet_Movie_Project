package service;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


import dao.MovieDAO;
import dto.MovieDTO;

public class MovieRegisterService {

	public int movieRegisterFile(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//String savePath = "D:\\source\\servlet\\MyProjact_Movie_Page\\WebContent\\VIDEO";
		String savePath = "C:\\Users\\user\\eclipse-workspace\\MyProjact_Movie_Page\\WebContent\\VIDEO";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, 100*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		
		MovieDTO movie = new MovieDTO();
		String mtitle = multi.getParameter("mtitle");
		String mcontents = multi.getParameter("mcontents");
		String mgenre = multi.getParameter("mgenre");
		String mlink = multi.getParameter("mlink");
//		String mimage = multi.getOriginalFileName((String)multi.getFileNames().nextElement());
//		String mmovie = multi.getOriginalFileName((String)multi.getFileNames().nextElement());
		String mimagefile = (String)files.nextElement();
		String mmoviefile = (String)files.nextElement();
		String mimage = multi.getFilesystemName(mimagefile);
		String mmovie = multi.getFilesystemName(mmoviefile);
		System.out.println("mlink");
		movie.setMtitle(mtitle);
		movie.setMcontents(mcontents);
		movie.setMgenre(mgenre);
		movie.setMlink(mlink);
		movie.setMimage(mimage);
		movie.setMmovie(mmovie);
		
		MovieDAO mDAO = new MovieDAO();
		mDAO.dbConnection();
		int registerResult = mDAO.RegisterFile(movie);
		mDAO.dbClose();
		
		return registerResult;
	}

}

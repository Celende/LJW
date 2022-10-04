package service.khj;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Doctor;
import dao.DoctorDao;
import service.CommandProcess;

public class ProfileView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String doctor_no = request.getParameter("doctor_no");
		
		try {
			
			DoctorDao doctorDao = DoctorDao.getInstance();
			Doctor doctor = doctorDao.select("doctor_no");
			
			request.setAttribute("doctor", doctor);
			request.setAttribute("doctor_no", doctor_no);
		} catch (SQLException e) {
			
			e.printStackTrace();
			System.out.println("MyProfileView.java "+ e.getMessage());
		}
		
		
		
		return "profile/profile.jsp";
	}

}

package bookae.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join/*")
public class MemberController extends HttpServlet {
	MemberDAO memberDAO;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String action=request.getPathInfo();
		System.out.println("요청매핑이름 : "+action);
		if(action.equals("/id_check")) {
			String id=(String)request.getParameter("id");
			System.out.println("아이디 : "+id);
			MemberDAO memDAO=new MemberDAO();
			boolean overlappedID=memDAO.overlappedID(id);
			Boolean idCheck=false;
			if(overlappedID==true) {
				out.print("not_usable");
			}else {
				out.print("usable");
				idCheck=true;
			}
			request.setAttribute("idCheck", idCheck);
		}
	}

}

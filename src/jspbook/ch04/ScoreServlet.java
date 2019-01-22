package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ScoreServlet")
public class ScoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ScoreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int kScore = Integer.parseInt(request.getParameter("kScore"));
 		int eScore = Integer.parseInt(request.getParameter("eScore"));
 		int mScore = Integer.parseInt(request.getParameter("mScore"));
 		int sum = kScore+eScore+mScore;
 		double avg = sum/3.0;
 		
 		out.println("<HTML>");
 		out.println("<HEAD><TITLE>계산</TITLE></HEAD>");
 		out.println("<BODY><CENTER>");
 		out.println("<H2>결과 테이블</H2>");
 		out.println("<HR>");
 		out.println("<table border='1'>");
 		out.println("<thead>");
 		out.println("<tr><th>국어</th><th>영어</th><th>수학</th><th>합계</th><th>평균</th></tr>");
 		out.println("</thead>");
 		out.println("<tbody>");
 		out.println(" <tr><td>"+kScore+"</td><td>"+eScore+"</td><td>"+mScore+"</td><td>"+sum+"</td><td>"+avg+"</td></tr>");
 		out.println("</tbody></table>");
 		out.println("</body></html>");
 		
	}

}

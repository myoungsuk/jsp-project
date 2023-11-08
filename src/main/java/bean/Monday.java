package bean;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http, thread ==>HttpServlet --> Monday(12개)
public class Monday extends HttpServlet {
//서블릿이 언제 만들어지고 언제 사라지는지까지는 까지를 생명주기
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("서블릿이 탄생함.");
		String temp = config.getInitParameter("temp");
		System.out.println(temp);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet()메서드가 자동호출됨");
	}

}

package ch02;

import java.io.IOException;						//예외처리. 오류가 발생했지만 오류가 아닌 것처럼 넘어갈 수 있도록 해줌.
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;			//슈퍼 클래스
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {		//생성자
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub			//두겟은 보안에 취약함.
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("text/html;charset=utf-8");				//html, utf-8로 응답해라.
		
		try {
			PrintWriter out = response.getWriter();						//output stream/화면에 찍어내는 것. Scanner는 input stream./출력
			//response 객체로 . 인수로 request 와 response를 받음
			out.println("<HTML>");										//output에 넣어주는 거. 출력 X
			out.println("<HEAD><TITLE>Servlet 연습</TITLE></HEAD>");
			out.println("<BODY>");
			out.println("처음 작성하는 Servlet");
			out.println("</BODY>");
			out.println("</HTML>");
			out.close();					//꼭 닫아줘야 함.
		} catch(Exception e) {
			getServletContext().log("Error in HelloServlet:",e);		//에러 잡아주는 것.
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);		//두포스트가 두겟을 호출.
	}

}

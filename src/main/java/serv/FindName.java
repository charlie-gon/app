package serv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FineName
 */
public class FindName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindName() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// id 파라미터에 해당하는 이름 검색해서 리턴
		int a = 5/0; // 에러 메시지 확인용 에러
		response.setContentType("text/html; charset=UTF-8");
		try {
			Thread.sleep(2000); // 시간 지연(2초)
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		String id = request.getParameter("userId");
		if(id.equals("admin")) {
			response.getWriter().append("관리자");
		}else {
			response.getWriter().append("사용자");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

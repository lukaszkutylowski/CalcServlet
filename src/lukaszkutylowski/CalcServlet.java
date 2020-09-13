package lukaszkutylowski;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc-servlet")
public class CalcServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		CalcService service = new CalcService();
		BigDecimal result = null;
		
		BigDecimal num1 = new BigDecimal(req.getParameter("firstNumber").toString());
		BigDecimal num2 = new BigDecimal(req.getParameter("secondNumber").toString());
		String sign = req.getParameter("sign");
		
		result = service.executeCalculation(num1, num2, sign);
		
		req.setAttribute("result", result.toString());
		req.setAttribute("num1", num1);
		req.setAttribute("sign", sign);
		req.setAttribute("num2", num2);
		req.setAttribute("flag", 0);
		
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		rd.forward(req, res);
	}
}

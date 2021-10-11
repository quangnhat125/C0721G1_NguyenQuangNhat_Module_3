package servlet;

import model.Calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculateServlet", value = "/calculate")
public class CalculateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperand = Float.parseFloat(request.getParameter("number-1"));
        float secondOperand = Float.parseFloat(request.getParameter("number-2"));
        char operator = request.getParameter("operator").charAt(0);
        float result = Calculator.calculate(firstOperand, secondOperand, operator);
        PrintWriter writer = response.getWriter();
        try {
            writer.println(firstOperand + " " + operator + " " + secondOperand + "=" + result);

        } catch (Exception ex) {
            writer.println("Error: " + ex.getMessage());
        }
        request.setAttribute("firstOperand", firstOperand);
        request.setAttribute("secondOperand", secondOperand);
        request.setAttribute("operator", operator);
        request.setAttribute("result",result);

        request.getRequestDispatcher("result.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

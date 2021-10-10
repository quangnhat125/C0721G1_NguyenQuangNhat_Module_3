import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DiscountServlet", value = "/discount")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pDescription = request.getParameter("productDes");
        String listPrice = request.getParameter("listPrice");
        String discountPercent = request.getParameter("discountPercent");
//        Double discountAmount = listPrice * discountPercent * 0.01;
//        Double discountPrice = listPrice - discountAmount;
//        request.setAttribute("description", pDescription);
//        request.setAttribute("listPrice", listPrice);
//        request.setAttribute("discountPercent", discountPercent);
//        request.setAttribute("discountAmount", discountAmount);
//        request.setAttribute("discountPrice", discountPrice);
//
//        request.getRequestDispatcher("discount.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

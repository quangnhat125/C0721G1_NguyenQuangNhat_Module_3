import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DisplayServlet", value = "")
public class DisplayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        Customer Adam = new Customer("Adam", "01/01/1998", "Heaven", "https://revelogue.com/wp-content/uploads/2021/02/adam-levine-thu-linh-e1612443773933.jpg");
        Customer Eva = new Customer("Eva", "01/01/2000", "USA", "https://vcdn-giaitri.vnecdn.net/2016/10/03/eva-green-poses-for-l-or-al-2063-1475492123.jpg");
        Customer David = new Customer("David", "01/01/2003", "Australia", "https://vcdn1-giaitri.vnecdn.net/2021/04/14/DavidBeckham-1618365411-4669-1618365663.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=np0pBPgK98LPsMsMuFydRA");

        customerList.add(Adam);
        customerList.add(Eva);
        customerList.add(David);
        request.setAttribute("customerList", customerList);

        request.getRequestDispatcher("customer_list.jsp").forward(request,response);
    }
}

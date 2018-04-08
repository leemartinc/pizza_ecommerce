import Inventory.InventoryItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(urlPatterns = {"/admin"})
public class adminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String url = "";
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        if(username.equals("admin")){
            url = "/admin.jsp";
            String action = request.getParameter("action");
            if (action.equals("update")) {
                String item = request.getParameter("item");
                int amount = Integer.parseInt(request.getParameter("amount"));
                DatabaseConnect.updateInventory(item,amount);

                session.removeAttribute("result");
                ArrayList<InventoryItem> rs = DatabaseConnect.getInventory();
                session.setAttribute("result", rs);

                url = "/admin.jsp";

            }
        }else{
            url = "/index.jsp";
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);

    }

}

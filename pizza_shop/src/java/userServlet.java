
import Inventory.InventoryItem;
import Inventory.OrderHistory;

import java.io.*;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;


@WebServlet(urlPatterns = {"/user"})
public class userServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        String url = "";
        if (action.equals("register")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (DatabaseConnect.checkDuplicateUsername(username)) {
                request.setAttribute("message", "Username already exists");
                url = "/signup.jsp";

            } else if (username.equals("") || password.equals("")) {
                url = "/signup.jsp";
                request.setAttribute("message", "Please fill out all forms");
            } else {
                DatabaseConnect.insertUser(username, password);

                url = "/index.jsp";
            }

        }


        if (action.equals("login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if(username.equals("admin")){
                if (password.equals("admin")) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    ArrayList<InventoryItem> rs = DatabaseConnect.getInventory();
                    session.setAttribute("result", rs);

                    ArrayList<OrderHistory> rs2 = DatabaseConnect.getOrderHist();
                    session.setAttribute("result2", rs2);

                    url = "/admin.jsp";

                }else{
                    request.setAttribute("message", "Incorrect Username or password");
                    url = "/login.jsp";
                }

            }else{
                if (DatabaseConnect.verifyUser(username, password)) {
                    url = "/shop.jsp";
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                } else {
                    url = "/login.jsp";
                    request.setAttribute("message", "Incorrect Username or password");

                }
            }



        }

        getServletContext().getRequestDispatcher(url).forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        session.invalidate();
        response.sendRedirect("index.jsp");
    }



    }
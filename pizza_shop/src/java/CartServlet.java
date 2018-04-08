import cart.Cart;
import cart.Item;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;


@WebServlet(urlPatterns={"/CartServlet"})
public class CartServlet extends HttpServlet
{


    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String url ="";

        String action = request.getParameter("action");
        if(action.equals("add")){
            String item = request.getParameter("item");
            double price = Double.parseDouble(request.getParameter("price"));
            Item newitem = new Item(item,price);

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }

            cart.addItem(newitem);

            session.setAttribute("cart", cart);
            url = "/shop.jsp";

        }
        if(action.equals("remove")){
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }
            cart.remove(request.getParameter("item"));
            url = "/cart.jsp";

        }

        if(action.equals("checkout")){
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }
            String username = (String) session.getAttribute("username");
            DatabaseConnect.checkOut(cart,username);
            session.removeAttribute("cart");
            request.setAttribute("message", "Order succesful, Would you like to place" +
                    " another order?");
            url = "/shop.jsp";
        }


        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.xml.crypto.Data;


@WebServlet(urlPatterns = {"/register"})
public class registerServlet extends HttpServlet {



    @Override
    protected void doPost(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {



         String username = request.getParameter("username");
         String password = request.getParameter("password");
        
         DatabaseConnect.insertUser(username,password);
                 

    }


}
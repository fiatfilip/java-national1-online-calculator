package ro.siit.usermgmt.servlet;

import ro.siit.usermgmt.model.User;
import ro.siit.usermgmt.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/jsps/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        User user = UserService.getInstance().authenticateUser(username, password);

        if(user != null){
            req.getSession().setAttribute("authenticatedUser", user);
            resp.sendRedirect(req.getContextPath() + "/profile");
        } else {
            req.setAttribute("errorMsg", "Invalid credentials!");
            req.getRequestDispatcher("/jsps/login.jsp").forward(req, resp);
        }
    }
}

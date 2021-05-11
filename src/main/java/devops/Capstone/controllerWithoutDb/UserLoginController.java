package devops.Capstone.controllerWithoutDb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import devops.Capstone.model.User;
import devops.Capstone.service.UserService;


public class UserLoginController extends HttpServlet {

/**
*
*/
private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

response.setContentType("text/html");
PrintWriter out = response.getWriter();
String email = request.getParameter("email");
String pass = request.getParameter("password");

if (email.isEmpty() || pass.isEmpty()) {
RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
out.println("<font color=red>Please fill all the fields</font>");
rd.include(request, response);
} else {

User signUp = new User("", "", pass, email);

PrintWriter pout = response.getWriter();
if (new UserService().isAuthorized(signUp)) {
pout.write("Login successfull...");
RequestDispatcher rd = request.getRequestDispatcher("/success.jsp");
rd.forward(request, response);
return;
}
pout.write("Login fail...");

RequestDispatcher rd = request.getRequestDispatcher("/fail.jsp");
rd.forward(request, response);

}
}

}

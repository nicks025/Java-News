import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;

@WebServlet("/user")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,   // 1MB
        maxFileSize = 1024 * 1024 * 5,     // 5MB
        maxRequestSize = 1024 * 1024 * 10  // 10MB
)
public class UserServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action.equalsIgnoreCase("logout")) {
            HttpSession session = req.getSession();
            session.invalidate();
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(req, res);
        } else if (action.equalsIgnoreCase("profile")) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("profile.jsp");
            requestDispatcher.forward(req, res);
        } else if (true) {


            System.out.println("Hello");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("user.jsp");
            requestDispatcher.forward(req, res);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String action = req.getParameter("action");

        if(action.equalsIgnoreCase("submit")){

        // Form data
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String address = req.getParameter("address");
        String gender = req.getParameter("gender");

        // File upload
        Part filePart = req.getPart("profileImage");
        String fileName = filePart.getSubmittedFileName();

        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        filePart.write(uploadPath + File.separator + fileName);

        // Set attributes
        req.setAttribute("name", name);
        req.setAttribute("email", email);
        req.setAttribute("address", address);
        req.setAttribute("gender", gender);
        req.setAttribute("imagePath", "uploads/" + fileName);

        RequestDispatcher rd = req.getRequestDispatcher("dashboard.jsp");
        rd.forward(req, res);
        } else if (action.equalsIgnoreCase("login")) {
            String email=req.getParameter("email");
            String password=req.getParameter("password");
            HttpSession session = req.getSession();

            session.setAttribute("sessionEmail", email);
            session.setMaxInactiveInterval(23);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("profile.jsp");
            requestDispatcher.forward(req, res);
        }else if (action.equalsIgnoreCase("logout")) {
            HttpSession session = req.getSession();
            session.invalidate();
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(req, res);
        }
    }
}

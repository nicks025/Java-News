package controller;

import model.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/student")
public class StudentServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        List<Student> studentList= new ArrayList<>();
        Student s1 = new Student();
        s1.setName("Nikhil");
        s1.setAge(22);
        s1.setSemester("6th");

        Student s2 = new Student();
        s2.setName("Kaneki");
        s2.setAge(20);
        s2.setSemester("6th");

        studentList.add(s1);
        studentList.add(s2);
        req.setAttribute("studentList", studentList);
        RequestDispatcher rd = req.getRequestDispatcher("now.jsp");
        rd.forward(req, res);
    }
}

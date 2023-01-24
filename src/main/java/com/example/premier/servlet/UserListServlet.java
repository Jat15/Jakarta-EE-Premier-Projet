package com.example.premier.servlet;

import com.example.premier.dao.MemoryDao;
import com.example.premier.entity.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/user-list")
public class UserListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MemoryDao dao = new MemoryDao();

        List<User> userList = dao.getAll();

        req.setAttribute("users", userList);

        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/user-list.jsp");

        rd.forward(req,resp);

    }


}

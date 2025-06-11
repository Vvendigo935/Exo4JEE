package org.example.exo4.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.exo4.model.Cat;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/cats")
public class CatServlet extends HttpServlet {

    private List<Cat> catList;

    @Override
    public void init() throws ServletException {
        System.out.println("je passe par la methode init de CatServlet");
        this.catList = new ArrayList<>();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("je passe par la methode doGet de CatServlet");
        req.setAttribute("cats",catList);
        req.getRequestDispatcher("/WEB-INF/cat/listCat.jsp").forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String race = req.getParameter("race");
        String food = req.getParameter("food");
        String birthDate = req.getParameter("birthDate");

        catList.add(new Cat(name,race,food,birthDate));

        System.out.println("This cat has been registered : ");
        System.out.println("name : "+name);
        System.out.println("race : "+race);
        System.out.println("favorite food : "+food);
        System.out.println("birth date : "+birthDate);
        doGet(req,resp);




    }



}

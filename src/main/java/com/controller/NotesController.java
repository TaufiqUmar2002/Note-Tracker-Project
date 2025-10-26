package com.controller;

import com.entities.Note;
import com.helper.FactoryProvider;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

public class NotesController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            String title   = req.getParameter("title");
            String content = req.getParameter("content");
            Note note = new Note(title,content,new Date());
            Session session =FactoryProvider.getFactory().openSession();
            Transaction transaction =session.beginTransaction();
            session.persist(note);
            transaction.commit();
            session.close();
            FactoryProvider.closeFactory();
            resp.setContentType("text/html");
            PrintWriter out = resp.getWriter();
            out.println("<h1 class='text-align:center'>Note is added Successfully</h1>");
            out.println("<h1><a href='view_notes.jsp'>View All Notes </a></h1>");




        }catch (Exception e){
            e.getStackTrace();
        }
    }
}

package com.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
public class NoteDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Delete servlet");
        try{
            Integer noteId = Integer.parseInt(req.getParameter("note_id").trim());
            Session session = FactoryProvider.getFactory().openSession();
            Transaction transaction = session.beginTransaction();
            Note note =session.find(Note.class,noteId);
            session.remove(note);
            transaction.commit();
            session.close();
            resp.sendRedirect("view_notes.jsp");
        }
        catch (Exception e){
            e.getStackTrace();
        }
    }
}

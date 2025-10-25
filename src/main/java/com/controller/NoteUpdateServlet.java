package com.controller;

import com.entities.Note;
import com.helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class NoteUpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer noteId =Integer.parseInt(req.getParameter("noteId"));
        String title = req.getParameter("title").trim();
        String content = req.getParameter("content").trim();

        Session session = FactoryProvider.getFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Note note = session.find(Note.class,noteId);
        note.setTitle(title);
        note.setContent(content);
        note.setAddedate(new Date());
        transaction.commit();
        session.close();
        resp.sendRedirect("view_notes.jsp");
    }
}

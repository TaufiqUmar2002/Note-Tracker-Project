<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page  import ="java.util.List"%>
<%@ page import ="com.entities.Note"%>
<%@ page import ="com.helper.FactoryProvider"%>
<%@ page import ="org.hibernate.Session"%>
<%@ page import ="jakarta.persistence.Query"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View All Notes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
  </head>
  <body>

  <div class ="container-fluid p-0 m-0">
    <%@include file ="navbar.jsp"%>
    <br>
    <h1 class="text-uppercase">All Notes </h1>
    <div class="row">
    <div class ="col-12">
    <%
                  Session session1 = FactoryProvider.getFactory().openSession();
                    Query  list = session1.createQuery("from Note", Note.class);
                  List<Note> result = list.getResultList();

                  for(Note note :result){
                  %>
                  <div class="card mt-3" style="width: 18rem;">
                    <img src="<c:url value='/image/post-it.png'/>" style="max-width:50px" class="card-img-top mx-auto" alt="...">
                    <div class="card-body">
                      <h5 class="card-title"><%= note.getTitle()%></h5>
                      <p class="card-text"><%= note.getContent()%></p>
                      <div class="container text-center">
                       <a href="deleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
                       <a href="editNote.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
                      </div>

                    </div>
                  </div>
                  <%
                                  }
                  session1.close();

        %>
    </div>
    </div>

  </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>

  </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Add Notes</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>" />
  </head>
  <body>
    <div class="container-fluid p-0 m-0">
      <%@include file ="navbar.jsp"%>
      <h1>Please fill your notes details</h1>
      <br />
      <form action="saveNote" method="post">
        <div class="mb-3">
          <label for="title" class="form-label">Note Title</label>
          <input
            type="text"
            name="title"
            required
            class="form-control"
            id="title"
            aria-describedby="emailHelp"
            placeholder="Enter your Note"
          />
        </div>
        <div class="mb-3">
          <label for="content" class="form-label">Note Content</label>
          <textarea
            id="content"
            name="content"
            required
            placeholder="Enter your content"
            class="form-control height:300px"
          ></textarea>
        </div>
        <div class="container text-center">
          <button type="submit" class="btn btn-primary">Add</button>
        </div>
      </form>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

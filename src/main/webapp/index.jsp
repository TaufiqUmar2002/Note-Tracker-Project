<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Index</title>
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
      <div class="card">
        <img
          src="<c:url value='/image/post-it.png'/>"
          style="max-width: 400px"
          class="img-fluid mx-auto"
          alt="..."
        />
        <h1 class="text-primary text-center text-uppercase mt-3">
          Start Taking your notes
        </h1>
        <div class="container text-center">
          <button class="btn btn-outline-primary text-center">
            Start Here
          </button>
        </div>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

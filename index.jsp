<html>
<head>
  <title>Echoing HTML Request Parameters</title>
</head>
<body>
  <h3>Choose Your Name: </h3>
  <form method="get">
    <input type="checkbox" name="author" value="Ofir Gan!">Ofir
    <input type="checkbox" name="author" value="Tima Kukushkin!">Tima
    <input type="submit" value="Query">
  </form>
 
  <%
  String[] authors = request.getParameterValues("author");
  if (authors != null) {
  %>
    <h3>You have selected:</h3>
    <ul>
  <%
      for (int i = 0; i < authors.length; ++i) {
  %>
        <li><%= authors[i] %></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
</body>
</html>
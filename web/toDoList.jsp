<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head><title>Response Page </title></head>

<body>


<!-- Step 1: Create HTML form -->
<form action = toDoList.jsp>
    FirstName:<input type="text" name = "theItem"/>
               <input type="submit" value = "submit"/>
</form>



<!-- Step 2: Add new item to "To Do" list -->
<%
// get the items from session
List<String> items = (List<String>) session.getAttribute("toDoList");
// if the items are not present, create new one
    if(items == null)
    {
        items = new ArrayList<String>();
        session.setAttribute("toDoList",items);
    }
// see if there is formdata to add

    String theItem = request.getParameter("theItem");
    if(theItem != null)
    {
        items.add(theItem);
    }

    for (String item:items) {
      out.println("<li>"+item+"</li>");
    }
%>
</body>
</html>
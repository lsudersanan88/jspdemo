<html>

<body>

<%=  new String ("Hello world").toUpperCase()%>

<%
for(int i =0; i<=10;i++)
{
    out.println(i);
}

%>


<%!
String    makeItLower (String string)
{
 return string.toLowerCase();
}
%>
<%=  makeItLower("KV PATTY")%>


</body>


</html>
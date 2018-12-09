<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*, com.lakshmi.jsp.Student" %>

<%
	// just create some sample data ... normally provided by MVC
	List<Student> data = new ArrayList<>();

	data.add(new Student("John", "Doe", false,false));
	data.add(new Student("Maxwell", "Johnson", false,true));
	data.add(new Student("Mary", "Public", true,false));

	pageContext.setAttribute("myStudents", data);
%>

<html>

<body>
	<table border="1">

	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
		<th>Silver Customer</th>
	</tr>
	
	<c:forEach var="tempStudent" items="${myStudents}">
		
		<tr>
			<td>${tempStudent.firstName}</td>
			<td>${tempStudent.lastName}</td>
			<td>${tempStudent.goldCustomer}</td>
			<td>${tempStudent.silverCustomer}</td>

			<td>
				<c:if test="${tempStudent.goldCustomer}">
					Special Discount
				</c:if>

				<c:if test="${not tempStudent.goldCustomer}">
					-
				</c:if>

			</td>

			<td>
				<c:choose>

					<c:when test="${tempStudent.silverCustomer}">
						Special half Discount
					</c:when>

					<c:otherwise>
						no soup for you!
					</c:otherwise>

				</c:choose>


			</td>

		</tr>
		
	</c:forEach>

	</table>

</body>

</html>













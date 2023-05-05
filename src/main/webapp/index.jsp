<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<style>
h1
{
text-color:blue;
}
</style>
</head>
<body>
<h1>Carscrud Table</h1>
<table>
 <tr>
    <th>Sno</th>
    <th>Brand</th>
    <th>Color</th>
    <th>Price</th>
    <th>Model</th>
  </tr>
   <tr>
    <td></td>
    <td></td>
    <td></td>
    <th></th>
    <th></th>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <th></th>
    <th></th>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <th></th>
    <th></th>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <th></th>
    <th></th>
  </tr>
  <tr>
<c:forEach var="User" items="${User}">
  ${User.Sno}
  ${User.Brand}
  ${User.Color}
  ${User.Price}
  ${User.Model}
  
  <br/>
  </c:forEach>
  </tr>
  </table>

</body>
</html>

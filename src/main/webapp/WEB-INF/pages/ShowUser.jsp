<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<title></title>
<style>
.head
{
text-align: center;
 color: red;
  text-shadow: 1px 1px 2px black, 0 0 25px yellow, 0 0 5px darkblue;
}
.center {
  top: 20%;
  left: 30%;
} 
th
{
border-radius:0px;
background-color:#8c8c8c;
 font-size:15px;
 }
 td
 {
 height:30px;
 }
 .bg
 {
  background-image: url('./resources/images/banner.jpg');
  height:150px;
  width:100%;
 }
</style>
<script>
</script>
</head>
<body>
<div class="bg">
<h1 class="head">Vehicle Registration</h1>
</div>  
<div class="bg1">
<h1 class="text-danger">${msg }</h1>                                                                                                                                                                                                                    >
<table  class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Sno</th>
      <th scope="col">Brand</th>
       <th scope="col">Color</th>
       <th scope="col">Price</th>
       <th scope="col">Model</th>
       <th scope="col">Update</th>
       <th scope="col">Delete</th>
       </tr>
  </thead>
  <c:forEach items="${ListUser}" var="user">
   <tr>
      <td>${user.sno}</td>
       <td>${user.brand}</td>
       <td>${user.color}</td>
        <td>${user.price}</td>
         <td>${user.model}</td>
          <td><a href="update?id=${user.sno}"><img src=./resources/images/editing.png style="height:30px;width:30px;"></a></td>
          <td><a href="delete?id=${user.sno}"><img  src="./resources/images/delete.png" style="height:50px;width:50px;"></a></td>
      </tr>
  </c:forEach>
 </table>
<!-- <input type="submit" value="Submit" > -->
<center>
<a href="/"> <input class="btn btn-outline-primary" type="button" value="Home"></a></center>
</div>
</body>
</html>

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
 color: white;
  text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}
 td
 {
 padding:10px;
 color:white;
 }
 .bg
 {
   margin-top: 50px;
  max-width: 600px;
  height: 400px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
  background-image: url('https://t4.ftcdn.net/jpg/02/47/84/23/360_F_247842325_0tkDQECAsN5NTbLBRxu4mOjEuoUyUzkL.jpg');
  
 }
</style>
<script>
			function valid()
			{
				var name=document.getElementById("name").value;
				if(name.length<4||name.length>10)
					{
						alert("name should be in between 4 to 10");
						document.getElementById("name").value="";
						return false;
					}
				var color=document.getElementById("color").value;
				if(color.length<3||color.length>10)
					{
						alert("color should be in between 3 to 10");
						document.getElementById("color").value="";
						return false;
					}
				var model=document.getElementById("model").value;
				if(model.length<4||model.length>10)
					{
					alert("model should be in  between 4 to 10");
					document.getElementById("model").value="";
					return false;
					}
			}
</script>
</head>
<body>
<h1 class="head">Update New Details</h1>
<form action="User"  method="POST" name="user"> 
<center> 
<div class="bg">
                                                                                                                                                                                                                    >
	<table>
			<tr>
			<td>Sno :</td>
			<td><input name="Sno" type="number" readonly="readonly" value=${user.sno}></td>
			</tr>
			<tr>
			<td>Brand :</td>
			<td><input name="Brand" type="text" value=${user.brand} id="name"></td>
			</tr>
			<tr>
			<td>Color :</td>
			<td><input name="Color" type="text" value=${user.color} id="color"></td>
			</tr>
			<tr>
			<td>Price :</td>
			<td><input name="Price" type="text" value=${user.price}></td>
			</tr>
			<tr>
			<td>Model :</td>
			<td><input  name="Model" type="text" value=${user.model} id="model"></td>
			</tr>
	</table>
		<br>
		<center>                                                                                       

 <input class="btn btn-outline-primary" type="submit" value="Update" onclick="return valid()">
 <a href="/"> <input class="btn btn-outline-primary" type="button" value="Home"></a>
 </center>
 </div>
 </center>
 </form>
</body>
</html>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>

  <head>
  
     <meta charset="ISO-8859-1">
     <title>Student page</title>
     
     <script type="text/javascript" src="/student-management0-2/URLToReachResourcesFolder/js/my-script.js"></script> 
     <link rel="stylesheet" type="text/css" href="/student-management0-2/URLToReachResourcesFolder/css/my-style-sheet.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
     
  </head>
  
  <body class="student-body">

     <h1 class="student-h1" >Emre Unlu</h1>

     <nav class="navbar navbar-dark bg-dark">
        <form action="/student-management0-2/showAddStudentPage">
          <button  id="button" type="submit" class="btn btn-secondary btn-lg">ADD STUDENT</button>
        </form>
               
        <form action="/student-management0-2/showAboutPage">
          <button id="button" type="submit" class="btn btn-secondary btn-lg">About This Project</button>
        </form>
        
     </nav>
     
    <div id="mainDiv" align="center">

      
      
     <table  class="table">
      <thead>
      
        <tr>
          <th>Id</th>
          <th>Name</th>
          <th>Number</th>
          <th>Country</th>
       </tr>
       
     </thead>
 
  <c:forEach var="student" items="${students}">
   
  <tbody>
    <tr>
      <td>${student.id}</td>
      <td>${student.name}</td>
      <td>${student.number}</td>
      <td>${student.country}</td>
      <td><a class="btn btn-outline-info" href="/student-management0-2/updateStudent?id=${student.id}">Update</a></td>
      <td><a class="btn btn-outline-danger" href="/student-management0-2/deleteStudent?id=${student.id}"onclick="if(!confirm('Are you sure to delete this student ?')) return false;">Delete</a></td>
    </tr>
     
  </tbody>   
  
  
  </c:forEach>
 
    </table>
    
   
 
   
</div>

</body>
</html>
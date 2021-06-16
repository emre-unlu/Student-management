<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student Page</title>
 <link rel="stylesheet" type="text/css" href="/student-management0-2/URLToReachResourcesFolder/css/my-style-sheet.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body class="student-body">


 <h3 class="add-header">Add Student</h3>

<div class="mb-3" id="form-div">

 <form:form action="save-student" modelAttribute="student" method="POST" >
 
    <form:hidden path="id"/>
   
       <br/>
       
    <label  class="form-label" >Name:</label>
    <form:input  class="form-control"  path="name"/>
   
       <br/>
    
    
    <label class="form-label">Number : </label>
    <form:input class="form-control" path="number"/>
   
       <br/>
   
    <label class="form-label">Country : </label>
    <form:input class="form-control" path="country"/>
    
      <br/>
      
     <button type="submit" class="btn btn-success">Submit</button>
     <a type="button" href="/student-management0-2/showStudent" class="btn btn-warning">Go Back</a>
     
 </form:form>
</div>



</body>
</html>
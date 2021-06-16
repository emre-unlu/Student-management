<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/student-management0-2/URLToReachResourcesFolder/css/my-style-sheet.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body class="about-body">
    
  <div class="about-header">
   <a type="button" href="/student-management0-2/showStudent" class="btn btn-outline-danger btn-lg"> GoBack</a>
   <h1 class="about-header">About This Project </h1>
  </div>

  
  
 <div class="about-me">
   <h3  class = "about-h3">Working Process : </h3>
     
     <br> 
     
     <h4>Request Handling and Data Representing: </h4>
     <p>- Spring web handles the requests on tomcat server and returns a "/showStudent" page</p>
     <p>- On "/showStudent" page we show the data exists in the MySql DataBase </p>
     
     <br>
     
     <h4>Add Student Button : </h4>
     <p>- After you click the button you will redirected to Add Student page</p>
     <p>- There is 2 button called "Submit" and "Go Back" you can submit your form or go back without making any changes to DataBase</p>
     <p>- When you click the "Submit" button Spring Jdbc make a "INSERT" sql command with given informations </p>
     <p>- After DB insertation completed you redirecting to the maing page</p>
     
     <br>
     
     <h4>Update button :  </h4>
     <p>- When "Update" button clicked jsp takes the id of the student and redirect the user to the Add Student page with student information</p>
     <p>- After the changes are done you can go back with "Go Back" button Or you cane submit your change with clicking "Submit" button </p>
     <p>- After you click "Submit" button Spring Jdbc gives MySql database a update sql code and we redirect you to main page</p>
     
     <br>
     
     <h4>Delete button :  </h4>
     <p>- You can delete any student in the Database by clicking the "Delete" button</p>
     <p>- After you click website pops out a Alert to make sure you are ok with the deletion</p>
     <p>- When you click the "OK" button Spring Jdbc sends database a "DELETE" command with the information in the row </p>
   
 </div>
 
   <div class="about-tech">
  
   <h3 class = "about-h3">Technologies Used : </h3>
   <ol class="about-ol">
     <li >Java</li>
     <li >Spring Web</li>
     <li >Spring Jdbc</li>
     <li >Spring Aop</li>
     <li >MySql</li>
     <li >Html5</li>
     <li >Css</li>
     <li >Maven</li>
     <li >BootStrap</li>
     <li >Tomcat</li>
   </ol> 
 </div>
 
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
<!-- for view on pc/phone -->

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<a class="navbar-brand logo" href="/">
													<img src="https://mytrackcdn.com/img/couriers/pgeon.png" alt="mytrackcdn.com">
											</a>

					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					 <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
      
      <% if(session.getAttribute("status") != null) { %>
      	<li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Parcel
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" href="parView.jsp">View</a>
	          <a class="dropdown-item" href="parcelAdd.jsp">Add</a>
	        </div>
	     </li>
	     <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Staff
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" href="disView.jsp">View</a>
	          <a class="dropdown-item" href="dispatchAdd.jsp">Add</a>
	        </div>
	        <li class="nav-item"><a class="nav-link" href="newsche.jsp">Schedule</a></li>
	     
    	
      <% } %>
<li class="nav-item"><a class="nav-link" href="aboutUs.jsp">About Us</a></li>
<li class="nav-item"><a class="nav-link" href="track.jsp">Track your parcel</a></li>
         
     
    </ul>
    <ul class="navbar-nav navbar-right">
       
    	<% 	if(session.getAttribute("status") != null) {
    			if(session.getAttribute("status").equals("loggedin")) { %>
    				<li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
    	<%		}
    		}
	    	else { %>
	    		<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
	    <%  } %>
    </ul>
    
  </div>
</nav>
	
<div class="container">
	
	<%
		if(session.getAttribute("success") != null) {	%>
			<div class="alert alert-success alert-dismissible fade show" role="alert">
			  <%=session.getAttribute("success") %>
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
			    <span aria-hidden="true">&times;</span>
			  </button>
			</div>
	<%		session.removeAttribute("success");
		}
	%>
	
	<%
		if(session.getAttribute("danger") != null) {	%>
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
			  <%=session.getAttribute("danger") %>
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
			    <span aria-hidden="true">&times;</span>
			  </button>
			</div>
	<%		session.removeAttribute("danger");
		}
	%>
	
	
			

							
</div>



 
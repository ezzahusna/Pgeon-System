<%@page import="java.util.*,dispatch.*" %>

<jsp:include page="header.jsp"></jsp:include>
<jsp:useBean id="dispatchModel" scope="application" 
class="dispatch.dispatchModel" ></jsp:useBean>
<jsp:setProperty property="*" name="dispatchModel"/>
<% List<dispatch.Dispatch> list = dispatchModel.viewDispatch(); %>

<head>
	<title>View Dispatch</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
</head>
<style>


.container-table100 {
  width: 100%;
  min-height: 100vh;
  background: aliceblue;


  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-wrap: wrap;
  padding: 33px 30px;
}

.wrap-table100 {
  width: 1600px;
}

table {
  border-spacing: 1;
  border-collapse: collapse;
  background: white;
  border-radius: 10px;
  overflow: hidden;
  width: 100%;
  margin: 0 auto;
  position: relative;
}
table * {
  position: relative;
}
table td, table th {
  padding-left: 8px;
}
table thead tr {
  height: 60px;
  background: skyblue;
}
table tbody tr {
  height: 50px;
}
table tbody tr:last-child {
  border: 0;
}
table td, table th {
  text-align: left;
}
table td.l, table th.l {
  text-align: right;
}
table td.c, table th.c {
  text-align: center;
}
table td.r, table th.r {
  text-align: center;
}


.table100-head th{
  font-family: OpenSans-Regular;
  font-size: 18px;
  color: black;
  line-height: 1.2;
  font-weight: bold;
}

tbody tr:nth-child(even) {
  background-color: #f5f5f5;
}

tbody tr {
  font-family: OpenSans-Regular;
  font-size: 15px;
  color: #808080;
  line-height: 1.2;
  font-weight: unset;
}

tbody tr:hover {
  color: #555555;
  background-color: #f5f5f5;
  cursor: pointer;
}

.column1 {
  width: 100px;
  padding-left: 30px;
    text-align: center;
}

.column2 {
  width: 200px;
    text-align: center;
}

.column3 {
  width: 160px;
    text-align: center;
}

.column4 {
  width: 100px;
  text-align: center;
}

.column5 {
  width: 300px;
  text-align: center;
}

.column6 {
  width: 400px;
  text-align: center;
 
}
.column7 {
  width: 200px;
    
  text-align: left;

}
.column8 {
  width: 300px;
  text-align: center;

}
.column9 {
  width: 300px;
  text-align: center;
 
}
    .column10 {
  width: 100px;
  text-align: center;
 
}
.column11 {
  width: 100px;
  text-align: right;
    padding-left: 20px;
  padding-right: 20px;
}

/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}
.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}
.modal .modal-content {
	border-radius: 3px;
	font-size: 14px;
}
.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}
.modal .modal-title {
	display: inline-block;
}
.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}
.modal textarea.form-control {
	resize: vertical;
}
.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}	
.modal form label {
	font-weight: normal;
}	
.about-content {
			background-image: url(https://www.pgeon.delivery/web-assets/images/about-pgeon-bg1.png);
			background-repeat: no-repeat;
			background-position: 70% bottom;
			background-size: 80%;
		}
</style>
<style>
	.buttonUp {background-color: #ffff00;} /* Yellow */
.buttonDel {background-color: #f44336;} /* Red */
</style>

<section id="content" class="about-content">
<br><br><center>
<h3 class="title-line" style="text-transform:inherit; font-size:42px;">View Dispatch</h3>
</center><br><br>
</section>

<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
  	 <th scope="col">Dispatch ID</th>
  	  <th scope="col">Dispatch Phone Num</th>
	 <th scope="col">Dispatch Name</th>
	
	 
	 <th scope="col" >Actions</th>
	</tr>
 </thead>
 <tbody>

<%
	for(dispatch.Dispatch p : list) {%> 
	<tr>
		<th scope="row"><%= p.getDis_id() %></th>
		<td><%= p.getDis_tel() %></td>
		<td><%= p.getDis_name() %></td>
		
		
		<td>
				<form action = "disUpdate" method ="post">
				<input type = "hidden" id = "id" name = "id" value = "<%=p.getDis_id() %>">
				<a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
				<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Edit Data</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
		<div class="modal-body">					
				
				<div class="form-group">
						<label>Dispatch Phone Number</label><br>
                       <input type="text" class="form-control" name="dis_tel" id="dis_tel"
     value="<%= p.getDis_tel() %>">      
                </div>
                <div class="form-group">
						<label>Dispatch Name</label>
						<input type="text" class="form-control" name="dis_name" id="dis_name"
     value="<%= p.getDis_name() %>">
				</div>
				</div>
                
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<button type="submit" class="btn btn-primary">Update</button>
				</div>
			</form>
		</div>
	</div>
</div>

				</form>
				
				<form action = "disDelete" method = "post">
				<input type = "hidden" id = "id" name = "id" value = "<%=p.getDis_id()%>">
				<a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" onclick = "return confirm ('Are you sure want to delete the record?')" title="Delete">&#xE872;</i></a>
				
				</form>
				</td>
	</tr>
	<% }%>
	</tbody>
</table><br><br><br>
<form action="dispatchAdd.jsp"><button type="submit" class="btn btn-primary">Add Dispatch</button></form>
<br>
<jsp:include page="footer.jsp"></jsp:include>

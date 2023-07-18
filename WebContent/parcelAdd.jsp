<jsp:include page="header.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add new Parcel</title>
</head>
<form action="parAdd" method="post">
  <div class="container">
    <h1>INSERT NEW DATA</h1>
    <p>Please insert full information of your parcel, the sender and the receiver.</p>
    <hr>

    <fieldset>
        <legend>PARCEL INFO</legend><br>
        
  <label class="rad-label"><b>Parcel Type</b></label>
   <input type="text" placeholder="Enter parcel type (1- Fragile / 2- Non-Fragile)" name="parcel_type id="parcel_type">
  <br><br>
        
    <label for="weight"><b>Weight (kg)</b></label>
    <input type="text" placeholder="Enter Weight" name="parcel_kg" id="parcel_kg">

  
      </fieldset>  
    
    <hr>
      <fieldset>
        <legend>SENDER INFO</legend><br><br>
          <label for="Sname"><b>Name</b></label>
    <input type="text" placeholder="Enter sender's name" name="sender_name" id="sender_name" required>
           <label for="Sadd"><b>Addresss</b></label>
    <input type="text" placeholder="Enter sender's address" name="sender_address" id="sender_address" required>
          <label for="Spnum"><b>Phone Number</b></label>
    <input type="text" placeholder="Enter sender's phone number" name="sender_pnum" id="sender_pnum" required>
      </fieldset><br>
      
    <fieldset>
        <legend>RECEIVER INFO</legend><br><br>
          <label for="Rname"><b>Name</b></label>
    <input type="text" placeholder="Enter receiver's name" name="rece_name" id="rece_name" required>
           <label for="Radd"><b>Addresss</b></label>
    <input type="text" placeholder="Enter receiver's address" name="rece_address" id="rece_address" required>
          <label for="Rpnum"><b>Phone Number</b></label>
    <input type="text" placeholder="Enter receiver's phone number" name="rece_pnum" id="rece_pnum" required>
        <br>
      </fieldset><br>
      
      
      
    <button type="submit" class="registerbtn">Submit</button>
  </div>


</form>
<jsp:include page="footer.jsp"></jsp:include>
<style>
fieldset {
  background-color: aliceblue;
color: hsl(0, 10%, 60%);
  margin-left: 14px;
  letter-spacing: 3px;
  text-transform: uppercase;
  font-size: 18px;
  font-weight: 900;
}

legend {
  background-color: skyblue;
  color: black;
  padding: 5px 10px;
}

input {
  margin: 5px;
}
.rad-label {
  display: flex;
  align-items: center;

  border-radius: 100px;
  padding: 14px 16px;
  margin: 10px 0;

  cursor: pointer;
  transition: .3s;
}

.rad-label:hover,
.rad-label:focus-within {
  background: hsla(0, 0%, 80%, .14);
}

.rad-input {
  position: absolute;
  left: 0;
  top: 0;
  width: 1px;
  height: 1px;
  opacity: 0;
  z-index: -1;
}

.rad-design {
  width: 22px;
  height: 22px;
  border-radius: 100px;

  background: linear-gradient(to right bottom, hsl(154, 97%, 62%), hsl(225, 97%, 62%));
  position: relative;
}

.rad-design::before {
  content: '';

  display: inline-block;
  width: inherit;
  height: inherit;
  border-radius: inherit;

  background: hsl(0, 0%, 90%);
  transform: scale(1.1);
  transition: .3s;
}

.rad-input:checked+.rad-design::before {
  transform: scale(0);
}

.rad-text {
  color: hsl(0, 0%, 60%);
  margin-left: 14px;
  letter-spacing: 3px;
  text-transform: uppercase;
  font-size: 18px;
  font-weight: 900;

  transition: .3s;
}

.rad-input:checked~.rad-text {
  color: hsl(0, 0%, 40%);
}

{box-sizing: border-box}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=weight] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=weight]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
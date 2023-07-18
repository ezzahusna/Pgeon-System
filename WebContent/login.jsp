<%@ page import="login.*" %>

<jsp:include page="header.jsp"></jsp:include>
<br>
<title>Login Page</title>


<center><body data-open="click" data-menu="vertical-menu" data-col="1-column" class="vertical-layout vertical-menu 1-column menu-expanded blank-page blank-page background-primary">
<div class="app-content content">
<div class="content-wrapper">
<div class="content-header row">
</div>
<div class="content-body">
<section>
<div class="col-12 d-flex align-items-center justify-content-center">
<div class="col-md-5 col-12 box-shadow-2 p-0 mt-3 mb-3">
<div class="card border-grey border-lighten-3 m-0">
<div class="card-header border-0 pb-0">
<div class="text-center">
<div>
<a href="https://www.pgeon.delivery"><img alt="Pgeon" src="https://www.pgeon.delivery/app-assets/images/logo/pgeon_logo.png" class="pgeon-logo login-form"></a>
</div>
<hr>
<h2 class="mt-1 mb-1 text-primary text-bold-600">Login</h2>

</div>
</div>

<div class="card-content">
<div class="card-body">
<div id="login_message"></div>
<form method="post" action="LoginController" class="form-horizontal">
<fieldset class="form-group floating-label-form-group mb-1">


 <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>

</fieldset>
<fieldset class="form-group floating-label-form-group mb-1">
 <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div></fieldset>

<button id="btnLogin" type="submit" class="btn btn-primary btn-lg btn-block"><i class="ft-unlock"></i>Login

<i id="login_spinner" class="fa fa-spinner fa-pulse fa-fw" style="display: none;"></i>
</button>
</form>
</div>
</div>

</div>
</div>
</div>
</section>
</div>
</div>
</div>

</center>
<br>
<jsp:include page="footer.jsp"></jsp:include>
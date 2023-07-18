<jsp:include page="header.jsp"></jsp:include>
<title>Track Your Parcel</title>

<style>
.about-content {
			background-image: url(https://www.pgeon.delivery/web-assets/images/about-pgeon-bg1.png);
			background-repeat: no-repeat;
			background-position: 70% bottom;
			background-size: 80%;
		}	

.divcenter {
	margin-right: auto;
    margin-left: auto;
    padding-left: 200px;
    padding-right: 200px;
    
}
.input-group {
margin-right: auto;
    margin-left: auto;
    padding-left: 200px;
    padding-right: 200px;
}
</style>
<section id="page-title" class="about-content">

<br><br><center><h1>Track Parcel</h1>
<h5>Enter your Airway Bill Number (also known as the Tracking Number) below</h5></center><br><br><br>
</section>
<br><br><br><br>
<div class="divcenter">
<div class="alert alert-warning">Kindly expect a delay in pick up and delivery due to the restricted operation hour and high parcel volume during the FMCO period <strong><a href="http://covid-19.moh.gov.my/faqsop/sop-perintah-kawalan-pergerakan-diperketatkan-pkpd-emco">and also for areas and Pgeon hubs under EMCO</a></strong>. Stay safe and stay home.
</div></div>
<br>


<div class="input-group">

<input type="text" id="awbNumber" class="form-control" placeholder="Enter your tracking number here" required="" aria-invalid="false">
<span class="input-group-btn">
<button class="btn btn-primary" id="searchButton" type="button" onclick="track_parcel();">Track</button>
</span>
</div>
<br><br><br>
<jsp:include page="footer.jsp"></jsp:include>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html lang="en" b:version='2' class='v2' expr:dir='data:blog.languageDirection' xmlns='http://www.w3.org/1999/xhtml' xmlns:b='http://www.google.com/2005/gml/b' xmlns:data='http://www.google.com/2005/gml/data' xmlns:expr='http://www.google.com/2005/gml/expr'>
<head>
<title>Tuyển dụng</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Classy Job Application Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- font files -->
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<!-- /font files -->
<!-- css files -->
<!-- <link href="../css/style_recum.css" rel='stylesheet' type='text/css'
	media="all" /> -->
<link rel="../stylesheet" href="css/j-forms.css">

<!-- /css files -->
<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
function al() {   	 
        var result = confirm("${message}");
        if(result)  {
            alert("Tiếp tục!");
        } else {
            alert("Hay!");
        }}

</script>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
	<style type="text/css">
		.body__preloader{position:fixed;z-index:9999;width:100%;height:100%;left:0;top:0;background-color:#ffffff;-webkit-transition:all .3s ease;-o-transition:all .3s ease;transition:all .3s ease;opacity:1;visibility:visible}
.body__preloader.loaded{opacity:0;visibility:hidden;z-index:-2}
#loading{display:block;position:relative;z-index:1001;left:50%;top:50%;width:150px;height:150px;margin:-75px 0 0 -75px;border-radius:50%;border:3px solid transparent;border-top-color:#3498db;-webkit-animation:spin 2s linear infinite;animation:spin 2s linear infinite}
#loading:before{content:"";position:absolute;top:5px;left:5px;right:5px;bottom:5px;border-radius:50%;border:3px solid transparent;border-top-color:#e74c3c;-webkit-animation:spin 3s linear infinite;animation:spin 3s linear infinite}
#loading:after{content:"";position:absolute;top:15px;left:15px;right:15px;bottom:15px;border-radius:50%;border:3px solid transparent;border-top-color:#f9c922;-webkit-animation:spin 1.5s linear infinite;animation:spin 1.5s linear infinite}
@-webkit-keyframes spin{0%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg)}}
@keyframes spin{0%{-webkit-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg)}}
	</style>
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}


.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.recontainer {
  /* background-color: #f2f2f2; */
  background-color: #fff;
  padding: 5px 20px 15px 20px;
  border-radius: 3px;
  width: 70%;
  margin: 0 auto;
}

input[type=radio] {
  float: left;
}    
input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
input[type=date] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
  height: 48px;
}
input[type=email] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
input[type=file] {
  width: 42%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
  height: 48px;
}




label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #17449e;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {opacity: 0.1}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
.o-hide {
  display: none;
  transition: all ease 0.8s;
}

.o-hide:hover {
  display: block;
}
</style>
<script type="text/javascript">
  function randomString() {
      var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZ";
      var string_length = 8;
      var randomstring = '';
      for (var i=0; i<string_length; i++) {
        var rnum = Math.floor(Math.random() * chars.length);
        randomstring += chars.substring(rnum,rnum+1);
      }
      document.getElementById("abc").value = randomstring;
    }
  
  var loadFile = function(event) {
	    var reader = new FileReader();
	    reader.onload = function(){
	      var output = document.getElementById('output');
	      output.src = reader.result;
	    };
	    reader.readAsDataURL(event.target.files[0]);
	  };
</script>
</head>

<body onload="randomString();" style="background-image: linear-gradient(120deg, #66a6ff 0%, #89f7fe 100%);">
	<jsp:include page="header.jsp"></jsp:include>
	<div class='body__preloader'>
   <div id="loading"></div>
</div>
	<br>
<br>
<br>
	
	
	
	<div class="row" style="width: 60%;">
  <div class="col-75">
    <div class="recontainer">
    <br>
    <h3 style="text-align: center; color: #17449e; font-weight: bold;text-transform: uppercase;;font-family: 'Dosis', sans-serif;" class="header-w3ls">Tuyển dụng nhân viên chăm sóc trẻ sơ sinh</h3>
		<br>
		<h4 style="color: black; text-align: center;" class="header-w3ls" >${message}</h4>
     <form:form action="client/recruitment.htm" method="post"
				commandName="recruitment"> 
		
		<br>
        <div style="padding-left: 220px;">
        <img style="width: 150px; height: 180px;" id="output"/>
            <form:input path="images" class="form-control" type="file" id="name" name="name" accept="images/*" onchange="loadFile(event)" required="required" />
			
          	</div>
          	
        <div class="row">
          <div class="col-50">
          	
            <label><i class="fa "></i> Họ tên</label>
            <form:input path="fullname" type="text" id="name" name="name"
								required="required" />
			
			<label><i class="fa"></i> SDT</label>
            <form:input path="phone" type="text" id="name" name="name"
				required="required" />
				
				<div class="o-hide">
				<label><i class="fa fa-envelope"></i> Mat khau</label>
            <form:input path="password" type="text" id="abc"
				required="required" />
					</div>
									
            <label><i class="fa"></i> Ngày sinh</label>
            <form:input path="birthday" type="date" id="name" name="name"
				required="required" />

			<label>Giới tính</label>
			<br>
			<br>
			<div class="row">
              <div class="col-50">
                <form:radiobutton path="gender" id="a-option"
						name="selector1" value="Nam" required="required" /> <label
					for="a-option">Nam</label>
					<div class="check"></div>
              </div>
              <div class="col-50">

                <form:radiobutton path="gender" id="b-option"
						name="selector1" value="Nữ" required="required" /> <label
					for="b-option">Nữ</label>
					<div class="check">
						<div class="inside"></div>
					</div>
              </div>
            </div>
			
			<br>
            
            <label><i class="fa"></i> Email</label>
            <form:input path="email" type="email" id="email" name="email"
							placeholder="Mail@example.com" required="required" />
		
		 	
						
			
          </div>

          <div class="col-50">  
          
          <label for="cname">Quê quán</label>
            <form:input path="hometown" type="text" id="name" name="name"
						required="required" />   
						       
           <label for="ccnum">Kinh nghiệm</label>
            <form:input path="experience" type="text" id="name" name="name"
						required="required" />
						
            <label for="ccnum">Bằng cấp</label>
            <form:input path="accountNumberBank" type="text" id="name" name="name"
						required="required" />
            
            <label for="expyear">Số tài khoản</label>
            <form:input path="degree" type="text" id="name" name="name"
						required="required" />
						
						<label for="cvv">Số CMND</label>
            <form:input path="peopleid" type="text" id="name" name="name"
						required="required" />
						
            <%-- <div class="row">
              <div class="col-50">
                <label for="expyear">Số tài khoản</label>
                <form:input path="accountNumberBank" type="text" id="name"
						name="name" required="required" />
              </div>
              <div class="col-50">
                <label for="cvv">Số CMND</label>
                <form:input path="peopleid" type="text" id="name" name="name"
						required="required" />
              </div>
            </div> --%>
            
            
			<div class="o-hide">		
            <label for="expmonth">Chức vụ</label>
            <form:input path="role" type="text" id="name" name="name"/>
             </div>	
          </div>
			
			<div class="o-hide">		
            <label for="expmonth">Trang  thai</label>
            <form:input path="status" type="text" id="name" name="name" value="Waiting" />
             </div>	
          
          <div style="padding-left: 13px; width: 98%;">
          <label><i class="fa"></i> Địa chỉ</label>
            <form:input path="address" type="text" id="name" name="name"
						required="required" />
        </div>
        </div>

        <input type="submit" value="Nộp hồ sơ ứng tuyển" onclick="al()" class="btn">
      </form:form>
    </div>
  </div>
  
</div>


<br>
<br>
<br>
	
<script>
  $(window).bind("load", function() {
    $('.body__preloader').addClass("loaded");
  })
</script>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>

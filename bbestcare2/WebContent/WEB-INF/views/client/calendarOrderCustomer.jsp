<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<sql:setDataSource var="snapshot"
	driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
	url="jdbc:sqlserver://localhost:1433;databaseName=BBESTCARE" user="sa"
	password="quan" />

<sql:query dataSource="${snapshot}" var="result">
         select * from LichKhachHang where Phone = '${user.phone}' and Note = N'Hoàn thành';
         
      </sql:query>
<sql:query dataSource="${snapshot}" var="result1">
         select * from LichKhachHang  where Phone = '${user.phone}' and Note = N'Đã xếp' ;
      </sql:query>

<sql:query dataSource="${snapshot}" var="result2">
         select * from LichKhachHang  where Phone = '${user.phone}' and Note = N'Đã gửi' ;
      </sql:query>

<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}

/* Style the close button */
.topright {
  float: right;
  cursor: pointer;
  font-size: 28px;
}

.topright:hover {color: red;}
</style>
</head>
<body>
	<div style="width: 400px; height: 50px; position: absolute; left: 350px; top: 180px;">
		<h1 style="font-family: 'Oxygen', sans-serif; color: #fff; font-weight: bolder;">${user.fullname}</h1>
	</div>
	<div style="width: 400px; height: 50px; position: absolute; left: 350px; top: 230px;">
		<h3 style="font-family: 'Oxygen', sans-serif; color: #fff;">${user.phone}</h3>
	</div>
	<br>
	
	<div style="width: 100%; height: 50px;">
		<div style="width: 22%;margin: 0 auto;height: 50px;">
			<ul class="nav1 navbar-nav nav nav-wil">
				<li><a href="client/profile/${user.phone}.htm">Thông tin cá nhân</a></li>
				<li><a href="client/calendarOrderCustomer.htm">Lịch đã đặt</a></li>
			</ul>
		</div>
	</div>
	<br>
	<hr style="width: 80%;margin: auto;border-bottom: 2px solid black;">
	<br>
	
<div style=" width: 80%;margin: 0 auto;">
<div class="tab">
  		<button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">Lịch vừa đặt</button>
  		
		<button class="tablinks" onclick="openCity(event, 'Paris')">Lịch
			đã xếp</button>
			
		<button class="tablinks" onclick="openCity(event, 'Tokyo' )" >Lịch sử</button>
		
</div>

<div id="London" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Lịch đã gửi</h3>
  		<table border="1" width="100%" class="table table-borderless" style="border: none;">
			<tr>
				<th scope="col">Email</th>
				<th scope="col">Số điện thoại</th>
				<th scope="col">Địa chỉ</th>
				<th scope="col">Ngày đặt</th>
				<th scope="col">Trạng thái</th>
				<th scope="col">Hủy lịch</th>

			</tr>
			<c:forEach var="row2" items="${result2.rows}">
				<tr>
					<td scope="row"> <c:out value="${row2.email}" /></td>
					<td scope="row"><c:out value="${row2.Phone}" /></td>
					<td scope="row"><c:out
							value="${row2.street} - ${row2.ward} - ${row2.district} - ${row2.city}" /></td>
					<td scope="row"><c:out value="${row2.dated}" /></td>
					<td scope="row"><c:out value="${row2.note}" /></td>
					<td scope="row"><a href="client/delete1/${row2.id}.htm" style="color: white; background-color: red; border: 1px solid red;border-radius: 50px; ">Hủy</a>
					<i ></i>
					</td>
				</tr>
			</c:forEach>
		</table>
		
</div>

<div id="Paris" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
		<h3>Lịch đang chờ</h3>
		<table border="1" width="100% " class="table table-borderless" style="border: none;"> 
			<tr>
					<th scope="col">Email</th>
				<th scope="col">Số điện thoại</th>
				<th scope="col">Địa chỉ</th>
				<th scope="col">Ngày đặt</th>
				<th scope="col">Tên nhân viên</th>
				<th scope="col">Trạng thái</th>
					

			</tr>
			<c:forEach var="row1" items="${result1.rows}">
				<tr>
					<td scope="row"><c:out value="${row1.email}" /></td>
					<td scope="row"><c:out value="${row1.Phone}" /></td>
					<td scope="row"><c:out
							value="${row1.street} - ${row1.ward} - ${row1.district} - ${row1.city}" /></td>
					<td scope="row"><c:out value="${row1.dated}" /></td>
					<td scope="row"><a href="manage/staff/profile/${row1.staff}.htm" > ${row1.staff}</a></td>
					<td scope="row"><c:out value="${row1.note}" /></td>
				
				</tr>
			</c:forEach>
		</table>
</div>

<div id="Tokyo" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>

<h3>Đã hoàn thành</h3>
		<table border="1" width="100%" class="table table-borderless" style="border: none;">
			<tr>

				<th scope="col">Email</th>
				<th scope="col">Số điện thoại</th>
				<th scope="col">Địa chỉ</th>
				<th scope="col">Ngày đặt</th>
				<th scope="col">Tên nhân viên</th>
				<th scope="col">Trạng thái</th>
						
			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>

					<td scope="row"><c:out value="${row.email}" /></td>
					<td scope="row"><c:out value="${row.Phone}" /></td>
					<td scope="row"><c:out
							value="${row.street} - ${row.ward} - ${row.district} - ${row.city}" /></td>
					<td scope="row"><c:out value="${row.dated}" /></td>
					<td scope="row"><c:out value="${row.staff}" /></td>
					<td scope="row"><c:out value="${row.note}" /></td>
					
				</tr>
			</c:forEach>
		</table>
</div>
</div>
<br>
<br>
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
   
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>

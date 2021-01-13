<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Tables</title>

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<jsp:include page="../header.jsp" />
<base href="${pageContext.servletContext.contextPath}/">
<style>
img{
	width: 70x;
	height: 60px;
	}
</style>

<script>
function myFunction() {
  var x = document.getElementById("dataTable").rows.length;
  document.getElementById("demo").innerHTML = (x-2) + "   " + "đánh giá." ;
}
</script>
</head>

<body id="page-top" onload="myFunction()">

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 style="float:left;" class="m-0 font-weight-bold text-primary">Tổng số đánh giá : <span id="demo" style="color: red; "></span></h6>
              <a href=""><i style="float:right;font-size: 20px" class="far fa-plus-square"></i></a>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Đánh giá</th>
                      <th>Ngày đánh giá</th>
                      <th>Số điện thoại</th>
                      <th>Tên khách hàng</th>

                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
        			  <th>ID</th>
                      <th>Đánh giá</th>
                      <th>Ngày đánh giá</th>
                      <th>Số điện thoại</th>
                      <th>Tên khách hàng</th>
                      <th></th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <c:forEach var="n" items="${feedback}">
								<tr>
									<th>${n.id} </th>
									<th>${n.star} </th>
									<th>${n.date}</th>
									  <td>${n.phone}</td>
									  <td>${n.nameCustomer}</td>
		
							</c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->


      <!-- End of Main Content -->

  
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages -->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>

</body>
<jsp:include page="../footer.jsp" />
</html>

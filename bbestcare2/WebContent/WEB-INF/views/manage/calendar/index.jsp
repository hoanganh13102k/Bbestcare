<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Khách hàng</title>

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<base href="${pageContext.servletContext.contextPath}/">


<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://nightly.datatables.net/js/jquery.dataTables.js"></script>
<style type="text/css">
.fill{
position: absolute;
left: 1065px;
top: 70px;
width: 175px;
}
.text{
padding-left: 5px;
}
</style>
</head>
<jsp:include page="../../manage/header.jsp" />
<body id="page-top">
	
        <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 style="float:left;" class="m-0 font-weight-bold text-primary">Lịch nhân viên</h6>    
            </div>
            <div class="card-body">
            
              <div class="table-responsive">
					<div id="ofice">
						<input class="text" type="radio" name="ofc" value="1">Ca 1
						<input class="text" type="radio" name="ofc" value="2">Ca 2
						<input class="text" type="radio" name="ofc" value="3">Ca 3
						<input class="text" type="radio" name="ofc" value="4">Ca 4
					</div>
					<input class="fill" type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
					<hr>
					<table class="table table-bordered" id="example" width="100%" cellspacing="0">
                  <thead>
                    <tr>
							<th>ID</th>
							<th>Ho ten</th>
							<th>Phone</th>
							<th>Ngay</th>
							<th>Slot</th>
							<th>Trang thái</th>
							<th></th>
							<th></th>
						</tr>
                  </thead>
                 
                  <tbody>
                    <c:forEach var="p" items="${listCalenda}">
							<tr>
								<td>${p.id}</td>
								<td>${p.fullname}</td>
								<td>${p.phone}</td>
								<td>${p.dated}</td>
								<td>${p.slot}</td>
								<td>${p.note}</td>
								<td><a href="manage/calendar/delete/${p.id}.htm">Delete</a></td>
								<td><a href="manage/calendar/update/${p.id}.htm">Edit</a></td>
							</tr>
						</c:forEach>
                  </tbody>
                </table>
                
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

    
      <!-- End of Main Content -->
	<script type="text/javascript">
		$(document).ready(
				function() {
					var table = $('#example').DataTable();

					$('input:radio').on(
							'change',
							function() {
								//build a regex filter string with an or(|) condition
								/* var positions = $('input:checkbox[name="pos"]:checked').map(function() {
								  return '^' + this.value + '$';
								}).get().join('|');
								
								//filter in column 1, with an regex, no smart filtering, not case sensitive
								table.column(1).search(positions, true, false, false).draw(false); */

								//build a filter string with an or(|) condition
								var offices = $(
										'input:radio[name="ofc"]:checked').map(
										function() {
											return this.value;
										}).get().join('|');

								//now filter in column 2, with no regex, no smart filtering, not case sensitive
								table.column(4).search(offices, true, false,
										false).draw(false);

							});

				});
	</script>

	<script>
		function myFunction() {
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("example");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[2];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
	</script>
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
<%-- <body id="page-top">
	
	<!-- Begin Page Content -->
	<div class="container-fluid">
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 style="float: left;" class="m-0 font-weight-bold text-primary">Lịch nhân viên</h6>
				
			</div>
			<div class="card-body">
				<div class="table-responsive">
						<div id="ofice">
							<input type="radio" name="ofc" value="1">Ca 1 <input
								type="radio" name="ofc" value="2">Ca 2 <input
								type="radio" name="ofc" value="3">Ca 3 <input
								type="radio" name="ofc" value="4">Ca 4
						</div>
						<input type="text" id="myInput" onkeyup="myFunction()"
							placeholder="Search for names.." title="Type in a name">
						<hr>
						<table class="table table-bordered">
						<thead>
						<tr>
							<th>ID</th>
							<th>Ho ten</th>
							<th>Phone</th>
							<th>Ngay</th>
							<th>Slot</th>
							<th>Note</th>
							<th>Status</th>
							<th></th>
							<th></th>
						</tr>
						</thead>
						<tbody>
						<c:forEach var="p" items="${listCalenda}">
							<tr>
								<td>${p.id}</td>
								<td>${p.fullname}</td>
								<td>${p.phone}</td>
								<td>${p.dated}</td>
								<td>${p.slot}</td>
								<td>${p.note}</td>
								<td>${p.status}</td>
								<td><a href="manage/calendar/delete/${p.id}.htm">Delete</a></td>
								<td><a href="manage/calendar/update/${p.id}.htm">Edit</a></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					
				</div>
			</div>
		</div>

	</div>
	<!-- /.container-fluid -->

	<script type="text/javascript">
		$(document).ready(
				function() {
					var table = $('#example').DataTable();

					$('input:radio').on(
							'change',
							function() {
								var offices = $(
										'input:radio[name="ofc"]:checked').map(
										function() {
											return this.value;
										}).get().join('|');

								//now filter in column 2, with no regex, no smart filtering, not case sensitive
								table.column(3).search(offices, true, false,
										false).draw(false);
							});
				});
	</script>

	<script>
		function myFunction() {
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("example");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[2];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
	</script>
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

</body> --%>
<jsp:include page="../../manage/footer.jsp" />
</html>

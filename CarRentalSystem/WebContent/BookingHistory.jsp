<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rent Details</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
.custab{
    border: 1px solid #ccc;
    padding: 5px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
    }
.custab:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
    }
#main{
width:100%;
height:100vh;
background-image:url("images/plainbackground.jpg");
background-size:cover;
}
td{
font-size:150%;
}
th{
font-size:150%;

}
nav{
width:100%;
height:130px;
background-color:#0007;
line-height:80px;
}
img{

float:right;
}
table{
border:100px;
}
</style>
</head>
<body>
<div id = "main">
<div>
<a href="CustomerHome.jsp" class="btn btn-danger" >
<span class="glyphicon glyphicon-arrow-left"></span>    Back</a>
<img src="images/logo-home.png">
</div>
    <div class="row col-md-10 col-md-offset-0 custyle">
    <table class="table table-hover ">
    <thead>
        <tr>
            <th>ReceiptNo</th>
            <th>CarNo</th>
            <th>CarModel</th>
            <th>CarColor</th>
            <th>Capacity</th>
			<th>RentedDate</th>
			<th>ReturnDate</th>
			<th>CostPerKm</th>
			<th>Payment</th>
			<th>Amount</th>
			<th>Penality</th>
			<th>Image</th> 
        </tr>
    </thead>
            <c:forEach var="rent" items="${rentsData}">
            <tr> 
                <td>${rent.receiptNo}</td>
                <td>${rent.car.carNo}</td>
                <td>${rent.car.carModel}</td>
                <td>${rent.car.carColor}</td>
                <td>${rent.car.capacity}</td>
				<td>${rent.rentDate}</td>
				<td>${rent.returnDate}</td>
				<td>${rent.costPerKm}</td>
				<td>${rent.payment}</td>
				<td>${rent.amount}</td>
				<td>${rent.car.penality}</td>
				<td><a href="displayCar.jsp?image=${rent.car.image}">
				<img src = "images/${rent.car.image}" height="90" width="150"></a></td>
            </tr>
        </c:forEach>
    </table>
    </div>
</div>
</body>
</html>

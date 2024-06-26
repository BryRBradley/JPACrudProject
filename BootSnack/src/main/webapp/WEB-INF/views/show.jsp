<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Snack Management</title>
<style>
    html {
        font-family: Arial, sans-serif;
        background-image: url('images/cool-background.png');
        background-size: cover;
        background-position: center; 
    }
    .container {
        width: 80%;
        margin: 0 auto;
        text-align: center;
    }
    .form-container {
        width: 300px;
        margin: 0 auto;
        text-align: left;
        border: 1px solid #ccc;
        padding: 20px;
        margin-bottom: 20px;
    }
    .form-container label {
        display: block;
        margin-bottom: 5px;
    }
    .form-container input[type="text"],
    .form-container input[type="submit"] {
        width: calc(100% - 10px);
        padding: 8px;
        margin-bottom: 10px;
    }
    .form-container input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table th, table td {
        border: 1px solid #ddd;
        padding: 8px;
    }
    table th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h2>Update Snack</h2>
        <form action="updateSnack.do?id=${snack.id}" method="post">
            <input type="hidden" name="id" value="${snack.id}"/>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${snack.name}"/>
            <label for="calories">Calories:</label>
            <input type="text" id="calories" name="calories" value="${snack.calories}"/>
            <label for="carbs">Carbs:</label>
            <input type="text" id="carbs" name="carbs" value="${snack.carbs}"/>
            <label for="protein">Protein:</label>
            <input type="text" id="protein" name="protein" value="${snack.protein}"/>
            <label for="sugar">Sugar:</label>
            <input type="text" id="sugar" name="sugar"value="${snack.sugar}" />
            <label for="price">Price:</label>
            <input type="text" id="price" name="price" value="${snack.price}"/>
            <input type="submit" value= "Update">
        </form>
    </div>
<div>
        <h1>Selected Snack</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Calories</th>
                <th>Carbs</th>
                <th>Protein</th>
                <th>Sugar</th>
                <th>Price</th>
                <th>Delete</th>
                
            </tr>
               
            <tr>
                <td>${snack.id}</td>
                <td>${snack.name}</td>
                <td>${snack.calories}</td>
                <td>${snack.carbs}</td>
                <td>${snack.protein}</td>
                <td>${snack.sugar}</td>
                <td>${snack.price}</td>
                <td><form action="deleteSnack.do" onsubmit="return window.confirm('Are you sure you want to delete this entity?');" method="POST">
										<div class="form-group">
											<input type="hidden" class="form-control" id="id" name="id"
												value="<c:out value='${snack.id}' />">
										</div>
										<button type="submit"  class="btn btn-danger">Delete
											this Snack</button>
									</form>
									</td>
            </tr>
    
        </table>
    </div>
</div>

</body>
</html>
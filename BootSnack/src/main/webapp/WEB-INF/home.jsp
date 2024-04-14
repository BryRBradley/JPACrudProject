<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Snack Management</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('/BootSnack/images/cool-background.png/image.png');
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
 <h1>Welcome to Snack App</h1>
    <div class="form-container">
    <h5>Look up a snack by ID</h5>
        <form action="getSnack.do" method="GET">
            <label for="id">Snack ID:</label>
            <input type="text" id="id" name="id" />
            <input type="submit" value="Show Snack" />
        </form>
    </div>

    <div class="form-container">
        <h5>Add a new snack</h5>
        <form action="addSnack.do" method="POST">
            <input type="hidden" name="id" th:value="${snack.id}"/>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" />
            <label for="calories">Calories:</label>
            <input type="text" id="calories" name="calories" />
            <label for="sugar_grams">Sugar:</label>
            <input type="text" id="sugar" name="sugar" />
            <label for="protein_grams">Protein:</label>
            <input type="text" id="protein" name="protein" />
            <label for="carbs_grams">Carbs:</label>
            <input type="text" id="carbs" name="carbs" />
            <label for="price">Price:</label>
            <input type="text" id="price" name="price" />
            <input type="submit" value="Add" />
        </form>
    </div>

    <div class="form-container">
        <h5>Delete a snack</h5>
        <form action="deleteSnack.do" method="POST">
            <label for="id">Snack ID:</label>
            <input type="text" id="id" name="id" />
            <input type="submit" value="Delete" />
        </form>
    </div>

    <div>
        <h1>List of Snacks</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Calories</th>
                <th>Carbs</th>
                <th>Protein</th>
                <th>Sugar</th>
                <th>Price</th>
            </tr>
                   <c:forEach items="${snacks}" var="snack">
            <tr>
                <td>${snack.id}</td>
                <td>${snack.name}</td>
                <td>${snack.calories}</td>
                <td>${snack.carbs}</td>
                <td>${snack.protein}</td>
                <td>${snack.sugar}</td>
                <td>${snack.price}</td>
            </tr>
        </c:forEach>
        </table>
    </div>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Registros</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            color: #333;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #e9e9e9;
        }
        a.button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
        }
        a.button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Lista de Registros</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Fecha</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Turno</th>
                <th>Seminario</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="registro" items="${sessionScope.registros}">
                <tr>
                    <td><c:out value="${registro.id}" /></td>
                    <td><c:out value="${registro.fecha}" /></td>
                    <td><c:out value="${registro.nombre}" /></td>
                    <td><c:out value="${registro.apellido}" /></td>
                    <td><c:out value="${registro.turno}" /></td>
                    <td><c:out value="${registro.seminario}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br/>
    <a href="edit.jsp" class="button">Agregar Registro</a>
</body>
</html>

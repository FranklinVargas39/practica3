<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Agregar Registro</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
        }
        h1 {
            color: #007bff;
        }
        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Agregar Nuevo Registro</h1>
    <form action="guardarRegistro" method="post">
        <label for="fecha">Fecha:</label>
        <input type="text" id="fecha" name="fecha"><br>
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre"><br>
        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" name="apellido"><br>
        <label for="turno">Turno:</label>
        <select id="turno" name="turno">
            <option value="mañana">Mañana</option>
            <option value="tarde">Tarde</option>
            <option value="noche">Noche</option>
        </select><br>
        <label for="seminario">Seminario:</label>
        <select id="seminario" name="seminario">
            <option value="Inteligencia artificial">Inteligencia artificial</option>
            <option value="Machine learning">Machine learning</option>
            <option value="Simulación con arena">Simulación con arena</option>
            <option value="Robótica educativa">Robótica educativa</option>
        </select><br>
        <input type="submit" value="Guardar Registro">
    </form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Josem
  Date: 18/06/2024
  Time: 09:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ver Aspirantes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <script src="https://kit.fontawesome.com/8f2cb0ebcf.js" crossorigin="anonymous"></script>
</head>
<body style="background-color:#081E33 ;" >
<div class="container mt-5">
    <h1 class=" mb-4 text-light">Lista de Aspirantes</h1>
    <a href="registrarAspirantes.jsp" class="btn btn-light mt-3"><i class="fa-solid fa-user-plus"></i></a> <br><br>
    <div class="container-xxl table-responsive" style="background-color: #fff; border-radius: 20px;">
        <table class="table ">
            <thead class="thead-light">
            <tr>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>CURP</th>
                <th>Folio</th>
                <th>Fecha de Nacimiento</th>
                <th>Eliminar</th>
                <th>Modificar</th>
            </tr>
            </thead>
            <tbody id="aspirantesTableBody">
            <!-- Filas de aspirantes prellenadas -->
            <tr>

                <td>
                    <button class="btn btn-primary btn-eliminar">
                        <i class="fas fa-trash"></i>
                    </button>
                </td>
                <td>
                    <a href="registrarAspirantes.jsp?index=0" class="btn btn-primary">
                        <i class="fas fa-edit"></i>
                    </a>
                </td>
            </tr>

            </tbody>
        </table>
    </div>
</div>
<script src="../js/verAspirantes.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

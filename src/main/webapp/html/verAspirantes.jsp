<%--
  Created by IntelliJ IDEA.
  User: Josem
  Date: 18/06/2024
  Time: 09:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aspirantes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="../img_svg/faviconGrupo.svg">
    <link rel="stylesheet" href="../css/estilosAspirantes.css">
    <script src="https://kit.fontawesome.com/8f2cb0ebcf.js" crossorigin="anonymous"></script>
</head>

<body>
<div class="wrapper" style="height: 100vh;">
    <aside id="sidebar">
        <div class="d-flex">
            <button class="toggle-btn" type="button">
                <img src="../img_svg/logo.svg" alt="Toggle">
            </button>
            <div class="sidebar-logo">
                <a href="#">TRICKS</a>
            </div>
        </div>
        <ul class="sidebar-nav">
            <li class="sidebar-item">
                <a href="inicioAdmin.jsp" class="sidebar-link">
                    <i class="fas fa-house"></i>
                    <span>Inicio</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a href="#" class="sidebar-link">
                    <i class="fas fa-school-flag"></i>
                    <span>División académica</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a href="#" class="sidebar-link">
                    <i class="fas fa-graduation-cap"></i>
                    <span>Carrera</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a href="#" class="sidebar-link">
                    <i class="fas fa-users"></i>
                    <span>Aspirantes</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a href="#" class="sidebar-link">
                    <i class="fas fa-chalkboard-user"></i>
                    <span>Docentes</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a href="verGrupo.jsp" class="sidebar-link">
                    <i class="fas fa-users-rectangle"></i>
                    <span>Grupos</span>
                </a>
            </li>
        </ul>
        <div class="sidebar-footer background-color">
            <a href="#" class="sidebar-link">
                <i class="fas fa-right-from-bracket"></i>
                <span>Salir</span>
            </a>
        </div>
    </aside>

    <div class="main">
        <div class="container mt-5 text-left">
            <h1 class="mb-4 text-light">Aspirantes</h1>

            <!-- Filtros y botón de registrar -->
            <div class="row mb-3">
                <div class="col-md-3">
                    <input type="text" id="filterName" class="form-control" placeholder="Nombre o Matricula">
                </div>
                <div class="col-md-2">
                    <select class="custom-select" required>
                        <option value="">Grupo</option>
                        <option value="1">A</option>
                        <option value="2">B</option>
                        <option value="3">C</option>
                    </select>
                </div>
                <div class="col-md-1">
                    <button type="button" class="btn btnIcono w-100" data-toggle="modal"
                            data-target="#registrarGrupo"><i class="fa-solid fa-user-plus"></i>
                    </button>
                </div>
            </div><br>

            <div class="container-xxl table-responsive" style="background-color: #fff; border-radius: 20px;">
                <table class="table">
                    <thead class="thead-light">
                    <tr align="center">
                        <th>Folio</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>CURP</th>
                        <th>Fecha de Nacimiento</th>
                        <th>Grupo</th>
                        <th>Editar</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%@ page import="java.util.List" %>
                    <%@ page import="mx.edu.utez.tricks.dao.AspiranteDAO" %>
                    <%@ page import="mx.edu.utez.tricks.model.Aspirante" %>
                    <% AspiranteDAO aspiranteDao = new AspiranteDAO(); %>
                    <% List<Aspirante> aspirantes = aspiranteDao.getAllAspirantes(); %>
                    <% for (Aspirante aspirante : aspirantes) { %>
                    <tr>
                        <td><%= aspirante.getFolioAspirante() %></td>
                        <td><%= aspirante.getNombre() %></td>
                        <td><%= aspirante.getApellidos() %></td>
                        <td><%= aspirante.getCurp() %></td>
                        <td><%= aspirante.getFechaNacimiento() %></td>
                        <td><%= aspirante.getGrupo() %></td>
                        <td>
                            <button class="btn btnIcono btn-modificar" data-toggle="modal"
                                    data-target="#modificarGrupo" data-whatever="Modificar">
                                <i class="fas fa-edit"></i>
                            </button>
                        </td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="antes" id="paginaAnterior" data-page="Anterior">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Anterior</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#" id="page-1" data-page="Página 1">1</a></li>
                    <li class="page-item"><a class="page-link" href="#" id="page-2" data-page="Página 2">2</a></li>
                    <li class="page-item"><a class="page-link" href="#" id="page-3" data-page="Página 3">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="despues" id="paginaSiguiente"
                           data-page="Posterior">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Posterior</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>

<!-- Modal registrar grupo nuevo -->
<div class="modal fade" id="registrarGrupo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Registro de Aspirante</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Nombre del Aspirante:</label>
                        <input type="text" class="form-control" id="asignarGrupo" placeholder="Nombre">
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Apellidos del Aspirante:</label>
                        <input type="text" class="form-control" id="asignarGrupo" placeholder="Apellidos">
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">CURP del Aspirante:</label>
                        <input type="text" class="form-control" id="asignarGrupo" placeholder="CURP">
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Folio del Aspirante:</label>
                        <input type="text" class="form-control" id="asignarGrupo" placeholder="Folio">
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Fecha de Nacimiento del Aspirante:</label>
                        <input type="text" class="form-control" id="asignarGrupo"
                               placeholder="Fecha de Nacimiento">
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">ID del Grupo:</label>
                        <input type="text" class="form-control" id="asignarGrupo" placeholder="ID del Grupo">
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">ID del Estado:</label>
                        <input type="text" class="form-control" id="asignarGrupo" placeholder="ID del Estado">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary">Registrar</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal modificar grupo existente -->
<div class="modal fade" id="modificarGrupo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modificar Aspirante</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Nombre:</label>
                        <input type="text" class="form-control" id="recipient-name">
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Apellidos:</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">CURP:</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Fecha de Nacimiento:</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Grupo:</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary">Guardar Cambios</button>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>

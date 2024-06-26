<%--
  Created by IntelliJ IDEA.
  User: Josem
  Date: 25/06/2024
  Time: 09:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mx.edu.utez.tricks.dao.UsuarioDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.tricks.model.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docentes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="shortcut icon" type="image/x-icon" href="../img_svg/docente.svg">
    <link rel="stylesheet" href="../css/style.css">
    <script src="https://kit.fontawesome.com/8f2cb0ebcf.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="wrapper" style="height: 100vh;">
    <aside id="sidebar">
        <div class="d-flex">
            <button class="toggle-btn" type="button">
                <img src="img/logo.svg" alt="Toggle">
            </button>
            <div class="sidebar-logo">
                <a href="#">TRICKS</a>
            </div>
        </div>
        <ul class="sidebar-nav">
            <li class="sidebar-item">
                <a href="inicioAdmin.html" class="sidebar-link">
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
                <a href="verGrupo.html" class="sidebar-link">
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
            <h1 class="mb-4 text-light">Docentes</h1>

            <!-- Filtros y botón de registrar -->
            <div class="row mb-3">
                <div class="col-md-3">
                    <input type="text" id="filterName" class="form-control" placeholder="Buscar por nombre">
                </div>
                <div class="col-md-3">
                    <select class="custom-select" required>
                        <option value="">Estado</option>
                        <option value="1">Activo</option>
                        <option value="2">Inactivo</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <!-- con esa configuracion se trae el nodal -->
                    <button type="button" class="btn btnIcono w-100" data-toggle="modal" data-target="#registrarGrupo">
                        Registrar Maestro
                    </button>
                </div>
            </div><br>

            <div class="container-xxl table-responsive" style="background-color: #fff; border-radius: 20px;">
                <table id="example" class="table table-striped" style="width:100%">
                    <thead class="thead-light">
                    <tr align="center">
                        <th>Matricula</th>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Estado</th>
                        <th>Modificar</th>
                        <th>Eliminar</th>
                    </tr>
                    </thead>
                    <tbody id="aspirantesTableBody">
                    <%
                        UsuarioDao dao = new UsuarioDao();
                        ArrayList<Usuario> lista = dao.getAll();
                        for(Usuario u : lista){
                    %>
                    <tr>
                        <td><%=u.getId_usuario()%></td>
                        <td><%=u.getNombre()%></td>
                        <td><%=u.getMail()%></td>
                        <td><%=u.isEstado() ? "Habilitado":"Deshabilitado"%></td>
                        <td><a href="sign_in?id=<%=u.getId_usuario()%>">Actualizar</a></td>
                        <td><a>Eliminar</a></td>
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

<!-- Modal registrar maestro nuevo  -->
<div class="modal fade" id="registrarGrupo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Registrar Maestro</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="">
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Nombre:</label>
                        <input type="text" class="form-control" id="asignarGrupo"
                               placeholder="Introduce el nombre del grupo">
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Apellido:</label>
                        <input type="text" class="form-control" id="asignarGrupo"
                               placeholder="Introduce el apellido del grupo">
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Correo Electronico:</label>
                        <input type="text" class="form-control" id="asignarGrupo"
                               placeholder="Introduce el correo lectronico del docente">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn modalBoton2">Registrar</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal modificar datos del docente -->
<div class="modal fade" id="modificarGrupo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modificar datos del docente</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Nombre:</label>
                        <input type="text" class="form-control" id="asignarGrupo" value="Mauro" disabled>
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Apellido:</label>
                        <input type="text" class="form-control" id="asignarGrupo" value="castro">
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Correo electronico:</label>
                        <input type="text" class="form-control" id="asignarGrupo" value="ejemplo@gmail.com">
                    </div>
                    <div class="form-group">
                        <label for="asignarGrupo" class="col-form-label">Estado</label>
                        <select class="custom-select" required>
                            <option value="">Selecciona estado</option>
                            <option value="1">Activo</option>
                            <option value="2">Inactivo</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn modalBoton2">Modificar</button>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}../JS/jquery-3.7.0.js"></script>
<script src="${pageContext.request.contextPath}../JS/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}../JS/datatables.js"></script>
<script src="${pageContext.request.contextPath}../JS/dataTables.bootstrap5.js"></script>
<script src="${pageContext.request.contextPath}../JS/es-MX.json"></script>
<script>
    document.addEventListener('DOMContentLoaded', () => {
        const table = document.getElementById('example');
        new DataTable(table, {
            language: {
                url: '${pageContext.request.contextPath}/JS/es-MX.json'
            }
        });
    });
</script>
</body>
</html>

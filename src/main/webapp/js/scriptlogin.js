
function validarDatos(event) {
    event.preventDefault();  
    let correo = document.getElementById("username").value;
    let contraseña = document.getElementById("password").value;
    

    if (correo === "root" && contraseña === "root") {
        window.location.href = '../html/verAspirantes.jsp';
        // assign('');
    } else {
        alert("contraseña incorrecta");

        document.getElementById("username").value = "";
        document.getElementById("password").value = "";
    }
}



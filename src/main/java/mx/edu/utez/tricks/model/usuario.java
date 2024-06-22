package mx.edu.utez.tricks.model;

public class usuario {

    private String nombre;
    private  String apellido;
    private String mail;
    private String telefono;
    private  String fechaNacimiento;
    private String contra;

    public usuario() {
    }

    public usuario(String nombre, String contra) {
        this.nombre = nombre;
        this.contra = contra;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public usuario(String nombre, String apellido, String mail, String telefono, String fechaNacimiento, String contra) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.mail = mail;
        this.telefono = telefono;
        this.fechaNacimiento = fechaNacimiento;
        this.contra = contra;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
}


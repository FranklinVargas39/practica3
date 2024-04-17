package com.emergentes;

public class Registro {
    private int id;
    private String fecha;
    private String nombre;
    private String apellido;
    private String seminario;
    private String turno;

    // Constructor
    public Registro(int id, String fecha, String nombre, String apellido, String turno, String seminario) {
        this.id = id;
        this.fecha = fecha;
        this.nombre = nombre;
        this.apellido = apellido;
        this.turno = turno;
        this.seminario = seminario;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getSeminario() {
        return seminario;
    }

    public void setSeminario(String seminario) {
        this.seminario = seminario;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }
}

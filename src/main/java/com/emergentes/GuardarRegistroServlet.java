package com.emergentes;

package com.emergentes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/guardarRegistro")
public class GuardarRegistroServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private List<Registro> registros = new ArrayList<>();
    private int idCounter = 1;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fecha = request.getParameter("fecha");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String turno = request.getParameter("turno");
        String seminario = request.getParameter("seminario");

        // Crear un nuevo objeto Registro
        Registro nuevoRegistro = new Registro(idCounter++, fecha, nombre, apellido, turno, seminario);

        // Agregar el nuevo registro a la lista
        registros.add(nuevoRegistro);

        // Guardar la lista de registros en el ámbito de sesión (opcional)
        request.getSession().setAttribute("registros", registros);

        // Redireccionar de vuelta a index.jsp
        response.sendRedirect("index.jsp");
    }
}

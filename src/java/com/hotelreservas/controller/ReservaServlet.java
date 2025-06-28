package com.hotelreservas.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class ReservaServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");

        request.setAttribute("mensaje", "Reserva realizada por: " + nombre + " (" + correo + ")");
        request.getRequestDispatcher("respuesta.jsp").forward(request, response);
    }
}

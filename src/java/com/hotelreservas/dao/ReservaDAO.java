package com.hotelreservas.dao;
import com.hotelreservas.model.Reserva;
import com.hotelreservas.util.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class ReservaDAO {
    public static boolean insertarReserva(Reserva reserva) {
        try (Connection con = ConexionBD.getConnection()) {
            String sql = "INSERT INTO reservas (nombre, correo, fecha_entrada, fecha_salida) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, reserva.getNombre());
            ps.setString(2, reserva.getCorreo());
            ps.setString(3, reserva.getFechaEntrada());
            ps.setString(4, reserva.getFechaSalida());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

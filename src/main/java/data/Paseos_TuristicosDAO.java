package data;

import static data.Conexion.close;
import static data.Conexion.getConexion;
import entity.Paseos_Turisticos;
import java.sql.*;
import java.util.*;

public class Paseos_TuristicosDAO {

    private static final String SQL_CREATE = "INSERT INTO paseos_turisticos(nombre, diaHorario, ubicacion, descripcion, valor, imagen) VALUES(?, ?, ?, ?, ?, ?)";
    private static final String SQL_READ = "SELECT * FROM paseos_turisticos";
    private static final String SQL_READ_BY_ID = "SELECT * FROM paseos_turisticos WHERE idActividad = ?";
    private static final String SQL_UPDATE = "UPDATE paseos_turisticos SET nombre = ?, diaHorario = ?, ubicacion = ?, descripcion = ?, valor = ?, imagen = ? WHERE idActividad = ?";
    private static final String SQL_UPDATE_DIAYHORARIO = "UPDATE paseos_turisticos SET diaHorario = ? WHERE idActividad = ?";
    private static final String SQL_UPDATE_VALOR = "UPDATE paseos_turisticos SET valor = ? WHERE idActividad = ?";
    private static final String SQL_DELETE = "DELETE FROM paseos_turisticos WHERE idActividad = ?";

//  METODO CREATE  -------------------------------------------------------------
    public int create(Paseos_Turisticos actividad) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_CREATE);
            stmt.setString(1, actividad.getNombre());
            stmt.setString(2, actividad.getDiaHorario());
            stmt.setString(3, actividad.getUbicacion());
            stmt.setString(4, actividad.getDescripcion());
            stmt.setString(5, actividad.getValor());
            stmt.setString(6, actividad.getImagen());
            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }

//  METODO READ  ---------------------------------------------------------------
    public List<Paseos_Turisticos> read() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Paseos_Turisticos actividad = null;
        List<Paseos_Turisticos> paseos_turisticos = new ArrayList();
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_READ);
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idActividad = rs.getInt(1);
                String nombre = rs.getString(2);
                String diaHorario = rs.getString(3);
                String ubicacion = rs.getString(4);
                String descripcion = rs.getString(5);
                String valor = rs.getString(6);
                String imagen = rs.getString(7);
                actividad = new Paseos_Turisticos(idActividad, nombre, diaHorario, ubicacion, descripcion, valor, imagen);
                paseos_turisticos.add(actividad);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(rs);
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return paseos_turisticos;
    }

//  METODO READ BY ID  ---------------------------------------------------------
    public Paseos_Turisticos readActividadById(int id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Paseos_Turisticos actividad = null;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_READ_BY_ID);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            while (rs.next()) {
                int idActividad = rs.getInt(1);
                String nombre = rs.getString(2);
                String diaHorario = rs.getString(3);
                String ubicacion = rs.getString(4);
                String descripcion = rs.getString(5);
                String valor = rs.getString(6);
                String imagen = rs.getString(7);
                actividad = new Paseos_Turisticos(idActividad, nombre, diaHorario, ubicacion, descripcion, valor, imagen);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(rs);
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return actividad;
    }

//  METODO UPDATE  -------------------------------------------------------------
    public int update(Paseos_Turisticos actividad) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE);
            stmt.setString(1, actividad.getNombre());
            stmt.setString(2, actividad.getDiaHorario());
            stmt.setString(3, actividad.getUbicacion());
            stmt.setString(4, actividad.getDescripcion());
            stmt.setString(5, actividad.getValor());
            stmt.setString(6, actividad.getImagen());
            stmt.setInt(7, actividad.getIdActividad());
            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }
    
//  METODO UPDATE_DIAYHORARIO  -------------------------------------------------   
    public int updateDiaYHorario(Paseos_Turisticos actividad) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE_DIAYHORARIO);
            stmt.setString(1, actividad.getDiaHorario());
            stmt.setInt(2, actividad.getIdActividad());
            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }

//  METODO UPDATE_VALOR  -------------------------------------------------------   
    public int updateValor(Paseos_Turisticos actividad) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_UPDATE_VALOR);
            stmt.setString(1, actividad.getValor());
            stmt.setInt(2, actividad.getIdActividad());
            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }

//  METODO DELETE  -------------------------------------------------------------
    public int delete(int id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try {
            conn = getConexion();
            stmt = conn.prepareStatement(SQL_DELETE);
            stmt.setInt(1, id);
            registros = stmt.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                close(stmt);
                close(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }
        }
        return registros;
    }
}

package web;

import data.Paseos_TuristicosDAO;
import entity.Paseos_Turisticos;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/servletControlador")
public class ServletControlador extends HttpServlet{

//  MÉTODO DOGET ---------------------------------------------------------------
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        String accion = req.getParameter("accion"); 
        if(accion != null){
            switch(accion){
                case "editar":
                    editarActividad(req, res);
                    break;
                case "eliminar":
                    eliminarActividad(req, res);
                    break;
                default:
                    accionDefault(req, res);
                    break;
            }
        }else{
            accionDefault(req, res);
        }
    }
   
//  MÉTODO DOPOST --------------------------------------------------------------  
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        String accion = req.getParameter("accion");
        if (accion != null){
            switch(accion){
                case "insertar":
                    guardarActividad(req, res);
                    break;
                case "modificar":
                    modificarActividad(req, res);
                    break;
                default:
                    accionDefault(req, res);
                    break;
            }
        }
    }

//  MÉTODO ACCIONDEFAULT -------------------------------------------------------  
    private void accionDefault(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        List <Paseos_Turisticos> paseos_turisticos = new Paseos_TuristicosDAO().read();
        HttpSession sesion = req.getSession();
        sesion.setAttribute("actividad", paseos_turisticos);
        res.sendRedirect("paseos_turisticos.jsp");
    }

//  MÉTODO GUARDARACTIVIDAD ----------------------------------------------------
    private void guardarActividad(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        String nombre = req.getParameter("nombre");
        String diaHorario = req.getParameter("diaHorario");
        String ubicacion = req.getParameter("ubicacion");
        String descripcion = req.getParameter("descripcion");
        String valor = req.getParameter("valor");
        String imagen = req.getParameter("imagen");
        Paseos_Turisticos actividad = new Paseos_Turisticos(nombre, diaHorario, ubicacion, descripcion, valor, imagen);
        int regMod = new Paseos_TuristicosDAO().create(actividad);
        System.out.println("Insertados: " + regMod);
        accionDefault(req, res);
    }
    
//  MÉTODO EDITARACTIVIDAD -----------------------------------------------------
    private void editarActividad(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        int idActividad = Integer.parseInt(req.getParameter("idActividad"));
        Paseos_Turisticos paseos_turisticos = new Paseos_TuristicosDAO().readActividadById(idActividad);
        req.setAttribute("paseos_turisticos", paseos_turisticos);
        req.getRequestDispatcher("/WEB-INF/paginas/operaciones/editarPaseosTuristicos.jsp").forward(req,res);
    }

//  MÉTODO MODIFICARACTIVIDAD --------------------------------------------------
    private void modificarActividad(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        String nombre = req.getParameter("nombre");
        String diaHorario = req.getParameter("diaHorario");
        String ubicacion = req.getParameter("ubicacion");
        String descripcion = req.getParameter("descripcion");
        String valor = req.getParameter("valor");
        String imagen = req.getParameter("imagen");
        int idActividad = Integer.parseInt(req.getParameter("idActividad"));
        Paseos_Turisticos actividad = new Paseos_Turisticos(idActividad, nombre, diaHorario, ubicacion, descripcion, valor, imagen);
        int regMod = new Paseos_TuristicosDAO().update(actividad);
        System.out.println("SE ACTUALIZARON: " + regMod + " REGISTROS");
        accionDefault(req, res);
    }

//  MÉTODO ELIMINARACTIVIDAD ---------------------------------------------------
    private void eliminarActividad(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        int idActividad = Integer.parseInt(req.getParameter("idActividad"));
        int regDel = new Paseos_TuristicosDAO().delete(idActividad);
        System.out.println("REGISTROS ELIMINADOS: "+ regDel);
        accionDefault(req, res);
    }
}

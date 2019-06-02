
package Controller;

import Model.CompteForm;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


public class CompteFormAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "vueCompte";

   
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        CompteForm acf = (CompteForm) form;
        Connection cnx;
        PreparedStatement pst;
        ResultSet res;
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        cnx= DriverManager.getConnection("jdbc:mysql://localhost:3306/db_banque", "root", "");
        pst=cnx.prepareStatement("Insert into compte values(?,?,?,?)");
       pst.setInt(1, acf.getIdCompte());
        pst.setString(2, acf.getDateCreation());
        pst.setDouble(3, acf.getSolde());
        pst.setString(4, acf.getIdClient());
        pst.executeUpdate();
        
        return mapping.findForward(SUCCESS);
    }
}

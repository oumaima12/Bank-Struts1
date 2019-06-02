
package Controller;

import Model.ClientForm;
import Model.OperationForm;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author OUMAIMA
 */
public class AjouterOperationAction extends org.apache.struts.action.Action {

   
    private static final String SUCCESS = "operation";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        OperationForm f =  (OperationForm) form;
        Connection cnx;
        PreparedStatement st;
        ResultSet res;
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        cnx=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/db_banque", "root", "");
        st=(PreparedStatement) cnx.prepareStatement("insert into operation values(?,?,?,?,?)");
        st.setInt(1, f.getIdOperation());
        st.setString(2, f.getDateCreation());
        st.setDouble(3, f.getMontant());
        st.setString(4, f.getType());
        st.setInt(5, f.getIdCompte());
        st.executeUpdate();
        
        return mapping.findForward(SUCCESS);
    }
}

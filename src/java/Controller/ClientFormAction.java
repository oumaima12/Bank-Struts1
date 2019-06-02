
package Controller;

import Model.ClientForm;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


public class ClientFormAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
        private static final String SUCCESS = "vue1";

   
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ClientForm f =  (ClientForm) form;
        Connection cnx;
        PreparedStatement st;
        ResultSet res;
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        cnx=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/db_banque", "root", "");
        st=(PreparedStatement) cnx.prepareStatement("insert into client values(?,?,?)");
        st.setString(1, f.getCodeClient());
        st.setString(2, f.getNomClient());
        st.setString(3, f.getAdresseClient());
        
        st.executeUpdate();
        
        return mapping.findForward(SUCCESS);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Bean.Client;
import Model.AffichageClientsForm;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author OUMAIMA
 */
public class AffichageClientsAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "AffichageClient";

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
          Connection cnx;
        Statement st;
        ResultSet rs;
        AffichageClientsForm  F=(AffichageClientsForm)  form;
         List<Client> ListeCl=new ArrayList<Client>();
         DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_banque", "root", "");
            st=cnx.createStatement();
            rs=st.executeQuery("select * from client");
            
            while(rs.next())
            {
                Client clt=new Client();
                
                clt.setCodeClient(rs.getString(1));
                clt.setNomClient(rs.getString(2));
                clt.setAdresseClient(rs.getString(3));
                ListeCl.add(clt);
                
            }
            F.setL(ListeCl);
            request.setAttribute("aff", F.getL());
           
        
        return mapping.findForward(SUCCESS);
    }
}

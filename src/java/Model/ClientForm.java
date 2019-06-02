
package Model;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class ClientForm extends org.apache.struts.action.ActionForm {
    
 private String codeClient, nomClient,adresseClient;

    public String getCodeClient() {
        return codeClient;
    }

    public void setCodeClient(String codeClient) {
        this.codeClient = codeClient;
    }

    public String getNomClient() {
        return nomClient;
    }

    public void setNomClient(String nomClient) {
        this.nomClient = nomClient;
    }

    public String getAdresseClient() {
        return adresseClient;
    }

    public void setAdresseClient(String adresseClient) {
        this.adresseClient = adresseClient;
    }
    public ClientForm() {
        super();
        // TODO Auto-generated constructor stub
    }

   
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (nomClient == null || nomClient.length() < 1) {
            errors.add("name", new ActionMessage("error.name.obligatoire"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }
}

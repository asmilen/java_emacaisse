package com.sdzee.servlets;

import java.io.IOException;
import java.util.Hashtable;
import javax.naming.Context;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Connection extends HttpServlet {
    public static final String VUE = "/WEB-INF/connection.jsp";
    public static final String CHAMP_EMAIL = "username";
    public static final String CHAMP_PASS = "userpassword";
    public static boolean bool = false;
 

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Récupération des champs du formulaire. */
        doGet(request, response);
        String email = request.getParameter( CHAMP_EMAIL );
        String motDePasse = request.getParameter( CHAMP_PASS );
      
        try {
            validationEmail( email,response );
         
            
            
           
        } catch (Exception e) {
            /* Gérer les erreurs de validation ici. */
        }
    }

    
    /**
     * Validation de l'email sur la forme et sur le serveur de ldap
     * @param email
     * @throws Exception 
     */
    private void validationEmail( String email,HttpServletResponse response ) throws Exception{
        
         if ( email != null && email.trim().length() != 0 ) {
             //forme
            if ( !(email.indexOf('@')>0 && email.endsWith("@mines-ales.org"))){

            throw new Exception( "Merci de saisir une adresse mail valide." );
        }
            // Vérification ldap
            if ( verificationldap(CHAMP_EMAIL)){
                //HttpServletResponse.sendRedirect("/index.jsp");
                response.sendRedirect("/index.jsp");
            }
            

    } else {

        throw new Exception( "Merci de saisir une adresse mail." );

    }
    
}



    private boolean verificationldap(String email) throws Exception{
        
        String ID = email.split("@")[0];
        
         //Adresse du serveur sur lequel se trouve l'annuaire LDAP
        String serverName = "ldap.mines-ales.org";
        //Port du serveur sur lequel se trouve l'annuaire LDAP
        String serverPort = "389";
        //Login de connexion à  l'annuaire LDAP : 
        //Le login dois etre sous forme de "distinguished name"
        //ce qui signifie qu'il dois etre affiché sous la forme de son arborescence LDAP
        String serverLogin = "uid=" + ID + ",ou=eleves,dc=ema,dc=fr";
        //Mot de passe de connexion à l'annuaire LDAP
        String password = CHAMP_PASS;

        //On remplis un tableau avec les parametres d'environement et de connexion au LDAP
        Hashtable environnement = new Hashtable();
        environnement.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
        environnement.put(Context.PROVIDER_URL, "ldap://" + serverName + ":" + serverPort + "/");
        environnement.put(Context.SECURITY_AUTHENTICATION, "simple");
        environnement.put(Context.SECURITY_PRINCIPAL, serverLogin);
        environnement.put(Context.SECURITY_CREDENTIALS, password);
        
        
        try {
            //On appelle le contexte à  partir de l'environnement
            DirContext contexte = new InitialDirContext(environnement);
            //Si ça ne plante pas c'est que la connexion est faite
            //System.out.println("Inscription au serveur : SUCCES, récupération des données");
            return true;

            //On recupere l'attribut
//            Attributes attrs = contexte.getAttributes(serverLogin);
//            System.out.println("Recuperation des données : SUCCES");
//            System.out.println();
//            System.out.println("enregistrement des infos de " + ID);
//            NamingEnumeration en = attrs.getIDs();
//            while (en.hasMore()) {
//                System.out.println(en.next());
//            }

        } catch (Exception e) {
            System.out.println(e);
            
        }
        return false;
    
}
}





    
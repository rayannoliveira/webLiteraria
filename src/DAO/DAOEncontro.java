package DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

import connection.Conector;
import modelo.Encontro;
import modelo.Livro;

/**
 *
 * @author dell1
 */
public class DAOEncontro {
    private Connection con;
    private PreparedStatement stmt;
    private String comandoSql;
    private ResultSet res;
    
    
 public DAOEncontro(){
	 con= Conector.getConection();
 }
 public Encontro retonaencontro(int id){
	  Encontro encontro = null;
	  DAOLivro daolivro = new DAOLivro();  
	  comandoSql = "select * from encontro where idencontro=?";
	  try {
		  	stmt=con.prepareStatement(comandoSql); 
		         
		  	stmt.setInt(1, id);
		  	res = stmt.executeQuery();
		    if (res.next()) {
		    	encontro = new  Encontro();
		    	encontro.setIdencontro(res.getInt("idencontro"));
		    	encontro.setDataencontro(res.getDate("dataencontro"));
		    	encontro.setLivro(daolivro.retonarLivro(res.getInt("fk_idlivro")));
		    }
		         //con.close();
	  } catch (SQLException ex) {
		     JOptionPane.showMessageDialog(null, "Erro ao cadastrar aluno"+ ex);
	  }
	  	finally
		     { 
		     //con.close();
		     
		     }
		     return encontro;
		                         
 }  
 
}
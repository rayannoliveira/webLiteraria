package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

import connection.Conector;
import modelo.Livro;


/**
 *
 * @author dell1
 */
public class DAOLivro {
    private Connection con;
    private PreparedStatement stmt;
    private String comandoSql;
    private ResultSet res;
public DAOLivro(){
	con= Conector.getConection();
}
public void cadastrarLivro(Livro obj2) throws SQLException{
        try {
            comandoSql = "insert into usuario(email,senha,nome) values(?,?,?)";
            stmt=con.prepareStatement(comandoSql);
        
            stmt.setString(1, obj2.getResenha());
            stmt.execute();
            JOptionPane.showMessageDialog(null, "livro matriculado com sucesso");
           
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar livro"+ ex);
        }
        finally
        { 
            con.close();
            
        } 
    }
  
  public void alterarLivro( Livro obj2){
      comandoSql="update usuario set resenha=? where idlivro=?";
        try {
            stmt=con.prepareStatement(comandoSql);
            stmt.setString(1,obj2.getResenha());
            stmt.execute();
            JOptionPane.showMessageDialog(null, "Resenha alterada com sucesoo");             
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao da o update "+ex);
        }
  }
  
  public void apagarLivro( Livro obj2){
   comandoSql="delete from livro where idlivro=? ";
        try {
            stmt=con.prepareStatement(comandoSql);
            stmt.setInt(1, obj2.getIdlivro());
            stmt.execute();
            JOptionPane.showMessageDialog(null,"Apagado com sucesso");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro"+ex);
        }   

    


}
  public Livro retonarLivro(int id){
	  Livro livro = null;
	  comandoSql = "select * from livro where idlivro=?";
	  try {
		  	stmt=con.prepareStatement(comandoSql); 
		         
		  	stmt.setInt(1, id);
		  	res = stmt.executeQuery();
		    if (res.next()) {
		    	livro = new Livro();
		    	livro.setResenha(res.getString("resenha"));
		    	livro.setIdlivro(res.getInt("idlivro"));
		    	livro.setImagem(res.getString("imagem"));
		    	livro.setPontos(res.getInt("pontos"));
		    }
		         //con.close();
	  } catch (SQLException ex) {
		     JOptionPane.showMessageDialog(null, "Erro ao cadastrar aluno"+ ex);
	  }
	  	finally
		     { 
		     //con.close();
		     
		     }
		     return livro;
		                         
}
  public void votarLivro(int id){
	 comandoSql=("update livro set pontos=pontos+1 where idlivro=?");
	 
	 try {
         stmt=con.prepareStatement(comandoSql);
         stmt.setInt(1, id);
         stmt.execute();
         JOptionPane.showMessageDialog(null,"pontos somados");
     } catch (SQLException ex) {
         JOptionPane.showMessageDialog(null, "Erro"+ex);
     }   

	  
  }
  
}

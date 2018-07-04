package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

import connection.Conector;
import modelo.Evento;

/**
 *
 * @author dell1
 */
public class DAOEvento {
     private Connection con;
    private PreparedStatement stmt;
    private String comandoSql;
    private ResultSet res;
    
public DAOEvento(){
	con= Conector.getConection();
}

public void cadastrarEvento(Evento obj3) throws SQLException{
     comandoSql = "insert into evento(texto,fencontro,usuario_idusuario) values(?,?,?)";
        try {
           
            stmt=con.prepareStatement(comandoSql);
        
            stmt.setString(1, obj3.getText());
            stmt.setInt(2, obj3.getFidencontro());
            stmt.setInt(3, obj3.getFidusuario());
            stmt.execute();
            JOptionPane.showMessageDialog(null, "Evento matriculado com sucesso");
           
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar evento"+ ex);
        }
        finally
        { 
            con.close();
            
        } 
    }
  
  public void alterarEvento( Evento obj3){
      comandoSql="update encontro set fencontro=? where idcomentario=?";
        try {
            stmt=con.prepareStatement(comandoSql);
            stmt.setInt(1,obj3.getFidencontro());
            stmt.execute();
            JOptionPane.showMessageDialog(null, "Encontro alterado com sucesoo");             
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao da o update "+ex);
        }
  }
  
  public void apagarEvento( Evento obj3){
   comandoSql="delete from evento where idcomentario=? ";
        try {
            stmt=con.prepareStatement(comandoSql);
            stmt.setInt(1, obj3.getIdcomentario());
            stmt.execute();
            JOptionPane.showMessageDialog(null,"Apagado com sucesso");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro"+ex);
        }   

    


}
}

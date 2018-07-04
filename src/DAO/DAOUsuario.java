package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import connection.Conector;
import modelo.Usuario;

public class DAOUsuario {
	private Connection con;
    private PreparedStatement stmt;
    private String comandoSql;
    private ResultSet res;
    private ArrayList<Usuario> lista= new ArrayList<Usuario>();
    
 public DAOUsuario(){
	 con= Conector.getConection();
 }   
 public void cadastrarUsuario(Usuario obj1) throws SQLException{
       comandoSql = "insert into usuario(nome,email,senha) values(?,?,?)";
        try {
           
            stmt=con.prepareStatement(comandoSql);
            stmt.setString(1, obj1.getNome());
            stmt.setString(2, obj1.getEmail());
            stmt.setString(3, obj1.getSenha());
            stmt.executeUpdate();

            System.out.println(obj1.getEmail());
            System.out.println(obj1.getNome());
            System.out.println(obj1.getSenha());
              
           
          JOptionPane.showMessageDialog(null, "matriculado com sucesso");
           
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao cadastrar aluno"+ ex);
        }
        finally
        { 
       
        } 
    }
 public void alterarSenha( Usuario obj1){
     comandoSql="update usuario set senha=? where email=?";
       try {
           stmt=con.prepareStatement(comandoSql);
           stmt.setString(1,obj1.getSenha());
           stmt.setString(2,obj1.getEmail());
           stmt.execute();
           JOptionPane.showMessageDialog(null, " alterada com sucesoo");             
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, "Erro ao da o update "+ex);
       }
 }
 
 public void alterarNome(Usuario obj1){
	 comandoSql="update usuario set nome=? where email=?";
	 try {
         stmt=con.prepareStatement(comandoSql);
         stmt.setString(1,obj1.getNome());
         stmt.setString(2,obj1.getEmail());
         stmt.execute();
         JOptionPane.showMessageDialog(null, " alterada com sucesoo");             
     } catch (SQLException ex) {
         JOptionPane.showMessageDialog(null, "Erro ao da o update "+ex);
     }
 }
 public void apagarUsuario( Usuario obj1){
	   comandoSql="delete from usuario where email=? ";
	        try {
	            stmt=con.prepareStatement(comandoSql);
	            stmt.setString(1, obj1.getEmail());
	            stmt.execute();
	            JOptionPane.showMessageDialog(null,"Apagado com sucesso");
	        } catch (SQLException ex) {
	            JOptionPane.showMessageDialog(null, "Erro"+ex);
	        }   
	        
}
 public  ArrayList<Usuario> listarUsuario(){
	 comandoSql = "select * from usuario";
	 try {
         stmt=con.prepareStatement(comandoSql);            
         res = stmt.executeQuery();
         while(res.next()){
            Usuario usuariolista = new Usuario();
            usuariolista.setId(res.getInt("idusuario"));
            usuariolista.setNome(res.getString("nome"));
            usuariolista.setEmail(res.getString("email"));
            usuariolista.setSenha(res.getString("senha"));
            lista.add(usuariolista);
         }
         //con.close();
      } catch (SQLException ex) {
     JOptionPane.showMessageDialog(null, "Erro ao cadastrar aluno"+ ex);
     }
     finally
     { 
     //con.close();
     
     }
     return lista;
                                   
}
 public Usuario validar(Usuario obj1){
	 Usuario usuario = null;
	 comandoSql = "select * from usuario where email=? and senha=?";
	 try {
         stmt=con.prepareStatement(comandoSql); 
         
         stmt.setString(1, obj1.getEmail());
         stmt.setString(2, obj1.getSenha());
         
         res = stmt.executeQuery();
         if (res.next()) {
        	 usuario = new Usuario();
        	 usuario.setId(res.getInt("idusuario"));
        	 usuario.setNome(res.getString("nome"));
        	 usuario.setEmail(res.getString("email"));
        	 usuario.setSenha(res.getString("senha"));
         }
         //con.close();
      } catch (SQLException ex) {
     JOptionPane.showMessageDialog(null, "Erro ao cadastrar aluno"+ ex);
     }
     finally
     { 
     //con.close();
     
     }
     return usuario;
                         
 }
}
package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conector {

	 private static String banco="jdbc:mysql://localhost:3306/weblit?autoReconnect=true";
		
		private static String use="root";
		private static String senha="";
		private static  Connection connection = null;
		
		
		static{
			conectar();
			
		}
		
		public Conector(){
			conectar();
		}
		
		
		private static  void conectar(){
			try{
				if(connection==null){
					Class.forName("com.mysql.jdbc.Driver");
					connection=DriverManager.getConnection(banco, use, senha);
					System.out.println("CONEXAO ESTABELECIDA COM SUCESSO!");
					connection.setAutoCommit(true);		
				}	
			}catch (Exception e) {
				throw new RuntimeException("ERRO AO CONECTAR COM BANCO DE DADOS");
			}
			
		}
		

		
		public static Connection getConection(){
			
			return connection;
		}
		
		
	}

	
	
	
	
	
	


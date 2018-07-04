package filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import connection.Conector;

/**
 * Servlet Filter implementation class Filter
 */
@WebFilter("/Filter")
public class Filter implements javax.servlet.Filter {

	private static Connection conection;
	
    public Filter() {
        // TODO Auto-generated constructor stub
    }

	
	public void destroy() {
		
	}

	
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2) throws IOException, ServletException {
	
		try{
			arg2.doFilter(arg0, arg1);
			conection.commit();
			}catch(Exception ex){}		
		try {
				conection.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		conection = Conector.getConection();
	}

}

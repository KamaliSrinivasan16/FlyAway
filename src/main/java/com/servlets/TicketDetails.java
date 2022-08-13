package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.database.Dao;
@WebServlet("/TicketDetails")
public class TicketDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		HashMap<String,String> user= (HashMap<String,String>)session.getAttribute("user");
		if(user==null)
		{
			response.sendRedirect("UserPage.jsp");
		}else
		{
			try {
				Dao dao = new Dao();
				int id = Integer.parseInt(request.getParameter("id"));
				String name = user.get("name");
				List<String[]> flights = dao.getAvailableFlights(id, name);
				session.setAttribute("booking", flights);
				for(String[] s: flights)
				{
					for(int i=0;i<8;i++)
					{
						out.println(s[i]);
					}
				}
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
		}
		
	response.sendRedirect("ConfirmationPage.jsp");
	}

}

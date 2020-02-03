package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.activation.*;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TripBooking
 */
@WebServlet("/TripBooking")
public class TripBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TripBooking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		PrintWriter out = response.getWriter();
		
		String nameOfTrip = request.getParameter("nameOfTrip");
		String TripClient = request.getParameter("TripClient");
		String PackagesType = request.getParameter("PackagesType");
		String ClientEmail = request.getParameter("ClientEmail");
		String dateOfStarting = request.getParameter("dateOfStarting");
		
		
		out.println(nameOfTrip+TripClient+PackagesType+ClientEmail+dateOfStarting);
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jeeproject","root","");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select count(*) from trips where ClientEmail='"+ClientEmail+"'");
			rs.next();
			if(rs.getInt(1)==1)
			{
				response.sendRedirect("http://localhost:8080/FinalProject/Exist.jsp");
			}
			else if(rs.getInt(1) == 0)
			{
				
			
			
			st.executeUpdate("INSERT INTO `trips`(`nameOfTrip`, `TripClient`, `ClientEmail`, `dateOfStarting`, `PackagesType`) "
					+ "VALUES ('"+nameOfTrip+"','"+TripClient+"','"+ClientEmail+"','"+dateOfStarting+"','"+PackagesType+"');");
			
			rs=st.executeQuery("select * from trips where Tid = (select max(Tid) from trips);");
			rs.next();
			out.println(rs.getString(1));
			out.println(rs.getString(2));
			out.println(rs.getString(3));
			out.println(rs.getString(4));
			out.println(rs.getString(5));
			Properties properties = new Properties();
			
			properties.put("mail.smtp.auth", true);
			
			properties.put("mail.smtp.starttls.enable", true);
			//host
			properties.put("mail.smtp.host", "smtp.gmail.com");
			//port
			properties.put("mail.smtp.port", "587");
			
			String myAccount = "drdrhbhb5@gmail.com";
			String pass = "Esperance@5";
			
			Session session = Session.getInstance(properties, new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication()
				{
					return new PasswordAuthentication(myAccount, pass);
					
				}
				
			});
			String recepient = rs.getString(4);
			Message message = prepareMessage(session,myAccount,recepient,rs.getString(1),rs.getString(2),rs.getString(6),rs.getString(3),rs.getString(4),rs.getString(5));
			
			Transport.send(message);
			response.sendRedirect("http://localhost:8080/FinalProject/Ok.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	private static Message prepareMessage(Session session, String myAccount, String recepient,String id,String tripName, String packageName, String username, String Email,String date) {
		// TODO Auto-generated method stub
		Message message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(myAccount));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
			message.setSubject("Tunisian Adventure Service");
			message.setText("Tunisian Adventure agency welcomes you "+username
					+ "\nYou will be contacted by our Customer service soon... \n"
					+ "\nTo ensure that the our employee is not a fraud,"
					+ "\nhe/she will need to Email you your Tid in his/her first Email, which is : "+id
					+ "\nYou will be approaching you using this Email: "+Email
					+ "\nYou have chosen "+packageName
					+ "\nAnd you will start your expedition "+tripName+" in "+date
					+ "\nWe Will do our best to grab you the best Adventure we can !!");
			return message;
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}

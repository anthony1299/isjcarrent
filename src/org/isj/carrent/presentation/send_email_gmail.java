package org.isj.carrent.presentation;

import javax.mail.*;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.internet.*;
import java.util.Properties;


public class send_email_gmail {
	public final String username = "example@gmail.com";
	public final String password = "********";
	//String m = "fodjomaximejr@gmail.com";
	public void send(String mail){
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");//l'envoi du mail est fait avec une adresse gmail
		props.put("mail.smtp.port", "587");
		//props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		Session session = Session.getInstance(props,
				new Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(username, password);
					}
				});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("example@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(mail));
			message.setSubject("Testing Subject");
			message.setText("Salut Monsieur,"
					+ "\n\n Votre réservation a été accepté! \nBienvenue parmi nous"+ "\n\n\n\n\nCar Rent est une nouvelle entreprise qui fait dans la location" +
					" des voitures. " +"\n Faites nous confiance!!! ");
			/*message.setText("Salut Monsieur,"
					+ "\n\n Votre réservation n'a pas été accepté!\n nous sommes désolé."+ "\n\n\n\n\nCar Rent est une nouvelle entreprise qui fait dans la location" +
					" des voitures. " +"\n Faites nous confiance!!! ");*/

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
	
	public static void main(String[] args) {

		String m;



	}

}

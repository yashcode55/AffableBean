package javamail;

import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class JavaMail {

    
public static void sendMail(String recepient){
    
    
    System.out.println("preparing to send email");
    Properties properties = new Properties();
    properties.put("mail.smtp.auth","true");      
    properties.put("mail.smtp.starttls.enable","true");      
    properties.put("mail.smtp.host","smtp.gmail.com");
//    properties.put("mail.smtp.port","465");       
    properties.put("mail.smtp.port","587");
    
   String MyEmail ="sysattendance@gmail.com";
   String Pass ="Admin@123";
   
   Session session = Session.getInstance(properties, new Authenticator() {
   @Override
   protected PasswordAuthentication getPasswordAuthentication(){
    return new PasswordAuthentication (MyEmail, Pass);
   }
   });

Message message = prepareMessage(session, MyEmail, recepient);

    try {
        Transport.send(message);
    } catch (MessagingException ex) {
        Logger.getLogger(JavaMail.class.getName()).log(Level.SEVERE, null, ex);
    }
    System.out.println("message sent successfully ");
}    


 

    private static Message prepareMessage(Session session, String MyEmail, String recepient) {
    try{
         int ROTP;
        Random random  =new Random();
        ROTP = random.nextInt(999999);
        System.out.println("\n"+ROTP);
       
        Message message = new MimeMessage(session);
        message.setFrom (new InternetAddress(MyEmail));
        message.setRecipient(Message.RecipientType.TO, new InternetAddress (recepient));
        message.setSubject("Welcome to affable bean ");
        message.setText("\n this is your otp! "+ROTP);
        
        
        return message;
    }
    catch(Exception ex){
    Logger.getLogger(JavaMail.class.getName()).log(Level.SEVERE,null,ex);
    }
    return null;
    }


}

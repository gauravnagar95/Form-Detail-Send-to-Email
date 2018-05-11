/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Gaurav Nagar
 */
public class EmailUtility {
  
   public static void sendEmail(String host, String port,final String userName, final String password, String date,String photo_id_type,String photo_id_no, String applicant_from, String applicant_to, String servant_name_first, String servant_name_middle, String servant_name_last, String father_husband_name_first, String father_husband_name_middle,String father_husband_name_last, String optradio,String caste, String optradio1,String date_of_birth,String age, String servant_state,String servant_police_district,String servant_police_station, String permanent_address)throws AddressException,
            MessagingException {
 
        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");
 
        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("Enter your Email Address","Enter your password");
            }
        };
 
        Session session = Session.getInstance(properties, auth);
        
         String toaddress ="gaurav.nagar14cs003@gmail.com";
         String subject1 = "Servant Uploads";
        // creates a new e-mail message
        Message msg = new MimeMessage(session);
 
        msg.setFrom(new InternetAddress(toaddress));
       
       InternetAddress[] toAddresses = { new InternetAddress(toaddress)};
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject1);
        msg.setSentDate(new Date());
        msg.setText("\n Date : "+date+"\n Servant name : "+servant_name_first+" "+servant_name_middle+" "+servant_name_last+"\n Photo Id Type : "+photo_id_type+"\n Photo Id No : "+ photo_id_no+"\n Gender : "+optradio+"\n Applicant From : "+applicant_from+"\t Applicant To : "+applicant_to+"\n Father/Husband Name : "+father_husband_name_first+" "+father_husband_name_middle+" "+father_husband_name_last+"\n Date of Birth "+optradio+"\t"+date_of_birth+"\n Age : "+age+"\n Servant State : "+servant_state+"\n Servant Police District : "+servant_police_district+"\n Servant Police Station : "+servant_police_station+"\n Permanent Address : "+permanent_address);
       // sends the e-mail
        Transport.send(msg);
 
    } 
    
}

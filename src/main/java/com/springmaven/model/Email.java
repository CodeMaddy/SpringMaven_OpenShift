package com.springmaven.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

/**
 * Created by Gourav on 11/18/2016.
 */
public class Email {
    @Autowired
    private JavaMailSender emailSender;

    public void sendEmail(String toAddress, String fromAddress, String subject, String msgBody) {

        try {
        MimeMessage message = emailSender.createMimeMessage();
        message.setSubject(subject);
        MimeMessageHelper helper;
        helper = new MimeMessageHelper(message, true);
        helper.setFrom(fromAddress);
        helper.setTo(toAddress);
        helper.setText(msgBody, true);
        emailSender.send(message);
    } catch (MessagingException ex) {
        System.out.print("Error Occurred while sending email :: "+ex);
    }

//        Message msg = new MimeMessage(emailSender.);
//        MimeMessage mimeMessage = emailSender.createMimeMessage();
//        msg.setFrom(fromAddress);
//        msg.setTo(toAddress);
//        msg.setSubject(subject);
//        msg.setText(msgBody);
//        emailSender.send(msg);
    }
}

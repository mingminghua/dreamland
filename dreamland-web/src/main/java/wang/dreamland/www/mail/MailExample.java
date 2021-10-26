package wang.dreamland.www.mail;

/**
 * Created by wly on 2018/3/7.
 */

public class MailExample {

    public static void main (String args[]) throws Exception {
        String email = "www.1078604540@qq.com";
        String validateCode = "8888";
        SendEmail.sendEmailMessage(email,validateCode);

    }
}

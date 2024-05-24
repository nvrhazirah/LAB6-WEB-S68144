/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

/**
 *
 * @author zira
 */


import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class student {

    private String stuno;
    private String stuname;
    private String stuprogram;
    private String validMessage = "Valid Student Number";
    private String invalidMessage = "Invalid Student Number";

    // Method to validate and return the student number
    public String getStuno() {
        Pattern pt = Pattern.compile("[A-Z0-9]*");
        Matcher mt = pt.matcher(stuno);
        boolean b1 = mt.matches();
        if (b1) {
            return stuno + " - " + validMessage;
        } else {
            return stuno + " - " + invalidMessage;
        }
    }

    // Setter for student number
    public void setStuno(String stuno) {
        this.stuno = stuno;
    }

    // Getter and setter for student name
    public String getStuname() {
        return stuname;
    }

    public void setStuname(String Stuname) {
        this.stuname = Stuname;
    }

    // Getter and setter for student program
    public String getStuprogram() {
        return stuprogram;
    }

    public void setStuprogram(String Stuprogram) {
        this.stuprogram = Stuprogram;
    }

    // Getter and setter for valid message
    public String getValidMessage() {
        return validMessage;
    }

    public void setValidMessage(String validMessage) {
        this.validMessage = validMessage;
    }

    // Getter and setter for invalid message
    public String getInvalidMessage() {
        return invalidMessage;
    }

    public void setInvalidMessage(String invalidMessage) {
        this.invalidMessage = invalidMessage;
    }
}

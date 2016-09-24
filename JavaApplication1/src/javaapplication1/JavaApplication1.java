/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication1;

import java.security.SecureRandom;

/**
 *
 * @author ameur
 */
public class JavaApplication1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
     
        
        String AB = "01234567891134657523816797654578907968546354213243567890";
         SecureRandom rnd = new SecureRandom();
         
   StringBuilder sb = new StringBuilder( 8 );
   for( int i = 0; i <8 ; i++ ) 
      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
            System.out.println(sb.toString());
}
    
    
}

package utils;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class AlertFunc 
{
   public static void alertLocation(String msg, String url, JspWriter out)
   {
      String script ="<script>" 
                  + "alert('" + msg + "');" 
                  + " location.href='" +url + "';"
                  + "</script>";
      try 
      {
         out.println(script);
      } 
      catch (IOException e) 
      {
         e.printStackTrace();
      }
   }
   public static void alertBack(String msg,JspWriter out) 
   {
      String script ="<script>" 
            + "alert('" + msg + "');" 
            + "history.back();"
            + "</script>";
      try 
      {
         out.println(script);
      } 
      catch (IOException e) 
      {
         e.printStackTrace();
      }
   }

}
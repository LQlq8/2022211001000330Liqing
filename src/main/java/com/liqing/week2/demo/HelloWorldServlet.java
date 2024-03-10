package com.liqing.week2.demo;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloWorldServlet extends HttpServlet {
    public  void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter writer=response.getWriter();
        writer.println("Name:Li Qing");
        writer.println("ID:2022211001000330");
        writer.println("Date and Time Sun Mar 10 13:18:20 CST 2024");

    }
    public  void doPost(HttpServletRequest request, HttpServletResponse response){

    }
}

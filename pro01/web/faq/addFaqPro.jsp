<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.chunjae.db.*" %>
<%@ include file="/encoding.jsp"%>
<%

    String answer = request.getParameter("answer");
    String question = request.getParameter("question");


    Connection conn = null;
    PreparedStatement pstmt = null;
    DBC con = new MariaDBCon();
    conn = con.connect();

    //4. SQL 구문 처리(insert문)
    String sql = "insert into faq(question, answer) values (?, ?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, question);
    pstmt.setString(2, answer);


    int cnt = pstmt.executeUpdate();
    String script = "<script>";
    script += "history.go(-1);";
    script += "</script>";
    if(cnt>0){
        response.sendRedirect("faqList.jsp");
    } else {
        //response.sendRedirect("addBoard.jsp");
        out.println(script);
    }
    con.close(pstmt, conn);


%>

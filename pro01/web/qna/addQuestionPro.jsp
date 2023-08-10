<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.chunjae.db.*" %>
<%@ page import="com.chunjae.vo.*" %>

<%@ include file="/encoding.jsp"%>

<%

    int lev = Integer.parseInt(request.getParameter("lev"));
    int par = Integer.parseInt(request.getParameter("par"));
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String author = request.getParameter("author");

    Connection conn = null;
    PreparedStatement pstmt = null;
    DBC con = new MariaDBCon();
    conn = con.connect();

    String sql = "insert into qna(title,content,author,lev,par) values (?,?,?,?,?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, title);
    pstmt.setString(2, content);
    pstmt.setString(3, author);
    pstmt.setInt(4,lev);
    pstmt.setInt(5,par);

    int cnt = pstmt.executeUpdate();


    //질문일 때
    if (lev == 0) {
        pstmt.close();
        sql = "update qna set par=qno where par = 0 and lev = 0";
        pstmt = conn.prepareStatement(sql);
        pstmt.executeUpdate();
        cnt = cnt + 1;
    }

    if(cnt == 2){
        System.out.println("질문 글이 등록되었습니다.");
        response.sendRedirect("/qna/qnaList.jsp");
//        out.println("<script>alert('질문 글 등록되었습니다');</script>");
    } else if (cnt == 1) {
        System.out.println("답변 글이 등록되었습니다.");
        response.sendRedirect("/qna/qnaList.jsp");
//        out.println("<script>alert('답변 글 등록되었습니다');</script>");
    } else {
        System.out.println("질문 및 답변 등록이 실패되었습니다.");
        response.sendRedirect("/qna/addQnaPro.jsp?lev="+lev+"&par="+par);
//        out.println("<script>history.go(-1)</script>");

    }


    /*
    String script = "<script>";
    script += "history.go(-1);";
    script += "</script>";
    if (cnt > 0) {
        response.sendRedirect("qnaList.jsp");
    } else {
        //response.sendRedirect("addBoard.jsp");
        out.println(script);
    }

     */


%>






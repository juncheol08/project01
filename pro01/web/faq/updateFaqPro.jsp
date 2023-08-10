<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.chunjae.db.*" %>
<%@include file="/encoding.jsp"%>
<%

    int fno = Integer.parseInt(request.getParameter("fno"));
    String question = request.getParameter("question");
    String answer = request.getParameter("answer");

    Connection conn = null;
    PreparedStatement pstmt = null;

    DBC con = new MariaDBCon();
    conn = con.connect();

    String sql = "update faq set question=?, answer=? where fno=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, question);
    pstmt.setString(2, answer);
    pstmt.setInt(3, fno);
    int cnt = pstmt.executeUpdate();

    if(cnt>0){
        response.sendRedirect("/faq/faqList.jsp");
    } else {
        response.sendRedirect("/faq/faqBoard.jsp?fno="+fno);
    }
    con.close(pstmt, conn);
%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.chunjae.db.*" %>
<%@ include file="/encoding.jsp"%>
<%

    int fno = Integer.parseInt(request.getParameter("fno"));

    Connection con = null;
    PreparedStatement pstmt = null;

    DBC conn = new MariaDBCon();
    con = conn.connect();

    String sql = "delete from faq where fno=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setInt(1, fno);
    int cnt = pstmt.executeUpdate();

    /* 5. 처리된 건수가 0보다 크면(성공처리가 되었으면) 목록 페이지로 이동하고,
    아니면(실패처리가 되었으면), 해당 글 상세보기로 이동한다. */
    if(cnt>0){
        response.sendRedirect("/faq/faqList.jsp");
    } else {
        response.sendRedirect("/faq/faqList.jsp");
    }

    conn.close(pstmt, con);
%>
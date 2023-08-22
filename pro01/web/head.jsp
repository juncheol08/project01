<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%-- 나중에 jsp가 헷갈릴 수 있으므로 path를 여러개 사용하는 경우 이름을 다르게 지정해준다.
    path를 지정할 때 이름을 같게 하지 않게해라 같게하면 오류 생길 수도 있음
--%>
<%
    String path1 = request.getContextPath();
    String sid = (String) session.getAttribute("id");
    String sname = (String) session.getAttribute("name");
    String sjob = (String) session.getAttribute("job");
%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-compatible" content="IE=edge"> <!-- 익스프로어 일 경우 엣지를 사용하라고 안내-->
<meta http-equiv="author" content="천재교육"> <!-- 문서의 제작사 -->
<meta http-equiv="publisher" content="천재교육 백준철"> <!-- 문서의 저자 정의 -->
<meta http-equiv="copyright" content="copyright@chunjaeit.co.kr"> <!-- 저작권 명시 -->
<title>천재교육</title>

<!-- 검색엔진 최적화(SEO)     -->
<meta property="og:type" content="website">
<meta property="og:title" content="천재교육">
<meta property="og:description" content="앞선 생각으로 더 큰 미래의 교육을 준비하는 기업">
<meta property="og:image" content="https://juncheol08.github.io/web01/images/chunjae_logo.png">
<meta property="og:url" content="https://juncheol08.github.io/web01">
<meta name="robots" content="index,follow" />

<!-- 트위터 -->
<meta name="twitter:card" content="https://juncheol08.github.io/web01/images/chunjae_logo.png">
<meta name="twitter:title" content="천재교육">
<meta name="twitter:description" content="앞선 생각">
<meta name="twitter:image" content="https://juncheol08.github.io/web01/images/chunjae_logo.png">

<!-- <meta property="al:ios:url" content="ios 앱 url">
<meta property="al:ios:app-store-id" content="앱 스토어 ID"> -->
<!-- <meta property="al:" -->


<!-- 파비콘 설정 -->
<!-- 16x16 24 32 48 64 96 114 128 256 등의 사이즈 활용 -->
<!-- 표준파비콘 -->
<link rel="shorcut icon" href="<%=path1 %>/images/logo.ico">
<!-- 애플 계열 모바일 -->
<link rel="apple-touch-icon-precomposed" href="<%=path1 %>/images/logo_64.png">
<!-- IE 계열 브라우저 -->
<meta name="msapplication-TileColor" content="#FFFFFF">
<meta name="msapplication-TileImage" href="<%=path1 %>/images/logo_48.png">
<!-- 파이어폭스 오페라 구형 크롬/사파리 -->
<link rel="icon" href="<%=path1 %>/images/logo_16.png" sizes="16x16">
<link rel="icon" href="<%=path1 %>/images/logo_32.png" sizes="32x32">
<link rel="icon" href="<%=path1 %>/images/logo_48.png" sizes="48x48">
<link rel="icon" href="<%=path1 %>/images/logo_64.png" sizes="64x64">

<!-- 불법 복제 방지, 필수 -->
<script>
    // document.oncontextmenu = function () {return false;}
    // document.ondragstart = function () {return false;} // 드래그 방지
    // document.onselectstart = function () {return false;}
    // document.onkeydown = function () {return false;} // 키보드 입력 방지
</script>
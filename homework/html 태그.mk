#html 태그 



###기초태그

<h1> ~ <h6>제목태그 

<p> 단락태그 

<pre> 쓴 그대로 반영  

<a href="주소"> 링크태그 

<img src="주소" alt="대체 텍스트" width="너비" height="높이"> 이미지태그

<br>줄바꿈태그  (닫는태그 없음)

 <hr> 수평선태그스타일태그

<style> 색상,글꼴,배경색 등.. 변경

<b> 굵게

<strong> 중요 텍스트

<i> 기울임

<em> 강조

<mark> 하이라이트

<small> 작은 텍스트

<del> 삭제된 텍스트

<ins> 삽입된 텍스트

<sub> 아랫첨자

<sup> 윗첨자

<q> 따옴표 삽입

<blockquote cite=""> 인용구 삽입

<abbr title=""> 약어 정의

<address> 문서의 연락처 정보 정의 (이탤릭체 표시)

<cite> 작품의 제목 (이탤릭체 표시)

<bdo dir="rtl"> 텍스트 방향 재정의 

<ul> 정렬되지 않은 리스트 style="list-style-type:~"

style - disc(기본값),circle,square,none

<ol> 정렬된 리스트 type="~"

type - 1(기본값),A,a,I,i

Description List

<dl> 목록, <dt> 용어(이름), <dd> 설명



----



### html table

<tr> 테이블 정의

<th> 테이블 헤더 정의

<td> 테이블 데이터 정의 (text,img,list 등등 HTML모든 요소 포함 가능)

<caption> 캡션 추가시 사용

<colgroup>,<col>열 그룹 지정/ <caption> 뒤 <tr> 전에 지정해야함

<thead>,<tbody>,<tfoot> 테이블을 부분화함

테두리 설정시 table, th, td 모두에 정의해야함

축소 테두리 사용시 border-collapse: collapse; 사용

간격 사용시 padding 사용

정렬시 text-align 사용

테이블 간격 사용시 border-spacing 사용

열 병합시 <th colspan="2"> 사용

행 병합시 <th rowspan="2"> 사용

----



### html form



<input type="~"> text/한줄의 텍스트 radio/선택버튼 submit/제출버튼 name속성 생략시 데이터 전송 x

<form action="양식 데이터를 처리하는서버,미지정시 현재페이지">

method 속성 get,post

get-크기제한, 짧은양 적합, 중요한정보 x

post-크기제한x 대용량 데이터, 중요한 정보

<fieldset> 그룹 관련 데이터에 사용

<legend> <fieldset> 캡션 정의



####HTML form 양식

*<input> 여러 방법으로 표현 가능

*<select name="~"> 선택 옵션

 <option value="~" selected></option> selected속성-미리 선택

 </select>

*<textarea name="~" rows="~" cols="~"> 텍스트 영역 cols폭 rows 높이

*<button type="button"  onclick="alert('Hello world!')">button</button> 클릭버튼

*<datalist> <input>안에 들어가며 datalist의 id값과 input의 list 값이 같아야함

*<keygen name="security"> 사용자를 인증하는 보안방법 제공/ 클라이언트 인증서 생성시 사용가능

*<output> 계산결과를 보여줌



---

### semantic 구조

각 영역의 역할에 맞는 영역 이름 부여하여

구조와 디자인적 요소들을 알수있다.



<header > : 헤더를 의미한다.

<nav>  : 내비게이션을 의미한다.

<aside > : 사이드에 위치하는 공간을 의미한다.

<section>  : 여러 중심 내용을 감싸는 공간을 의미한다.

<article> : 글자가 많이 들어가는 부분을 의미한다.

<footer>  : 푸터를 의미한다.


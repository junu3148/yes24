# CATDOG Shoppingmall

![image](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fa79f3d56-9085-416b-a60a-56e2ee8e2389%2F%25EB%25A9%2594%25EC%259D%25B8.png?table=block&id=4b3785a9-aca9-487f-9afd-dae5cbbe62e8&spaceId=a8616105-5508-4c8d-93f9-9e47a410cd89&width=2000&userId=f73d4ca6-c265-4f94-8d39-cd6c6399751c&cache=v2)




## 프로젝트 소개
##### 상세 포트폴리오 : [notion 포트폴리오](https://url.kr/3pd681)
티켓 예매 및 회원간 티켓 양도 서비스

<br>

## 개발 기간
2023년 6월 30일 ~ 2023년 8월 11일

<br>

## 멤버 구성
- 양준우 :
      - 공연
          - 공연 등록 / 수정, 공연 좌석등급 등록 / 수정, 리스트검색, 상세페이지(기본정보, 지도, 리뷰, 잔여좌석)
      - 예매
          - 좌석선택, 결제, 티켓 생성
      - 양도게시판
          - 리스트 검색, 최신,기간임박,가격순 조회, 양도 알림신청, 상세페이지(좌석표시)
      - 마이페이지
          - 예매리스트, 양도리스트, 양도 등록 / 취소, 양도 알림신청 리스트, 양도알림함, 회원정보수정
- 박재우 :
      - 관자리페이지
          - 공연장 관리, 공연 상태 관리(예매대기,진행,종료), 예매리스트, 양도거래 리시트, 예매현황
      - 공연
          - 공연 회차 등록(풀켈린더)

<br>

## 개발 환경
- 프레임워크
   
    Spring 4.3.3


- 데이터베이스 관리 시스템 (DBMS)

  
    Oracle 19C

- 프로그래밍 언어 및 관련 도구

  
    Java 8, MyBatis, JSP, Apache Tomcat 9.0, Maven, HTML, CSS, JavaScript, JQuery, Ajax

- 외부 API 및 라이브러리

  
   Daum Map API, import API, FullCalendar




## 주요 기능


#### 로그인/회원가입


    1. 회원 가입 아이디 입력시 실시간 유효성 검증
    2. 회원 코드에 따라 관리자 페이지/티켓 예매 페이지로 이동


#### 메인 페이지


    1. 등록된 공연 포스터를 롤링으로 확인
    2. 인기순 공연 확인
    3. 티켓팅 D-day 확인


#### 카테고리별 조회 페이지


    1. 등록된 공연 포스터를 롤링으로 확인
    2. 개봉예정 표시, 공연 날짜 확인
    3. 포스터 클릭시 상세페이지로 이동


#### 공연 상세 페이지


    1. 공연 정보 확인
    2. 날짜별 회차별 잔여좌석 확인
    3. 예매
    4. 공연장 위치 확인
    5. 리뷰 작성 및 조회
    

#### 예매 페이지


    1. 공연 날짜,회차의 잔여좌석 확인 후 선택
    2. 선택한 회차의 좌석 지정
    3. 카카오페이 API를 이용한 예매기능
    

#### 마이 페이지


    1. 나의 예매 리스트조회
    2. 나의 관람공연 리스트 조회
    3. 나의 알림신청 리스트 조회 & 알림확인
    4. 회원정보 수정


#### 양도 게시판


    1. 등록된 양도 티켓 관련 공연정보 확인
    2. 제목, 날짜, 좌석, 금액으로 원하는 조건을 등록하여 알림신청
    3. 등록된 티켓의 판매 금액과 판매완료 여부 확인가능
    4. 최신, 낮은가격, 공연임박순 조회 기능
    5. 희망 공연 검색 기능


#### 양도 게시판 상세페이지


    1. 판매자, 좌석위치, 기본 공연 정보 확인
    2. 카카오페이 API를 이용한 구매가능

    
#### 관리자 페이지(공연관리)


    1. 공연장 리스트 확인 & 공연장 등록 / 수정
    2. 공연, 좌석등급, 회차 등록 / 수정
    3. 예정, 진행, 종료 공연별로 상태 변경 및 조회
    4. 회차 종료 클릭시 클릭 시간 기준으로 조건 충족 회차 비활성화
    


#### 관리자 페이지(티켓관리)


    1. 티켓 예매 리스트 확인
    2. 양도 거래 리스트 확인 (전체, 거래중, 거래완료)
    3. 공연별 예매 현황 확인


<br>
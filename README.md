# MemberMng

🤼‍♂️ Author
- 개인 프로젝트
- 2022.01.04 (1일간)

✨ Description
- SpringMVC 패턴 기반 직원 관리 프로그램(JSP)

🔍 Service <br>
○ 직원 정보 등록
  - 직원번호(숫자3자리), 이름, 전화번호, 직급, 이메일
  - 직원번호는 유일한 값이다.
  - 필드별 입력 형식에 맞아야 등록할 수 있다.
  - 전화번호와 이메일주소는 정규표현식을 이용하여 패턴에 맞는 값만 입력 받도록 한다.<br>
    (JAVA 프로그램 정규표현식 참고 : java.util.regex package)

○ 직원 리스트 출력
  - 출력형식: 직원번호, 직급, 이름, 전화번호, 이메일
  - 정렬: 이름순
  - 직원번호는 항상 3자리 숫자로 출력해야 한다(1일 경우 001로 출력)

○ 직원 검색
  - 각 필드별로 검색할 수 있어야 한다.
  
○ 직원 정보 수정
  - 직원번호를 포함한 모든 필드를 수정할 수 있어야 한다.
  - 필드별 입력 형식에 맞아야 수정할 수 있다.
  
○ 직원 정보 삭제

○ (미구현) 직원 정보 다운로드
  - 직원 목록을 CSV 파일로 다운로드 할 수 있어야 한다.
  - 가산점: XLS나 XLSX 형식으로 다운로드 하는 기능

○ (미구현) Quartz를 이용한 스케쥴링
  - 하루에 한번씩 직원 목록을 메일로 발송해야 한다.
  - 발송 시각과 수신할 메일 주소는 원하는 시각과 메일로 한다.
  - 메일 발송은 JavaMail API 를 이용한다.
  - SMTP 서버는 smtp.gmail.com 을 이용한다.


⚙️ Development Environment
- Eclipse IDE for Enterprise Java Developers 2021-12
- JDK 1.8.0.281
- Oracle XE 11g
- Apache-tomcat-8.5.54
- Spring Framework 3.0.2

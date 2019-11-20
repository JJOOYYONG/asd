# PROJECT 아싶다

### 2019-11-20 23:27 환경설정 완료

#### 변경사항
* 프로젝트 생성
  * controller, domain, mapper, service 패키지 만들고 memberVO 생성
  * webapp/resources 아래에 css, images, scripts, uploads 폴더 생성
* xml파일
  * pom.xml 수정 (메이븐 라이브러리 추가)
    * spring-jdbc
    * spring-tx
    * mybatis
    * mybatis-spring
    * log4jdbc-log4j2-jdbc4
    * log4j-api
    * log4j-core
    * thumbnailater
    * commons-fileupload
    * jackson-databind
    * lombok
    * HikariCP
    * mysql-connector-java
  * web.xml 수정
    * post 한글 인코딩 필터 설정
  * root-context.xml 수정
    * hikariCoinfig 설정 (mySql 아이디, 비밀번호, 기본스키마)
    * mybatis 경로(mapper) 설정
    * service 경로 설정
  * servlet-context.xml 수정
    * 쓸지안쓸진 모르지만 파일업로드 세팅 해놓음
  * mybatis-config.xml 생성
    * 카멜케이스
    * 도메인(VO)경로 설정
  * log4j.xml 수정
    * warn -> info
* 테이블 생성
  * asd-DDL.sql 파일 생성

#### 주의할 이슈
* hikari
  * DB와 연결되지 않으면 메인페이지(Hello world 페이지)가 뜨지 않으므로,
  * 첨부된 asd-DDL.sql파일을 열어 계정생성 및 테이블생성을 먼저 하기.
* lombok
  * 롬복은 다들 설치하셨겠죠?
* 기타 이슈나 문제점이 있으면 단체톡이나 개인톡으로 말씀 부탁드리겠습니다.

--------------------------------------------------------------------

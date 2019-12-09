# PROJECT 아싶다
### 2019-12-08 17:40 KSY 작업물 환경에 맞게 병합 시도

#### 주의할 이슈
* Mypage에 진입 이후에 Menu 슬라이드가 열리지 않음

--------------------------------------------------------------------

### 2019-12-01 18:00 KSY 작업물 환경에 맞게 병합 시도

#### 기존 ksy브랜치에서 변경된 사항(작업자 참고)
* 파일명 변경
  * footer2, header2, join2, login2 -> '2' 삭제
* 컬럼 제거
  * id(email로 대체)
  * gold
  * point
  * pointcount
* 컬럼명 변경
  * name->username
  * loccation->local
* 테이블 제거
  * FreeBoard

#### 환경 병합 후에 테스트요소
* 회원가입 성공
 	* ddl 업데이트
  * 컨트롤러 기능 업데이트
* 로그인/로그아웃 성공
* myPage 진입 성공
  * 회원정보 수정 불가(정보 가져오기는 성공)

#### 주의할 이슈
* 회원가입 인풋태그 업데이트 필요
* 회원가입시 필수입력조건요소 체크 함수 필요
* Mapper와 Service가 많이 미흡하므로 필요하면 추가해서 사용가능
  * 다만 주석처리와 사전 통보를 꼼꼼히 해주길 권장

--------------------------------------------------------------------

### 2019-11-26 22:50 Service, Mapper 구현중

#### 변경사항
* Table 추가
  * mem_img(프로필이미지 테이블)
    * pk_uuid
    * fk_email
* Mapper 추가
  * memberMapper - 완성
  * memImgMapper - 미완
* Service 추가
  * memberService - 미완

#### 주의할 이슈
* 각종 service들 테스트 필요
  * 테스트용 view 구현 (미완성)
    * form (입력, 수정)
    * 조회, 삭제 기능
  * 테스트용 controller 구현 (미완성)
    * postMapping

--------------------------------------------------------------------

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

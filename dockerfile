# Tomcat 이미지를 기반으로 새 Docker 이미지를 생성
FROM tomcat:9.0-jdk8-openjdk

# 작업 디렉토리 설정
WORKDIR /usr/local/tomcat

# JSP 프로젝트를 Tomcat의 webapps 디렉토리로 복사
COPY /var/lib/jenkins/workspace/JekinsTest/posco_rabbit/src/main/webapp ./webapps/

# Tomcat 서버 실행
CMD ["catalina.sh", "run"]
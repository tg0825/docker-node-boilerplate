# 기본 이미지 설정
FROM node:11

# 메인 작업자
MAINTAINER tg0825 <tg0825@gamil.com>

# 도커 컨테이너에서 디렉토리 생성
RUN mkdir -p /app

# 기본 디렉토리 설정
WORKDIR /app

# 파일 복사 현재경로(host경로)의 모든 파일을 /app(도커 컨테이너)에 복사
ADD . /app

# npm install
RUN npm install

# 환경변수
ENV NODE_ENV development

# 외부 오픈할 포트
EXPOSE 3000 80

# 실행할 명령
CMD ["npm", "start"]
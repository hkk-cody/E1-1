  FROM nginx:alpine
  LABEL org.opencontainers.image.title="my-custom-nginx"
  LABEL org.opencontainers.image.author="hkk"

  ENV APP_ENV=dev

  # 웹 콘텐츠 복사
  COPY app/ /usr/share/nginx/html/

  # 포트 노출 명시적으로 작성
  EXPOSE 80

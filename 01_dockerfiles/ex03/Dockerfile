FROM debian

EXPOSE 443

RUN apt-get update && \
  apt-get install -y curl openssh-server && \
  curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash && \
  EXTERNAL_URL="https://gitlab.example.com" apt-get install gitlab-ce
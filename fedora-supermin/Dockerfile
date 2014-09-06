FROM michilu/fedora-zero
RUN yum install --quiet -y \
  supermin \
  xz \
  && yum clean all
CMD curl -sL https://github.com/MiCHiLU/docker-fedora-zero/raw/master/buildcontainers.sh | sh

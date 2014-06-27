FROM michilu/fedora-zero
RUN yum install -y rubygem-bundler npm git unzip patch python-pip make python-devel python-lxml
RUN git clone https://github.com/MiCHiLU/timecard-gae.git
RUN cd timecard-gae && bundle install
RUN cd timecard-gae && npm install
RUN curl -s -o google_appengine.zip https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.6.zip && unzip -q google_appengine.zip
RUN patch -d google_appengine/lib/endpoints-1.0/endpoints -p0 -i ../../../../timecard-gae/endpoints.patch
RUN cd timecard-gae && pip install -r packages.txt
RUN cd timecard-gae && pip install -r packages-gae.txt
RUN echo "GAE_PATH=/google_appengine" >> timecard-gae/Makefile

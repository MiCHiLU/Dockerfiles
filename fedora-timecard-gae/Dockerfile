FROM sejeff/fedora-small:f20
RUN yum install -y yum-fastestmirror
RUN yum install -y rubygem-bundler npm git unzip patch python-pip make
RUN git clone https://github.com/MiCHiLU/timecard-gae.git
RUN cd timecard-gae
RUN bundle install
RUN npm install
RUN cd ../
RUN curl -s -o google_appengine.zip https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.6.zip && unzip -q google_appengine.zip
RUN patch -d google_appengine/lib/endpoints-1.0/endpoints -p0 -i ../../../../timecard-gae/endpoints.patch
RUN cd timecard-gae
RUN pip install -r packages.txt
RUN pip install -r packages-gae.txt
RUN echo "GAE_PATH=/google_appengine" >> Makefile

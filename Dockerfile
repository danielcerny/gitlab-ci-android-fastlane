#
# GitLab CI: Android with Fastlane
#
#

FROM jangrewe/gitlab-ci-android
MAINTAINER Daniel Cerny <daniel.troll.cerny@gmail.com>

RUN cd ~/
RUN apt-get update           
RUN apt-get install ruby-dev -y
RUN apt-get install build-essential -y
RUN curl -L https://rubygems.org/rubygems/rubygems-2.7.7.tgz -o ruby.tgz
RUN tar xvfz ruby.tgz
RUN cd rubygems-2.7.7 && ruby setup.rb
RUN gem install fastlane

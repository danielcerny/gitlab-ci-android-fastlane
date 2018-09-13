#
# GitLab CI: Android with Fastlane
#
#

FROM jangrewe/gitlab-ci-android
MAINTAINER Daniel Cerny <daniel.troll.cerny@gmail.com>

RUN apt-get update \
    && apt-get install \
        ruby-dev -y \
    	build-essential -y
RUN curl -L https://rubygems.org/rubygems/rubygems-2.7.7.tgz -o ruby.tgz \
    && tar xvfz ruby.tgz \
    && cd rubygems-2.7.7 \
    && ruby setup.rb \
    && gem install fastlane

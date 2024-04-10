#!/usr/bin/env bash
echo -e '
LABEL author=HyperUser
LABEL "application_environment"="development"
LABEL "version"=1.0
LABEL multi.first-key="first-value" multi.second-key="second-value"
LABEL first-key=first-value \
      second-key=second-value' >> Dockerfile

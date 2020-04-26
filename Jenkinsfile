#!/usr/bin/env groovy

echo "Hello world"
/*
# define required variables
# select jeniks node
# CHECKOUT CODE
# Build code
# Test code
# Deploy code to dev server */
def TOMCAT_WEBAPP="/opt/app/workload/tomcat/apache-tomcat-9.0.34/webapps/"
node ("master") {
  stage('checkout') {
    checkout scm
  }
  stage('Buildcode') {
    echo " buiding java code"
  }
  stage('Test code') {
   echo " Testing code"
  }
  stage('Deploy code to dev server') {
   // if banchname is master then only deploy code
    if(env.BRANCH_NAME = "master") {
    sh "cp ./code/sample.war ${TOMCAT_WEBAPP}"
  }
    else {
      echo "You are not in master branch and it is going to deploy"
    }
  }
  }

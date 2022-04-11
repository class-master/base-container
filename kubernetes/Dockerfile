FROM ubuntu:18.04

USER root

RUN apt-get update && apt-get install -y apt-transport-https curl ca-certificates curl gnupg-agent software-properties-common gnupg2 pass
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
RUN apt-get update
RUN apt-get install -y kubelet kubeadm kubectl
RUN apt-mark hold kubelet kubeadm kubectl

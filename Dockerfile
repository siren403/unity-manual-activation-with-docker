ARG UNITY_VERSION=2021.2.12f1
ARG BASE_IMAGE=unityci/editor:ubuntu-$UNITY_VERSION-base-1.0.1

FROM $BASE_IMAGE

ARG UNITY_VERSION

ENV UNITY_VERSION $UNITY_VERSION
ENV HOME /root

WORKDIR $HOME

CMD unity-editor -batchmode -createManualActivationFile -logfile; \
        mv Unity_v$UNITY_VERSION.alf /mnt/Unity_v$UNITY_VERSION.alf
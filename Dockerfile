FROM ubuntu

MAINTAINER Johnson :0.1

RUN apt-get update && apt-get install -y curl git-core python-pip wget jq ; curl https://sdk.cloud.google.com | bash ; git clone --single-branch -b $TAG_NAME   https://github.com/johnson-tivona/cloud-build-test.git ; pip install -r /cloud-build-test/requirements.txt ;


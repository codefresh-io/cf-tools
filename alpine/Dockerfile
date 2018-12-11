FROM alpine:latest

RUN apk update

RUN  apk add gnupg curl

#Add AWS CLI
RUN  apk add py-pip unzip wget

RUN pip install --upgrade pip virtualenv awscli --user

RUN pip install slack-cli

RUN wget https://dl.google.com/dl/cloudsdk/channels/rapid/google-cloud-sdk.zip

RUN unzip google-cloud-sdk.zip && rm google-cloud-sdk.zip && google-cloud-sdk/install.sh --path-update=true --bash-completion=true --additional-components gsutil kubectl

RUN rm -rf /var/cache/apk/* && google-cloud-sdk/bin/gcloud config set --installation component_manager/disable_update_check true && sed -i -- 's/\"disable_updater\": false/\"disable_updater\": true/g' /google-cloud-sdk/lib/googlecloudsdk/core/config.json
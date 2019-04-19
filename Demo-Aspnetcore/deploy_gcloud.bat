@echo on
set gcloud_path="C:\Users\feliperc\AppData\Local\Google\Cloud SDK\google-cloud-sdk\bin\gcloud"

echo GCLOUD_SERVICE_AUTH : %GCLOUD_SERVICE_AUTH%

echo set auth
call %gcloud_path% auth activate-service-account --key-file "C:\Program Files (x86)\Jenkins\workspace\DotNet-job-freestyle\Demo-Aspnetcore\jenkins-service-account4.json"

echo set project
call %gcloud_path% config set project "gcp-felipecembranelli2"

echo Deploy
call %gcloud_path% app deploy --quiet "%WORKSPACE%"\Demo-Aspnetcore\app.yaml
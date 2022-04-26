helm upgrade coc . \
    -f ./values.yaml \
    -f ./values-dev.yaml \
    --set firebase_service_account_file_base64=$(base64 ~/.gcloud/coc-dev-service-account.json) \
    --set postgres_password_base64=$(echo testpassword | base64 -) \
    --set postgres_config_base64=$(cat ./postgresql.conf.prod | base64 -)

eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_DEFAULT_REGION AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY AWS_SECRET=$AWS_SECRET JWT_SECRET=$JWT_SECRET PORT=$PORT POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD DB_PORT=$DB_PORT POSTGRES_USERNAME=$POSTGRES_USERNAME URL=$URL
eb deploy
#aws s3 cp ./www/Archive.zip s3://elasticbeanstalk-us-east-1-757296424427
#aws elasticbeanstalk create-application-version --application-name udagram --version-label v1 --source-bundle S3Bucket="elasticbeanstalk-us-east-1-757296424427",S3Key="Archive.zip"
#aws elasticbeanstalk update-environment --application-name udagram --environment-name Udagram-env --version-label v1
#eb init --region us-east-1 --platform node.js-12 udagram
#eb use Udagram-env
#eb deploy

aws s3 cp ./www/Archive.zip s3://elasticbeanstalk-us-east-1-757296424427
aws elasticbeanstalk create-application-version --application-name udagram --version-label <<pipeline.git.revision>> --source-bundle S3Bucket="elasticbeanstalk-us-east-1-757296424427",S3Key="Archive.zip"
aws elasticbeanstalk update-environment --application-name udagram --environment-name Udagram-env --version-label <<pipeline.git.revision>>
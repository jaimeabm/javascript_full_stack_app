## App Dependencies

- In AWS, provision a publicly available RDS database running Postgres.

```javascript
1. Sign in to the AWS Management Console and open the Amazon RDS console at https://console.aws.amazon.com/rds/.
2. In the upper-right corner of the Amazon RDS console, choose the AWS Region in which you want to create the DB instance.
3. In the navigation pane, choose Databases.
4. Choose Create database.
5. In Choose a database creation method, select Standard Create.
6. In Engine options, choose the engine type: PostgreSQL.
7. For Version, choose the engine version.
8. Set Credentials in the Settings -> Credential Settings.
9. For the remaining sections, specify your DB instance settings.
10. Choose Create database
11. Use Endpoint of the db created AWS to connect.
12. To connect database, you also need to specify ENV variables in the respected server.
```

for detailed steps visit: [AWS RDS Configuration](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_GettingStarted.CreatingConnecting.PostgreSQL.html)

- In AWS, provision a s3 bucket for hosting the uploaded files.
  We have uploaded our frontend files in this s3 bucket and aws hosted it for us.
  for details visit: [AWS S3 Configuration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html?p=gsrc&c=ho_hsw).
  **Note:** We need to upload bundle files in the format of `.zip` into s3.

- In AWS, provision an Elastic Beanstalk for run server on EC2 and uploading files on S3.
  We need to specify ENV variables in Elastic Beanstalk configuration to connect to database.
  [AWS Elastic Beanstalk Configuration](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/GettingStarted.html)
  **Note:** We need to upload bundle files in the format of `.zip` into eb as well.
- **CircleCI** is necessary for this project. It continuously integrate and deliver the app into the cloud. It run lint, test cases and build the bundle of application and deliver the application on aws services.
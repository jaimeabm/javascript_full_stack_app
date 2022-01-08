
# Infrastructure for Code Deployment

The production environment of this application is made up of different cloud services. The services are listed down below.

### AWS (Amanzon Web Services) - Cloud Computing
Amazon Web Services, Inc. is a subsidiary of Amazon providing on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered pay-as-you-go basis. There are ton of services provided by AWS, but we have used **3 popular** services as given below.

#### RDS (Relational Database Service)
Amazon Relational Database Service is a distributed relational database service by Amazon Web Services. We have used this service to run **postgres** database in cloud.

#### Elastic Beanstalk
AWS Elastic Beanstalk is an easy-to-use service for deploying and scaling web applications and services developed with Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker on familiar servers such as Apache, Nginx, Passenger, and IIS.
We are using this service to run server in cloud. It orchestrates various AWS services, including EC2, S3, Simple Notification Service, CloudWatch, autoscaling, and Elastic Load Balancers. But we are using **EC2** for run server and **S3** for hosting files for this project.

### S3
Amazon Simple Storage Service (Amazon S3) is an object storage service offering industry-leading scalability, data availability, security, and performance.
We are using this service to store files in the form of objects and for hosting.

## CI/CD
For continuous integration and continuous delivery, we are using popular web app **CircleCI** for Continuous integration and delivery.
This **CircleCI** is used to create pipelines which automate the process of building and deploying.
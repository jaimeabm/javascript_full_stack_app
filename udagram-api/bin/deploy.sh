eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_DEFAULT_REGION AWS_PROFILE=$AWS_PROFILE AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY AWS_SECRET=$AWS_SECRET JWT_SECRET=$JWT_SECRET PORT=$PORT POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD DB_PORT=$DB_PORT POSTGRES_USERNAME=$POSTGRES_USERNAME URL=$URL --profile cli &&
eb use Udagrambackend-env-0 --profile cli && 
eb deploy
aws cloudformation delete-stack --stack-name resource-resolvers
aws cloudformation wait stack-delete-complete --stack-name resource-resolvers

aws cloudformation delete-stack --stack-name appsync-resolver
aws cloudformation wait stack-delete-complete --stack-name appsync-resolver

aws cloudformation delete-stack --stack-name dynamodb-materialised-view
aws cloudformation wait stack-delete-complete --stack-name dynamodb-materialised-view

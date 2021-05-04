aws cloudformation create-stack --stack-name dynamodb-materialised-view \
    --template-body file://resources/dynamodb.yaml \
    --capabilities CAPABILITY_NAMED_IAM
aws cloudformation wait stack-cteate-complete --stack-name dynamodb-materialised-view

aws cloudformation create-stack --stack-name appsync-resolver \
    --template-body file://resources/schema/resolver.yaml \
    --capabilities CAPABILITY_NAMED_IAM
aws cloudformation wait stack-cteate-complete --stack-name appsync-resolver

aws cloudformation create-stack --stack-name resource-resolvers \
    --template-body file://resources/resolvers.yaml \
    --capabilities CAPABILITY_NAMED_IAM
aws cloudformation wait stack-cteate-complete --stack-name resource-resolvers

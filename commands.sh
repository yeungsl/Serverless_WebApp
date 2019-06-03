# create an s3 bucket
#aws s3 mb s3://citrus-code-sam

# package cloudformation
sam package --s3-bucket citrus-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml

# deploy the code
sam deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM

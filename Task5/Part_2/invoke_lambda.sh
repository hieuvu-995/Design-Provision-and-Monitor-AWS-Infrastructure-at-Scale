#!/bin/bash
aws lambda invoke --function-name greet_lambda --cli-binary-format raw-in-base64-out --payload '{"greeting": "Welcome"}' --log-type Tail --profile udacity --region us-east-1 lambda_out
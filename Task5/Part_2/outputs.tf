# TODO: Define the output variable for the lambda function.


output "function_name" {
  description = "The name of the Lambda function"
  value       = join("", aws_lambda_function.udacity_greet_lambda.*.function_name)
}
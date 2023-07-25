# example_resources.jinja





resource "aws_lambda_function" "example_lambda_us-east-2" {

  filename      = "example_lambda_us-east-2.zip"
  function_name = "example_lambda_us-east-2"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "example_handler"

  runtime = "nodejs18.x"

  environment {
    variables = {
      foo = "bar"
    }
  }
}



resource "aws_lambda_function" "example_lambda_us-west-1" {

  filename      = "example_lambda_us-west-1.zip"
  function_name = "example_lambda_us-west-1"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "example_handler"

  runtime = "nodejs18.x"

  environment {
    variables = {
      foo = "bar"
    }
  }
}



resource "aws_lambda_function" "example_lambda_us-west-2" {

  filename      = "example_lambda_us-west-2.zip"
  function_name = "example_lambda_us-west-2"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "example_handler"

  runtime = "nodejs18.x"

  environment {
    variables = {
      foo = "bar"
    }
  }
}



resource "aws_lambda_function" "example_lambda_eu-west-1" {

  filename      = "example_lambda_eu-west-1.zip"
  function_name = "example_lambda_eu-west-1"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "example_handler"

  runtime = "nodejs18.x"

  environment {
    variables = {
      foo = "bar"
    }
  }
}


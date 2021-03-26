data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    sid     = "AssumeRole"
    actions = ["sts:AssumeRole"]

    principals {
      type = "Service"
      identifiers = [
        "lambda.amazonaws.com",
        "edgelambda.amazonaws.com"
      ]
    }
  }
}

resource "aws_iam_role" "basic_auth_lambda_edge" {
  name               = "periosprint-dev-basic-auth-lambda-edge"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}

resource "aws_iam_role_policy_attachment" "cloudwatch_logs" {
  role       = aws_iam_role.basic_auth_lambda_edge.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

data "archive_file" "basic_auth_function" {
  type        = "zip"
  source_dir  = "${path.root}/../lambda/basic_auth"
  output_path = "${path.root}/basic-auth.zip"
}

resource "aws_lambda_function" "basic_auth" {
  provider         = aws.us_east
  filename         = data.archive_file.basic_auth_function.output_path
  function_name    = "basic_auth"
  role             = aws_iam_role.basic_auth_lambda_edge.arn
  handler          = "main.lambda_handler"
  source_code_hash = data.archive_file.basic_auth_function.output_base64sha256
  runtime          = "python3.8"
  description      = "Protect CloudFront distributions with Basic Authentication"
  publish          = true
}

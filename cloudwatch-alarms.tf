#---------------------------------------------------
# CloudWatch Alarms
#---------------------------------------------------

resource "aws_cloudwatch_metric_alarm" "sagemaker_invoke_400_errors" {
  alarm_name          = "${local.name_prefix}-sagemaker-serverless-endpoint-400-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 2
  threshold           = 5
  alarm_description   = "This metric monitors SageMaker serverless endpoint 400 invocation errors"
  datapoints_to_alarm = null
  metric_query {
    expression  = "SELECT SUM(Invocation4XXErrors) FROM SCHEMA(\"AWS/SageMaker\", EndpointName,VariantName) WHERE VariantName = 'mlops'"
    id          = "invocation4XXerrors"
    period      = 300
    return_data = true
  }
  insufficient_data_actions = []

  tags = merge(
    var.tags,
    {
      yor_name             = "sagemaker_invoke_400_errors"
      yor_trace            = "7850fd06-1597-492a-a826-26bfe739155f"
      git_commit           = "N/A"
      git_file             = "cloudwatch-alarms.tf"
      git_last_modified_at = "2024-08-17 16:09:05"
      git_last_modified_by = "kwame_mintah@hotmail.co.uk"
      git_modifiers        = "kwame_mintah"
      git_org              = "kwame-mintah"
      git_repo             = "terraform-aws-machine-learning-pipeline"
  })
}

resource "aws_cloudwatch_metric_alarm" "sagemaker_invoke_500_errors" {
  alarm_name          = "${local.name_prefix}-sagemaker-serverless-endpoint-500-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 2
  threshold           = 5
  alarm_description   = "This metric monitors SageMaker serverless endpoint 500 invocation errors"
  datapoints_to_alarm = null
  metric_query {
    expression  = "SELECT SUM(Invocation5XXErrors) FROM SCHEMA(\"AWS/SageMaker\", EndpointName,VariantName) WHERE VariantName = 'mlops'"
    id          = "invocation5XXerrors"
    period      = 300
    return_data = true
  }
  insufficient_data_actions = []

  tags = merge(
    var.tags,
    {
      yor_name             = "sagemaker_invoke_500_errors"
      yor_trace            = "51c66cff-68a4-41a1-9630-d628797c8ffc"
      git_commit           = "N/A"
      git_file             = "cloudwatch-alarms.tf"
      git_last_modified_at = "2024-08-17 16:09:05"
      git_last_modified_by = "kwame_mintah@hotmail.co.uk"
      git_modifiers        = "kwame_mintah"
      git_org              = "kwame-mintah"
      git_repo             = "terraform-aws-machine-learning-pipeline"
  })
}


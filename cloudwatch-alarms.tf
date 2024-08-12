#---------------------------------------------------
# CloudWatch Alarms
#---------------------------------------------------

resource "aws_cloudwatch_metric_alarm" "sagemaker_invoke_400_errors" {
  alarm_name                = "${local.name_prefix}-sagemaker-serverless-endpoint-400-alarm"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 2
  metric_name               = "Invocation4XXErrors"
  namespace                 = "AWS/SageMaker"
  period                    = 300
  statistic                 = "Average"
  threshold                 = 5
  alarm_description         = "This metric monitors SageMaker serverless endpoint 400 invocation errors"
  insufficient_data_actions = []

  tags = merge(
    var.tags,
    {
      yor_name  = "sagemaker_invoke_400_errors"
      yor_trace = "7850fd06-1597-492a-a826-26bfe739155f"
  })
}

resource "aws_cloudwatch_metric_alarm" "sagemaker_invoke_500_errors" {
  alarm_name                = "${local.name_prefix}-sagemaker-serverless-endpoint-500-alarm"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 2
  metric_name               = "Invocation5XXErrors"
  namespace                 = "AWS/SageMaker"
  period                    = 300
  statistic                 = "Average"
  threshold                 = 5
  alarm_description         = "This metric monitors SageMaker serverless endpoint 500 invocation errors"
  insufficient_data_actions = []

  tags = merge(
    var.tags,
    {
      yor_name  = "sagemaker_invoke_500_errors"
      yor_trace = "51c66cff-68a4-41a1-9630-d628797c8ffc"
  })
}

resource "aws_dynamodb_table" "gearshift_resources" {
  name         = "GearShiftResources"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "ResourceId"

  attribute {
    name = "ResourceId"
    type = "S"
  }

  tags = {
    Project = "GearShift"
    TeamID  = var.team_id
  }
}
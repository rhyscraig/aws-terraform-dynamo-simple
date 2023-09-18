output dynamodb_table_id {
    value = try(aws_dynamodb_table.this.id, "")
}

output dynamodb_table_arn {
    value = try(aws_dynamodb_table.this.arn, "")
}
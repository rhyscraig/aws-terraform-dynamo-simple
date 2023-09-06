# module "dynamo" {

#   source = "github.com/terraform-aws-modules/terraform-aws-dynamodb-table"
  
#   name                        = "fearbase"
#   table_class                 = "STANDARD"
#   deletion_protection_enabled = false

#   hash_key                    = "id"
#   range_key                   = "title"

#   attributes = [
#     {
#       name = "id"
#       type = "N"
#     },
#     {
#       name = "title"
#       type = "S"
#     },
#     {
#       name = "age"
#       type = "N"
#     },
#     {
#       name = "spong"
#       type = "N"
#     },
#     {
#       name = "spongy"
#       type = "N"
#     }
#   ]

#   global_secondary_indexes = [
#     {
#       name               = "TitleIndex"
#       hash_key           = "title"
#       range_key          = "age"
#       projection_type    = "INCLUDE"
#       non_key_attributes = ["id"]
#     }
#   ]

#   local_secondary_indexes = [
#     {
#       name               = "TitleIndex1"
#       hash_key           = "title"
#       range_key          = "spong"
#       projection_type    = "INCLUDE"
#       non_key_attributes = ["spong"]
#     }
#   ]

#   hash_key                    = "title"
#   range_key                   = "alg2"

#   attributes = [
#     {
#       name = "title"
#       type = "S"
#     },
#     {
#       name = "adult"
#       type = "S"
#     },
#     {
#       name = "backdrop_path"
#       type = "S"
#     },
#     {
#       name = "genre_ids"
#       type = "N"
#     },
#     {
#       name = "id"
#       type = "N"
#     },
#     {
#       name = "original_language"
#       type = "N"
#     },
#     {
#       name = "original_title"
#       type = "S"
#     },
#     {
#       name = "overview"
#       type = "S"
#     },
#     {
#       name = "popularity"
#       type = "N"
#     },
#     {
#       name = "release_date"
#       type = "S"
#     },
#     {
#       name = "video"
#       type = "N"
#     },
#     {
#       name = "vote_average"
#       type = "N"
#     },
#     {
#       name = "alg1"
#       type = "N"
#     },
#     {
#       name = "alg2"
#       type = "N"
#     }
#   ]

#   global_secondary_indexes = [
#     {
#       name               = "TitleIndex"
#       hash_key           = "title"
#       range_key          = "alg2"
#       projection_type    = "INCLUDE"
#       non_key_attributes = ["vote_average","original_language","video","backdrop_path","adult","original_title","alg1","id","genre_ids","overview"]
#     }
#   ]


# global_secondary_indexes = [
# {
# name               = "AllAttributesIndex"
# hash_key           = "release_date"  # Choose an appropriate hash key
# range_key          = "popularity"    # Choose an appropriate range key
# projection_type    = "ALL"
# non_key_attributes = ["vote_average","original_language","video","backdrop_path","adult","original_title","alg1","id","genre_ids","overview"]
# }
# ]

#   tags = {
#     Terraform   = "true"
#     Environment = "sandbox"
#   }
# }

// Table Item
resource "aws_dynamodb_table_item" "this" {
  table_name = aws_dynamodb_table.this.name
  hash_key   = aws_dynamodb_table.this.hash_key

  item = <<ITEM
{
  "thisHashKey": {"S": "something"},
  "one": {"N": "11111"},
  "two": {"N": "22222"},
  "three": {"N": "33333"},
  "four": {"N": "44444"}
}
ITEM
}
// Create Table
resource "aws_dynamodb_table" "this" {
  name           = "${var.domain_name}-table"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "thisHashKey"

  attribute {
    name = "thisHashKey"
    type = "S"
  }
}

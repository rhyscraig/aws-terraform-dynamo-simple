// The FearFantic Table Item
resource "aws_dynamodb_table_item" "this" {
  table_name = aws_dynamodb_table.this.name
  hash_key   = aws_dynamodb_table.this.hash_key

  item = <<ITEM
{
  "adult": {
    "BOOL": false
  },
  "backdrop_path": {
    "S": "/nVi8CINgtMbWmCQ0XxXgW2H1ZTW.jpg"
  },
  "genre_ids": {
    "L": [
      { "N": "18" },
      { "N": "14" },
      { "N": "53" },
      { "N": "9648" },
      { "N": "27" }
    ]
  },
  "id": {
    "N": "2668"
  },
  "original_language": {
    "S": "en"
  },
  "original_title": {
    "S": "Sleepy Hollow"
  },
  "overview": {
    "S": "New York detective Ichabod Crane is sent to Sleepy Hollow to investigate a series of mysterious deaths in which the victims are found beheaded. Locals believe the culprit to be none other than the legendary Headless Horseman."
  },
  "popularity": {
    "N": "49.539"
  },
  "poster_path": {
    "S": "/660DFxWpSfZ1d1PruZ6Nd9vKXNE.jpg"
  },
  "release_date": {
    "S": "19/11/1999"
  },
  "title": {
    "S": "Sleepy Hollow"
  },
  "video": {
    "BOOL": false
  },
  "vote_average": {
    "N": "7.2"
  },
  "vote_count": {
    "N": "5721"
  },
  "alg1": {
    "N": "41191.2"
  },
  "alg2": {
    "N": "41240.739"
  }
}
ITEM
}

// Create Table
resource "aws_dynamodb_table" "this" {
  name           = "${var.database_name}-table"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "title"

  attribute {
    name = "title"
    type = "S"
  }
}
resource "aws_s3_bucket" "${var.bucket_name}" {
  bucket  = "${var.bucket_name}"
  acl     = "private"
  tags {
    Name  = "${var.bucket_name}"
  }
}

resource "aws_iam_user" "lambda_user" {
  name = "${var.iam_user}"
}

resource "aws_iam_user_login_profile" "lambda_user" {
  pgp_key = ""
  user = "${aws_iam_user.lambda_user.name}"
}

output "" {
  value = "${aws_iam_user.lambda_user.}"
}
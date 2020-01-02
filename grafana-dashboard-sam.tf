provider "grafana" {
  url  = "https://grafana.egdl-eks-us-east-1.egdp-dev.aws.away.black"
  auth = "1234abcd"
}
resource "grafana_dashboard" "sam-test-tf" {
  config_json = "${file("${path.module}/templates/grafana-sam-test.json")}"
}

# resource "grafana_data_source" "test_cloudwatch-sam-tf" {
#   type = "cloudwatch"
#   name = "cw-example"

#   json_data {
#     default_region = "us-east-1"
#   }


# }
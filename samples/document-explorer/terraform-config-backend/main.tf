module "genai_doc_ingestion" {
  ## TODO: Use the latest once docker is fixed
  # source             = "aws-ia/genai-document-ingestion-rag/aws"
  # version            = "0.0.3"
  source             = "github.com/aws-ia/terraform-aws-genai-document-ingestion-rag//?ref=fix%2Fdocker_build"
  solution_prefix    = "doc-explorer"
  container_platform = "linux/arm64"
  force_destroy      = true
}

module "genai_doc_ingestion" {
  #checkov:skip=CKV_TF_1:Terraform registry has no ability to use a commit hash
  ## TODO: Update to a Terraform registry version once PR is complete
  #source             = "aws-ia/genai-document-ingestion-rag/aws"
  #version            = "0.0.4"
  #source             = "github.com/aws-ia/terraform-aws-genai-document-ingestion-rag//?ref=fix%2Fdocker_build"
  source             = "github.com/aws-ia/terraform-aws-genai-document-ingestion-rag//?ref=11eb2bac799fd495e46d17f11156eefe5e6d9d71"
  solution_prefix    = "doc-explorer"
  container_platform = "linux/arm64"
  force_destroy      = true
}

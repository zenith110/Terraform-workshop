
data "vercel_project_directory" "project_directory" {
  path = var.project_directory
}

data "vercel_project" "project_data" {
  name = var.vercel_project_name
}

resource "vercel_deployment" "deployment_info" {
  project_id = data.vercel_project.example.id
  files      = data.vercel_project_directory.example.files
  production = false

  project_settings = {
    output_directory = "/build"
    build_command    = "CI=false npm run build"
    framework        = "create-react-app"
    root_directory   = vercel_project_directory.project_directory.path
  }

  environment = {
    URL = cloudflare_record.qa-backend.name
  }
}
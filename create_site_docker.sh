# !/bin/bash
echo "Project Name"
read project_name

echo "Site Name:"
read site_name

echo "Database Name"
read db_name

echo "Root Username"
read root_username

docker compose --project-name $project_name exec bench new-site $site_name --db-name $db_name --db-root-username $root_username
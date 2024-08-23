**Using this Repository we can Install Frappe in Local Environment, Locally Docker Environment, Production Docker Environment**

**Installation Of Frappe:(Local Environment)**
1. Git Clone the Infra Utils Repository using command:
   
    git clone https://github.com/techfinite-org/Infra-Utils.git


2. Get into Infra Utils directory using command:
   
   cd Infra-Utils


3. Install MariaDB using Script File. To run the Script File give the command:
   
    ./install_mariadb.sh


4. While Installing MariaDB, it will ask whether to change the root password. Type "yes" and give the New Password for Root. It will ask some other questions like deleting Test user and Test Databases, Reload the privileges.


5. Install Frappe Bench and its dependencies using Script File. To run the Script File give the command:

    ./install_frappe.sh


6. Now after Installed the frappe. You can create New bench using command:

    bench init {{bench_name}}


7. After the new bench create get into that bench using the following command:
   
    cd {{bench_name}}


8. Now after Created the Bench. You can create New Site using command:
   
    bench new-site {{site_name}} --db-name {{database_name}} --install-app erpnext


9. It will ask you MariaDB root Password. After Entering Password new site will be created.


10. To use the created site as current site. Use the command:

    bench use {{site_name}}


11. To Start the Bench. Use the command:

    bench start


**Installation of Frappe:(Local Docker Environment)**
1. Git Clone the Infra Utils Repository using command:
   
    git clone https://github.com/techfinite-org/Infra-Utils.git


2. Get into Infra Utils directory using command:
   
   cd Infra-Utils


3. Install Docker and Docker Compose using Script FIle. To run the Script File give the command:
    
    ./install_docker.sh


4. Install MariaDB using Script File. To run the Script File give the command:
   
    ./install_mariadb.sh


5. While Installing MariaDB, it will ask whether to change the root password. Type "yes" and give the New Password for Root. It will ask some other questions like deleting Test user and Test Databases, Reload the privileges.


6. Open local.env in any Editor. For vi editor use:
     
    vi local.env


7. Replace the Environment variable with your own environment variable.


8. To up the docker instance. You have to create directory for sites and redis in Host and have to bind that volume. For that Create the directories sites and redis. To create run the command:

    mkdir sites redis


9. To create the volume that bind the sites and redis directory run the command:

    docker volume create --driver local --opt type=none --opt device=your_sites_directory_path --opt o=bind sites

    docker volume create --driver local --opt type=none --opt device=your_redis_directory_path --opt o=bind redis


10. After run the command to up the docker instance:

    docker compose -f docker-compose-local.yaml --env-file local.env up -d


11. Now you will get the Frappe Instances. Next you have to create the site. For that run the command:

    ./create_site_docker.sh


12. It will ask to enter Project Name, Site Name, DB Name, DB Root Username, DB Root Password. After the you will get site.


13. Open any browser and enter localhost:8080 to access the site.
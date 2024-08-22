Using this Repository we can Install Frappe in Local Environment, Locally Docker Environment, Production Docker Environment

Installation Of Frappe:(Local Environment)
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

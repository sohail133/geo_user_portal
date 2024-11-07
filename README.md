# README

This README provides the necessary steps to set up and run the application, ensuring a smooth setup process for developers.

---

* **Ruby version**  
  3.3.5

* **Rails version**  
  7.2.2

* **System dependencies**  
  - PostgreSQL should be installed. If not, you can install it on Ubuntu:
    ```bash
    sudo apt update
    sudo apt install -y postgresql libpq-dev
    ```

* **Configuration**  
  After ensuring PostgreSQL is available, install the required gems and JavaScript packages:
  ```bash
  bundle install
  yarn install
  ```

* **Database setup**  
  1. **Database creation**  
     ```bash
     rails db:create
     ```
  2. **Database initialization**  
     ```bash
     rails db:migrate
     ```
   - Seed the database with initial data.
     ```bash
     rails db:seed
     ```     

* **Generating API Documentation with Swagger**  
  To generate Swagger documentation, run:
  ```bash
  bundle exec rake rswag:specs:swaggerize
  ```

* **Deployment instructions**  
  - For production, precompile assets and run database migrations.
  - Start the server using a suitable web server, such as Puma or Passenger.

---
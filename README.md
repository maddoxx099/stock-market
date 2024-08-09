# Stock Market Simulator 

  ## Project Overview

  The Stock Market Simulator is a web-based application that simulates stock trading, 
  allowing users to buy and sell stocks in a virtual environment. The project is 
  developed with a frontend using HTML, CSS, JavaScript, and jQuery, a backend built 
  with Node.js, and a PostgreSQL database.

  ### Key Features

  1. **User Authentication**: Users can register, log in, and manage their accounts.
  2. **Stock Trading**: Users can buy and sell stocks, with daily deposits of virtual 
     currency into their accounts.
  3. **Portfolio Management**: Users can view their portfolio, including owned stocks 
     and net worth.
  4. **Leaderboard**: A leaderboard displays the rankings of all users based on their 
     net worth.
  5. **Responsive Design**: The application is designed to work on different screen 
     sizes, with adjustments made using media queries.
  6. **Dark Mode and Light Mode**: Users can toggle between dark and light themes, with 
     custom styling applied to match the selected mode.
  7. **Nginx Web Server**: The application is hosted on an Nginx web server within a VM 
     on TrueNAS Core.

  ## Project Structure

  - **Frontend**: The frontend consists of HTML files for structure, CSS for styling, 
    and JavaScript/jQuery for interactivity.
  - **Backend**: The backend is built using Node.js, handling API requests and 
    communication with the PostgreSQL database.
  - **Database**: PostgreSQL is used for storing user data, stock information, and 
    transaction history.

  ## Environment Setup

  ### 1. Clone the Repository
   ```bash
   git clone https://github.com/maddoxx099/stock-market.git
   cd stock-market-simulator
   ```

  ### 2. Install Dependencies
   ```bash
   npm install
   ```

  ### 3. Setup PostgreSQL Database
   - Create a PostgreSQL database for the application.
   - Update the database connection details in the `config.json` file.

  ### 4. Run Database Migrations
   ```bash
   psql -d investors -U postgres -f /newDump.sql > output.txt
   ```

  ### 5. Start the Node.js Server
   ```bash
   npm start
   ```

  ### 6. Access the Application
   - The application should now be accessible at `http://localhost:3000`.

  ## Deployment

  ### 1. Set Up Nginx
   - Install Nginx on the VM.
   - Configure Nginx to reverse proxy requests to the Node.js server.

  ### 2. Expose the VM to the Internet
   - Ensure the VM has a public IP address or is properly configured with port forwarding.
   - Use a DNS provider to point your domain to the VM's IP address.

  ### 3. Run the Application in Production
   - Use PM2 to manage the Node.js process.
   ```bash
   pm2 start server.js --name "stock-market-simulator"
   pm2 save
   ```

  ## Common Commands

  - **Restart Node.js Server**:
    ```bash
    pm2 restart stock-market-simulator
    ```

  - **View PostgreSQL Jobs (pgAgent)**:
    ```sql
    SELECT * FROM pgagent.pga_job WHERE jobid = <job_id>;
    ```


  ## Disclaimer

  This project is intended for educational purposes only and should not be used for actual 
  financial transactions.

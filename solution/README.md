# CSV Server Setup Guide

This README contains the steps to run the **CSV Server** application using Docker and set the environment variable `CSVSERVER_BORDER` to have the value **Orange**.

## Steps
Before you start, ensure you have Docker installed on your machine.
### Step 1: Clone th  e repository
Clone the repository using the following command:
bash
git clone https://github.com/infracloudio/csvserver.git

### Step 2: Build the Docker image
Navigate to the cloned repository and build the Docker image using the following command:
bash
docker build -t csvserver .

### 3 **Run Docker Container**

Run the Docker container with the following command:

```bash
docker run -d --name csvserver -p 9300:9300 -e CSVSERVER_BORDER=Orange -v C:\Windows\System32\csvserver\solution\inputFile\inputdata:/csvserver/inputdata infracloudio/csvserver:latest
```
### 4. **Create CSV File**
To generate a CSV file with the required data, use the gencsv.sh script. Run the script with the following command:

```bash

./gencsv.sh 2 8
```
### 4. **Check the Application**
- Once the Docker container is running, open a browser and navigate to http://localhost:9300 to check the application.
- The application should show a table with 7 entries from the inputFile.
- The welcome note should have an orange border, which was set using the environment variable CSVSERVER_BORDER.
# **My Output shows**
## **Welcome to the CSV Server**
Index	Value
2	56
3	33
4	88
5	87
6	70
7	81
8	6

### Command for part-1-output ###
curl -o ./part-1-output http://localhost:9300/raw

 % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   122  100   122    0     0   1547      0 --:--:-- --:--:-- --:--:--  1564

### Command for part-1-logs:- ### 
docker logs 90ecd0af0a4044cb140d2d5f5c282fa7c7f43514d45d0a21c5525eaa8d36a2ce > part-1-logs 

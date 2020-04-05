## Project Description

Sports Check website with additional features such as filtering and search.

## Course

IDP3 - Interactive Media Design


#### PHP Movie Review
This is the Docker environment set up for Sports Check website


#### Prerequisites
1. Install `Docker` from [https://docs.docker.com/install/] 
2. IF you are in Linux, install `docker-compose` from [https://docs.docker.com/install/]


#### Set up
1. Clone the repo
   ```
   git clone https://github.com/lanle98/Le_L_Le_T_3014_CMS.git
   ```
2. Open the folder and run docker-compose
   ```
   cd movies_cms
   docker-compose up
   ```
3. When you finished work, you can turn if off by doing 
   ```
   docker-compose down
   ```

#### URLs
1. Your project is up in `http://localhost:8010` which is mapping to the `movies_cms` folder
2. The phpMyAdmin is in `http://localhost:8011` with the credential of 
```
Username: docker_u
Password: docker_p
```
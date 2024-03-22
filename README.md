# Fueled Platform Engineering Assigment
<<<<<<< HEAD

=======
>>>>>>> origin/main
Version: 1.0.0

This project has two services -- Backend and Frontend.

The Frontend service makes a http request to backend service to get json data and renders a html page.

<<<<<<< HEAD
See README inside the `backend` and `frontend` to see how to run them.


## Using Docker

Install Docker on your machine.

Open your terminal and navigate to `backend` folder, then:
1. Build backend container: `docker build -t fueled-test-backend:latest .`
2. Run backend container: `docker run --name container1 --network my-network -p 9000:8080 fueled-test-backend:latest`.


Open another terminal and navigate to `frontend` folder, then:
1. Build frontend container: `docker build -t fueled-test-frontend:latest .`
2. Run frontend container: `docker run --name container2 --network my-network -e API_BASE_URL=http://container1:8080 -p 3000:3000 fueled-test-frontend:latest`.
=======
See README inside the backend and frontend to see how to run them.

Using Docker
Install Docker on your machine.

Open your terminal and navigate to backend folder, then:

Build backend container: docker build -t fueled-test-backend:latest .
Run backend container: docker run --name container1 --network my-network -p 9000:8080 fueled-test-backend:latest.
Open another terminal and navigate to frontend folder, then:

Build frontend container: docker build -t fueled-test-frontend:latest .
Run frontend container: docker run --name container2 --network my-network -e API_BASE_URL=http://container1:8080 -p 3000:3000 fueled-test-frontend:latest.
>>>>>>> origin/main

# Nginx Rate Limit

## Start frontend and backend
`sudo docker-compose up -d`

## Backend health
`curl http://localhost:8181/health`

## Frontend health
`curl http://localhost/health`

## API Call
`curl http://localhost/api/login`

## Test Rate Limit
`./test-rate-limit.sh`

Expect 1 + burst returns 200, others 503

## Clean up
`sudo docker-compose down`

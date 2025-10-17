!/bin/bash
# Test rate limiting (should see 503 errors after burst)
for i in {1..15}; do
    echo "Login Request $i:"
    curl -s -w "HTTP Status: %{http_code}\n" http://localhost/api/login
    sleep 0.1
done

# Test invalid rate limiting (should see all successful)
for i in {1..15}; do
    echo "Logout Request $i:"
    curl -s -w "HTTP Status: %{http_code}\n" http://localhost/api/logout
    sleep 0.1
done

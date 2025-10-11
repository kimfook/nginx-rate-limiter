!/bin/bash
# Test rate limiting (should see 429 errors after burst)
for i in {1..15}; do
    echo "Request $i:"
    curl -s -w "HTTP Status: %{http_code}\n" http://localhost/api/login
    sleep 0.1
done

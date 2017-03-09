#!/bin/bash
path="/admin/health"

response=$(curl http://localhost:8080$path)

if [ "$response" != '{"status":"UP"}' ]; then
    echo "unhealthy"
    exit 1
fi
echo "healthy"

#!/usr/bin/env bash
cd src
echo "Building src/pr-auto-assign for linux/amd64..."
env GOOS=linux GOARCH=amd64 go build -o ../bin/pr-auto-assign-linux-amd64 .
echo "Building src/pr-auto-assign for linux/arm64..."
env GOOS=linux GOARCH=arm64 go build -o ../bin/pr-auto-assign-linux-arm64 .
echo "Building src/pr-auto-assign for darwin/amd64..."
env GOOS=darwin GOARCH=arm64 go build -o ../bin/pr-auto-assign-darwin-amd64 .
echo "Building src/pr-auto-assign for darwin/arm64..."
env GOOS=darwin GOARCH=arm64 go build -o ../bin/pr-auto-assign-darwin-arm64 .
cd ..
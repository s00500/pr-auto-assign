#!/usr/bin/env bash
echo "Building src/${PWD##*/} for linux/amd64..."
env GOOS=linux GOARCH=amd64 go build -o bin/${PWD##*/}-linux-amd64 .
echo "Building src/${PWD##*/} for linux/arm64..."
env GOOS=linux GOARCH=arm64 go build -o bin/${PWD##*/}-linux-arm64 .
echo "Building src/${PWD##*/} for darwin/amd64..."
env GOOS=darwin GOARCH=arm64 go build -o bin/${PWD##*/}-darwin-amd64 .
echo "Building src/${PWD##*/} for darwin/arm64..."
env GOOS=darwin GOARCH=arm64 go build -o bin/${PWD##*/}-darwin-arm64 .

#!/bin/bash
go build .
echo "Open http://localhost:8080/"
env --debug $(cat .env | grep -v '^#') ./gh-oauth-example

#!/bin/bash
# Format and validation gate
echo "Checking formatting..."
terraform fmt -check -recursive
echo "Validating configuration..."
terraform validate

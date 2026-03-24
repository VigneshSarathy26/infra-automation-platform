#!/bin/bash
# Infracost wrapper for cost estimation
if command -v infracost &> /dev/null; then
    infracost breakdown --path .
else
    echo "Infracost CLI not found. Please install it to get cost estimates."
fi

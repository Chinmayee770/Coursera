#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate_of_interest=$2
    time_period=$3
    
    # Simple Interest Formula: (P * R * T) / 100
    interest=$(echo "scale=2; ($principal * $rate_of_interest * $time_period) / 100" | bc)
    echo "The simple interest is: $interest"
}

# Get user input
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest: " rate_of_interest
read -p "Enter the time period (in years): " time_period

# Check if the inputs are numeric
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ "$rate_of_interest" =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ "$time_period" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Call the function to calculate simple interest
calculate_simple_interest "$principal" "$rate_of_interest" "$time_period"

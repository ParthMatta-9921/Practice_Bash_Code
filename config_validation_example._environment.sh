#!/bin/bash
# Application configuration script

# Display the current configuration
echo "Current Application Configuration:"
echo "--------------------------------"
echo "App Name: ${APP_NAME:-Unknown}"
echo "App Version: ${APP_VERSION:-0.0.0}"
echo "Log Level: ${LOG_LEVEL:-INFO}"
echo "Database URL: ${DB_URL:-localhost:5432}"
echo "API Key: ${API_KEY:-not set}"
echo "--------------------------------"

# Check if required configurations are set
if [[ -z "$APP_NAME" ]]; then
  echo "WARNING: APP_NAME is not set. Some features may not work properly."
fi

if [[ -z "$API_KEY" ]]; then
  echo "WARNING: API_KEY is not set. API functionality will be limited."
fi

# Validate log level
valid_log_levels=("DEBUG" "INFO" "WARNING" "ERROR" "CRITICAL")
log_level=${LOG_LEVEL:-INFO}
valid=false

for level in "${valid_log_levels[@]}"; do
  if [[ "$level" == "$log_level" ]]; then
    valid=true
    break
  fi
done

if [[ "$valid" == false ]]; then
  echo "ERROR: Invalid LOG_LEVEL '$log_level'. Must be one of: ${valid_log_levels[*]}"
  exit 1
fi

echo "Configuration validation complete."
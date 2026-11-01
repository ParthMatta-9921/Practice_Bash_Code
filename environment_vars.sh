#!/bin/bash
# This script demonstrates using environment variables

# Default values if environment variables are not set
DEFAULT_NAME="Guest"
DEFAULT_LANGUAGE="English"

# Use environment variables or default values
USER_NAME=${USER_NAME:-$DEFAULT_NAME}
LANGUAGE=${LANGUAGE:-$DEFAULT_LANGUAGE}

# Greet based on language
if [ "$LANGUAGE" = "English" ]; then
  echo "Hello, $USER_NAME! Welcome to the Linux learning environment."
elif [ "$LANGUAGE" = "Spanish" ]; then
  echo "Hola, $USER_NAME! Bienvenido al entorno de aprendizaje de Linux."
elif [ "$LANGUAGE" = "French" ]; then
  echo "Bonjour, $USER_NAME! Bienvenue dans l'environnement d'apprentissage Linux."
else
  echo "Hello, $USER_NAME! Welcome to the Linux learning environment."
fi
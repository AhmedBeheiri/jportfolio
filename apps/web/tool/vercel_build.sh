#!/bin/bash

# Exit on error
set -e

echo "Installing Dart SDK..."
# Download Dart SDK
# Adjust version if needed, matching your project's sdk constraints
DART_VERSION="3.2.0" 
case "$(uname -m)" in
  x86_64) ARCH="x64" ;;
  arm64) ARCH="arm64" ;;
  *) echo "Unsupported architecture"; exit 1 ;;
esac

curl -O "https://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-${ARCH}-release.zip"
unzip -q "dartsdk-linux-${ARCH}-release.zip"

# Add Dart to PATH
export PATH="$PATH:$PWD/dart-sdk/bin"

echo "Dart installed:"
dart --version

echo "Installing Dependencies..."
dart pub get

echo "Activating Jaspr CLI..."
dart pub global activate jaspr_cli
export PATH="$PATH:$HOME/.pub-cache/bin"

echo "Building Project..."
# Build static site
# We inject BACKEND_URL via --dart-define so it's baked into the JS bundle
# Vercel provides environment variables during build
jaspr build --input=lib/main.server.dart --dart-define=BACKEND_URL="$BACKEND_URL"

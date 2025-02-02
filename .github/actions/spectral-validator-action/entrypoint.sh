#!/bin/sh

# Habilita falha no caso de erro
set -e

echo "🔍 Running Spectral Lint..."
spectral lint "$INPUT_SPEC_FILE" -r "$INPUT_RULES_FILE"

echo "✅ Spectral validation completed successfully!"

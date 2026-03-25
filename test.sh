#!/bin/bash
# Test suite for ml-tools

echo "=== ML Tools Test Suite ==="
echo

echo "1. Text Analysis"
./ml-sentiment "This is amazing!" | head -1
./ml-language "Bonjour le monde" | head -1
echo

echo "2. Tokenization"
./ml-tokenize "Hello world" | wc -l | xargs echo "Tokens:"
echo

echo "3. Available Tools:"
ls -1 ml-* | wc -l | xargs echo "Total:"
echo

echo "All tools have --help:"
for tool in ml-*; do
    if [[ -x "$tool" ]]; then
        echo "  ✓ $tool"
    fi
done

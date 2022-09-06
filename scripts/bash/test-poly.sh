#!/bin/bash
# Execute all spec files using polyml

# Echo commands
set -x;

# Find spec files and execute them with 'poly --script'
find . -name "*.spec.sml" -execdir poly --script \{\} +;

#!/bin/bash

# Remove all out* directories except the main out/ directory
echo "Cleaning up unwanted output directories..."

# Remove specific out* directories
rm -rf outchapter-*
rm -rf outboilerplate
rm -rf outbibliography
rm -rf outplaceholder
rm -rf oututilities
rm -rf "out.git"
rm -rf "out.idea"

echo "Cleanup complete!"
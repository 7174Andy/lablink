#!/bin/bash
# custom-startup.sh - Install SLEAP with GPU support

set -e

echo "Installing SLEAP..."

# Install SLEAP with PyTorch GPU support (CUDA 12.8)
uv tool install --python 3.13 "sleap[nn]" \
    --index https://download.pytorch.org/whl/cu128 \
    --index https://pypi.org/simple

echo "SLEAP installation complete!"

# Verify installation
echo "Verifying SLEAP installation..."
sleap-label --version || echo "sleap-label installed at: $(which sleap-label 2>/dev/null || echo '/home/client/.local/bin/sleap-label')"

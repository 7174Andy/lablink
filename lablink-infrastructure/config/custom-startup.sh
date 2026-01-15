echo "This is a custom startup script running inside the client container."

# Install SLEAP
uv tool install --python 3.13 "sleap[nn]" --index https://download.pytorch.org/whl/cu128 --index https://pypi.org/simple
export PATH="$HOME/.local/bin:$PATH"

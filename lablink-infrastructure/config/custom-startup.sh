echo "This is a custom startup script running inside the client container."

# Install SLEAP
sudo uv tool install --python 3.13 "sleap[nn]" --index https://download.pytorch.org/whl/cu128 --index https://pypi.org/simple

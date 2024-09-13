#!/bin/bash
cp -r /notebooks/ComfyUI-Paperspace/.cloudflared /root/
cd /. && mkdir content && cd content
python -m venv venv && . venv/bin/activate
pip install pyngrok torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu124
curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb -o cloudflared-linux-amd64.deb
sudo dpkg -i cloudflared-linux-amd64.deb
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-ubuntu2404.pin
mv cuda-ubuntu2404.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.6.1/local_installers/cuda-repo-ubuntu2404-12-6-local_12.6.1-560.35.03-1_amd64.deb
dpkg -i cuda-repo-ubuntu2404-12-6-local_12.6.1-560.35.03-1_amd64.deb
cp /var/cuda-repo-ubuntu2404-12-6-local/cuda-*-keyring.gpg /usr/share/keyrings/
apt-get update
apt-get -y install cuda-toolkit-12-6 aria2 -yy
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI
pip install -r requirements.txt
cd custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
cd /content/ComfyUI
aria2c -x 16 -s 16 -d /content/ComfyUI/models/clip/ -o clip_l.safetensors https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors
aria2c -x 16 -s 16 -d /content/ComfyUI/models/clip/ -o t5xxl_fp16.safetensors https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors
aria2c -x 16 -s 16 -d /content/ComfyUI/models/vae/ -o ae.safetensors https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors
aria2c -x 16 -s 16 -d /content/ComfyUI/models/unet/ -o flux1-dev.safetensors --header "Authorization: Bearer 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" https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors
#echo "Masukkan token Ngrok Anda:"
#read TOKEN
#ngrok config add-authtoken $TOKEN
#cho "Token Ngrok berhasil ditambahkan!"
python main.py & cloudflared tunnel run comfyuiflux &
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.11
sudo apt install python3.11-distutils
sudo apt install python3.11-venv 
apt install pipenv
apt install python3-pip 
sudo apt install awscli
aws configure

# Install Git
sudo apt install -y git
github_username="samya123456"
github_token="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"
git config --global  credential.helper cache 
echo "https://${github_username}:${github_token}@github.com" | git credential-cache store

# Clone the repository (replace "repo_url" with your actual repository URL)
git clone https://github.com/samya123456/face_swap.git
chown azureuser:azureuser face_swap
pipenv install
pip install -r requirements.txt
export PATH="$PATH:/home/azureuser/.local/bin"
sudo apt install libgl1-mesa-glx
pip install --upgrade uvicorn websockets
sudo apt update
sudo apt install tmux
tmux new -s fastapi_session
uvicorn App:app --host 0.0.0.0 --port 8000 --reload
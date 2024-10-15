set -ex

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install vim grc

if [ ! -f ~/.vim/autoload/plug.vim ]; then
	echo "Installing vim plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ ! -f ~/.grc/.grc.bashrc ]; then
	echo "Installing grc bashrc"
	curl -fLo ~/.grc/.grc.bashrc --create-dirs https://raw.githubusercontent.com/garabik/grc/master/grc.bashrc
fi

if command -v terraform >&2; then
  echo "terraform already installed"
else
  echo "Installing terraform"
  wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg \
  && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list \
  && sudo apt update && sudo apt install terraform
fi

if command -v gh >&2; then
  echo "gh already installed"
else
  echo "Installing gh"
  sudo mkdir -p -m 755 /etc/apt/keyrings \
  && wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
  && sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
  && sudo apt update \
  && sudo apt install gh -y
fi

if command -v kubectl >&2; then
  echo "kubectl already installed"
else
  echo "Installing kubectl"
  curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.29/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg \
  && sudo chmod 644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg \
  && echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.29/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list \
  && sudo chmod 644 /etc/apt/sources.list.d/kubernetes.list \
  && sudo apt update \
  && sudo apt install kubectl -y
fi

if command -v hurl >&2; then
  echo "hurl already installed"
else
  echo "Installing hurl"
  curl --silent --location --remote-name https://github.com/Orange-OpenSource/hurl/releases/download/4.3.0/hurl_4.3.0_amd64.deb \
  && sudo apt update && sudo apt install ./hurl_4.3.0_amd64.deb
fi

if command -v berglas >&2; then
  echo "berglas already installed"
else
  echo "Installing berglas"
  wget --output-document - https://github.com/GoogleCloudPlatform/berglas/releases/download/v2.0.2/berglas_2.0.2_linux_amd64.tar.gz | tar --extract --ungzip --directory /usr/local/bin
fi

if command -v tflint >&2; then
  echo "tflint already installed"
else
  echo "Installing tflint"
  curl --silent https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
fi

if command -v nvm >&2; then
  echo "nvm already installed"
else
  echo "Installing nvm"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
fi

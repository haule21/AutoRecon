#!/bin/bash

cd Tools

# install assetfinder
go get -u github.com/tomnomnom/assetfinder

# install findomain
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
unzip findomain-linux.zip
chmod +x findomain
sudo mv findomain /usr/bin/findomain

# install subfinder 
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# install httprobe
go install github.com/tomnomnom/httprobe@latest

# install kxss
go get github.com/Emoe/kxss

# install paramspider
git clone https://github.com/devanshbatham/paramspider
cd paramspider
pip install .
cd ..

# install sublist3r
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r 
pip install -r requirements.txt
cd ..

# install crtsh
git clone https://github.com/0xRyuk/crtsh.git
cd crtsh
pip install -r requirement.txt
cd ..

# install freq
go install github.com/takshal/freq@latest

# install waybackurl
go install github.com/tomnomnom/waybackurls@latest

# install qsreplace
go install github.com/tomnomnom/qsreplace@latest

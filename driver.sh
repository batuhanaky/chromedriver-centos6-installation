cd /tmp/
chrome_version=$(yum info  google-chrome-stable|grep -e "Version\b.*[d\.]*"|cut -d ':' -f2|cut -d "." -f1,2,3|awk '{$1=$1};1')
exact_chrome_version=$(curl https://chromedriver.storage.googleapis.com/LATEST_RELEASE_${chrome_version})
sudo wget  https://chromedriver.storage.googleapis.com/${exact_chrome_version}/chromedriver_linux64.zip
sudo unzip chromedriver_linux64.zip
sudo rm chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/chromedriver

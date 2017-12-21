export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
sudo dpkg-reconfigure locales
sudo apt install python python-scipy python-matplotlib
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm get-pip.py
sudo apt -y install python2.7 python3.5 python-pip python-dev python3-pip	
wget https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
mkdir -p cifar/Dataset
tar -xvzf cifar-10-python.tar.gz  -C cifar/Dataset
mv cifar/Dataset/cifar-10-batches-py/* cifar/Dataset/
rm -r cifar/Dataset/cifar-10-batches-py
sudo apt -y install ipython ipython-notebook
sudo pip3 install --upgrade pip
sudo -H pip3 install jupyter scipy
jupyter notebook --generate-config
echo "c = get_config()
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8888" >> ~/.jupyter/jupyter_notebook_config.py
echo "Cython==0.25.2
Jinja2==2.8
MarkupSafe==0.23
Pillow==2.6.0
Pygments==2.0.2
appnope==0.1.0
argparse==1.2.1
backports-abc==0.4
backports.ssl-match-hostname==3.5.0.1
certifi==2015.11.20.1
cycler==0.10.0
decorator==4.0.6
future==0.16.0
gnureadline==6.3.3
h5py==2.7.0
ipykernel==4.2.2
ipython==4.0.1
ipython-genutils==0.1.0
ipywidgets==4.1.1
jsonschema==2.5.1
jupyter==1.0.0
jupyter-client==4.1.1
jupyter-console==4.0.3
jupyter-core==4.0.6
matplotlib==2.0.0
mistune==0.7.1
nbconvert==4.1.0
nbformat==4.0.1
nltk==3.2.2
notebook==4.0.6
numpy==1.12.1
path.py==8.1.2
pexpect==4.0.1
pickleshare==0.5
ptyprocess==0.5
pyparsing==2.0.7
python-dateutil==2.4.2
pytz==2015.7
pyzmq==15.1.0
qtconsole==4.1.1
scipy==0.19.0
simplegeneric==0.8.1
singledispatch==3.4.0.3
six==1.10.0
terminado==0.5
tornado==4.3
traitlets==4.0.0
site==0.0.1
" > requirements.txt
sudo -H pip3 install -r requirements.txt
sudo python3 -mpip install matplotlib
sudo pip3 install Pillow==2.6.0
sudo pip3 install imageio
sudo apt-get install libjpeg-dev
sudo pip3 install --no-cache-dir -I pillow

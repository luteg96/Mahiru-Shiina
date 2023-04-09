echo "Cloning Repo...."
git clone https://github.com/luteg96/Mahiru-Shiina /Mahiru-Shiina
cd /Mahiru-Shiina
pip3 install -U -r requirements.txt
echo "Starting Bot.... Please Wait. Check You Log. Bot Edit by @luteg96"
python3 web.py && python3 bot.py

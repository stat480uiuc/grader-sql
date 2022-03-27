echo "[install] sqlite3 ..."
#yum install -y sqlite-devel

# Download the latest sqlite version (require 3.25 for window functions)
curl https://www.sqlite.org/2022/sqlite-autoconf-3380200.tar.gz | tar xzf -

# Switch into directory and configure
cd ./sqlite-autoconf-3380200 && ./configure

# Build the binary
make

# Install it
make install

# Clean up
cd .. && rm -r ./sqlite-autoconf-3380200

echo "[install] Python packages ..."
python3 -m pip install --no-cache-dir -r /requirements-sql.txt

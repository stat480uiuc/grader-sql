echo "[install] sqlite3 ..."
yum install -y sqlite-devel

echo "[install] Python packages ..."
python3 -m pip install --no-cache-dir -r /requirements-sql.txt

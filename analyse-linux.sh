echo "========== ERREURS CRITIQUES (Linux) =========="


journalctl -p 3 -xb | grep "ERROR" | tail -n 10



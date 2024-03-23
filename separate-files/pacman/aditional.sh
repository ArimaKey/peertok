sudo cp -r ./resources/Counsine_Font /usr/share/fonts/truetype/ > /dev/null 2>&1
echo "[-] Cargando fuentes"
sudo fc-cache -f -v >/dev/null 2>&1
echo "   [✓] Las fuentes se instalaron correctamente"
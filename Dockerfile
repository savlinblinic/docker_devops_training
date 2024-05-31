# Použijeme oficiální Python obraz jako základ
FROM python:3.8-slim

# Nastavíme pracovní adresář v kontejneru
WORKDIR /app

# Zkopírujeme obsah aktuálního adresáře do pracovního adresáře v kontejneru
COPY . /app

# Nainstalujeme potřebné balíčky
RUN pip install --no-cache-dir -r requirements.txt

# Otevřeme port 80
EXPOSE 80

# Spustíme aplikaci při startu kontejneru
CMD ["python", "app.py"]
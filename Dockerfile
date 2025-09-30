# Usando imagem base oficial do Python
FROM python:3.10-slim

# Criando diretório de trabalho
WORKDIR /app

# Copiando dependências
COPY requirements.txt .

# Instalando dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copiando aplicação
COPY src/ .

# Expondo porta da aplicação
EXPOSE 5000

# Comando de execução
CMD ["python", "app.py"]

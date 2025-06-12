# Gunakan Python sebagai base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Salin semua file ke dalam container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5001

# Jalankan aplikasi Flask
CMD ["python", "main.py"]

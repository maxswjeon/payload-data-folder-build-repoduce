if [ -f .env ]; then
  exit 0;
fi

echo "Creating .env file..."

echo "DATABASE_USERNAME=admin" > .env
echo "DATABASE_PASSWORD=$(openssl rand -hex 16)" >> .env
echo "DATABASE_URI=mongodb://127.0.0.1:27020/payload?authSource=admin" >> .env
echo "PAYLOAD_SECRET=$(openssl rand -hex 16)" >> .env
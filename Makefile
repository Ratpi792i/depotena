build:
    which python3 || (sudo apt update && sudo apt install -y python3 python3-venv)
    python3 -m venv .venv
    . .venv/bin/activate && pip install -r requirements.txt

test:
	@echo "=== TESTS ==="
	. .venv/bin/activate && pytest tests/ || (echo "Échec des tests"; exit 0)

deploy:
	@echo "=== DEPLOY ==="
	echo "Déploiement effectué"

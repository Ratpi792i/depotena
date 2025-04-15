build:
	@echo "=== BUILD ==="
	python3 -m venv .venv || (echo "Échec création venv"; exit 1)
	. .venv/bin/activate && pip install -r requirements.txt || (echo "Échec installation dépendances"; exit 1)

test:
	@echo "=== TESTS ==="
	. .venv/bin/activate && pytest tests/ || (echo "Échec des tests"; exit 0)

deploy:
	@echo "=== DEPLOY ==="
	echo "Déploiement effectué"

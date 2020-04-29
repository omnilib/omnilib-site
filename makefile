html: source/* .venv
	source .venv/bin/activate && sphinx-build -b html source html

.venv:
	python -m venv .venv
	source .venv/bin/activate && python -m pip install -Ur requirements.txt

clean:
	rm -rf html
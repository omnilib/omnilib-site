html: source/* .venv
	source .venv/bin/activate && sphinx-build -b html source html

.venv:
	python -m venv .venv
	source .venv/bin/activate && python -m pip install -Ur requirements.txt

TARGET := "site"
publish: clean html
	rsync -av --delete html/ $(TARGET)/

clean:
	rm -rf html
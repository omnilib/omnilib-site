html: source/* .venv
	source .venv/bin/activate && sphinx-build -b html source html

.venv:
	python -m venv .venv
	source .venv/bin/activate && python -m pip install -Ur requirements.txt

contrib:
	rm build/contributors
	for repo in aioitertools aiomultiprocess aiosqlite aql attribution ; do \
		git clone https://github.com/omnilib/$$repo.git build/$$repo ; \
		git -C build/$$repo shortlog -s | cut -d'	' -f2- >> build/contributors ; \
	done
	sort -f build/contributors | uniq | awk '{print "* " $$0}' | tee source/contributors.rst

TARGET := "site"
publish: clean html
	rsync -av --delete html/ $(TARGET)/

clean:
	rm -rf html

distclean: clean
	rm -rf .venv build
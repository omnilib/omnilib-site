.PHONY: html
html: source/* .venv
	.venv/bin/sphinx-build -ab html source html

.venv:
	python -m venv .venv
	.venv/bin/python -m pip install -U pip
	.venv/bin/python -m pip install -Ur requirements.txt

.PHONY: contrib
contrib:
	rm -rf build/
	mkdir -p build/
	git shortlog -s | cut -d'	' -f2- >> build/contributors ; \
	for repo in \
			aioitertools \
			aiomultiprocess \
			aiosqlite \
			aql \
			attribution \
			sphinx-mdinclude \
			stdlibs \
			thx \
			trailrunner \
			ufmt \
		; do \
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

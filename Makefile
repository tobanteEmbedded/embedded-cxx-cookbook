.PHONY: spellcheck
spellcheck:
	@which mdspell
	@# mdspell "chapters/**/*.md"
	mdspell README.md
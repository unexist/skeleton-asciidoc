help:
	@echo
	@echo "***********************************************************"
	@echo "*                                                         *"
	@echo "*  Generate documentation locally:                        *"
	@echo "*                                                         *"
	@echo "*  make docs                                              *"
	@echo "*                                                         *"
	@echo "**********************************************************"
	@echo

# Docs
asciidoctor-pdf:
	asciidoctor-pdf src/main/asciidoc/index.adoc -D . -o ./Documentation.pdf -a imagesdir=images

open-pdf:
	open ./target/static/documentation/index.pdf

open-html:
	open ./target/static/documentation/index.html

.DEFAULT_GOAL := docs
docs:
	@mvn -f pom.xml clean generate-resources -Pgenerate-html,generate-pdf

	@echo
	@echo "**********************************************************"
	@echo "*                                                        *"
	@echo "* Documentation can be found here:                       *"
	@echo "*                                                        *"
	@echo "* HTML: ./target/static/documentation/index.html         *"
	@echo "* PDF:  ./target/static/documentation/index.pdf          *"
	@echo "*                                                        *"
	@echo "**********************************************************"
	@echo


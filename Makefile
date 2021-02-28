help:
	@echo
	@echo "******************************************************"
	@echo "*                                                    *"
	@echo "*  Generate documentation locally:                   *"
	@echo "*                                                    *"
	@echo "*  make docs                                         *"
	@echo "*                                                    *"
	@echo "******************************************************"
	@echo

# Docs
open:
	open ./target/static/documentation/index.html

.DEFAULT_GOAL := docs
docs:
	@mvn -f pom.xml clean generate-resources

	@echo
	@echo "******************************************************"
	@echo "*                                                    *"
	@echo "* Documentation can be found here:                   *"
	@echo "* ./target/static/documentation/index.html           *"
	@echo "*                                                    *"
	@echo "******************************************************"
	@echo


.PHONY: all

all: clean build install

clean:
	rm -rf .build-results

build:
	mkdir -p .build-results
	gem build verosent-api.gemspec
	mv verosent-api*.gem .build-results
	sha1sum .build-results/*.gem

install:
	sudo gem install .build-results/*.gem

release:
	gem push --key verosent_push_key .build-results/*.gem

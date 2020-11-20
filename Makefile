# Default target, if no is provided
default: setup

# Project environment setup
setup: 
	$(Project environment setup ...)
	bundle config set path 'vendor/bundle'
	bundle update
	brew bundle

# Run fastlane unit tests
tests:
	$(Run Unit tests ...)
	bundle exec fastlane test
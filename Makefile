# Default target, if no is provided
default: setup

# Project environment setup
setup: 
	$(Project environment setup ...)
	bundle config set path 'vendor/bundle'
	bundle update
	brew bundle
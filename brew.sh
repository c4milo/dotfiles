install-brew() {
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	brew install coreutils
	sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
	brew install moreutils
	brew install bash
	brew install bash-completion2
	brew install findutils
	brew install gnu-sed --with-default-names
	brew install wget --with-iri
	brew install gnupg2
	brew install vim --with-override-system-vi
	brew install grep
	brew install openssh
	brew install screen
	brew install xz
	brew install binutils
	brew install nmap
	brew install git
	brew install git-lfs
	brew install imagemagick --with-webp
	brew install tree
	brew install ccat
	brew install shellcheck
	brew install node
	brew install postgres

	# Install Golang
	brew install go --with-cc-common

	# Install Golang tools: godoc, govet, gofmt, goimports, etc.
	go get golang.org/x/tools/cmd/...

	# Apps
	brew tap caskroom/cask
	brew cask install 1password
	brew cask install iterm2
	brew cask install google-chrome
	brew cask install virtualbox
	brew cask install slack
	brew cask install cloudup
	brew cask install alfred
	brew cask install spotify
	brew cask install skype
	brew cask install pgadmin4
	brew cask install docker
	brew cask install pritunl

	# Fonts
	brew tap caskroom/fonts
	brew cask install font-input
	brew cask install font-source-code-pro

	brew cleanup
	brew cask cleanup
}

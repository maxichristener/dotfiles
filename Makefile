## Makefile variables
HOME = /home/maxi

# Default
all: install

install:
	stow --dotfiles --target=$(HOME) .
	@echo "Symlinks creados."

uninstall:
	stow --dotfiles --target=$(HOME) -D .
	@echo "Symlinks eliminados."

help:
	@echo "Makefile para dotfiles"
	@echo "Uso:"
	@echo "  make install    - Crea los symlinks para los dotfiles"
	@echo "  make uninstall  - Elimina los symlinks para los dotfiles"
	@echo "  make help       - Muestra esta ayuda"

.PHONY: all install uninstall clean help

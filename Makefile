LN_FLAGS := -s -f

all:

osx: common bash gemrc

freebsd: common bash compton gemrc x11

common:
	ln $(LN_FLAGS) $(PWD)/.emacs $(HOME)/.emacs
	ln $(LN_FLAGS) $(PWD)/.profile $(HOME)/.profile

bash:
	ln $(LN_FLAGS) $(PWD)/.bash_profile $(HOME)/.bash_profile
	ln $(LN_FLAGS) $(PWD)/.bashrc $(HOME)/.bashrc

compton:
	ln $(LN_FLAGS) $(PWD)/.config/compton.conf $(HOME)/.config/compton.conf

gemrc:
	ln $(LN_FLAGS) $(PWD)/.gemrc $(HOME)/.gemrc

x11:
	ln $(LN_FLAGS) $(PWD)/.xinitrc $(HOME)/.xinitrc
	ln $(LN_FLAGS) $(PWD)/.Xdefaults $(HOME)/.Xdefaults

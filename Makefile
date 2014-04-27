LN_FLAGS := -s -f

all:

osx: common bash gemrc

freebsd: common bash gemrc x11

common:
	ln $(LN_FLAGS) $(CURDIR)/.emacs $(HOME)/.emacs
	ln $(LN_FLAGS) $(CURDIR)/.profile $(HOME)/.profile

bash:
	ln $(LN_FLAGS) $(CURDIR)/.bash_profile $(HOME)/.bash_profile
	ln $(LN_FLAGS) $(CURDIR)/.bashrc $(HOME)/.bashrc

gemrc:
	ln $(LN_FLAGS) $(CURDIR)/.gemrc $(HOME)/.gemrc

x11:
	ln $(LN_FLAGS) $(CURDIR)/.xinitrc $(HOME)/.xinitrc
	ln $(LN_FLAGS) $(CURDIR)/.Xdefaults $(HOME)/.Xdefaults

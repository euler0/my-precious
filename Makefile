LN_FLAGS := -s -f

all:

osx: common bash gemrc android

freebsd: common bash gemrc x11

common:
	ln $(LN_FLAGS) $(PWD)/.emacs $(HOME)
	ln $(LN_FLAGS) $(PWD)/.profile $(HOME)

bash:
	ln $(LN_FLAGS) $(PWD)/.bash_profile $(HOME)
	ln $(LN_FLAGS) $(PWD)/.bashrc $(HOME)

compton:
	ln $(LN_FLAGS) $(PWD)/.config/compton.conf $(HOME)/.config

gemrc:
	ln $(LN_FLAGS) $(PWD)/.gemrc $(HOME)

x11:
	ln $(LN_FLAGS) $(PWD)/.xinitrc $(HOME)
	ln $(LN_FLAGS) $(PWD)/.Xdefaults $(HOME)

android:
	ln $(LN_FLAGS) $(PWD)/bin/adb-take-screenshot $(HOME)/local/bin
	ln $(LN_FLAGS) $(PWD)/bin/android-create-project $(HOME)/local/bin

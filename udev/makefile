uid = 1000
uname = $(shell id -un $(uid))
scripts = $(planck-connect planck-disconnect)
objects = /etc/udev/rules.d/30-hid-$(uname).rules /usr/lib/udev-scripts/planck-connect /usr/lib/udev-scripts/planck-disconnect

install: $(objects)
/etc/udev/rules.d/30-hid-$(uname).rules: 30-hid.rules
ifneq ($(shell id -u), 0)
	@echo "You must be root to perform this action."
else
	sed -e "s/{{uid}}/$(uid)/" -e "s/{{uname}}/$(uname)/" $^ > $@
endif

/usr/lib/udev-scripts/%:scripts/%
ifneq ($(shell id -u), 0)
	@echo "You must be root to perform this action."
else
	mkdir -p /usr/lib/udev-scripts
	cp $^ $@
	chown root:root $@
	chmod 755 $@
endif

uninstall:
ifneq ($(shell id -u), 0)
	@echo "You must be root to perform this action."
else
	rm $(objects)
endif

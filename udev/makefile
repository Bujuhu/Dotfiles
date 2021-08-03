install: /etc/udev/rules.d/30-js.rules
/etc/udev/rules.d/30-js.rules: 30-js.rules
ifneq ($(shell id -u), 0)
	@echo "You must be root to perform this action."
else
	cp 30-js.rules /etc/udev/rules.d/30-js.rules
	chown root:root /etc/udev/rules.d/30-js.rules
	chmod 622 /etc/udev/rules.d/30-js.rules
endif

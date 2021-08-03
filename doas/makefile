install: /etc/doas.conf

/etc/doas.conf: doas.conf
ifneq ($(shell id -u), 0)
	@echo "You must be root to perform this action."
else
	cp doas.conf /etc/doas.conf
	chown root:root /etc/doas.conf
	chmod 600 /etc/doas.conf
endif

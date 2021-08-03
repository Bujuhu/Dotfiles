install: /etc/xrdp/startwm.sh

/etc/xrdp/startwm.sh: startwm.sh
ifneq ($(shell id -u), 0)
	@echo "You must be root to perform this action."
else
	cp startwm.sh /etc/xrdp/startwm.sh
	chown root:root /etc/xrdp/startwm.sh
	chmod 733 /etc/xrdp/startwm.sh
endif

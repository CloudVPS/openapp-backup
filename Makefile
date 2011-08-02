PREFIX=/

install:
# bin
	cp openapp-backup $(PREFIX)usr/sbin
	cp openapp-restore $(PREFIX)usr/sbin
	cp openapp-backup-dismod $(PREFIX)usr/sbin
	ln -s openapp-backup-dismod $(PREFIX)usr/sbin/openapp-backup-enmod
	cp -r includes $(PREFIX)usr/lib/openapp-backup
	cp -r modules $(PREFIX)usr/lib/openapp-backup

#man
	cp debian/openapp-backup.1 $(PREFIX)usr/share/man/man1
	cp debian/openapp-backup-scripts.1 $(PREFIX)usr/share/man/man1
	cp debian/openapp-restore.1 $(PREFIX)usr/share/man/man1
	cp debian/openapp-backup-dismod.1 $(PREFIX)usr/share/man/man1
	gzip $(PREFIX)usr/share/man/man1/openapp-backup.1
	gzip $(PREFIX)usr/share/man/man1/openapp-backup-scripts.1
	gzip $(PREFIX)usr/share/man/man1/openapp-backup-dismod.1
	gzip $(PREFIX)usr/share/man/man1/openapp-restore.1
	ln -s $(PREFIX)usr/share/man/man1/openapp-backup-dismod.1.gz openapp-backup-enmod.1.gz

uninstall:
# bin
	rm -rf $(PREFIX)usr/sbin/openapp-backup
	rm -rf $(PREFIX)usr/sbin/openapp-restore
	rm -rf $(PREFIX)usr/sbin/openapp-backup-dismod
	rm -rf $(PREFIX)usr/sbin/openapp-backup-enmod
	rm -rf $(PREFIX)usr/share/man/man1/openapp-backup.1.gz
	rm -rf $(PREFIX)usr/share/man/man1/openapp-backup-scripts.1.gz
	rm -rf $(PREFIX)usr/share/man/man1/openapp-backup-dismod.1.gz
	rm -rf $(PREFIX)usr/share/man/man1/openapp-backup-enmod.1.gz
	rm -rf $(PREFIX)usr/share/man/man1/openapp-restore.1.gz

clean:
	-echo "NOP"


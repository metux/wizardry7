
TARGET=/usr/share/dos/wizardry7
LINK=$(GAMESDIR)/wizardry7
GAMESDIR=/usr/games

all:
	@echo nothing to do

clean:
	@echo nothing to do

install:
	install -d $(DESTDIR)/$(TARGET)
	install -d $(DESTDIR)/$(GAMESDIR)
	cp -R src/* $(DESTDIR)/$(TARGET)
	ln -sf $(TARGET)/start $(DESTDIR)/$(LINK)

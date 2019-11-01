
TARGET_DIR    := /usr/share/dos/wizardry7
GAMES_DIR     := /usr/games
LINK_WIZARDRY := $(GAMES_DIR)/wizardry7
LINK_DSCHEAT  := $(GAMES_DIR)/dscheat

all:
	@echo nothing to do

clean:
	@echo nothing to do

install:
	install -d $(DESTDIR)/$(TARGET_DIR) $(DESTDIR)/$(GAMES_DIR)
	cp -R src/* $(DESTDIR)/$(TARGET_DIR)
	ln -sf $(TARGET_DIR)/start-wizardry7 $(DESTDIR)/$(LINK_WIZARDRY)
	ln -sf $(TARGET_DIR)/start-dscheat   $(DESTDIR)/$(LINK_DSCHEAT)

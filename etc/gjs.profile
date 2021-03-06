# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/gjs.local

# gjs (gnome javascript bindings) profile

# when gjs apps are started via gnome-shell, firejail is not applied because systemd will start them

noblacklist ~/.config/libreoffice
noblacklist ~/.local/share/gnome-photos
noblacklist ~/.cache/org.gnome.Books
noblacklist ~/.cache/libgweather

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
nogroups
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
netfilter
shell none
tracelog

# private-bin gjs,gnome-books,gnome-documents,gnome-photos,gnome-maps,gnome-weather
private-tmp
private-dev
# private-etc fonts

BUILDDIR=bin
BUILDBIN=BuildFlagTest
VERSIONPATH=github.com/al31n/go-build-flag/pkg/version

GITCOMMIT=$(shell git --no-pager describe --tags --always)
BUILDDATE=$(shell date)
VERSION=v0.99
Experimental=true

all: build

build:
	mkdir -p $(BUILDDIR)
	go build -o $(BUILDDIR)/$(BUILDBIN) \
		-ldflags="-s \
		-X '$(VERSIONPATH).Version=$(VERSION)' \
		-X '$(VERSIONPATH).GitCommit=$(GITCOMMIT)' \
		-X '$(VERSIONPATH).BuildDate=$(GITCOMMIT)'" \
		main.go
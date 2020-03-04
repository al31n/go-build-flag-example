BUILDDIR=bin
BUILDBIN=BuildFlagTest
VERSIONPATH=github.com/al31n/go-build-flag-example/pkg/version

GITCOMMIT=$(shell git --no-pager describe --tags --always)
BUILDDATE=$(shell date)
VERSION=v0.99
EXPERIMENTAL=true
LDFLAGS=-ldflags "-s \
	-X $(VERSIONPATH).Version=$(VERSION) \
	-X $(VERSIONPATH).GitCommit=$(GITCOMMIT) \
	-X '$(VERSIONPATH).BuildDate=$(BUILDDATE)' \
	-X '$(VERSIONPATH).BuildDate=$(EXPERIMENTAL)'"

all: build

build:
	mkdir -p $(BUILDDIR)
	go build -o $(BUILDDIR)/$(BUILDBIN) -v $(LDFLAGS) .
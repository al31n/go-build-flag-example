package version

import (
	"fmt"
	"runtime"
	"strings"
)

var (
	Version      string
	GitCommit    string
	BuildDate    string
	OS           = runtime.GOOS
	Arch         = runtime.GOARCH
	GoVersion    = runtime.Version()
	Experimental string
)

func GetVersion() string {
	experimental := false
	if Experimental != "" {
		experimental = true
	}
	buildInfos := []string{
		fmt.Sprintf("Version: %s", Version),
		fmt.Sprintf("Git Commit: %s", GitCommit),
		fmt.Sprintf("Build Date: %s", BuildDate),
		fmt.Sprintf("OS/Arch: %s/%s", OS, Arch),
		fmt.Sprintf("Go Version: %s", GoVersion),
		fmt.Sprintf("Experimental: %t", experimental),
	}
	return strings.Join(buildInfos, "\n")
}

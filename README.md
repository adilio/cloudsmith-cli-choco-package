# cloudsmith-cli-choco-package

Package source for the "cloudsmith-cli" Chocolatey package

The Cloudsmith Command Line Interface (CLI) is a text-based interface to the [Cloudsmith](https://cloudsmith.com) API.
This allows users, machines and other services to access and integrate smoothly with Cloudsmith without requiring explicit plugins or tools.
Currently, this chocolatey package takes a simple dependency on `python`, so be forewarned that the latest available python package (python3) will be installed. Also, since the underlying install command uses `pip`, and pip is often out-of-date in the latest python package, pip will also be ugraded before the target package install. We plan to support more advanced customizations in a future build.

[Cloudsmith](https://cloudsmith.com) is a Global, Cloud-Native, Secure and Universal package repository for ALL your artifact needs.
We support hosting of 28+ package formats, including Chocolatey NuGet packages.We also have plans for Free and OSS users.
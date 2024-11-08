# Luci-App-Subconverter

## Based On

This project is based on the following open-source projects:

* [Subweb](https://github.com/stilleshan/subweb) (latest version, modified to minimize disk usage)
* [Subconverter](https://github.com/tindy2013/subconverter) (version 0.9.0, compressed binary, deleted unnecessary files)

## Overview

This project provides a web-based interface for Subconverter and Subweb.

## Features

* Supports arm64 devices only
* Tested on official OpenWRT 23.0.5, should be compatible with all arm64 devices running OpenWRT

## System Requirements

* Disk space: approximately 10MB
* Memory: 512MB recommended, 256MB may be sufficient without other resource-intensive services

## Security Notice

**WARNING:** SUBCONVERTER AND SUBWEB HAVE NO PASSWORD PROTECTION. FOR SECURITY REASONS, DO NOT EXPOSE THEM TO THE PUBLIC INTERNET.
<br>
If you do not trust the provided binary file, you can compile it yourself using your own binary in `/root/usr/subconverter`.
<br>

### To generate the `subconverter` binary  from trusted sources, follow the steps below:

[UPX 4.2.4](https://github.com/upx/upx/releases/download/v4.2.4/upx-4.2.4-win64.zip)
<br>
[Subconverter 0.9.0](https://github.com/tindy2013/subconverter/releases/download/v0.9.0/subconverter_aarch64.tar.gz)
```powershell
.\upx.exe -9 -lzma .\subconverter
```

## Todo List

* Optimize disk usage further
* Add password protection for enhanced security
* Implement configuration editing capabilities
* Add crontab to schedule start and stop

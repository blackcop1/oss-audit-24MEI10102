# The Open Source Audit (OSS NGMC Capstone)

**Student Name:** TUSHAR SUDARSHEE  
**Registration Number:** 24MEI10102  
**Course:** Open Source Software (Units 1–5)  
**Chosen OSS Project:** VLC Media Player  
**OS Used for Testing:** Ubuntu 24.04 (Linux)

## Repository Name
**oss-audit-24MEI10102**

## Contents
This repository contains 5 required shell scripts:

1. `script1_system_identity_report.sh` — System Identity Report  
2. `script2_foss_package_inspector.sh` — FOSS Package Inspector (VLC-focused)  
3. `script3_disk_and_permission_auditor.sh` — Disk and Permission Auditor (includes VLC config check)  
4. `script4_log_file_analyzer.sh` — Log File Analyzer (Ubuntu-friendly default: `/var/log/syslog`)  
5. `script5_manifesto_generator.sh` — Open Source Manifesto Generator (interactive)

## Dependencies (Ubuntu 24.04)
Most commands are available by default on Ubuntu.

To install VLC:
```bash
sudo apt update
sudo apt install -y vlc
```

## How to run
Clone and enter the repo:
```bash
git clone https://github.com/blackcop1/oss-audit-24MEI10102.git
cd oss-audit-24MEI10102
```

Make scripts executable:
```bash
chmod +x *.sh
```

### Script 1 — System Identity Report
```bash
./script1_system_identity_report.sh
```

### Script 2 — FOSS Package Inspector
Default checks `vlc`:
```bash
./script2_foss_package_inspector.sh
```

Or specify a package name:
```bash
./script2_foss_package_inspector.sh vlc
```

### Script 3 — Disk and Permission Auditor
```bash
./script3_disk_and_permission_auditor.sh
```
Note: The VLC config directory (`~/.config/vlc`) may not exist until you run VLC at least once.

### Script 4 — Log File Analyzer
Default uses `/var/log/syslog` and keyword `error`:
```bash
./script4_log_file_analyzer.sh
```

Specify a logfile and keyword:
```bash
./script4_log_file_analyzer.sh /var/log/syslog warning
```

### Script 5 — Manifesto Generator
```bash
./script5_manifesto_generator.sh
```

It generates a file named like:
`manifesto_<username>_YYYY-MM-DD.txt`

## Notes
- Each script contains comments (required for marks).
- Add screenshots of each script running in your PDF report.

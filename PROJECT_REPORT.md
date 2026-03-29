# PROJECT REPORT

## Title Block
**Student Name**: Tushar Sudarshee  
**Registration Number**: 24MEI10102  
**Course**: Open Source Software (Units 1–5)

---

## Executive Summary
This report provides a comprehensive audit of the VLC Media Player as an open source software for testing on Ubuntu 24.04. The assessment covers the installation, usage, compliance with licensing, security audit, and performance evaluation.

## Objectives
- To analyze and test VLC Media Player
- To ensure compliance with OSS licensing requirements
- To identify any security vulnerabilities
- To assess performance and usability

## Methodology
**Tools/Commands for Ubuntu 24.04**:  
- `apt-get install vlc`  
- `apt-cache depends vlc`  
- `cve-check` for CVE checks  
- Static analysis: `cppcheck`, Dynamic analysis: `valgrind`

## Project Overview
**VLC Media Player**:  
VLC is a free and open-source media player that plays most multimedia files as well as DVDs, audio CDs, VCDs, and various streaming protocols.

## Installation Steps
1. Open terminal in Ubuntu 24.04.  
2. Run the command: `sudo apt-get update`  
3. Install VLC using: `sudo apt-get install vlc`  

## License and Compliance Notes
VLC is licensed under the GPL v2, which permits free use, distribution, and modification, provided that the source code remains open.

## Dependency and SBOM Approach
- Utilize `apt-cache depends vlc` to find dependencies.  
- Create a Software Bill of Materials (SBOM) to list all dependencies and their licenses.

## Security Audit
- Conduct CVE checks using tools like `cve-check`.  
- Perform static analysis with `cppcheck` and dynamic analysis with `valgrind` to identify vulnerabilities.

## Performance/Usability Testing
Conduct performance benchmarks and user experience tests focusing on playback quality, load times, and system resource usage.

## Findings and Risk Assessment
- Summary of vulnerabilities found  
- Risk assessment based on severity and potential impact.

## Recommendations
Suggestions based on findings, including patches, updates, and best practices for usage.

## Conclusion
A conclusion highlighting the overall security, usability, and compliance status of VLC Media Player on Ubuntu 24.04.

## References
- Official VLC Documentation  
- Open Source Software Resources

## Appendix
**Sample Shell Commands**:  
```bash
sudo apt-get install vlc
apt-cache depends vlc
cve-check
cppcheck <path>
valgrind <path>
```

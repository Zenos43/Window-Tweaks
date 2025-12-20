Protection from these two significant vulnerabilities requires updates to every system's hardware–its BIOS which reloads updated processor firmware–and its operating system–to use the new processor features. To further complicate matters, newer processors contain features to minimize the performance impact of these important security improvements. But older processors, lacking these newer features, will be significantly burdened and system performance will suffer under some workloads.



https://www.grc.com/inspectre.htm

https://www.microsoft.com/en-us/security/blog/2018/01/09/understanding-the-performance-impact-of-spectre-and-meltdown-mitigations-on-windows-systems/

https://www.cloudflare.com/learning/security/threats/meltdown-spectre/



Registry:

\[HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Session Manager\\Memory Management]

"FeatureSettings"=dword:00000001

"FeatureSettingsOverride"=dword:00000003

"FeatureSettingsOverrideMask"=dword:00000003


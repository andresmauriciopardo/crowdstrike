Statement on Falcon Content Update for Windows Hosts
bird

CrowdStrike is actively working with customers impacted by a defect found in a single content update for Windows hosts. Mac and Linux hosts are not impacted. This is not a security incident or cyberattack.

The issue has been identified, isolated and a fix has been deployed. We refer customers to the support portal for the latest updates and will continue to provide complete and continuous updates on our website.

We further recommend organizations ensure they’re communicating with CrowdStrike representatives through official channels.

Our team is fully mobilized to ensure the security and stability of CrowdStrike customers.

Update 9:22am ET, July 19, 2024:

We are working hard to provide comprehensive and continuous updates with our global customers as quickly as possible. Below is the latest CrowdStrike Tech Alert with more information about the issue and workaround steps organizations can take. We will keep this page updated with new information as it’s available.

Summary
CrowdStrike is aware of reports of crashes on Windows hosts related to the Falcon Sensor.
Details
Symptoms include hosts experiencing a bugcheck\blue screen error related to the Falcon Sensor.
Windows hosts which have not been impacted do not require any action as the problematic channel file has been reverted.
Windows hosts which are brought online after 0527 UTC will also not be impacted
Hosts running Windows 7/2008 R2 are not impacted
This issue is not impacting Mac- or Linux-based hosts
Channel file "C-00000291*.sys" with timestamp of 0527 UTC or later is the reverted (good) version.
Channel file "C-00000291*.sys" with timestamp of 0409 UTC is the problematic version.
Current Action
CrowdStrike Engineering has identified a content deployment related to this issue and reverted those changes.
If hosts are still crashing and unable to stay online to receive the Channel File Changes, the following steps can be used to workaround this issue:
Workaround Steps for individual hosts:
Reboot the host to give it an opportunity to download the reverted channel file. If the host crashes again, then:
Boot Windows into Safe Mode or the Windows Recovery Environment
NOTE: Putting the host on a wired network (as opposed to WiFi) and using Safe Mode with Networking can help remediation.
Navigate to the %WINDIR%\System32\drivers\CrowdStrike directory
Locate the file matching “C-00000291*.sys”, and delete it.
Boot the host normally.
Note: Bitlocker-encrypted hosts may require a recovery key.

Workaround Steps for public cloud or similar environment including virtual:
Option 1:
​​​​​​​Detach the operating system disk volume from the impacted virtual server
Create a snapshot or backup of the disk volume before proceeding further as a precaution against unintended changes
Attach/mount the volume to to a new virtual server
Navigate to the %WINDIR%\System32\drivers\CrowdStrike directory
Locate the file matching “C-00000291*.sys”, and delete it.
Detach the volume from the new virtual server
Reattach the fixed volume to the impacted virtual server
Option 2:
​​​​​​​Roll back to a snapshot before 0409 UTC.
AWS-specific documentation:
To attach an EBS volume to an instance
Detach an Amazon EBS volume from an instance
Azure environments:
Please see this Microsoft article
Bitlocker recovery-related KBs:
BitLocker recovery in Microsoft Azure
BitLocker recovery in Microsoft environments using SCCM
BitLocker recovery in Microsoft environments using Active Directory and GPOs
BitLocker recovery in Microsoft environments using Ivanti Endpoint Manager

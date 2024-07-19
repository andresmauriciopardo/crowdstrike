Source: https://www.crowdstrike.com/blog/statement-on-windows-sensor-update/

<div class="row">
<div class="col-12">
<div style="padding:40px 0 400px;max-width:760px;">
<h1 style="font-size:44px;" role="heading" aria-level="2" data-uw-rm-heading="level">Statement on Falcon Content Update for Windows Hosts</h1>
<p> <img src="https://www.crowdstrike.com/wp-content/uploads/2016/03/Blue.jpg" data-uw-rm-alt-original="" alt="bird" data-uw-rm-alt="BE"></p>
<p> CrowdStrike is actively working with customers impacted by a defect found in a single content update for Windows hosts. Mac and Linux hosts are not impacted. This is not a security incident or cyberattack. </p>
<p> The issue has been identified, isolated and a fix has been deployed. We refer customers to the support portal for the latest updates and will continue to provide complete and continuous updates on our website. </p>
<p> We further recommend organizations ensure they’re communicating with CrowdStrike representatives through official channels. </p>
<p> Our team is fully mobilized to ensure the security and stability of CrowdStrike customers.</p>
<p> <em>Update 9:22am ET, July 19, 2024:</em></p>
<p> We are working hard to provide comprehensive and continuous updates with our global customers as quickly as possible. Below is the latest CrowdStrike Tech Alert with more information about the issue and workaround steps organizations can take. We will keep this page updated with new information as it’s available.</p>
<h2 style="font-size: 40px;">Summary</h2>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li>CrowdStrike is aware of reports of crashes on Windows hosts related to the Falcon Sensor.</li>
</ul>
<h2 style="font-size: 40px;">Details</h2>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li>Symptoms include hosts experiencing a bugcheck\blue screen error related to the Falcon Sensor.</li>
<li>Windows hosts which have not been impacted do not require any action as the problematic channel file has been reverted.</li>
<li>Windows hosts which are brought online after 0527 UTC will also not be impacted</li>
<li>Hosts running Windows 7/2008 R2 are not impacted</li>
<li>This issue is not impacting Mac- or Linux-based hosts</li>
<li><strong>Channel file "C-00000291*.sys" with timestamp of 0527 UTC or later is the reverted (good) version.</strong></li>
<li><strong>Channel file "C-00000291*.sys" with timestamp of 0409 UTC is the problematic version.</strong></li>
</ul>
<h2 style="font-size: 40px;">Current Action</h2>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li>CrowdStrike Engineering has identified a content deployment related to this issue and reverted those changes.</li>
<li>If hosts are still crashing and unable to stay online to receive the Channel File Changes, the following steps can be used to workaround this issue:</li>
</ul>
<h3 style="font-size: 36px;">Workaround Steps for individual hosts:</h3>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li>Reboot the host to give it an opportunity to download the reverted channel file. If the host crashes again, then:</li>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li>Boot Windows into Safe Mode or the Windows Recovery Environment</li>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li>NOTE: Putting the host on a wired network (as opposed to WiFi) and using Safe Mode with Networking can help remediation.</li>
</ul>
<li>Navigate to the %WINDIR%\System32\drivers\CrowdStrike directory</li>
<li>Locate the file matching “C-00000291*.sys”, and delete it.</li>
<li>Boot the host normally.</li>
<p> Note: Bitlocker-encrypted hosts may require a recovery key.
</p></ul>
</ul>
<h3 style="font-size: 36px;">Workaround Steps for public cloud or similar environment including virtual:</h3>
<h4 style="font-size: 26px;margin-bottom:1rem;">Option 1:</h4>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li>​​​​​​​Detach the operating system disk volume from the impacted virtual server</li>
<li>Create a snapshot or backup of the disk volume before proceeding further as a precaution against unintended changes</li>
<li>Attach/mount the volume to to a new virtual server</li>
<li>Navigate to the %WINDIR%\System32\drivers\CrowdStrike directory</li>
<li>Locate the file matching “C-00000291*.sys”, and delete it.</li>
<li>Detach the volume from the new virtual server</li>
<li>Reattach the fixed volume to the impacted virtual server</li>
<p> </p></ul><p></p>
<h4 style="font-size: 26px;margin-bottom:1rem;">Option 2:</h4>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li>​​​​​​​Roll back to a snapshot before 0409 UTC.</li>
</ul>
<h3 style="font-size: 36px;">AWS-specific documentation:</h3>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li><a href="https://docs.aws.amazon.com/ebs/latest/userguide/ebs-attaching-volume.html#:~:text=To%20attach%20an%20EBS%20volume,and%20choose%20Actions%2C%20Attach%20volume" target="_blank" data-link-tracked="true" data-uw-rm-brl="PR" data-uw-original-href="https://docs.aws.amazon.com/ebs/latest/userguide/ebs-attaching-volume.html#:~:text=To%20attach%20an%20EBS%20volume,and%20choose%20Actions%2C%20Attach%20volume" aria-label="To attach an EBS volume to an instance - open in a new tab" data-uw-rm-ext-link="" uw-rm-external-link-id="https://docs.aws.amazon.com/ebs/latest/userguide/ebs-attaching-volume.html#:~:text=to%20attach%20an%20ebs%20volume,and%20choose%20actions%2c%20attach%20volume$toattachanebsvolumetoaninstance">To attach an EBS volume to an instance</a></li>
<li><a href="https://docs.aws.amazon.com/ebs/latest/userguide/ebs-detaching-volume.html" target="_blank" data-link-tracked="true" data-uw-rm-brl="PR" data-uw-original-href="https://docs.aws.amazon.com/ebs/latest/userguide/ebs-detaching-volume.html" aria-label="Detach an Amazon EBS volume from an instance - open in a new tab" data-uw-rm-ext-link="" uw-rm-external-link-id="https://docs.aws.amazon.com/ebs/latest/userguide/ebs-detaching-volume.html$detachanamazonebsvolumefromaninstance">Detach an Amazon EBS volume from an instance</a></li>
</ul>
<h3 style="font-size: 36px;">Azure environments:</h3>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li>Please <a href="https://azure.status.microsoft/en-gb/status" target="_blank" data-link-tracked="true" data-uw-rm-brl="PR" data-uw-original-href="https://azure.status.microsoft/en-gb/status" aria-label="see this Microsoft article - open in a new tab" data-uw-rm-ext-link="" uw-rm-external-link-id="https://azure.status.microsoft/en-gb/status$seethismicrosoftarticle">see this Microsoft article</a></li>
</ul>
<h3 style="font-size: 36px;">Bitlocker recovery-related KBs:</h3>
<ul style="list-style:disc;margin-left:40px;margin-bottom:40px;">
<li><a href="/wp-content/uploads/2024/07/BitLocker-recovery-in-Microsoft-Azure.pdf" target="_blank" data-link-tracked="true" data-uw-pdf-br="1" data-uw-pdf-doc="" aria-label="BitLocker recovery in Microsoft Azure - open in a new tab" data-uw-rm-ext-link="" uw-rm-external-link-id="https://www.crowdstrike.com/wp-content/uploads/2024/07/bitlocker-recovery-in-microsoft-azure.pdf$bitlockerrecoveryinmicrosoftazure">BitLocker recovery in Microsoft Azure</a></li>
<li><a href="/wp-content/uploads/2024/07/BitLocker-recovery-in-Microsoft-environments-using-SCCM.pdf" target="_blank" data-link-tracked="true" data-uw-pdf-br="1" data-uw-pdf-doc="" aria-label="BitLocker recovery in Microsoft environments using SCCM - open in a new tab" data-uw-rm-ext-link="" uw-rm-external-link-id="https://www.crowdstrike.com/wp-content/uploads/2024/07/bitlocker-recovery-in-microsoft-environments-using-sccm.pdf$bitlockerrecoveryinmicrosoftenvironmentsusingsccm">BitLocker recovery in Microsoft environments using SCCM</a></li>
<li><a href="/wp-content/uploads/2024/07/BitLocker-recovery-in-Microsoft-environments-using-Active-Directory-and-GPOs.pdf" target="_blank" data-link-tracked="true" data-uw-pdf-br="1" data-uw-pdf-doc="" aria-label="BitLocker recovery in Microsoft environments using Active Directory and GPOs - open in a new tab" data-uw-rm-ext-link="" uw-rm-external-link-id="https://www.crowdstrike.com/wp-content/uploads/2024/07/bitlocker-recovery-in-microsoft-environments-using-active-directory-and-gpos.pdf$bitlockerrecoveryinmicrosoftenvironmentsusingactivedirectoryandgpos">BitLocker recovery in Microsoft environments using Active Directory and GPOs</a></li>
<li><a href="/wp-content/uploads/2024/07/BitLocker-recovery-in-Microsoft-environments-using-Ivanti-Endpoint-Manager.pdf" target="_blank" data-link-tracked="true" data-uw-pdf-br="1" data-uw-pdf-doc="" aria-label="BitLocker recovery in Microsoft environments using Ivanti Endpoint Manager - open in a new tab" data-uw-rm-ext-link="" uw-rm-external-link-id="https://www.crowdstrike.com/wp-content/uploads/2024/07/bitlocker-recovery-in-microsoft-environments-using-ivanti-endpoint-manager.pdf$bitlockerrecoveryinmicrosoftenvironmentsusingivantiendpointmanager">BitLocker recovery in Microsoft environments using Ivanti Endpoint Manager</a></li>
</ul></div>
</div>
</div>

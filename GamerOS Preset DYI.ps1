# Created by Txmmy
# GamerOS Preset Designer (WIP)

$tweaks = @(
### Require Administrator ###
"RequireAdmin",
"CustomWindow",
"SetLocation",
"GamerOSLogo",

### Preset Setup ###
"AskUser1",
"AskUser2",
"AskUser3",

### Preset Created ###
"PresetCreatedAsk"
)

##########
# Require Administrator
##########

# Relaunch the Script with Administrator Privileges.
Function RequireAdmin {
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
Exit
cls
}
}

# Launch the Script with A Custom Windows Size.
Function CustomWindow {
powershell -command "[console]::windowwidth=65; [console]::windowheight=20; [console]::bufferwidth=[console]::windowwidth"
}

Function SetLocation {
$Desktop = $env:USERPROFILE + "\desktop"
Set-Location $Desktop
}

# GamerOS Logo Display
Function GamerOSLogo{

Write-Host "                                                                 " -ForegroundColor DarkCyan
Write-Host "   ██████╗  █████╗ ███╗   ███╗███████╗██████╗  ██████╗ ███████╗  " -ForegroundColor DarkCyan
Write-Host "  ██╔════╝ ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔═══██╗██╔════╝  " -ForegroundColor DarkCyan
Write-Host "  ██║  ███╗███████║██╔████╔██║█████╗  ██████╔╝██║   ██║███████╗  " -ForegroundColor DarkCyan
Write-Host "  ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗██║   ██║╚════██║  " -ForegroundColor DarkCyan
Write-Host "  ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗██║  ██║╚██████╔╝███████║  " -ForegroundColor DarkCyan
Write-Host "   ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝  " -ForegroundColor DarkCyan
Write-Host "       ██████╗ ██████╗ ███████╗███████╗███████╗████████╗         " -ForegroundColor DarkCyan
Write-Host "       ██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝╚══██╔══╝         " -ForegroundColor DarkCyan
Write-Host "       ██████╔╝██████╔╝█████╗  ███████╗█████╗     ██║            " -ForegroundColor DarkCyan
Write-Host "       ██╔═══╝ ██╔══██╗██╔══╝  ╚════██║██╔══╝     ██║            " -ForegroundColor DarkCyan
Write-Host "       ██║     ██║  ██║███████╗███████║███████╗   ██║            " -ForegroundColor DarkCyan
Write-Host "       ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝   ╚═╝            " -ForegroundColor DarkCyan
Write-Host "    ██████╗██████╗ ███████╗ █████╗ ████████╗ ██████╗ ██████╗     " -ForegroundColor DarkCyan
Write-Host "   ██╔════╝██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗    " -ForegroundColor DarkCyan
Write-Host "   ██║     ██████╔╝█████╗  ███████║   ██║   ██║   ██║██████╔╝    " -ForegroundColor DarkCyan
Write-Host "   ██║     ██╔══██╗██╔══╝  ██╔══██║   ██║   ██║   ██║██╔══██╗    " -ForegroundColor DarkCyan
Write-Host "   ╚██████╗██║  ██║███████╗██║  ██║   ██║   ╚██████╔╝██║  ██║    " -ForegroundColor DarkCyan
Write-Host "    ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝    " -ForegroundColor DarkCyan
}

##########
# Preset Questionaire
##########

Function AskUser1 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Create Updateable Image??"
$MessageTitle = "Create Preset File"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
New-Item ".\Your GamerOS.xml" -ItemType File -Value '<?xml version="1.0" encoding="utf-8"?>
<Preset xmlns="urn:schemas-nliteos-com:pn.v1">
	<Date></Date>
	<AppInfo>
		<Version></Version>
		<Licensed>Yes</Licensed>
		<Protections>Yes</Protections>
		<Host></Host>
	</AppInfo>
	<ImageInfo>
		<Version mode="offline"></Version>
		<GUID></GUID>
	</ImageInfo>
	<RemoveComponents AppRemovalMode="Custom">
	RemoveComponents=
	</RemoveComponents>
	<Compatibility protectHidden="true">
		<ComponentFeatures>
			<Feature enabled="no">AppGuard</Feature>
			<Feature enabled="no">Bluetooth</Feature>
			<Feature enabled="no">CapFrameX</Feature>
			<Feature enabled="no">Discord</Feature>
			<Feature enabled="no">FileSharing</Feature>
			<Feature enabled="no">Hyper-V</Feature>
			<Feature enabled="no">iCloud</Feature>
			<Feature enabled="no">ManualSetup</Feature>
			<Feature enabled="no">OfficeSupport</Feature>
			<Feature enabled="yes">AppxSupport</Feature>
			<Feature enabled="no">Netflix</Feature>
			<Feature enabled="no">NetworkDiscovery</Feature>
			<Feature enabled="no">NightLight</Feature>
			<Feature enabled="no">NvidiaSetup</Feature>
			<Feature enabled="yes">OOBE</Feature>
			<Feature enabled="no">Printing</Feature>
			<Feature enabled="no">Recommended-All</Feature>
			<Feature enabled="no">SamsungSwitch</Feature>
			<Feature enabled="no">Scanning</Feature>
			<Feature enabled="yes">ServicingStack</Feature>
			<Feature enabled="no">ShellSearchSupport</Feature>
			<Feature enabled="no">Spotify</Feature>
			<Feature enabled="yes">SFC</Feature>
			<Feature enabled="no">DefaultFonts</Feature>
			<Feature enabled="no">SafeMode</Feature>
			<Feature enabled="no">TeamViewer</Feature>
			<Feature enabled="no">Recommended-Tablet</Feature>
			<Feature enabled="no">USBModem</Feature>
			<Feature enabled="no">USB</Feature>
			<Feature enabled="no">VideoPlayback</Feature>
			<Feature enabled="no">VPN</Feature>
			<Feature enabled="no">VisualStudio</Feature>
			<Feature enabled="yes">VSS</Feature>
			<Feature enabled="no">ActivationKMS</Feature>
			<Feature enabled="yes">Activation</Feature>
			<Feature enabled="no">WindowsStore</Feature>
			<Feature enabled="no">WindowsUpdate</Feature>
			<Feature enabled="yes">WLAN</Feature>
			<Feature enabled="no">YubiKey</Feature>
		</ComponentFeatures>
		<MachineDrivers>
			<Machine enabled="yes">HostMachine</Machine>
			<Machine enabled="no">Hyper-V VM</Machine>
			<Machine enabled="no">Parallels VM</Machine>
			<Machine enabled="no">Virtual Box VM</Machine>
			<Machine enabled="no">VMware VM</Machine>
		</MachineDrivers>
	</Compatibility>
	<Features></Features>
	<Packages></Packages>
	<Commands>
		<PostUpdates></PostUpdates>
	</Commands>
	<Drivers showHidden="true"></Drivers>
	<Tweaks>
		<Settings></Settings>
		<Services></Services>
		<ExtraServices></ExtraServices>
		<ScheduledTasks></ScheduledTasks>
	</Tweaks>
	<ApplyOptions>
		<ImageTasks>
			<Task>imageSaveRebuild</Task>
			<Task>imageFormatEsd</Task>
			<Task>imageOptionsDontBackupPresetLog</Task>
		</ImageTasks>
		<AutoIsoFile>GAMEROS_FOR_DESKTOPS.iso</AutoIsoFile>
		<AutoIsoLabel>GAMEROS</AutoIsoLabel>
		<AutoSplitSize>4000</AutoSplitSize>
		<CleanHotfixedLeftovers>0</CleanHotfixedLeftovers>
		<OptimizeAppX>false</OptimizeAppX>
		<ReuseDriverCache>false</ReuseDriverCache>
	</ApplyOptions>
	<Execution>
		<Remove></Remove>
		<Change></Change>
		<Add></Add>
	</Execution>
	<Registry></Registry>
</Preset>
'

}
if ($result -eq 'No') {
New-Item ".\Your GamerOS.xml" -ItemType File -Value '<?xml version="1.0" encoding="utf-8"?>
<Preset xmlns="urn:schemas-nliteos-com:pn.v1">
	<Date></Date>
	<AppInfo>
		<Version></Version>
		<Licensed>Yes</Licensed>
		<Protections>Yes</Protections>
		<Host></Host>
	</AppInfo>
	<ImageInfo>
		<Version mode="offline"></Version>
		<GUID></GUID>
	</ImageInfo>
	<RemoveComponents AppRemovalMode="Custom">
	RemoveComponents=
	</RemoveComponents>
	<Compatibility protectHidden="true">
		<ComponentFeatures>
			<Feature enabled="no">AppGuard</Feature>
			<Feature enabled="no">Bluetooth</Feature>
			<Feature enabled="no">CapFrameX</Feature>
			<Feature enabled="no">Discord</Feature>
			<Feature enabled="no">FileSharing</Feature>
			<Feature enabled="no">Hyper-V</Feature>
			<Feature enabled="no">iCloud</Feature>
			<Feature enabled="no">ManualSetup</Feature>
			<Feature enabled="no">OfficeSupport</Feature>
			<Feature enabled="yes">AppxSupport</Feature>
			<Feature enabled="no">Netflix</Feature>
			<Feature enabled="no">NetworkDiscovery</Feature>
			<Feature enabled="no">NightLight</Feature>
			<Feature enabled="no">NvidiaSetup</Feature>
			<Feature enabled="yes">OOBE</Feature>
			<Feature enabled="no">Printing</Feature>
			<Feature enabled="no">Recommended-All</Feature>
			<Feature enabled="no">SamsungSwitch</Feature>
			<Feature enabled="no">Scanning</Feature>
			<Feature enabled="yes">ServicingStack</Feature>
			<Feature enabled="no">ShellSearchSupport</Feature>
			<Feature enabled="no">Spotify</Feature>
			<Feature enabled="no">SFC</Feature>
			<Feature enabled="no">DefaultFonts</Feature>
			<Feature enabled="no">SafeMode</Feature>
			<Feature enabled="no">TeamViewer</Feature>
			<Feature enabled="no">Recommended-Tablet</Feature>
			<Feature enabled="no">USBModem</Feature>
			<Feature enabled="no">USB</Feature>
			<Feature enabled="no">VideoPlayback</Feature>
			<Feature enabled="no">VPN</Feature>
			<Feature enabled="no">VisualStudio</Feature>
			<Feature enabled="yes">VSS</Feature>
			<Feature enabled="no">ActivationKMS</Feature>
			<Feature enabled="yes">Activation</Feature>
			<Feature enabled="no">WindowsStore</Feature>
			<Feature enabled="no">WindowsUpdate</Feature>
			<Feature enabled="yes">WLAN</Feature>
			<Feature enabled="no">YubiKey</Feature>
		</ComponentFeatures>
		<MachineDrivers>
			<Machine enabled="yes">HostMachine</Machine>
			<Machine enabled="no">Hyper-V VM</Machine>
			<Machine enabled="no">Parallels VM</Machine>
			<Machine enabled="no">Virtual Box VM</Machine>
			<Machine enabled="no">VMware VM</Machine>
		</MachineDrivers>
	</Compatibility>
	<Features></Features>
	<Packages></Packages>
	<Commands>
		<PostUpdates></PostUpdates>
	</Commands>
	<Drivers showHidden="true"></Drivers>
	<Tweaks>
		<Settings></Settings>
		<Services></Services>
		<ExtraServices></ExtraServices>
		<ScheduledTasks></ScheduledTasks>
	</Tweaks>
	<ApplyOptions>
		<ImageTasks>
			<Task>imageSaveRebuild</Task>
			<Task>imageFormatEsd</Task>
			<Task>imageOptionsDontBackupPresetLog</Task>
		</ImageTasks>
		<AutoIsoFile>GAMEROS_FOR_DESKTOPS.iso</AutoIsoFile>
		<AutoIsoLabel>GAMEROS</AutoIsoLabel>
		<AutoSplitSize>4000</AutoSplitSize>
		<CleanHotfixedLeftovers>0</CleanHotfixedLeftovers>
		<OptimizeAppX>false</OptimizeAppX>
		<ReuseDriverCache>false</ReuseDriverCache>
	</ApplyOptions>
	<Execution>
		<Remove></Remove>
		<Change></Change>
		<Add></Add>
	</Execution>
	<Registry></Registry>
</Preset>
'
}
}

Function AskUser2 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Unattended Setup As Admin??"
$MessageTitle = "Unattended Setup"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
$filepaths = '.\Your GamerOS.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match '<Drivers showHidden="true"></Drivers>')
        {            
             "$_		
	<Unattended mode='1'>
		<OEMSetupComplete>false</OEMSetupComplete>
		<AnswerFileLocationPanther>false</AnswerFileLocationPanther>
		<AnswerFileLocationBoot>false</AnswerFileLocationBoot>
		<SaveBothArch>false</SaveBothArch>
		<EditionPrompt>true</EditionPrompt>
		<settings pass='oobeSystem'>
			<component name='Microsoft-Windows-International-Core'>
				<InputLocale>0409:00000409</InputLocale>
				<SystemLocale>en-US</SystemLocale>
				<UILanguage>en-US</UILanguage>
				<UILanguageFallback>en-US</UILanguageFallback>
				<UserLocale>en-US</UserLocale>
			</component>
			<component name='Microsoft-Windows-Shell-Setup'>
				<TimeZone>Eastern Standard Time</TimeZone>
				<AutoLogon>
					<Enabled>true</Enabled>
					<LogonCount>9999999</LogonCount>
					<Username>Administrator</Username>
					<Password>
						<PlainText>true</PlainText>
						<Value></Value>
					</Password>
				</AutoLogon>
				<OOBE>
					<HideEULAPage>true</HideEULAPage>
					<HideLocalAccountScreen>true</HideLocalAccountScreen>
					<HideOnlineAccountScreens>true</HideOnlineAccountScreens>
					<HideWirelessSetupInOOBE>true</HideWirelessSetupInOOBE>
					<NetworkLocation>Other</NetworkLocation>
					<ProtectYourPC>3</ProtectYourPC>
				</OOBE>
				<UserAccounts>
					<AdministratorPassword>
						<PlainText>true</PlainText>
						<Value></Value>
					</AdministratorPassword>
					<LocalAccounts>
						<LocalAccount>
							<DisplayName>User</DisplayName>
							<Group>Administrators</Group>
							<Name>Administrator</Name>
							<Password>
								<PlainText>true</PlainText>
								<Value></Value>
							</Password>
						</LocalAccount>
					</LocalAccounts>
				</UserAccounts>
			</component>
		</settings>
		<settings pass='specialize'>
			<component name='Microsoft-Windows-Deployment'>
				<RunSynchronous>
					<RunSynchronousCommand>
						<Order>2</Order>
						<Path>net user Administrator /fullname:'User'</Path>
						<WillReboot>Never</WillReboot>
					</RunSynchronousCommand>
					<RunSynchronousCommand>
						<Order>1</Order>
						<Path>net user Administrator /active:Yes</Path>
						<WillReboot>Never</WillReboot>
					</RunSynchronousCommand>
				</RunSynchronous>
			</component>
			<component name='Microsoft-Windows-Shell-Setup'>
				<ComputerName>*</ComputerName>
			</component>
		</settings>
		<settings pass='windowsPE'>
			<component name='Microsoft-Windows-International-Core-WinPE'>
				<InputLocale>0409:00000409</InputLocale>
				<SystemLocale>en-US</SystemLocale>
				<UILanguage>en-US</UILanguage>
				<UILanguageFallback>en-US</UILanguageFallback>
				<UserLocale>en-US</UserLocale>
			</component>
			<component name='Microsoft-Windows-Setup'>
				<Diagnostics>
					<OptIn>false</OptIn>
				</Diagnostics>
				<DynamicUpdate>
					<Enable>false</Enable>
					<WillShowUI>OnError</WillShowUI>
				</DynamicUpdate>
				<ImageInstall>
					<OSImage>
						<Compact>true</Compact>
						<WillShowUI>OnError</WillShowUI>
						<InstallFrom>
							<MetaData>
								<Key>/IMAGE/INDEX</Key>
								<Value>2</Value>
							</MetaData>
						</InstallFrom>
					</OSImage>
				</ImageInstall>
				<UserData>
					<AcceptEula>true</AcceptEula>
					<FullName>GAMEROS</FullName>
					<ProductKey>
						<Key></Key>
					</ProductKey>
				</UserData>
			</component>
		</settings>
	</Unattended>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
if ($result -eq 'No') {
$filepaths = '.\Your GamerOS.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match '<Drivers showHidden="true"></Drivers>')
        {            
             "$_		
	<Unattended mode='1'>
		<OEMSetupComplete>false</OEMSetupComplete>
		<AnswerFileLocationPanther>false</AnswerFileLocationPanther>
		<AnswerFileLocationBoot>false</AnswerFileLocationBoot>
		<SaveBothArch>false</SaveBothArch>
		<EditionPrompt>true</EditionPrompt>
		<settings pass='oobeSystem'>
			<component name='Microsoft-Windows-International-Core'>
				<InputLocale>0409:00000409</InputLocale>
				<SystemLocale>en-US</SystemLocale>
				<UILanguage>en-US</UILanguage>
				<UILanguageFallback>en-US</UILanguageFallback>
				<UserLocale>en-US</UserLocale>
			</component>
			<component name='Microsoft-Windows-Shell-Setup'>
				<TimeZone>Eastern Standard Time</TimeZone>
				<AutoLogon>
					<Enabled>true</Enabled>
					<LogonCount>9999999</LogonCount>
					<Username>User</Username>
					<Password>
						<PlainText>true</PlainText>
						<Value></Value>
					</Password>
				</AutoLogon>
				<OOBE>
					<HideEULAPage>true</HideEULAPage>
					<HideLocalAccountScreen>true</HideLocalAccountScreen>
					<HideOnlineAccountScreens>true</HideOnlineAccountScreens>
					<HideWirelessSetupInOOBE>true</HideWirelessSetupInOOBE>
					<NetworkLocation>Other</NetworkLocation>
					<ProtectYourPC>3</ProtectYourPC>
				</OOBE>
				<UserAccounts>
					<LocalAccounts>
						<LocalAccount>
							<DisplayName>GamerOS</DisplayName>
							<Group>Administrators</Group>
							<Name>User</Name>
							<Password>
								<PlainText>true</PlainText>
								<Value></Value>
							</Password>
						</LocalAccount>
					</LocalAccounts>
				</UserAccounts>
			</component>
		</settings>
		<settings pass='specialize'>
			<component name='Microsoft-Windows-Shell-Setup'>
				<ComputerName>*</ComputerName>
			</component>
		</settings>
		<settings pass='windowsPE'>
			<component name='Microsoft-Windows-International-Core-WinPE'>
				<InputLocale>0409:00000409</InputLocale>
				<SystemLocale>en-US</SystemLocale>
				<UILanguage>en-US</UILanguage>
				<UILanguageFallback>en-US</UILanguageFallback>
				<UserLocale>en-US</UserLocale>
				<SetupUILanguage>
					<UILanguage>en-US</UILanguage>
				</SetupUILanguage>
			</component>
			<component name='Microsoft-Windows-Setup'>
				<Diagnostics>
					<OptIn>false</OptIn>
				</Diagnostics>
				<DynamicUpdate>
					<Enable>false</Enable>
					<WillShowUI>OnError</WillShowUI>
				</DynamicUpdate>
				<ImageInstall>
					<OSImage>
						<Compact>true</Compact>
						<WillShowUI>OnError</WillShowUI>
						<InstallFrom>
							<MetaData>
								<Key>/IMAGE/INDEX</Key>
								<Value>2</Value>
							</MetaData>
						</InstallFrom>
					</OSImage>
				</ImageInstall>
				<UserData>
					<AcceptEula>true</AcceptEula>
					<FullName>GAMEROS</FullName>
					<ProductKey>
						<Key></Key>
					</ProductKey>
				</UserData>
			</component>
		</settings>
	</Unattended>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
}

Function AskUser3 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "You Will Need To Install Browser"
$MessageTitle = "Remove Microsoft Edge"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
$filepaths = '.\Your GamerOS.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match "RemoveComponents=")
        {            
             "$_		
		<c>edgeupdate 'Microsoft Edge Update'</c>
		<c>Microsoft.MicrosoftEdge.Stable 'Microsoft Edge (Chromium)'</c>
		<c>Microsoft.MicrosoftEdge 'Microsoft Edge (Legacy)'</c>
		<c>Microsoft.MicrosoftEdgeDevToolsClient 'Microsoft Edge DevTools Client'</c>
		<c>pdfreader 'Windows Reader (PDF)'</c>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
if ($result -eq 'No') {

}
}

##########
# Auxiliary Functions
##########

Function PresetCreatedAsk {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "GamerOS Preset Created"
$MessageTitle = "GamerOS Message"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
Write-Host "Exiting" -ForegroundColor Cyan
Start-Sleep 5
Exit-PSSession
}
if ($result -eq 'No') {

}
}

##########
# Parse Parameters and Apply Tweaks
##########

# Call the Desired Tweak Functions
$tweaks | ForEach { Invoke-Expression $_ }
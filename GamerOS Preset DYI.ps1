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
"AskUser4",
"AskUser5",
"AskUser6",
"AskUser7",
"AskUser8",
"AskUser9",
"AskUser10",
"AskUser11",
"AskUser12",

### Preset Created ###
"PresetAsk"
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
$MessageBody = "Remove Edge DYI Install Browser"
$MessageTitle = "Microsoft Edge"
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

Function AskUser4 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Remove Apps Leaving GameBar Function Intact?"
$MessageTitle = "Microsoft Apps"
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
		<c>Microsoft.549981C3F5F10 'Cortana'</c>
		<c>Microsoft.Advertising.Xaml 'Microsoft Advertising SDK for XAML'</c>
		<c>Microsoft.BingWeather 'MSN Weather'</c>
		<c>Microsoft.GetHelp 'Get Help'</c>
		<c>Microsoft.Getstarted 'Tips (Get Started)'</c>
		<c>Microsoft.Microsoft3DViewer '3D Viewer'</c>
		<c>Microsoft.MicrosoftOfficeHub 'Office'</c>
		<c>Microsoft.MicrosoftSolitaireCollection 'Microsoft Solitaire Collection'</c>
		<c>Microsoft.MicrosoftStickyNotes 'Microsoft Sticky Notes'</c>
		<c>Microsoft.MixedReality.Portal 'Mixed Reality Portal'</c>
		<c>Microsoft.MSPaint 'Paint 3D'</c>
		<c>Microsoft.Office.OneNote 'OneNote'</c>
		<c>Microsoft.People 'Microsoft People'</c>
		<c>Microsoft.ScreenSketch 'Snip &amp; Sketch'</c>
		<c>Microsoft.Services.Store.Engagement 'Microsoft Engagement Framework'</c>
		<c>Microsoft.SkypeApp 'Skype'</c>
		<c>Microsoft.StorePurchaseApp 'Store Experience Host'</c>
		<c>Microsoft.Wallet 'Wallet Service'</c>
		<c>Microsoft.WebMediaExtensions 'Web Media Extensions'</c>
		<c>Microsoft.Windows.Photos 'Microsoft Photos'</c>
		<c>Microsoft.WindowsAlarms 'Windows Alarms &amp; Clock'</c>
		<c>Microsoft.WindowsCalculator 'Windows Calculator'</c>
		<c>Microsoft.WindowsCamera 'Windows Camera'</c>
		<c>microsoft.windowscommunicationsapps 'Windows Mail'</c>
		<c>Microsoft.WindowsFeedbackHub 'Feedback Hub'</c>
		<c>Microsoft.WindowsMaps 'Windows Maps'</c>
		<c>Microsoft.WindowsSoundRecorder 'Windows Voice Recorder'</c>
		<c>Microsoft.WindowsStore 'Windows Store'</c>
		<c>Microsoft.Xbox.TCUI 'Xbox TCUI'</c>
		<c>Microsoft.XboxApp 'Xbox'</c>
		<c>Microsoft.XboxGameCallableUI 'Xbox Game UI'</c>
		<c>Microsoft.XboxIdentityProvider 'Xbox Identity Provider'</c>
		<c>Microsoft.YourPhone 'Your Phone'</c>
		<c>Microsoft.ZuneMusic 'Groove Music'</c>
		<c>Microsoft.ZuneVideo 'Movies &amp; TV'</c>"             
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

Function AskUser5 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Remove Xbox Fully Disabling FSE??"
$MessageTitle = "Xbox Game Bar/Mode"
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
		<c>Microsoft.XboxGameOverlay 'Xbox Game Bar Plugin'</c>
		<c>Microsoft.XboxGamingOverlay 'Xbox Game Bar'</c>
		<c>Microsoft.XboxSpeechToTextOverlay 'Xbox Game Speech Window'</c>
		<c>xbox 'Xbox - Core'</c>"             
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

Function AskUser6 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Remove Defender DYI AntiVirus??"
$MessageTitle = "Windows Defender"
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
		<c>Microsoft.Windows.SecHealthUI 'Windows Defender'</c>
		<c>securitycenter 'Security Center'</c>"             
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

Function AskUser7 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Remove Firewall DYI Firewall??"
$MessageTitle = "Windows Firewall"
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
		<c>firewall 'Windows Firewall'</c>
		<c>wfmmc 'Windows Firewall (management console)'</c>
		<c>wfmmc32 'Windows Firewall (management console) - 32 bit'</c>"             
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

Function AskUser8 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Remove Ease of Access Features??"
$MessageTitle = "Ease of Access"
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
		<c>accessibility 'Accessibility tools (Ease of Access)'</c>
		<c>accessibility_cursors 'Mouse Pointers (Accessibility tools)'</c>
		<c>accessibility_magnifier 'Screen Magnifier'</c>
		<c>accessibility_narrator 'Narrator'</c>
		<c>easeofaccessthemes 'Ease Of Access Themes'</c>
		<c>Microsoft.Windows.NarratorQuickStart 'Narrator'</c>
		<c>osk 'On-Screen Keyboard (Tablet PC)'</c>
		<c>osk_acc 'On-Screen Keyboard (Accessibility tools)'</c>
		<c>rotationmanager 'Auto-Rotation Manager'</c>
		<c>speechcommon 'Speech Recognition'</c>
		<c>speechtts 'Speech TTS'</c>
		<c>tabletpc 'Tablet PC'</c>"             
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


Function AskUser9 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Remove One Drive??"
$MessageTitle = "One Drive"
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
		<c>onedrive</c>"             
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

Function AskUser10 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Remove Remote Features??"
$MessageTitle = "Remote Access/Desktop"
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
		<c>eaphost 'Extensible Authentication Protocol (EAP)'</c>
		<c>ias 'Internet Authentication Service (IAS)'</c>
		<c>offlinefiles 'Offline Files'</c>
		<c>onesyncsvc 'Sync Host'</c>
		<c>openssh</c>
		<c>rascmd 'Remote Access Service Client Tools'</c>
		<c>rasmans 'Remote Access Connection Manager'</c>
		<c>rdpclient 'Remote Desktop Client'</c>
		<c>rdpclient32 'Remote Desktop Client - 32 bit'</c>
		<c>rdpserver 'Remote Desktop Server'</c>
		<c>rdpserverlic 'Remote Desktop Licensing'</c>
		<c>remoteaccessservice 'Routing and Remote Access Service'</c>
		<c>remoteaccesssupport 'Routing and Remote Access support'</c>
		<c>remoteactivex 'Remote Desktop Services ActiveX Client'</c>
		<c>remoteactivex32 'Remote Desktop Services ActiveX Client - 32 bit'</c>
		<c>remoteassistance 'Remote Assistance'</c>
		<c>remotefx</c>
		<c>remoteportredirector 'Remote Desktop Services Port Redirector'</c>
		<c>remoteregistry 'Remote Registry'</c>
		<c>synccenter 'Sync Center'</c>
		<c>vpn 'Virtual Private Network (VPN) support'</c>"             
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

Function AskUser11 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Remove Unnecessary Hardware??"
$MessageTitle = "Hardware Tab"
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
		<c>dafproviders 'Device Association Framework (DAF) - Providers'</c>
		<c>dashost 'Device Association Service'</c>
		<c>devicepicker 'Device Picker'</c>
		<c>hbaapi 'Host Bus Adapter (HBA) API'</c>
		<c>hwsupport_bluetooth 'Bluetooth'</c>
		<c>hwsupport_fax 'Fax'</c>
		<c>hwsupport_floppy 'Floppy disk'</c>
		<c>hwsupport_infrared 'Infrared devices'</c>
		<c>hwsupport_internetprintingclient 'Internet Printing Client'</c>
		<c>hwsupport_modemsettings 'Shared modem settings (mdmgl*.inf)'</c>
		<c>hwsupport_printer 'Printing'</c>
		<c>hwsupport_scanner 'Scanner'</c>
		<c>hwsupport_smartcard 'Smartcard'</c>
		<c>hwsupport_telephony 'Telephony'</c>
		<c>hwsupport_wia 'Windows Image Acquisition (WIA)'</c>
		<c>iscsi 'iSCSI Initiator'</c>
		<c>mediastreaming 'Media Streaming'</c>
		<c>mediastreamingreceiver 'Media Streaming - Receiver'</c>
		<c>mediastreamingtransmitter 'Media Streaming - Transmitter'</c>
		<c>midi 'Microsoft GS Wavetable SW Synth (MIDI)'</c>
		<c>nfc 'Near Field Communication (NFC)'</c>
		<c>payments</c>
		<c>phonesvc 'Phone Service'</c>
		<c>pos 'Point of Service (POS)'</c>
		<c>printmgmt 'Print Management'</c>
		<c>printtopdf 'Print to PDF'</c>
		<c>printworkflow 'Print Workflow Service'</c>
		<c>rasauto 'Remote Access Auto Connection Manager'</c>
		<c>stici 'Still Image Class Installer'</c>
		<c>Windows.CBSPreview 'Windows Barcode Preview'</c>
		<c>windows.devicesflow32 'Devices Flow - 32 bit'</c>
		<c>Windows.PrintDialog 'Windows Print'</c>
		<c>wpdbusenum 'Portable Device Enumerator Service'</c>"             
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

Function AskUser12 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "English Is Your Main Language??"
$MessageTitle = "Localization Tab"
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
		<c>kl-00000401 'Arabic (101)'</c>
		<c>kl-00000402 'Bulgarian (Typewriter)'</c>
		<c>kl-00000404 'Chinese (Traditional) - US'</c>
		<c>kl-00000405 'Czech'</c>
		<c>kl-00000406 'Danish'</c>
		<c>kl-00000407 'German'</c>
		<c>kl-00000408 'Greek'</c>
		<c>kl-0000040a 'Spanish'</c>
		<c>kl-0000040b 'Finnish'</c>
		<c>kl-0000040c 'French'</c>
		<c>kl-0000040d 'Hebrew'</c>
		<c>kl-0000040e 'Hungarian'</c>
		<c>kl-0000040f 'Icelandic'</c>
		<c>kl-00000410 'Italian'</c>
		<c>kl-00000411 'Japanese'</c>
		<c>kl-00000412 'Korean'</c>
		<c>kl-00000413 'Dutch'</c>
		<c>kl-00000414 'Norwegian'</c>
		<c>kl-00000415 'Polish (Programmers)'</c>
		<c>kl-00000416 'Portuguese (Brazil ABNT)'</c>
		<c>kl-00000418 'Romanian (Legacy)'</c>
		<c>kl-00000419 'Russian'</c>
		<c>kl-0000041a 'Standard'</c>
		<c>kl-0000041b 'Slovak'</c>
		<c>kl-0000041c 'Albanian'</c>
		<c>kl-0000041d 'Swedish'</c>
		<c>kl-0000041e 'Thai Kedmanee'</c>
		<c>kl-0000041f 'Turkish Q'</c>
		<c>kl-00000420 'Urdu'</c>
		<c>kl-00000422 'Ukrainian'</c>
		<c>kl-00000423 'Belarusian'</c>
		<c>kl-00000424 'Slovenian'</c>
		<c>kl-00000425 'Estonian'</c>
		<c>kl-00000426 'Latvian'</c>
		<c>kl-00000427 'Lithuanian IBM'</c>
		<c>kl-00000428 'Tajik'</c>
		<c>kl-00000429 'Persian'</c>
		<c>kl-0000042a 'Vietnamese'</c>
		<c>kl-0000042b 'Armenian Eastern (Legacy)'</c>
		<c>kl-0000042c 'Azerbaijani Latin'</c>
		<c>kl-0000042e 'Sorbian Standard (Legacy)'</c>
		<c>kl-0000042f 'Macedonian (North Macedonia)'</c>
		<c>kl-00000432 'Setswana'</c>
		<c>kl-00000437 'Georgian (Legacy)'</c>
		<c>kl-00000438 'Faeroese'</c>
		<c>kl-00000439 'Devanagari - INSCRIPT'</c>
		<c>kl-0000043a 'Maltese 47-Key'</c>
		<c>kl-0000043b 'Norwegian with Sami'</c>
		<c>kl-0000043f 'Kazakh'</c>
		<c>kl-00000440 'Kyrgyz Cyrillic'</c>
		<c>kl-00000442 'Turkmen'</c>
		<c>kl-00000444 'Tatar (Legacy)'</c>
		<c>kl-00000445 'Bangla'</c>
		<c>kl-00000446 'Punjabi'</c>
		<c>kl-00000447 'Gujarati'</c>
		<c>kl-00000448 'Odia'</c>
		<c>kl-00000449 'Tamil'</c>
		<c>kl-0000044a 'Telugu'</c>
		<c>kl-0000044b 'Kannada'</c>
		<c>kl-0000044c 'Malayalam'</c>
		<c>kl-0000044d 'Assamese - INSCRIPT'</c>
		<c>kl-0000044e 'Marathi'</c>
		<c>kl-00000450 'Mongolian Cyrillic'</c>
		<c>kl-00000451 'Tibetan (PRC)'</c>
		<c>kl-00000452 'United Kingdom Extended'</c>
		<c>kl-00000453 'Khmer'</c>
		<c>kl-00000454 'Lao'</c>
		<c>kl-0000045a 'Syriac'</c>
		<c>kl-0000045b 'Sinhala'</c>
		<c>kl-0000045c 'Cherokee Nation'</c>
		<c>kl-00000461 'Nepali'</c>
		<c>kl-00000463 'Pashto (Afghanistan)'</c>
		<c>kl-00000465 'Divehi Phonetic'</c>
		<c>kl-00000468 'Hausa'</c>
		<c>kl-0000046a 'Yoruba'</c>
		<c>kl-0000046c 'Sesotho sa Leboa'</c>
		<c>kl-0000046d 'Bashkir'</c>
		<c>kl-0000046e 'Luxembourgish'</c>
		<c>kl-0000046f 'Greenlandic'</c>
		<c>kl-00000470 'Igbo'</c>
		<c>kl-00000474 'Guarani'</c>
		<c>kl-00000475 'Hawaiian'</c>
		<c>kl-00000480 'Uyghur (Legacy)'</c>
		<c>kl-00000481 'Maori'</c>
		<c>kl-00000485 'Sakha'</c>
		<c>kl-00000488 'Wolof'</c>
		<c>kl-00000492 'Central Kurdish'</c>
		<c>kl-00000804 'Chinese (Simplified) - US'</c>
		<c>kl-00000807 'Swiss German'</c>
		<c>kl-00000809 'United Kingdom'</c>
		<c>kl-0000080a 'Latin American'</c>
		<c>kl-0000080c 'Belgian French'</c>
		<c>kl-00000813 'Belgian (Period)'</c>
		<c>kl-00000816 'Portuguese'</c>
		<c>kl-0000081a 'Serbian (Latin)'</c>
		<c>kl-0000082c 'Azerbaijani Cyrillic'</c>
		<c>kl-0000083b 'Swedish with Sami'</c>
		<c>kl-00000843 'Uzbek Cyrillic'</c>
		<c>kl-00000850 'Mongolian (Mongolian Script)'</c>
		<c>kl-0000085d 'Inuktitut - Latin'</c>
		<c>kl-0000085f 'Central Atlas Tamazight'</c>
		<c>kl-00000c04 'Chinese (Traditional, Hong Kong S.A.R.) - US'</c>
		<c>kl-00000c0c 'Canadian French (Legacy)'</c>
		<c>kl-00000c1a 'Serbian (Cyrillic)'</c>
		<c>kl-00000c51 'Dzongkha'</c>
		<c>kl-00001004 'Chinese (Simplified, Singapore) - US'</c>
		<c>kl-00001009 'Canadian French'</c>
		<c>kl-0000100c 'Swiss French'</c>
		<c>kl-0000105f 'Tifinagh (Basic)'</c>
		<c>kl-00001404 'Chinese (Traditional, Macao S.A.R.) - US'</c>
		<c>kl-00001809 'Irish'</c>
		<c>kl-0000201a 'Bosnian (Cyrillic)'</c>
		<c>kl-00004009 'English (India)'</c>
		<c>kl-00010401 'Arabic (102)'</c>
		<c>kl-00010402 'Bulgarian (Latin)'</c>
		<c>kl-00010405 'Czech (QWERTY)'</c>
		<c>kl-00010407 'German (IBM)'</c>
		<c>kl-00010408 'Greek (220)'</c>
		<c>kl-00010409 'United States-Dvorak'</c>
		<c>kl-0001040a 'Spanish Variation'</c>
		<c>kl-0001040e 'Hungarian 101-key'</c>
		<c>kl-00010410 'Italian (142)'</c>
		<c>kl-00010415 'Polish (214)'</c>
		<c>kl-00010416 'Portuguese (Brazil ABNT2)'</c>
		<c>kl-00010418 'Romanian (Standard)'</c>
		<c>kl-00010419 'Russian (Typewriter)'</c>
		<c>kl-0001041b 'Slovak (QWERTY)'</c>
		<c>kl-0001041e 'Thai Pattachote'</c>
		<c>kl-0001041f 'Turkish F'</c>
		<c>kl-00010426 'Latvian (QWERTY)'</c>
		<c>kl-00010427 'Lithuanian'</c>
		<c>kl-0001042b 'Armenian Western (Legacy)'</c>
		<c>kl-0001042c 'Azerbaijani (Standard)'</c>
		<c>kl-0001042e 'Sorbian Extended'</c>
		<c>kl-0001042f 'Macedonian (North Macedonia) - Standard'</c>
		<c>kl-00010437 'Georgian (QWERTY)'</c>
		<c>kl-00010439 'Hindi Traditional'</c>
		<c>kl-0001043a 'Maltese 48-Key'</c>
		<c>kl-0001043b 'Sami Extended Norway'</c>
		<c>kl-00010444 'Tatar'</c>
		<c>kl-00010445 'Bangla - INSCRIPT (Legacy)'</c>
		<c>kl-00010451 'Tibetan (PRC) - Updated'</c>
		<c>kl-00010453 'Khmer (NIDA)'</c>
		<c>kl-0001045a 'Syriac Phonetic'</c>
		<c>kl-0001045b 'Sinhala - Wij 9'</c>
		<c>kl-0001045c 'Cherokee Phonetic'</c>
		<c>kl-0001045d 'Inuktitut - Naqittaut'</c>
		<c>kl-00010465 'Divehi Typewriter'</c>
		<c>kl-00010480 'Uyghur'</c>
		<c>kl-0001080c 'Belgian (Comma)'</c>
		<c>kl-0001083b 'Finnish with Sami'</c>
		<c>kl-00010850 'Traditional Mongolian (Standard)'</c>
		<c>kl-00010c00 'Myanmar (Phonetic order)'</c>
		<c>kl-00011009 'Canadian Multilingual Standard'</c>
		<c>kl-0001105f 'Tifinagh (Extended)'</c>
		<c>kl-00011809 'Scottish Gaelic'</c>
		<c>kl-00020401 'Arabic (102) AZERTY'</c>
		<c>kl-00020402 'Bulgarian (Phonetic)'</c>
		<c>kl-00020405 'Czech Programmers'</c>
		<c>kl-00020408 'Greek (319)'</c>
		<c>kl-00020409 'United States-International'</c>
		<c>kl-0002040d 'Hebrew (Standard)'</c>
		<c>kl-00020418 'Romanian (Programmers)'</c>
		<c>kl-00020419 'Russian - Mnemonic'</c>
		<c>kl-0002041e 'Thai Kedmanee (non-ShiftLock)'</c>
		<c>kl-00020422 'Ukrainian (Enhanced)'</c>
		<c>kl-00020426 'Latvian (Standard)'</c>
		<c>kl-00020427 'Lithuanian Standard'</c>
		<c>kl-0002042b 'Armenian Phonetic'</c>
		<c>kl-0002042e 'Sorbian Standard'</c>
		<c>kl-00020437 'Georgian (Ergonomic)'</c>
		<c>kl-00020445 'Bangla - INSCRIPT'</c>
		<c>kl-00020449 'Tamil 99'</c>
		<c>kl-0002083b 'Sami Extended Finland-Sweden'</c>
		<c>kl-00020c00 'New Tai Lue'</c>
		<c>kl-00030402 'Bulgarian'</c>
		<c>kl-00030408 'Greek (220) Latin'</c>
		<c>kl-00030409 'United States-Dvorak for left hand'</c>
		<c>kl-0003041e 'Thai Pattachote (non-ShiftLock)'</c>
		<c>kl-0003042b 'Armenian Typewriter'</c>
		<c>kl-00030437 'Georgian (MES)'</c>
		<c>kl-00030c00 'Tai Le'</c>
		<c>kl-00040402 'Bulgarian (Phonetic Traditional)'</c>
		<c>kl-00040408 'Greek (319) Latin'</c>
		<c>kl-00040409 'United States-Dvorak for right hand'</c>
		<c>kl-00040437 'Georgian (Old Alphabets)'</c>
		<c>kl-00040c00 'Ogham'</c>
		<c>kl-00050408 'Greek Latin'</c>
		<c>kl-00050409 'US English Table for IBM Arabic 238_L'</c>
		<c>kl-00050429 'Persian (Standard)'</c>
		<c>kl-00060408 'Greek Polytonic'</c>
		<c>kl-00070c00 'Lisu (Basic)'</c>
		<c>kl-00080c00 'Lisu (Standard)'</c>
		<c>kl-00090c00 'N’Ko'</c>
		<c>kl-000a0c00 'Phags-pa'</c>
		<c>kl-000b0c00 'Buginese'</c>
		<c>kl-000c0c00 'Gothic'</c>
		<c>kl-000d0c00 'Ol Chiki'</c>
		<c>kl-000e0c00 'Osmanya'</c>
		<c>kl-000f0c00 'Old Italic'</c>
		<c>kl-00100c00 'Sora'</c>
		<c>kl-00110c00 'Javanese'</c>
		<c>kl-00120c00 'Futhark'</c>
		<c>kl-00130c00 'Myanmar (Visual order)'</c>
		<c>kl-00140c00 'ADLaM'</c>
		<c>kl-00150c00 'Osage'</c>
		<c>langarabic 'Arabic'</c>
		<c>langbulgarian 'Bulgarian'</c>
		<c>langchineses 'Chinese Simplified'</c>
		<c>langchineset 'Chinese Traditional'</c>
		<c>langcroatian 'Croatian'</c>
		<c>langczech 'Czech'</c>
		<c>langdanish 'Danish'</c>
		<c>langdutch 'Dutch'</c>
		<c>langenglishgb 'English (GB)'</c>
		<c>langestonian 'Estonian'</c>
		<c>langfinnish 'Finnish'</c>
		<c>langfrench 'French'</c>
		<c>langfrenchcanadian 'French (Canadian)'</c>
		<c>langgerman 'German'</c>
		<c>langgreek 'Greek'</c>
		<c>langhebrew 'Hebrew'</c>
		<c>langhungarian 'Hungarian'</c>
		<c>langime 'Input Method Editor (IME)'</c>
		<c>langimejp 'Japanese (IME)'</c>
		<c>langimeko 'Korean (IME)'</c>
		<c>langimetc 'Chinese Traditional (IME)'</c>
		<c>langitalian 'Italian'</c>
		<c>langjapanese 'Japanese'</c>
		<c>langkorean 'Korean'</c>
		<c>langlatvian 'Latvian'</c>
		<c>langlithuanian 'Lithuanian'</c>
		<c>langnorwegian 'Norwegian'</c>
		<c>langpolish 'Polish'</c>
		<c>langportuguesebr 'Portuguese (Brazilian)'</c>
		<c>langportuguesept 'Portuguese'</c>
		<c>langromanian 'Romanian'</c>
		<c>langrussian 'Russian'</c>
		<c>langserbian 'Serbian'</c>
		<c>langslovak 'Slovak'</c>
		<c>langslovenian 'Slovenian'</c>
		<c>langspanish 'Spanish'</c>
		<c>langswedish 'Swedish'</c>
		<c>langtamil 'Tamil'</c>
		<c>langthai 'Thai'</c>
		<c>langturkish 'Turkish'</c>
		<c>langukrainian 'Ukrainian'</c>
		<c>lpksetup 'Language Pack Setup'</c>
		<c>regioncpl 'Region and Language control panel'</c>"             
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

Function PresetAsk {
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

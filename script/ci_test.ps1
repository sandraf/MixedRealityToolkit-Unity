$dateStr = Get-Date -format "yyyy_MM_dd"
$logPath = "F:\julenka.mrtk\script\output\ci_test-$dateStr.log"
Write-Host "Logs writing to $logPath..."
& 'C:\Program Files\Unity\Hub\Editor\2018.3.9f1\Editor\Unity.exe' -projectPath F:\julenka.mrtk\ -executeMethod Microsoft.MixedReality.Toolkit.Build.Editor.UnityPlayerBuildTools.StartCommandLineBuild -sceneList Assets\MixedRealityToolkit.Examples\Demos\HandTracking\Scenes\HandInteractionExamples.unity -logFile $logPath -batchMode -x86 -buildOutput f:\julenka.mrtk\\build\UWP_x86_default -buildTarget WSAPlayer -buildAppx
Sleep 1
Get-Content -Path $logPath -Wait
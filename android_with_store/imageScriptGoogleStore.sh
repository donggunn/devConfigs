#!/bin/sh

~/Android/Sdk/tools/emulator @RA23x86 -no-boot-anim -writable-system &
~/Android/Sdk/platform-tools/adb wait-for-device
~/Android/Sdk/platform-tools/adb root
~/Android/Sdk/platform-tools/adb shell stop
~/Android/Sdk/platform-tools/adb remount
~/Android/Sdk/platform-tools/adb push ~/iNew/Projects/UffTariff/Apks/opengappsApks/marsh-86/PrebuiltGmsCore.apk /system/priv-app/PrebuiltGmsCore/PrebuiltGmsCore.apk
~/Android/Sdk/platform-tools/adb push ~/iNew/Projects/UffTariff/Apks/opengappsApks/marsh-86/GoogleServicesFramework.apk /system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk
~/Android/Sdk/platform-tools/adb push ~/iNew/Projects/UffTariff/Apks/opengappsApks/marsh-86/GoogleLoginService.apk /system/priv-app/GoogleLoginService/GoogleLoginService.apk
~/Android/Sdk/platform-tools/adb push ~/iNew/Projects/UffTariff/Apks/opengappsApks/marsh-86/Phonesky.apk /system/priv-app/Phonesky/Phonesky.apk
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/PrebuiltGmsCore /system/priv-app/GoogleServicesFramework"
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/GoogleLoginService /system/priv-app/Phonesky"
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/PrebuiltGmsCore/PrebuiltGmsCore.apk"
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk"
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/GoogleLoginService/GoogleLoginService.apk"
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/Phonesky/Phonesky.apk"
~/Android/Sdk/platform-tools/adb shell start

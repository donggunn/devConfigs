#!/bin/sh

~/Android/Sdk/tools/emulator @Nexus_5_API_25 -no-boot-anim -writable-system &
~/Android/Sdk/platform-tools/adb wait-for-device
~/Android/Sdk/platform-tools/adb root
~/Android/Sdk/platform-tools/adb shell stop
~/Android/Sdk/platform-tools/adb remount
~/Android/Sdk/platform-tools/adb push ~/iNew/Projects/UffTariff/Apks/opengappsApks/PrebuiltGmsCore.apk /system/priv-app/Phonesky/PrebuiltGmsCore
~/Android/Sdk/platform-tools/adb push ~/iNew/Projects/UffTariff/Apks/opengappsApks/GoogleServicesFramework.apk /system/priv-app/GoogleServicesFramework
~/Android/Sdk/platform-tools/adb push ~/iNew/Projects/UffTariff/Apks/opengappsApks/GoogleLoginService.apk /system/priv-app/GoogleLoginService
~/Android/Sdk/platform-tools/adb push ~/iNew/Projects/UffTariff/Apks/opengappsApks/Phonesky.apk /system/priv-app/Phonesky/Phonesky.apk
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/**"
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/PrebuiltGmsCore/*"
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/GoogleServicesFramework/*"
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/GoogleLoginService/*"
~/Android/Sdk/platform-tools/adb shell "chmod 777 /system/priv-app/Phonesky/*"
~/Android/Sdk/platform-tools/adb shell start

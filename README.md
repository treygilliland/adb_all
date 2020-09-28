# ADB Wrapper for Multiple Device Usage

Compilation of solutions and methods that can be used for controlling multiple devices at once from Android Debugging Bridge. Written in Bash. 

The file adb_all.sh contains two solutions that worked well for me and were easy to understand and modify as needed.

Another solution that may work for you by zielmicha: https://github.com/zielmicha/adb-wrapper

## Single Emulator/Device Targeting

To target a single device when multiple are connected:

```
adb -s $DEVICE_ID shell
```

If you have a single emulator connected while a device is connected, target the emulator with the -e flag and target the device with the -d flag. 

## DISCLAIMER
I am not the author/creator of some of these solutions. I've simply compiled them from online sources for ease of access for myself and others.

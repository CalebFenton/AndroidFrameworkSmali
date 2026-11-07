.class public interface abstract Landroid/bluetooth/BluetoothDevicePicker;
.super Ljava/lang/Object;
.source "BluetoothDevicePicker.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_DEVICE_SELECTED:Ljava/lang/String; = "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

.field public static final whitelist ACTION_LAUNCH:Ljava/lang/String; = "android.bluetooth.devicepicker.action.LAUNCH"

.field public static final blacklist EXTRA_DEVICE_PICKER_ORIGINAL_SEND_INTENT:Ljava/lang/String; = "android.bluetooth.extra.DEVICE_PICKER_ORIGINAL_SEND_INTENT"

.field public static final whitelist EXTRA_FILTER_TYPE:Ljava/lang/String; = "android.bluetooth.devicepicker.extra.FILTER_TYPE"

.field public static final whitelist EXTRA_LAUNCH_CLASS:Ljava/lang/String; = "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

.field public static final whitelist EXTRA_LAUNCH_PACKAGE:Ljava/lang/String; = "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

.field public static final whitelist EXTRA_NEED_AUTH:Ljava/lang/String; = "android.bluetooth.devicepicker.extra.NEED_AUTH"

.field public static final whitelist FILTER_TYPE_ALL:I = 0x0

.field public static final whitelist FILTER_TYPE_AUDIO:I = 0x1

.field public static final whitelist FILTER_TYPE_NAP:I = 0x4

.field public static final whitelist FILTER_TYPE_PANU:I = 0x3

.field public static final whitelist FILTER_TYPE_TRANSFER:I = 0x2

.class public final Landroid/os/SystemProto;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemProto$WifiSupplicantState;,
        Landroid/os/SystemProto$WifiState;,
        Landroid/os/SystemProto$WifiSignalStrength;,
        Landroid/os/SystemProto$WifiMulticastWakelockTotal;,
        Landroid/os/SystemProto$WakeupReason;,
        Landroid/os/SystemProto$ScreenBrightness;,
        Landroid/os/SystemProto$ResourcePowerManager;,
        Landroid/os/SystemProto$PowerUseSummary;,
        Landroid/os/SystemProto$PowerUseItem;,
        Landroid/os/SystemProto$PhoneSignalStrength;,
        Landroid/os/SystemProto$Misc;,
        Landroid/os/SystemProto$KernelWakelock;,
        Landroid/os/SystemProto$GlobalWifi;,
        Landroid/os/SystemProto$GlobalNetwork;,
        Landroid/os/SystemProto$DataConnection;,
        Landroid/os/SystemProto$BatteryLevelStep;,
        Landroid/os/SystemProto$BatteryDischarge;,
        Landroid/os/SystemProto$Battery;
    }
.end annotation


# static fields
.field public static final greylist-max-o BATTERY:J = 0x10b00000001L

.field public static final greylist-max-o BATTERY_DISCHARGE:J = 0x10b00000002L

.field public static final greylist-max-o CHARGE_STEP:J = 0x20b00000005L

.field public static final greylist-max-o CHARGE_TIME_REMAINING_MS:J = 0x10300000003L

.field public static final greylist-max-o CPU_FREQUENCY:J = 0x20300000007L

.field public static final greylist-max-o DATA_CONNECTION:J = 0x20b00000008L

.field public static final greylist-max-o DISCHARGE_STEP:J = 0x20b00000006L

.field public static final greylist-max-o DISCHARGE_TIME_REMAINING_MS:J = 0x10300000004L

.field public static final greylist-max-o GLOBAL_BLUETOOTH_CONTROLLER:J = 0x10b00000009L

.field public static final greylist-max-o GLOBAL_MODEM_CONTROLLER:J = 0x10b0000000aL

.field public static final greylist-max-o GLOBAL_NETWORK:J = 0x10b0000000cL

.field public static final greylist-max-o GLOBAL_WIFI:J = 0x10b0000000dL

.field public static final greylist-max-o GLOBAL_WIFI_CONTROLLER:J = 0x10b0000000bL

.field public static final greylist-max-o KERNEL_WAKELOCK:J = 0x20b0000000eL

.field public static final greylist-max-o MISC:J = 0x10b0000000fL

.field public static final greylist-max-o PHONE_SIGNAL_STRENGTH:J = 0x20b00000010L

.field public static final greylist-max-o POWER_USE_ITEM:J = 0x20b00000011L

.field public static final greylist-max-o POWER_USE_SUMMARY:J = 0x10b00000012L

.field public static final greylist-max-o RESOURCE_POWER_MANAGER:J = 0x20b00000013L

.field public static final greylist-max-o SCREEN_BRIGHTNESS:J = 0x20b00000014L

.field public static final greylist-max-o SIGNAL_SCANNING:J = 0x10b00000015L

.field public static final greylist-max-o WAKEUP_REASON:J = 0x20b00000016L

.field public static final greylist-max-o WIFI_MULTICAST_WAKELOCK_TOTAL:J = 0x10b00000017L

.field public static final greylist-max-o WIFI_SIGNAL_STRENGTH:J = 0x20b00000018L

.field public static final greylist-max-o WIFI_STATE:J = 0x20b00000019L

.field public static final greylist-max-o WIFI_SUPPLICANT_STATE:J = 0x20b0000001aL


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

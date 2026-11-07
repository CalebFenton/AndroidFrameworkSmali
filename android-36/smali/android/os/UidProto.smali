.class public final Landroid/os/UidProto;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UidProto$Wifi;,
        Landroid/os/UidProto$WakeupAlarm;,
        Landroid/os/UidProto$Wakelock;,
        Landroid/os/UidProto$AggregatedWakelock;,
        Landroid/os/UidProto$UserActivity;,
        Landroid/os/UidProto$Sync;,
        Landroid/os/UidProto$Sensor;,
        Landroid/os/UidProto$StateTime;,
        Landroid/os/UidProto$Process;,
        Landroid/os/UidProto$PowerUseItem;,
        Landroid/os/UidProto$Network;,
        Landroid/os/UidProto$JobCompletion;,
        Landroid/os/UidProto$Job;,
        Landroid/os/UidProto$Cpu;,
        Landroid/os/UidProto$BluetoothMisc;,
        Landroid/os/UidProto$Package;
    }
.end annotation


# static fields
.field public static final greylist-max-o AGGREGATED_WAKELOCK:J = 0x10b00000018L

.field public static final greylist-max-o AUDIO:J = 0x10b00000008L

.field public static final greylist-max-o BLUETOOTH_CONTROLLER:J = 0x10b00000003L

.field public static final greylist-max-o BLUETOOTH_MISC:J = 0x10b00000006L

.field public static final greylist-max-o CAMERA:J = 0x10b00000009L

.field public static final greylist-max-o CPU:J = 0x10b00000007L

.field public static final greylist-max-o FLASHLIGHT:J = 0x10b0000000aL

.field public static final greylist-max-o FOREGROUND_ACTIVITY:J = 0x10b0000000bL

.field public static final greylist-max-o FOREGROUND_SERVICE:J = 0x10b0000000cL

.field public static final greylist-max-o JOBS:J = 0x20b0000000fL

.field public static final greylist-max-o JOB_COMPLETION:J = 0x20b00000010L

.field public static final greylist-max-o MODEM_CONTROLLER:J = 0x10b00000004L

.field public static final greylist-max-o NETWORK:J = 0x10b00000011L

.field public static final greylist-max-o PACKAGES:J = 0x20b00000002L

.field public static final greylist-max-o POWER_USE_ITEM:J = 0x10b00000012L

.field public static final greylist-max-o PROCESS:J = 0x20b00000013L

.field public static final greylist-max-o SENSORS:J = 0x20b00000015L

.field public static final greylist-max-o STATES:J = 0x20b00000014L

.field public static final greylist-max-o SYNCS:J = 0x20b00000016L

.field public static final greylist-max-o UID:J = 0x10500000001L

.field public static final greylist-max-o USER_ACTIVITY:J = 0x20b00000017L

.field public static final greylist-max-o VIBRATOR:J = 0x10b0000000dL

.field public static final greylist-max-o VIDEO:J = 0x10b0000000eL

.field public static final greylist-max-o WAKELOCKS:J = 0x20b00000019L

.field public static final greylist-max-o WAKEUP_ALARM:J = 0x20b0000001aL

.field public static final greylist-max-o WIFI:J = 0x10b0000001bL

.field public static final greylist-max-o WIFI_CONTROLLER:J = 0x10b00000005L

.field public static final greylist-max-o WIFI_MULTICAST_WAKELOCK:J = 0x10b0000001cL


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

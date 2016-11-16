.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final CMD_CURRENT_TIME:B = 0x5t

.field public static final CMD_NULL:B = -0x1t

.field public static final CMD_OVERFLOW:B = 0x6t

.field public static final CMD_RESET:B = 0x7t

.field public static final CMD_SHUTDOWN:B = 0x8t

.field public static final CMD_START:B = 0x4t

.field public static final CMD_UPDATE:B = 0x0t

.field public static final EVENT_ACTIVE:I = 0xa

.field public static final EVENT_ALARM:I = 0xd

.field public static final EVENT_ALARM_FINISH:I = 0x400d

.field public static final EVENT_ALARM_START:I = 0x800d

.field public static final EVENT_COLLECT_EXTERNAL_STATS:I = 0xe

.field public static final EVENT_CONNECTIVITY_CHANGED:I = 0x9

.field public static final EVENT_COUNT:I = 0x15

.field public static final EVENT_FLAG_FINISH:I = 0x4000

.field public static final EVENT_FLAG_START:I = 0x8000

.field public static final EVENT_FOREGROUND:I = 0x2

.field public static final EVENT_FOREGROUND_FINISH:I = 0x4002

.field public static final EVENT_FOREGROUND_START:I = 0x8002

.field public static final EVENT_JOB:I = 0x6

.field public static final EVENT_JOB_FINISH:I = 0x4006

.field public static final EVENT_JOB_START:I = 0x8006

.field public static final EVENT_LONG_WAKE_LOCK:I = 0x14

.field public static final EVENT_LONG_WAKE_LOCK_FINISH:I = 0x4014

.field public static final EVENT_LONG_WAKE_LOCK_START:I = 0x8014

.field public static final EVENT_NONE:I = 0x0

.field public static final EVENT_PACKAGE_ACTIVE:I = 0x10

.field public static final EVENT_PACKAGE_INACTIVE:I = 0xf

.field public static final EVENT_PACKAGE_INSTALLED:I = 0xb

.field public static final EVENT_PACKAGE_UNINSTALLED:I = 0xc

.field public static final EVENT_PROC:I = 0x1

.field public static final EVENT_PROC_FINISH:I = 0x4001

.field public static final EVENT_PROC_START:I = 0x8001

.field public static final EVENT_SCREEN_WAKE_UP:I = 0x12

.field public static final EVENT_SYNC:I = 0x4

.field public static final EVENT_SYNC_FINISH:I = 0x4004

.field public static final EVENT_SYNC_START:I = 0x8004

.field public static final EVENT_TEMP_WHITELIST:I = 0x11

.field public static final EVENT_TEMP_WHITELIST_FINISH:I = 0x4011

.field public static final EVENT_TEMP_WHITELIST_START:I = 0x8011

.field public static final EVENT_TOP:I = 0x3

.field public static final EVENT_TOP_FINISH:I = 0x4003

.field public static final EVENT_TOP_START:I = 0x8003

.field public static final EVENT_TYPE_MASK:I = -0xc001

.field public static final EVENT_USER_FOREGROUND:I = 0x8

.field public static final EVENT_USER_FOREGROUND_FINISH:I = 0x4008

.field public static final EVENT_USER_FOREGROUND_START:I = 0x8008

.field public static final EVENT_USER_RUNNING:I = 0x7

.field public static final EVENT_USER_RUNNING_FINISH:I = 0x4007

.field public static final EVENT_USER_RUNNING_START:I = 0x8007

.field public static final EVENT_WAKEUP_AP:I = 0x13

.field public static final EVENT_WAKE_LOCK:I = 0x5

.field public static final EVENT_WAKE_LOCK_FINISH:I = 0x4005

.field public static final EVENT_WAKE_LOCK_START:I = 0x8005

.field public static final MOST_INTERESTING_STATES:I = 0x180000

.field public static final MOST_INTERESTING_STATES2:I = -0x68400000

.field public static final SETTLE_TO_ZERO_STATES:I = -0x190000

.field public static final SETTLE_TO_ZERO_STATES2:I = 0x683f0000

.field public static final STATE2_BLUETOOTH_ON_FLAG:I = 0x400000

.field public static final STATE2_BLUETOOTH_SCAN_FLAG:I = 0x100000

.field public static final STATE2_CAMERA_FLAG:I = 0x200000

.field public static final STATE2_CHARGING_FLAG:I = 0x1000000

.field public static final STATE2_DEVICE_IDLE_MASK:I = 0x6000000

.field public static final STATE2_DEVICE_IDLE_SHIFT:I = 0x19

.field public static final STATE2_FLASHLIGHT_FLAG:I = 0x8000000

.field public static final STATE2_PHONE_IN_CALL_FLAG:I = 0x800000

.field public static final STATE2_POWER_SAVE_FLAG:I = -0x80000000

.field public static final STATE2_VIDEO_ON_FLAG:I = 0x40000000

.field public static final STATE2_WIFI_ON_FLAG:I = 0x10000000

.field public static final STATE2_WIFI_RUNNING_FLAG:I = 0x20000000

.field public static final STATE2_WIFI_SIGNAL_STRENGTH_MASK:I = 0x70

.field public static final STATE2_WIFI_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final STATE2_WIFI_SUPPL_STATE_MASK:I = 0xf

.field public static final STATE2_WIFI_SUPPL_STATE_SHIFT:I = 0x0

.field public static final STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final STATE_BRIGHTNESS_MASK:I = 0x7

.field public static final STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final STATE_CPU_RUNNING_FLAG:I = -0x80000000

.field public static final STATE_DATA_CONNECTION_MASK:I = 0x3e00

.field public static final STATE_DATA_CONNECTION_SHIFT:I = 0x9

.field public static final STATE_GPS_ON_FLAG:I = 0x20000000

.field public static final STATE_MOBILE_RADIO_ACTIVE_FLAG:I = 0x2000000

.field public static final STATE_PHONE_SCANNING_FLAG:I = 0x200000

.field public static final STATE_PHONE_SIGNAL_STRENGTH_MASK:I = 0x38

.field public static final STATE_PHONE_SIGNAL_STRENGTH_SHIFT:I = 0x3

.field public static final STATE_PHONE_STATE_MASK:I = 0x1c0

.field public static final STATE_PHONE_STATE_SHIFT:I = 0x6

.field private static final STATE_RESERVED_0:I = 0x1000000

.field public static final STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final STATE_SENSOR_ON_FLAG:I = 0x800000

.field public static final STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final STATE_WIFI_FULL_LOCK_FLAG:I = 0x10000000

.field public static final STATE_WIFI_MULTICAST_ON_FLAG:I = 0x10000

.field public static final STATE_WIFI_RADIO_ACTIVE_FLAG:I = 0x4000000

.field public static final STATE_WIFI_SCAN_FLAG:I = 0x8000000


# instance fields
.field public batteryChargeUAh:I

.field public batteryHealth:B

.field public batteryLevel:B

.field public batteryPlugType:B

.field public batteryStatus:B

.field public batteryTemperature:S

.field public batteryVoltage:C

.field public cmd:B

.field public currentTime:J

.field public eventCode:I

.field public eventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localEventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public final localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public next:Landroid/os/BatteryStats$HistoryItem;

.field public numReadInts:I

.field public states:I

.field public states2:I

.field public stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public time:J

.field public wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public wakelockTag:Landroid/os/BatteryStats$HistoryTag;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1191
    const/4 v0, -0x1

    #@4
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@6
    .line 1385
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    #@8
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@b
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@d
    .line 1386
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    #@f
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@12
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@14
    .line 1387
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    #@16
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@19
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    #@1b
    .line 1389
    return-void
.end method

.method public constructor <init>(JLandroid/os/Parcel;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1191
    const/4 v0, -0x1

    #@4
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@6
    .line 1385
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    #@8
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@b
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@d
    .line 1386
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    #@f
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@12
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@14
    .line 1387
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    #@16
    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    #@19
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    #@1b
    .line 1393
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@1d
    .line 1394
    const/4 v0, 0x2

    #@1e
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@20
    .line 1395
    invoke-virtual {p0, p3}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    #@23
    .line 1392
    return-void
.end method

.method private setToCommon(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 3
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1507
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@3
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@5
    .line 1508
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@7
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@9
    .line 1509
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@b
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@d
    .line 1510
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@f
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@11
    .line 1511
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@13
    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@15
    .line 1512
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@17
    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@19
    .line 1513
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    #@1b
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    #@1d
    .line 1514
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@1f
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@21
    .line 1515
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@23
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@25
    .line 1516
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 1517
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@2b
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@2d
    .line 1518
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@2f
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@31
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    #@34
    .line 1522
    :goto_0
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 1523
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@3a
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@3c
    .line 1524
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@3e
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@40
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    #@43
    .line 1528
    :goto_1
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@45
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@47
    .line 1529
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@49
    if-eqz v0, :cond_2

    #@4b
    .line 1530
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    #@4d
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@4f
    .line 1531
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@51
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@53
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    #@56
    .line 1535
    :goto_2
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@58
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@5a
    .line 1506
    return-void

    #@5b
    .line 1520
    :cond_0
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@5d
    goto :goto_0

    #@5e
    .line 1526
    :cond_1
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@60
    goto :goto_1

    #@61
    .line 1533
    :cond_2
    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@63
    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1477
    const-wide/16 v0, 0x0

    #@4
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@6
    .line 1478
    const/4 v0, -0x1

    #@7
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@9
    .line 1479
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@b
    .line 1480
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@d
    .line 1481
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@f
    .line 1482
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@11
    .line 1483
    iput-short v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@13
    .line 1484
    iput-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@15
    .line 1485
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    #@17
    .line 1486
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@19
    .line 1487
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@1b
    .line 1488
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@1d
    .line 1489
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@1f
    .line 1490
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@21
    .line 1491
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@23
    .line 1476
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1399
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDeltaData()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1197
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    const v6, 0xffff

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 1435
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@8
    move-result v2

    #@9
    .line 1436
    .local v2, "start":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    .line 1437
    .local v0, "bat":I
    and-int/lit16 v3, v0, 0xff

    #@f
    int-to-byte v3, v3

    #@10
    iput-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@12
    .line 1438
    shr-int/lit8 v3, v0, 0x8

    #@14
    and-int/lit16 v3, v3, 0xff

    #@16
    int-to-byte v3, v3

    #@17
    iput-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@19
    .line 1439
    shr-int/lit8 v3, v0, 0x10

    #@1b
    and-int/lit8 v3, v3, 0xf

    #@1d
    int-to-byte v3, v3

    #@1e
    iput-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@20
    .line 1440
    shr-int/lit8 v3, v0, 0x14

    #@22
    and-int/lit8 v3, v3, 0xf

    #@24
    int-to-byte v3, v3

    #@25
    iput-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@27
    .line 1441
    shr-int/lit8 v3, v0, 0x18

    #@29
    and-int/lit8 v3, v3, 0xf

    #@2b
    int-to-byte v3, v3

    #@2c
    iput-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@2e
    .line 1442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v1

    #@32
    .line 1443
    .local v1, "bat2":I
    and-int v3, v1, v6

    #@34
    int-to-short v3, v3

    #@35
    iput-short v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@37
    .line 1444
    shr-int/lit8 v3, v1, 0x10

    #@39
    and-int/2addr v3, v6

    #@3a
    int-to-char v3, v3

    #@3b
    iput-char v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@3d
    .line 1445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v3

    #@41
    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    #@43
    .line 1446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v3

    #@47
    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@49
    .line 1447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v3

    #@4d
    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@4f
    .line 1448
    const/high16 v3, 0x10000000

    #@51
    and-int/2addr v3, v0

    #@52
    if-eqz v3, :cond_1

    #@54
    .line 1449
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@56
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@58
    .line 1450
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@5a
    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    #@5d
    .line 1454
    :goto_0
    const/high16 v3, 0x20000000

    #@5f
    and-int/2addr v3, v0

    #@60
    if-eqz v3, :cond_2

    #@62
    .line 1455
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@64
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@66
    .line 1456
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@68
    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    #@6b
    .line 1460
    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    #@6d
    and-int/2addr v3, v0

    #@6e
    if-eqz v3, :cond_3

    #@70
    .line 1461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@73
    move-result v3

    #@74
    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@76
    .line 1462
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    #@78
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@7a
    .line 1463
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@7c
    invoke-virtual {v3, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    #@7f
    .line 1468
    :goto_2
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@81
    const/4 v4, 0x5

    #@82
    if-eq v3, v4, :cond_0

    #@84
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@86
    const/4 v4, 0x7

    #@87
    if-ne v3, v4, :cond_4

    #@89
    .line 1469
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@8c
    move-result-wide v4

    #@8d
    iput-wide v4, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@8f
    .line 1473
    :goto_3
    iget v3, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@94
    move-result v4

    #@95
    sub-int/2addr v4, v2

    #@96
    div-int/lit8 v4, v4, 0x4

    #@98
    add-int/2addr v3, v4

    #@99
    iput v3, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    #@9b
    .line 1434
    return-void

    #@9c
    .line 1452
    :cond_1
    iput-object v5, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@9e
    goto :goto_0

    #@9f
    .line 1458
    :cond_2
    iput-object v5, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@a1
    goto :goto_1

    #@a2
    .line 1465
    :cond_3
    iput v4, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@a4
    .line 1466
    iput-object v5, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@a6
    goto :goto_2

    #@a7
    .line 1471
    :cond_4
    const-wide/16 v4, 0x0

    #@a9
    iput-wide v4, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@ab
    goto :goto_3
.end method

.method public same(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 3
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1552
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@9
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@b
    if-eq v0, v1, :cond_1

    #@d
    .line 1553
    :cond_0
    return v2

    #@e
    .line 1555
    :cond_1
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@10
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@12
    if-eq v0, v1, :cond_4

    #@14
    .line 1556
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@16
    if-eqz v0, :cond_2

    #@18
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@1a
    if-nez v0, :cond_3

    #@1c
    .line 1557
    :cond_2
    return v2

    #@1d
    .line 1559
    :cond_3
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@1f
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@21
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_4

    #@27
    .line 1560
    return v2

    #@28
    .line 1563
    :cond_4
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@2a
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@2c
    if-eq v0, v1, :cond_7

    #@2e
    .line 1564
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@30
    if-eqz v0, :cond_5

    #@32
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@34
    if-nez v0, :cond_6

    #@36
    .line 1565
    :cond_5
    return v2

    #@37
    .line 1567
    :cond_6
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@39
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@3b
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_7

    #@41
    .line 1568
    return v2

    #@42
    .line 1571
    :cond_7
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@44
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@46
    if-eq v0, v1, :cond_a

    #@48
    .line 1572
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@4a
    if-eqz v0, :cond_8

    #@4c
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@4e
    if-nez v0, :cond_9

    #@50
    .line 1573
    :cond_8
    return v2

    #@51
    .line 1575
    :cond_9
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@53
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@55
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v0

    #@59
    if-nez v0, :cond_a

    #@5b
    .line 1576
    return v2

    #@5c
    .line 1579
    :cond_a
    const/4 v0, 0x1

    #@5d
    return v0
.end method

.method public sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 6
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1539
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@3
    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 1540
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@9
    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 1541
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@f
    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@11
    if-ne v1, v2, :cond_0

    #@13
    .line 1542
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@15
    iget-byte v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@17
    if-ne v1, v2, :cond_0

    #@19
    .line 1543
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@1b
    iget-short v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@1d
    if-ne v1, v2, :cond_0

    #@1f
    .line 1544
    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@21
    iget-char v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@23
    if-ne v1, v2, :cond_0

    #@25
    .line 1545
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    #@27
    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    #@29
    if-ne v1, v2, :cond_0

    #@2b
    .line 1546
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@2d
    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@2f
    if-ne v1, v2, :cond_0

    #@31
    .line 1547
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@33
    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@35
    if-ne v1, v2, :cond_0

    #@37
    .line 1548
    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@39
    iget-wide v4, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@3b
    cmp-long v1, v2, v4

    #@3d
    if-nez v1, :cond_0

    #@3f
    const/4 v0, 0x1

    #@40
    .line 1539
    :cond_0
    return v0
.end method

.method public setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "cmd"    # B
    .param p4, "o"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    .line 1501
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@2
    .line 1502
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@4
    .line 1503
    invoke-direct {p0, p4}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    #@7
    .line 1500
    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    #@0
    .prologue
    .line 1495
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@2
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@4
    .line 1496
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@6
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@8
    .line 1497
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    #@b
    .line 1494
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1403
    iget-wide v4, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    #@3
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@6
    .line 1404
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    .line 1405
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    #@c
    shl-int/lit8 v3, v3, 0x8

    #@e
    const v4, 0xff00

    #@11
    and-int/2addr v3, v4

    #@12
    .line 1404
    or-int/2addr v1, v3

    #@13
    .line 1406
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    #@15
    shl-int/lit8 v3, v3, 0x10

    #@17
    const/high16 v4, 0xf0000

    #@19
    and-int/2addr v3, v4

    #@1a
    .line 1404
    or-int/2addr v1, v3

    #@1b
    .line 1407
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    #@1d
    shl-int/lit8 v3, v3, 0x14

    #@1f
    const/high16 v4, 0xf00000

    #@21
    and-int/2addr v3, v4

    #@22
    .line 1404
    or-int/2addr v1, v3

    #@23
    .line 1408
    iget-byte v3, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    #@25
    shl-int/lit8 v3, v3, 0x18

    #@27
    const/high16 v4, 0xf000000

    #@29
    and-int/2addr v3, v4

    #@2a
    .line 1404
    or-int/2addr v3, v1

    #@2b
    .line 1409
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@2d
    if-eqz v1, :cond_6

    #@2f
    const/high16 v1, 0x10000000

    #@31
    .line 1404
    :goto_0
    or-int/2addr v3, v1

    #@32
    .line 1410
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@34
    if-eqz v1, :cond_7

    #@36
    const/high16 v1, 0x20000000

    #@38
    .line 1404
    :goto_1
    or-int/2addr v1, v3

    #@39
    .line 1411
    iget v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@3b
    if-eqz v3, :cond_0

    #@3d
    const/high16 v2, 0x40000000    # 2.0f

    #@3f
    .line 1404
    :cond_0
    or-int v0, v1, v2

    #@41
    .line 1412
    .local v0, "bat":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 1413
    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    #@46
    const v2, 0xffff

    #@49
    and-int/2addr v1, v2

    #@4a
    .line 1414
    iget-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    #@4c
    shl-int/lit8 v2, v2, 0x10

    #@4e
    const/high16 v3, -0x10000

    #@50
    and-int/2addr v2, v3

    #@51
    .line 1413
    or-int v0, v1, v2

    #@53
    .line 1415
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 1416
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    #@58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 1417
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    #@5d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 1418
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    #@62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 1419
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@67
    if-eqz v1, :cond_1

    #@69
    .line 1420
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    #@6b
    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    #@6e
    .line 1422
    :cond_1
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@70
    if-eqz v1, :cond_2

    #@72
    .line 1423
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    #@74
    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    #@77
    .line 1425
    :cond_2
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@79
    if-eqz v1, :cond_3

    #@7b
    .line 1426
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    #@7d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    .line 1427
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    #@82
    invoke-virtual {v1, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    #@85
    .line 1429
    :cond_3
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@87
    const/4 v2, 0x5

    #@88
    if-eq v1, v2, :cond_4

    #@8a
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    #@8c
    const/4 v2, 0x7

    #@8d
    if-ne v1, v2, :cond_5

    #@8f
    .line 1430
    :cond_4
    iget-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    #@91
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@94
    .line 1402
    :cond_5
    return-void

    #@95
    .end local v0    # "bat":I
    :cond_6
    move v1, v2

    #@96
    .line 1409
    goto :goto_0

    #@97
    :cond_7
    move v1, v2

    #@98
    .line 1410
    goto :goto_1
.end method

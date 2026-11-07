.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final blacklist PERMISSIONS_getCellularBatteryStats:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getWifiBatteryStats:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_noteNetworkInterfaceForTransports:[Ljava/lang/String;

.field static final blacklist TRANSACTION_computeBatteryScreenOffRealtimeMs:I = 0x14

.field static final greylist-max-o TRANSACTION_computeBatteryTimeRemaining:I = 0x12

.field static final greylist-max-o TRANSACTION_computeChargeTimeRemaining:I = 0x13

.field static final greylist-max-o TRANSACTION_getAwakeTimeBattery:I = 0x4d

.field static final greylist-max-o TRANSACTION_getAwakeTimePlugged:I = 0x4e

.field static final blacklist TRANSACTION_getBatteryUsageStats:I = 0x10

.field static final blacklist TRANSACTION_getBluetoothBatteryStats:I = 0x57

.field static final greylist-max-o TRANSACTION_getCellularBatteryStats:I = 0x53

.field static final greylist-max-o TRANSACTION_getGpsBatteryStats:I = 0x55

.field static final blacklist TRANSACTION_getScreenOffDischargeMah:I = 0x15

.field static final blacklist TRANSACTION_getWakeLockStats:I = 0x56

.field static final greylist-max-o TRANSACTION_getWifiBatteryStats:I = 0x54

.field static final greylist-max-o TRANSACTION_isCharging:I = 0x11

.field static final blacklist TRANSACTION_noteBleScanReset:I = 0x51

.field static final greylist-max-o TRANSACTION_noteBleScanResults:I = 0x52

.field static final greylist-max-o TRANSACTION_noteBleScanStarted:I = 0x4f

.field static final greylist-max-o TRANSACTION_noteBleScanStopped:I = 0x50

.field static final greylist-max-o TRANSACTION_noteBluetoothControllerActivity:I = 0x5b

.field static final greylist-max-o TRANSACTION_noteChangeWakelockFromSource:I = 0x1e

.field static final greylist-max-o TRANSACTION_noteConnectivityChanged:I = 0x2d

.field static final greylist-max-o TRANSACTION_noteDeviceIdleMode:I = 0x4b

.field static final greylist-max-o TRANSACTION_noteEvent:I = 0x16

.field static final greylist-max-o TRANSACTION_noteFlashlightOff:I = 0xa

.field static final greylist-max-o TRANSACTION_noteFlashlightOn:I = 0x9

.field static final greylist-max-o TRANSACTION_noteFullWifiLockAcquired:I = 0x3c

.field static final greylist-max-o TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x42

.field static final greylist-max-o TRANSACTION_noteFullWifiLockReleased:I = 0x3d

.field static final greylist-max-o TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x43

.field static final greylist-max-o TRANSACTION_noteGpsChanged:I = 0x26

.field static final greylist-max-o TRANSACTION_noteGpsSignalQuality:I = 0x27

.field static final greylist-max-o TRANSACTION_noteInteractive:I = 0x2c

.field static final greylist-max-o TRANSACTION_noteJobFinish:I = 0x1a

.field static final greylist-max-o TRANSACTION_noteJobStart:I = 0x19

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockFinish:I = 0x22

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockFinishFromSource:I = 0x23

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockStart:I = 0x20

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockStartFromSource:I = 0x21

.field static final greylist-max-o TRANSACTION_noteMobileRadioPowerState:I = 0x2e

.field static final greylist-max-o TRANSACTION_noteModemControllerActivity:I = 0x5c

.field static final blacklist TRANSACTION_noteNetworkInterfaceForTransports:I = 0x49

.field static final greylist-max-o TRANSACTION_noteNetworkStatsEnabled:I = 0x4a

.field static final greylist-max-o TRANSACTION_notePhoneDataConnectionState:I = 0x32

.field static final greylist-max-o TRANSACTION_notePhoneOff:I = 0x30

.field static final greylist-max-o TRANSACTION_notePhoneOn:I = 0x2f

.field static final greylist-max-o TRANSACTION_notePhoneSignalStrength:I = 0x31

.field static final greylist-max-o TRANSACTION_notePhoneState:I = 0x33

.field static final greylist-max-o TRANSACTION_noteResetAudio:I = 0x8

.field static final greylist-max-o TRANSACTION_noteResetCamera:I = 0xd

.field static final greylist-max-o TRANSACTION_noteResetFlashlight:I = 0xe

.field static final greylist-max-o TRANSACTION_noteResetVideo:I = 0x7

.field static final greylist-max-o TRANSACTION_noteScreenBrightness:I = 0x29

.field static final greylist-max-o TRANSACTION_noteScreenState:I = 0x28

.field static final greylist-max-o TRANSACTION_noteStartAudio:I = 0x5

.field static final greylist-max-o TRANSACTION_noteStartCamera:I = 0xb

.field static final greylist-max-o TRANSACTION_noteStartSensor:I = 0x1

.field static final greylist-max-o TRANSACTION_noteStartVideo:I = 0x3

.field static final greylist-max-o TRANSACTION_noteStartWakelock:I = 0x1b

.field static final greylist-max-o TRANSACTION_noteStartWakelockFromSource:I = 0x1d

.field static final greylist-max-o TRANSACTION_noteStopAudio:I = 0x6

.field static final greylist-max-o TRANSACTION_noteStopCamera:I = 0xc

.field static final greylist-max-o TRANSACTION_noteStopSensor:I = 0x2

.field static final greylist-max-o TRANSACTION_noteStopVideo:I = 0x4

.field static final greylist-max-o TRANSACTION_noteStopWakelock:I = 0x1c

.field static final greylist-max-o TRANSACTION_noteStopWakelockFromSource:I = 0x1f

.field static final greylist-max-o TRANSACTION_noteSyncFinish:I = 0x18

.field static final greylist-max-o TRANSACTION_noteSyncStart:I = 0x17

.field static final greylist-max-o TRANSACTION_noteUserActivity:I = 0x2a

.field static final greylist-max-o TRANSACTION_noteVibratorOff:I = 0x25

.field static final greylist-max-o TRANSACTION_noteVibratorOn:I = 0x24

.field static final greylist-max-o TRANSACTION_noteWakeUp:I = 0x2b

.field static final blacklist TRANSACTION_noteWakeupSensorEvent:I = 0xf

.field static final greylist-max-o TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x46

.field static final greylist-max-o TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x47

.field static final greylist-max-o TRANSACTION_noteWifiControllerActivity:I = 0x5d

.field static final greylist-max-o TRANSACTION_noteWifiMulticastDisabled:I = 0x41

.field static final greylist-max-o TRANSACTION_noteWifiMulticastEnabled:I = 0x40

.field static final greylist-max-o TRANSACTION_noteWifiOff:I = 0x35

.field static final greylist-max-o TRANSACTION_noteWifiOn:I = 0x34

.field static final greylist-max-o TRANSACTION_noteWifiRadioPowerState:I = 0x48

.field static final greylist-max-o TRANSACTION_noteWifiRssiChanged:I = 0x3b

.field static final greylist-max-o TRANSACTION_noteWifiRunning:I = 0x36

.field static final greylist-max-o TRANSACTION_noteWifiRunningChanged:I = 0x37

.field static final greylist-max-o TRANSACTION_noteWifiScanStarted:I = 0x3e

.field static final greylist-max-o TRANSACTION_noteWifiScanStartedFromSource:I = 0x44

.field static final greylist-max-o TRANSACTION_noteWifiScanStopped:I = 0x3f

.field static final greylist-max-o TRANSACTION_noteWifiScanStoppedFromSource:I = 0x45

.field static final greylist-max-o TRANSACTION_noteWifiState:I = 0x39

.field static final greylist-max-o TRANSACTION_noteWifiStopped:I = 0x38

.field static final greylist-max-o TRANSACTION_noteWifiSupplicantStateChanged:I = 0x3a

.field static final blacklist TRANSACTION_resetBattery:I = 0x62

.field static final blacklist TRANSACTION_setBatteryLevel:I = 0x60

.field static final greylist-max-o TRANSACTION_setBatteryState:I = 0x4c

.field static final blacklist TRANSACTION_setChargerAcOnline:I = 0x5f

.field static final blacklist TRANSACTION_setChargingStateUpdateDelayMillis:I = 0x5e

.field static final blacklist TRANSACTION_suspendBatteryInput:I = 0x63

.field static final greylist-max-o TRANSACTION_takeUidSnapshot:I = 0x58

.field static final greylist-max-o TRANSACTION_takeUidSnapshots:I = 0x59

.field static final blacklist TRANSACTION_takeUidSnapshotsAsync:I = 0x5a

.field static final blacklist TRANSACTION_unplugBattery:I = 0x61


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 3779
    const-string v0, "android.permission.NETWORK_STACK"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_noteNetworkInterfaceForTransports:[Ljava/lang/String;

    .line 3830
    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    const-string v1, "android.permission.BATTERY_STATS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getCellularBatteryStats:[Ljava/lang/String;

    .line 3836
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getWifiBatteryStats:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    nop

    .line 371
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 372
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 360
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 361
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 362
    if-eqz p1, :cond_d

    .line 365
    iput-object p1, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 366
    return-void

    .line 363
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 379
    if-nez p0, :cond_4

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_4
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 383
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_14

    .line 384
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IBatteryStats;

    return-object v1

    .line 386
    :cond_14
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 395
    packed-switch p0, :pswitch_data_138

    .line 795
    const/4 v0, 0x0

    return-object v0

    .line 791
    :pswitch_5
    const-string/jumbo v0, "suspendBatteryInput"

    return-object v0

    .line 787
    :pswitch_9
    const-string/jumbo v0, "resetBattery"

    return-object v0

    .line 783
    :pswitch_d
    const-string/jumbo v0, "unplugBattery"

    return-object v0

    .line 779
    :pswitch_11
    const-string/jumbo v0, "setBatteryLevel"

    return-object v0

    .line 775
    :pswitch_15
    const-string/jumbo v0, "setChargerAcOnline"

    return-object v0

    .line 771
    :pswitch_19
    const-string/jumbo v0, "setChargingStateUpdateDelayMillis"

    return-object v0

    .line 767
    :pswitch_1d
    const-string v0, "noteWifiControllerActivity"

    return-object v0

    .line 763
    :pswitch_20
    const-string v0, "noteModemControllerActivity"

    return-object v0

    .line 759
    :pswitch_23
    const-string v0, "noteBluetoothControllerActivity"

    return-object v0

    .line 755
    :pswitch_26
    const-string/jumbo v0, "takeUidSnapshotsAsync"

    return-object v0

    .line 751
    :pswitch_2a
    const-string/jumbo v0, "takeUidSnapshots"

    return-object v0

    .line 747
    :pswitch_2e
    const-string/jumbo v0, "takeUidSnapshot"

    return-object v0

    .line 743
    :pswitch_32
    const-string v0, "getBluetoothBatteryStats"

    return-object v0

    .line 739
    :pswitch_35
    const-string v0, "getWakeLockStats"

    return-object v0

    .line 735
    :pswitch_38
    const-string v0, "getGpsBatteryStats"

    return-object v0

    .line 731
    :pswitch_3b
    const-string v0, "getWifiBatteryStats"

    return-object v0

    .line 727
    :pswitch_3e
    const-string v0, "getCellularBatteryStats"

    return-object v0

    .line 723
    :pswitch_41
    const-string v0, "noteBleScanResults"

    return-object v0

    .line 719
    :pswitch_44
    const-string v0, "noteBleScanReset"

    return-object v0

    .line 715
    :pswitch_47
    const-string v0, "noteBleScanStopped"

    return-object v0

    .line 711
    :pswitch_4a
    const-string v0, "noteBleScanStarted"

    return-object v0

    .line 707
    :pswitch_4d
    const-string v0, "getAwakeTimePlugged"

    return-object v0

    .line 703
    :pswitch_50
    const-string v0, "getAwakeTimeBattery"

    return-object v0

    .line 699
    :pswitch_53
    const-string/jumbo v0, "setBatteryState"

    return-object v0

    .line 695
    :pswitch_57
    const-string v0, "noteDeviceIdleMode"

    return-object v0

    .line 691
    :pswitch_5a
    const-string v0, "noteNetworkStatsEnabled"

    return-object v0

    .line 687
    :pswitch_5d
    const-string v0, "noteNetworkInterfaceForTransports"

    return-object v0

    .line 683
    :pswitch_60
    const-string v0, "noteWifiRadioPowerState"

    return-object v0

    .line 679
    :pswitch_63
    const-string v0, "noteWifiBatchedScanStoppedFromSource"

    return-object v0

    .line 675
    :pswitch_66
    const-string v0, "noteWifiBatchedScanStartedFromSource"

    return-object v0

    .line 671
    :pswitch_69
    const-string v0, "noteWifiScanStoppedFromSource"

    return-object v0

    .line 667
    :pswitch_6c
    const-string v0, "noteWifiScanStartedFromSource"

    return-object v0

    .line 663
    :pswitch_6f
    const-string v0, "noteFullWifiLockReleasedFromSource"

    return-object v0

    .line 659
    :pswitch_72
    const-string v0, "noteFullWifiLockAcquiredFromSource"

    return-object v0

    .line 655
    :pswitch_75
    const-string v0, "noteWifiMulticastDisabled"

    return-object v0

    .line 651
    :pswitch_78
    const-string v0, "noteWifiMulticastEnabled"

    return-object v0

    .line 647
    :pswitch_7b
    const-string v0, "noteWifiScanStopped"

    return-object v0

    .line 643
    :pswitch_7e
    const-string v0, "noteWifiScanStarted"

    return-object v0

    .line 639
    :pswitch_81
    const-string v0, "noteFullWifiLockReleased"

    return-object v0

    .line 635
    :pswitch_84
    const-string v0, "noteFullWifiLockAcquired"

    return-object v0

    .line 631
    :pswitch_87
    const-string v0, "noteWifiRssiChanged"

    return-object v0

    .line 627
    :pswitch_8a
    const-string v0, "noteWifiSupplicantStateChanged"

    return-object v0

    .line 623
    :pswitch_8d
    const-string v0, "noteWifiState"

    return-object v0

    .line 619
    :pswitch_90
    const-string v0, "noteWifiStopped"

    return-object v0

    .line 615
    :pswitch_93
    const-string v0, "noteWifiRunningChanged"

    return-object v0

    .line 611
    :pswitch_96
    const-string v0, "noteWifiRunning"

    return-object v0

    .line 607
    :pswitch_99
    const-string v0, "noteWifiOff"

    return-object v0

    .line 603
    :pswitch_9c
    const-string v0, "noteWifiOn"

    return-object v0

    .line 599
    :pswitch_9f
    const-string v0, "notePhoneState"

    return-object v0

    .line 595
    :pswitch_a2
    const-string v0, "notePhoneDataConnectionState"

    return-object v0

    .line 591
    :pswitch_a5
    const-string v0, "notePhoneSignalStrength"

    return-object v0

    .line 587
    :pswitch_a8
    const-string v0, "notePhoneOff"

    return-object v0

    .line 583
    :pswitch_ab
    const-string v0, "notePhoneOn"

    return-object v0

    .line 579
    :pswitch_ae
    const-string v0, "noteMobileRadioPowerState"

    return-object v0

    .line 575
    :pswitch_b1
    const-string v0, "noteConnectivityChanged"

    return-object v0

    .line 571
    :pswitch_b4
    const-string v0, "noteInteractive"

    return-object v0

    .line 567
    :pswitch_b7
    const-string v0, "noteWakeUp"

    return-object v0

    .line 563
    :pswitch_ba
    const-string v0, "noteUserActivity"

    return-object v0

    .line 559
    :pswitch_bd
    const-string v0, "noteScreenBrightness"

    return-object v0

    .line 555
    :pswitch_c0
    const-string v0, "noteScreenState"

    return-object v0

    .line 551
    :pswitch_c3
    const-string v0, "noteGpsSignalQuality"

    return-object v0

    .line 547
    :pswitch_c6
    const-string v0, "noteGpsChanged"

    return-object v0

    .line 543
    :pswitch_c9
    const-string v0, "noteVibratorOff"

    return-object v0

    .line 539
    :pswitch_cc
    const-string v0, "noteVibratorOn"

    return-object v0

    .line 535
    :pswitch_cf
    const-string v0, "noteLongPartialWakelockFinishFromSource"

    return-object v0

    .line 531
    :pswitch_d2
    const-string v0, "noteLongPartialWakelockFinish"

    return-object v0

    .line 527
    :pswitch_d5
    const-string v0, "noteLongPartialWakelockStartFromSource"

    return-object v0

    .line 523
    :pswitch_d8
    const-string v0, "noteLongPartialWakelockStart"

    return-object v0

    .line 519
    :pswitch_db
    const-string v0, "noteStopWakelockFromSource"

    return-object v0

    .line 515
    :pswitch_de
    const-string v0, "noteChangeWakelockFromSource"

    return-object v0

    .line 511
    :pswitch_e1
    const-string v0, "noteStartWakelockFromSource"

    return-object v0

    .line 507
    :pswitch_e4
    const-string v0, "noteStopWakelock"

    return-object v0

    .line 503
    :pswitch_e7
    const-string v0, "noteStartWakelock"

    return-object v0

    .line 499
    :pswitch_ea
    const-string v0, "noteJobFinish"

    return-object v0

    .line 495
    :pswitch_ed
    const-string v0, "noteJobStart"

    return-object v0

    .line 491
    :pswitch_f0
    const-string v0, "noteSyncFinish"

    return-object v0

    .line 487
    :pswitch_f3
    const-string v0, "noteSyncStart"

    return-object v0

    .line 483
    :pswitch_f6
    const-string v0, "noteEvent"

    return-object v0

    .line 479
    :pswitch_f9
    const-string v0, "getScreenOffDischargeMah"

    return-object v0

    .line 475
    :pswitch_fc
    const-string v0, "computeBatteryScreenOffRealtimeMs"

    return-object v0

    .line 471
    :pswitch_ff
    const-string v0, "computeChargeTimeRemaining"

    return-object v0

    .line 467
    :pswitch_102
    const-string v0, "computeBatteryTimeRemaining"

    return-object v0

    .line 463
    :pswitch_105
    const-string v0, "isCharging"

    return-object v0

    .line 459
    :pswitch_108
    const-string v0, "getBatteryUsageStats"

    return-object v0

    .line 455
    :pswitch_10b
    const-string v0, "noteWakeupSensorEvent"

    return-object v0

    .line 451
    :pswitch_10e
    const-string v0, "noteResetFlashlight"

    return-object v0

    .line 447
    :pswitch_111
    const-string v0, "noteResetCamera"

    return-object v0

    .line 443
    :pswitch_114
    const-string v0, "noteStopCamera"

    return-object v0

    .line 439
    :pswitch_117
    const-string v0, "noteStartCamera"

    return-object v0

    .line 435
    :pswitch_11a
    const-string v0, "noteFlashlightOff"

    return-object v0

    .line 431
    :pswitch_11d
    const-string v0, "noteFlashlightOn"

    return-object v0

    .line 427
    :pswitch_120
    const-string v0, "noteResetAudio"

    return-object v0

    .line 423
    :pswitch_123
    const-string v0, "noteResetVideo"

    return-object v0

    .line 419
    :pswitch_126
    const-string v0, "noteStopAudio"

    return-object v0

    .line 415
    :pswitch_129
    const-string v0, "noteStartAudio"

    return-object v0

    .line 411
    :pswitch_12c
    const-string v0, "noteStopVideo"

    return-object v0

    .line 407
    :pswitch_12f
    const-string v0, "noteStartVideo"

    return-object v0

    .line 403
    :pswitch_132
    const-string v0, "noteStopSensor"

    return-object v0

    .line 399
    :pswitch_135
    const-string v0, "noteStartSensor"

    return-object v0

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_135
        :pswitch_132
        :pswitch_12f
        :pswitch_12c
        :pswitch_129
        :pswitch_126
        :pswitch_123
        :pswitch_120
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
        :pswitch_114
        :pswitch_111
        :pswitch_10e
        :pswitch_10b
        :pswitch_108
        :pswitch_105
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_f6
        :pswitch_f3
        :pswitch_f0
        :pswitch_ed
        :pswitch_ea
        :pswitch_e7
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 390
    return-object p0
.end method

.method protected blacklist computeBatteryScreenOffRealtimeMs_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3516
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3517
    return-void
.end method

.method protected blacklist getAwakeTimeBattery_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3802
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3803
    return-void
.end method

.method protected blacklist getAwakeTimePlugged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3807
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3808
    return-void
.end method

.method protected blacklist getBatteryUsageStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3508
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3509
    return-void
.end method

.method protected blacklist getBluetoothBatteryStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3854
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3855
    return-void
.end method

.method protected blacklist getCellularBatteryStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3833
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getCellularBatteryStats:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 3834
    return-void
.end method

.method protected blacklist getGpsBatteryStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3844
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3845
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3907
    const/16 v0, 0x62

    return v0
.end method

.method protected blacklist getScreenOffDischargeMah_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3521
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3522
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 802
    invoke-static {p1}, Lcom/android/internal/app/IBatteryStats$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getWakeLockStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3849
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3850
    return-void
.end method

.method protected blacklist getWifiBatteryStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3839
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getWifiBatteryStats:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 3840
    return-void
.end method

.method protected blacklist noteBleScanReset_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3822
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3823
    return-void
.end method

.method protected blacklist noteBleScanResults_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3827
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3828
    return-void
.end method

.method protected blacklist noteBleScanStarted_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3812
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3813
    return-void
.end method

.method protected blacklist noteBleScanStopped_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3817
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3818
    return-void
.end method

.method protected blacklist noteBluetoothControllerActivity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3862
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3863
    return-void
.end method

.method protected blacklist noteChangeWakelockFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3566
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3567
    return-void
.end method

.method protected blacklist noteConnectivityChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3641
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3642
    return-void
.end method

.method protected blacklist noteDeviceIdleMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3792
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3793
    return-void
.end method

.method protected blacklist noteEvent_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3526
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3527
    return-void
.end method

.method protected blacklist noteFlashlightOff_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3482
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3483
    return-void
.end method

.method protected blacklist noteFlashlightOn_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3477
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3478
    return-void
.end method

.method protected blacklist noteFullWifiLockAcquiredFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3746
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3747
    return-void
.end method

.method protected blacklist noteFullWifiLockAcquired_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3716
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3717
    return-void
.end method

.method protected blacklist noteFullWifiLockReleasedFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3751
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3752
    return-void
.end method

.method protected blacklist noteFullWifiLockReleased_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3721
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3722
    return-void
.end method

.method protected blacklist noteGpsChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3606
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3607
    return-void
.end method

.method protected blacklist noteGpsSignalQuality_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3611
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3612
    return-void
.end method

.method protected blacklist noteInteractive_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3636
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3637
    return-void
.end method

.method protected blacklist noteJobFinish_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3546
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3547
    return-void
.end method

.method protected blacklist noteJobStart_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3541
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3542
    return-void
.end method

.method protected blacklist noteLongPartialWakelockFinishFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3591
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3592
    return-void
.end method

.method protected blacklist noteLongPartialWakelockFinish_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3586
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3587
    return-void
.end method

.method protected blacklist noteLongPartialWakelockStartFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3581
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3582
    return-void
.end method

.method protected blacklist noteLongPartialWakelockStart_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3576
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3577
    return-void
.end method

.method protected blacklist noteMobileRadioPowerState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3646
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3647
    return-void
.end method

.method protected blacklist noteModemControllerActivity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3867
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3868
    return-void
.end method

.method protected blacklist noteNetworkInterfaceForTransports_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3782
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_noteNetworkInterfaceForTransports:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 3783
    return-void
.end method

.method protected blacklist noteNetworkStatsEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3787
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3788
    return-void
.end method

.method protected blacklist notePhoneDataConnectionState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3666
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3667
    return-void
.end method

.method protected blacklist notePhoneOff_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3656
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3657
    return-void
.end method

.method protected blacklist notePhoneOn_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3651
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3652
    return-void
.end method

.method protected blacklist notePhoneSignalStrength_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3661
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3662
    return-void
.end method

.method protected blacklist notePhoneState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3671
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3672
    return-void
.end method

.method protected blacklist noteResetAudio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3472
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3473
    return-void
.end method

.method protected blacklist noteResetCamera_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3497
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3498
    return-void
.end method

.method protected blacklist noteResetFlashlight_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3502
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3503
    return-void
.end method

.method protected blacklist noteResetVideo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3467
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3468
    return-void
.end method

.method protected blacklist noteScreenBrightness_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3621
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3622
    return-void
.end method

.method protected blacklist noteScreenState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3616
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3617
    return-void
.end method

.method protected blacklist noteStartAudio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3457
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3458
    return-void
.end method

.method protected blacklist noteStartCamera_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3487
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3488
    return-void
.end method

.method protected blacklist noteStartSensor_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3437
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3438
    return-void
.end method

.method protected blacklist noteStartVideo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3447
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3448
    return-void
.end method

.method protected blacklist noteStartWakelockFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3561
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3562
    return-void
.end method

.method protected blacklist noteStartWakelock_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3551
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3552
    return-void
.end method

.method protected blacklist noteStopAudio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3462
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3463
    return-void
.end method

.method protected blacklist noteStopCamera_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3492
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3493
    return-void
.end method

.method protected blacklist noteStopSensor_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3442
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3443
    return-void
.end method

.method protected blacklist noteStopVideo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3452
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3453
    return-void
.end method

.method protected blacklist noteStopWakelockFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3571
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3572
    return-void
.end method

.method protected blacklist noteStopWakelock_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3556
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3557
    return-void
.end method

.method protected blacklist noteSyncFinish_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3536
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3537
    return-void
.end method

.method protected blacklist noteSyncStart_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3531
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3532
    return-void
.end method

.method protected blacklist noteUserActivity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3626
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3627
    return-void
.end method

.method protected blacklist noteVibratorOff_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3601
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3602
    return-void
.end method

.method protected blacklist noteVibratorOn_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3596
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3597
    return-void
.end method

.method protected blacklist noteWakeUp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3631
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3632
    return-void
.end method

.method protected blacklist noteWifiBatchedScanStartedFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3766
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3767
    return-void
.end method

.method protected blacklist noteWifiBatchedScanStoppedFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3771
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3772
    return-void
.end method

.method protected blacklist noteWifiControllerActivity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3872
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3873
    return-void
.end method

.method protected blacklist noteWifiMulticastDisabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3741
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3742
    return-void
.end method

.method protected blacklist noteWifiMulticastEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3736
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3737
    return-void
.end method

.method protected blacklist noteWifiOff_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3681
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3682
    return-void
.end method

.method protected blacklist noteWifiOn_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3676
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3677
    return-void
.end method

.method protected blacklist noteWifiRadioPowerState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3776
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3777
    return-void
.end method

.method protected blacklist noteWifiRssiChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3711
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3712
    return-void
.end method

.method protected blacklist noteWifiRunningChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3691
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3692
    return-void
.end method

.method protected blacklist noteWifiRunning_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3686
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3687
    return-void
.end method

.method protected blacklist noteWifiScanStartedFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3756
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3757
    return-void
.end method

.method protected blacklist noteWifiScanStarted_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3726
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3727
    return-void
.end method

.method protected blacklist noteWifiScanStoppedFromSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3761
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3762
    return-void
.end method

.method protected blacklist noteWifiScanStopped_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3731
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3732
    return-void
.end method

.method protected blacklist noteWifiState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3701
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3702
    return-void
.end method

.method protected blacklist noteWifiStopped_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3696
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3697
    return-void
.end method

.method protected blacklist noteWifiSupplicantStateChanged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3706
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3707
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "com.android.internal.app.IBatteryStats"

    .line 807
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v12, v11, :cond_15

    const v1, 0xffffff

    if-gt v12, v1, :cond_15

    .line 808
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    :cond_15
    const v1, 0x5f4e5446

    if-ne v12, v1, :cond_1e

    .line 811
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    return v11

    .line 814
    :cond_1e
    packed-switch v12, :pswitch_data_7a2

    .line 1817
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1811
    :pswitch_26
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput()V

    .line 1812
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    move v12, v11

    goto/16 :goto_7a1

    .line 1803
    :pswitch_2f
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1804
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1805
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery(Z)V

    .line 1806
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1807
    move v12, v11

    goto/16 :goto_7a1

    .line 1794
    .end local v1    # "_arg0":Z
    :pswitch_3f
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1795
    .restart local v1    # "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1796
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery(Z)V

    .line 1797
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    move v12, v11

    goto/16 :goto_7a1

    .line 1783
    .end local v1    # "_arg0":Z
    :pswitch_4f
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1785
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1786
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1787
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel(IZ)V

    .line 1788
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    move v12, v11

    goto/16 :goto_7a1

    .line 1772
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_63
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1774
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1775
    .restart local v2    # "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline(ZZ)V

    .line 1777
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    move v12, v11

    goto/16 :goto_7a1

    .line 1762
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :pswitch_77
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1763
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1764
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis(I)Z

    move-result v2

    .line 1765
    .local v2, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1767
    move v12, v11

    goto/16 :goto_7a1

    .line 1754
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_8b
    sget-object v1, Landroid/os/connectivity/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 1755
    .local v1, "_arg0":Landroid/os/connectivity/WifiActivityEnergyInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1756
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    .line 1757
    move v12, v11

    goto/16 :goto_7a1

    .line 1746
    .end local v1    # "_arg0":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :pswitch_9c
    sget-object v1, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ModemActivityInfo;

    .line 1747
    .local v1, "_arg0":Landroid/telephony/ModemActivityInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1748
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V

    .line 1749
    move v12, v11

    goto/16 :goto_7a1

    .line 1738
    .end local v1    # "_arg0":Landroid/telephony/ModemActivityInfo;
    :pswitch_ad
    sget-object v1, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 1739
    .local v1, "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1740
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1741
    move v12, v11

    goto/16 :goto_7a1

    .line 1728
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :pswitch_be
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1730
    .local v1, "_arg0":[I
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 1731
    .local v2, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1732
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V

    .line 1733
    move v12, v11

    goto/16 :goto_7a1

    .line 1718
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_d3
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1719
    .restart local v1    # "_arg0":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1720
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v2

    .line 1721
    .local v2, "_result":[Landroid/os/health/HealthStatsParceler;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    invoke-virtual {v14, v2, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1723
    move v12, v11

    goto/16 :goto_7a1

    .line 1708
    .end local v1    # "_arg0":[I
    .end local v2    # "_result":[Landroid/os/health/HealthStatsParceler;
    :pswitch_e7
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1709
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1710
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v2

    .line 1711
    .local v2, "_result":Landroid/os/health/HealthStatsParceler;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    invoke-virtual {v14, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1713
    move v12, v11

    goto/16 :goto_7a1

    .line 1700
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/os/health/HealthStatsParceler;
    :pswitch_fb
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object v1

    .line 1701
    .local v1, "_result":Landroid/os/BluetoothBatteryStats;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1703
    move v12, v11

    goto/16 :goto_7a1

    .line 1693
    .end local v1    # "_result":Landroid/os/BluetoothBatteryStats;
    :pswitch_108
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object v1

    .line 1694
    .local v1, "_result":Landroid/os/WakeLockStats;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1696
    move v12, v11

    goto/16 :goto_7a1

    .line 1686
    .end local v1    # "_result":Landroid/os/WakeLockStats;
    :pswitch_115
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    .line 1687
    .local v1, "_result":Landroid/os/connectivity/GpsBatteryStats;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1688
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1689
    move v12, v11

    goto/16 :goto_7a1

    .line 1679
    .end local v1    # "_result":Landroid/os/connectivity/GpsBatteryStats;
    :pswitch_122
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    .line 1680
    .local v1, "_result":Landroid/os/connectivity/WifiBatteryStats;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1681
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1682
    move v12, v11

    goto/16 :goto_7a1

    .line 1672
    .end local v1    # "_result":Landroid/os/connectivity/WifiBatteryStats;
    :pswitch_12f
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    .line 1673
    .local v1, "_result":Landroid/os/connectivity/CellularBatteryStats;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    invoke-virtual {v14, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1675
    move v12, v11

    goto/16 :goto_7a1

    .line 1662
    .end local v1    # "_result":Landroid/os/connectivity/CellularBatteryStats;
    :pswitch_13c
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1664
    .local v1, "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1665
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1666
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults(Landroid/os/WorkSource;I)V

    .line 1667
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    move v12, v11

    goto/16 :goto_7a1

    .line 1655
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":I
    :pswitch_154
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset()V

    .line 1656
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    move v12, v11

    goto/16 :goto_7a1

    .line 1645
    :pswitch_15d
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1647
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1648
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1649
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped(Landroid/os/WorkSource;Z)V

    .line 1650
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    move v12, v11

    goto/16 :goto_7a1

    .line 1634
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":Z
    :pswitch_175
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1636
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1637
    .restart local v2    # "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1638
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted(Landroid/os/WorkSource;Z)V

    .line 1639
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    move v12, v11

    goto/16 :goto_7a1

    .line 1626
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":Z
    :pswitch_18d
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v1

    .line 1627
    .local v1, "_result":J
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1628
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1629
    move v12, v11

    goto/16 :goto_7a1

    .line 1619
    .end local v1    # "_result":J
    :pswitch_19a
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v1

    .line 1620
    .restart local v1    # "_result":J
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1622
    move v12, v11

    goto/16 :goto_7a1

    .line 1595
    .end local v1    # "_result":J
    :pswitch_1a7
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1597
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1599
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1601
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1603
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1605
    .local v5, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1607
    .local v6, "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1609
    .local v7, "_arg6":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1611
    .local v8, "_arg7":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 1612
    .local v9, "_arg8":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1613
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIIIIIJ)V

    .line 1614
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    move v12, v11

    goto/16 :goto_7a1

    .line 1582
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":J
    :pswitch_1d7
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1584
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1586
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1587
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1588
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode(ILjava/lang/String;I)V

    .line 1589
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    move v12, v11

    goto/16 :goto_7a1

    .line 1575
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_1ef
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    .line 1576
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    move v12, v11

    goto/16 :goto_7a1

    .line 1565
    :pswitch_1f8
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1567
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1568
    .local v2, "_arg1":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1569
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    .line 1570
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    move v12, v11

    goto/16 :goto_7a1

    .line 1552
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    :pswitch_20c
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1554
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1556
    .local v2, "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1557
    .local v4, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1558
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState(IJI)V

    .line 1559
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    move v12, v11

    goto/16 :goto_7a1

    .line 1543
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_224
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1544
    .local v1, "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1545
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 1546
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    move v12, v11

    goto/16 :goto_7a1

    .line 1532
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :pswitch_238
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1534
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1535
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1536
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 1537
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    move v12, v11

    goto/16 :goto_7a1

    .line 1523
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":I
    :pswitch_250
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1524
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1525
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 1526
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    move v12, v11

    goto/16 :goto_7a1

    .line 1514
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :pswitch_264
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1515
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1516
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    .line 1517
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    move v12, v11

    goto/16 :goto_7a1

    .line 1505
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :pswitch_278
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1506
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1507
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 1508
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    move v12, v11

    goto/16 :goto_7a1

    .line 1496
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :pswitch_28c
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1497
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 1499
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    move v12, v11

    goto/16 :goto_7a1

    .line 1487
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :pswitch_2a0
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1488
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1489
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 1490
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    move v12, v11

    goto/16 :goto_7a1

    .line 1478
    .end local v1    # "_arg0":I
    :pswitch_2b0
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1479
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1480
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 1481
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    move v12, v11

    goto/16 :goto_7a1

    .line 1469
    .end local v1    # "_arg0":I
    :pswitch_2c0
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1470
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1471
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    .line 1472
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    move v12, v11

    goto/16 :goto_7a1

    .line 1460
    .end local v1    # "_arg0":I
    :pswitch_2d0
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1461
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1462
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    .line 1463
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    move v12, v11

    goto/16 :goto_7a1

    .line 1451
    .end local v1    # "_arg0":I
    :pswitch_2e0
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1452
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1453
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 1454
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    move v12, v11

    goto/16 :goto_7a1

    .line 1442
    .end local v1    # "_arg0":I
    :pswitch_2f0
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1443
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1444
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 1445
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    move v12, v11

    goto/16 :goto_7a1

    .line 1433
    .end local v1    # "_arg0":I
    :pswitch_300
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1434
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1435
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    .line 1436
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    move v12, v11

    goto/16 :goto_7a1

    .line 1422
    .end local v1    # "_arg0":I
    :pswitch_310
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1424
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1425
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1426
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    .line 1427
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    move v12, v11

    goto/16 :goto_7a1

    .line 1411
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_324
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1413
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1414
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1415
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    .line 1416
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    move v12, v11

    goto/16 :goto_7a1

    .line 1402
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_338
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1403
    .local v1, "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 1405
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    move v12, v11

    goto/16 :goto_7a1

    .line 1391
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :pswitch_34c
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1393
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 1394
    .local v2, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1395
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1396
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    move v12, v11

    goto/16 :goto_7a1

    .line 1382
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :pswitch_368
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1383
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1384
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 1385
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    move v12, v11

    goto/16 :goto_7a1

    .line 1375
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :pswitch_37c
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    .line 1376
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    move v12, v11

    goto/16 :goto_7a1

    .line 1369
    :pswitch_385
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    .line 1370
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    move v12, v11

    goto/16 :goto_7a1

    .line 1361
    :pswitch_38e
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1362
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1363
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    .line 1364
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    move v12, v11

    goto/16 :goto_7a1

    .line 1344
    .end local v1    # "_arg0":I
    :pswitch_39e
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1346
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1348
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1350
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1352
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1353
    .restart local v5    # "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZIII)V

    .line 1355
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    move v12, v11

    goto/16 :goto_7a1

    .line 1335
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_3be
    sget-object v1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrength;

    .line 1336
    .local v1, "_arg0":Landroid/telephony/SignalStrength;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1337
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 1338
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    move v12, v11

    goto/16 :goto_7a1

    .line 1328
    .end local v1    # "_arg0":Landroid/telephony/SignalStrength;
    :pswitch_3d2
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 1329
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    move v12, v11

    goto/16 :goto_7a1

    .line 1322
    :pswitch_3db
    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 1323
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    move v12, v11

    goto/16 :goto_7a1

    .line 1310
    :pswitch_3e4
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1312
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1314
    .local v2, "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1315
    .local v4, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJI)V

    .line 1317
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    move v12, v11

    goto/16 :goto_7a1

    .line 1299
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :pswitch_3fc
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1301
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1302
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged(ILjava/lang/String;)V

    .line 1304
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    move v12, v11

    goto/16 :goto_7a1

    .line 1290
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_410
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1291
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive(Z)V

    .line 1293
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    move v12, v11

    goto/16 :goto_7a1

    .line 1279
    .end local v1    # "_arg0":Z
    :pswitch_420
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1281
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1282
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1283
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp(Ljava/lang/String;I)V

    .line 1284
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    move v12, v11

    goto/16 :goto_7a1

    .line 1268
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_434
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1270
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1271
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1272
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 1273
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    move v12, v11

    goto/16 :goto_7a1

    .line 1257
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_448
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1259
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1260
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1261
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(II)V

    .line 1262
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    move v12, v11

    goto/16 :goto_7a1

    .line 1244
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_45c
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1246
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1248
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1249
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState(III)V

    .line 1251
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    move v12, v11

    goto/16 :goto_7a1

    .line 1235
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_474
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1236
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality(I)V

    .line 1238
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    move v12, v11

    goto/16 :goto_7a1

    .line 1224
    .end local v1    # "_arg0":I
    :pswitch_484
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1226
    .local v1, "_arg0":Landroid/os/WorkSource;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 1227
    .local v2, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1229
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    move v12, v11

    goto/16 :goto_7a1

    .line 1215
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :pswitch_4a0
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1216
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    .line 1218
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    move v12, v11

    goto/16 :goto_7a1

    .line 1204
    .end local v1    # "_arg0":I
    :pswitch_4b0
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1206
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1207
    .local v2, "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    .line 1209
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    move v12, v11

    goto/16 :goto_7a1

    .line 1191
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    :pswitch_4c4
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 1196
    .local v3, "_arg2":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 1198
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    move v12, v11

    goto/16 :goto_7a1

    .line 1178
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/WorkSource;
    :pswitch_4e0
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1182
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1183
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1185
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    move v12, v11

    goto/16 :goto_7a1

    .line 1165
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_4f8
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1167
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1169
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 1170
    .local v3, "_arg2":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 1172
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    move v12, v11

    goto/16 :goto_7a1

    .line 1152
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/WorkSource;
    :pswitch_514
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1156
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1157
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1159
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    move v12, v11

    goto/16 :goto_7a1

    .line 1135
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_52c
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1137
    .local v1, "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1139
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1141
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1143
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1144
    .restart local v5    # "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1146
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    move-object/from16 v0, p0

    move v12, v11

    goto/16 :goto_7a1

    .line 1106
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :pswitch_552
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/WorkSource;

    .line 1108
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1110
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1112
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1114
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1116
    .restart local v5    # "_arg4":I
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/WorkSource;

    .line 1118
    .local v6, "_arg5":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1120
    .restart local v7    # "_arg6":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1122
    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1124
    .local v9, "_arg8":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1126
    .local v10, "_arg9":I
    move v0, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 1127
    .local v11, "_arg10":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    move v12, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1129
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    goto/16 :goto_7a1

    .line 1087
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/WorkSource;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Ljava/lang/String;
    .end local v9    # "_arg8":Ljava/lang/String;
    .end local v10    # "_arg9":I
    .end local v11    # "_arg10":Z
    :pswitch_597
    move v12, v11

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/WorkSource;

    .line 1089
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1091
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1093
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1095
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1097
    .restart local v5    # "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1098
    .local v6, "_arg5":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1100
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    goto/16 :goto_7a1

    .line 1070
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    :pswitch_5c2
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1072
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1074
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1076
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1078
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1079
    .restart local v5    # "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1081
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    goto/16 :goto_7a1

    .line 1051
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :pswitch_5e4
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1053
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1055
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1057
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1059
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1061
    .restart local v5    # "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1062
    .restart local v6    # "_arg5":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1064
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    goto/16 :goto_7a1

    .line 1038
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    :pswitch_60a
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1042
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1043
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish(Ljava/lang/String;II)V

    .line 1045
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    goto/16 :goto_7a1

    .line 1027
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_622
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1029
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1030
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart(Ljava/lang/String;I)V

    .line 1032
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    goto/16 :goto_7a1

    .line 1016
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_636
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1019
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish(Ljava/lang/String;I)V

    .line 1021
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    goto/16 :goto_7a1

    .line 1005
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_64a
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1007
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1008
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart(Ljava/lang/String;I)V

    .line 1010
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    goto/16 :goto_7a1

    .line 992
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_65e
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 994
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 996
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 997
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent(ILjava/lang/String;I)V

    .line 999
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    goto/16 :goto_7a1

    .line 984
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_676
    move v12, v11

    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getScreenOffDischargeMah()J

    move-result-wide v1

    .line 985
    .local v1, "_result":J
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 987
    goto/16 :goto_7a1

    .line 977
    .end local v1    # "_result":J
    :pswitch_683
    move v12, v11

    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryScreenOffRealtimeMs()J

    move-result-wide v1

    .line 978
    .restart local v1    # "_result":J
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 980
    goto/16 :goto_7a1

    .line 970
    .end local v1    # "_result":J
    :pswitch_690
    move v12, v11

    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeChargeTimeRemaining()J

    move-result-wide v1

    .line 971
    .restart local v1    # "_result":J
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 973
    goto/16 :goto_7a1

    .line 963
    .end local v1    # "_result":J
    :pswitch_69d
    move v12, v11

    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryTimeRemaining()J

    move-result-wide v1

    .line 964
    .restart local v1    # "_result":J
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 966
    goto/16 :goto_7a1

    .line 956
    .end local v1    # "_result":J
    :pswitch_6aa
    move v12, v11

    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->isCharging()Z

    move-result v1

    .line 957
    .local v1, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 959
    goto/16 :goto_7a1

    .line 947
    .end local v1    # "_result":Z
    :pswitch_6b7
    move v12, v11

    sget-object v1, Landroid/os/BatteryUsageStatsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 948
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 949
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 950
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {v14, v2, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 952
    goto/16 :goto_7a1

    .line 934
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    :pswitch_6cd
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 936
    .local v1, "_arg0":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 938
    .local v3, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 939
    .local v4, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeupSensorEvent(JII)V

    .line 941
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    goto/16 :goto_7a1

    .line 927
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_6e5
    move v12, v11

    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight()V

    .line 928
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_7a1

    .line 921
    :pswitch_6ee
    move v12, v11

    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera()V

    .line 922
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    goto/16 :goto_7a1

    .line 913
    :pswitch_6f7
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 914
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera(I)V

    .line 916
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    goto/16 :goto_7a1

    .line 904
    .end local v1    # "_arg0":I
    :pswitch_707
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 905
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera(I)V

    .line 907
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    goto/16 :goto_7a1

    .line 895
    .end local v1    # "_arg0":I
    :pswitch_717
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 896
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff(I)V

    .line 898
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    goto/16 :goto_7a1

    .line 886
    .end local v1    # "_arg0":I
    :pswitch_727
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 887
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn(I)V

    .line 889
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    goto/16 :goto_7a1

    .line 880
    .end local v1    # "_arg0":I
    :pswitch_737
    move v12, v11

    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio()V

    .line 881
    goto/16 :goto_7a1

    .line 874
    :pswitch_73d
    move v12, v11

    invoke-virtual {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo()V

    .line 875
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    goto :goto_7a1

    .line 867
    :pswitch_745
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 868
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio(I)V

    .line 870
    goto :goto_7a1

    .line 859
    .end local v1    # "_arg0":I
    :pswitch_751
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 860
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio(I)V

    .line 862
    goto :goto_7a1

    .line 850
    .end local v1    # "_arg0":I
    :pswitch_75d
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 851
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo(I)V

    .line 853
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto :goto_7a1

    .line 841
    .end local v1    # "_arg0":I
    :pswitch_76c
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 842
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo(I)V

    .line 844
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto :goto_7a1

    .line 830
    .end local v1    # "_arg0":I
    :pswitch_77b
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 832
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 833
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 835
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    goto :goto_7a1

    .line 819
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_78e
    move v12, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 821
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 822
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 824
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    nop

    .line 1820
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :goto_7a1
    return v12

    :pswitch_data_7a2
    .packed-switch 0x1
        :pswitch_78e
        :pswitch_77b
        :pswitch_76c
        :pswitch_75d
        :pswitch_751
        :pswitch_745
        :pswitch_73d
        :pswitch_737
        :pswitch_727
        :pswitch_717
        :pswitch_707
        :pswitch_6f7
        :pswitch_6ee
        :pswitch_6e5
        :pswitch_6cd
        :pswitch_6b7
        :pswitch_6aa
        :pswitch_69d
        :pswitch_690
        :pswitch_683
        :pswitch_676
        :pswitch_65e
        :pswitch_64a
        :pswitch_636
        :pswitch_622
        :pswitch_60a
        :pswitch_5e4
        :pswitch_5c2
        :pswitch_597
        :pswitch_552
        :pswitch_52c
        :pswitch_514
        :pswitch_4f8
        :pswitch_4e0
        :pswitch_4c4
        :pswitch_4b0
        :pswitch_4a0
        :pswitch_484
        :pswitch_474
        :pswitch_45c
        :pswitch_448
        :pswitch_434
        :pswitch_420
        :pswitch_410
        :pswitch_3fc
        :pswitch_3e4
        :pswitch_3db
        :pswitch_3d2
        :pswitch_3be
        :pswitch_39e
        :pswitch_38e
        :pswitch_385
        :pswitch_37c
        :pswitch_368
        :pswitch_34c
        :pswitch_338
        :pswitch_324
        :pswitch_310
        :pswitch_300
        :pswitch_2f0
        :pswitch_2e0
        :pswitch_2d0
        :pswitch_2c0
        :pswitch_2b0
        :pswitch_2a0
        :pswitch_28c
        :pswitch_278
        :pswitch_264
        :pswitch_250
        :pswitch_238
        :pswitch_224
        :pswitch_20c
        :pswitch_1f8
        :pswitch_1ef
        :pswitch_1d7
        :pswitch_1a7
        :pswitch_19a
        :pswitch_18d
        :pswitch_175
        :pswitch_15d
        :pswitch_154
        :pswitch_13c
        :pswitch_12f
        :pswitch_122
        :pswitch_115
        :pswitch_108
        :pswitch_fb
        :pswitch_e7
        :pswitch_d3
        :pswitch_be
        :pswitch_ad
        :pswitch_9c
        :pswitch_8b
        :pswitch_77
        :pswitch_63
        :pswitch_4f
        :pswitch_3f
        :pswitch_2f
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist resetBattery_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3897
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3898
    return-void
.end method

.method protected blacklist setBatteryLevel_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3887
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3888
    return-void
.end method

.method protected blacklist setBatteryState_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3797
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3798
    return-void
.end method

.method protected blacklist setChargerAcOnline_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3882
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3883
    return-void
.end method

.method protected blacklist setChargingStateUpdateDelayMillis_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3877
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3878
    return-void
.end method

.method protected blacklist suspendBatteryInput_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3902
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3903
    return-void
.end method

.method protected blacklist unplugBattery_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3892
    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 3893
    return-void
.end method

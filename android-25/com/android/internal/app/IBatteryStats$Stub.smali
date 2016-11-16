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
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final TRANSACTION_computeBatteryTimeRemaining:I = 0x12

.field static final TRANSACTION_computeChargeTimeRemaining:I = 0x13

.field static final TRANSACTION_getAwakeTimeBattery:I = 0x4b

.field static final TRANSACTION_getAwakeTimePlugged:I = 0x4c

.field static final TRANSACTION_getStatistics:I = 0xf

.field static final TRANSACTION_getStatisticsStream:I = 0x10

.field static final TRANSACTION_isCharging:I = 0x11

.field static final TRANSACTION_noteBleScanStarted:I = 0x4d

.field static final TRANSACTION_noteBleScanStopped:I = 0x4e

.field static final TRANSACTION_noteBluetoothControllerActivity:I = 0x52

.field static final TRANSACTION_noteChangeWakelockFromSource:I = 0x1c

.field static final TRANSACTION_noteConnectivityChanged:I = 0x29

.field static final TRANSACTION_noteDeviceIdleMode:I = 0x49

.field static final TRANSACTION_noteEvent:I = 0x14

.field static final TRANSACTION_noteFlashlightOff:I = 0xa

.field static final TRANSACTION_noteFlashlightOn:I = 0x9

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x38

.field static final TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x3e

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x39

.field static final TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x3f

.field static final TRANSACTION_noteInteractive:I = 0x28

.field static final TRANSACTION_noteJobFinish:I = 0x18

.field static final TRANSACTION_noteJobStart:I = 0x17

.field static final TRANSACTION_noteLongPartialWakelockFinish:I = 0x1f

.field static final TRANSACTION_noteLongPartialWakelockStart:I = 0x1e

.field static final TRANSACTION_noteMobileRadioPowerState:I = 0x2a

.field static final TRANSACTION_noteModemControllerActivity:I = 0x53

.field static final TRANSACTION_noteNetworkInterfaceType:I = 0x47

.field static final TRANSACTION_noteNetworkStatsEnabled:I = 0x48

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x2e

.field static final TRANSACTION_notePhoneOff:I = 0x2c

.field static final TRANSACTION_notePhoneOn:I = 0x2b

.field static final TRANSACTION_notePhoneSignalStrength:I = 0x2d

.field static final TRANSACTION_notePhoneState:I = 0x2f

.field static final TRANSACTION_noteResetAudio:I = 0x8

.field static final TRANSACTION_noteResetBleScan:I = 0x4f

.field static final TRANSACTION_noteResetCamera:I = 0xd

.field static final TRANSACTION_noteResetFlashlight:I = 0xe

.field static final TRANSACTION_noteResetVideo:I = 0x7

.field static final TRANSACTION_noteScreenBrightness:I = 0x25

.field static final TRANSACTION_noteScreenState:I = 0x24

.field static final TRANSACTION_noteStartAudio:I = 0x5

.field static final TRANSACTION_noteStartCamera:I = 0xb

.field static final TRANSACTION_noteStartGps:I = 0x22

.field static final TRANSACTION_noteStartSensor:I = 0x1

.field static final TRANSACTION_noteStartVideo:I = 0x3

.field static final TRANSACTION_noteStartWakelock:I = 0x19

.field static final TRANSACTION_noteStartWakelockFromSource:I = 0x1b

.field static final TRANSACTION_noteStopAudio:I = 0x6

.field static final TRANSACTION_noteStopCamera:I = 0xc

.field static final TRANSACTION_noteStopGps:I = 0x23

.field static final TRANSACTION_noteStopSensor:I = 0x2

.field static final TRANSACTION_noteStopVideo:I = 0x4

.field static final TRANSACTION_noteStopWakelock:I = 0x1a

.field static final TRANSACTION_noteStopWakelockFromSource:I = 0x1d

.field static final TRANSACTION_noteSyncFinish:I = 0x16

.field static final TRANSACTION_noteSyncStart:I = 0x15

.field static final TRANSACTION_noteUserActivity:I = 0x26

.field static final TRANSACTION_noteVibratorOff:I = 0x21

.field static final TRANSACTION_noteVibratorOn:I = 0x20

.field static final TRANSACTION_noteWakeUp:I = 0x27

.field static final TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x42

.field static final TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x43

.field static final TRANSACTION_noteWifiControllerActivity:I = 0x54

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x3d

.field static final TRANSACTION_noteWifiMulticastDisabledFromSource:I = 0x45

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x3c

.field static final TRANSACTION_noteWifiMulticastEnabledFromSource:I = 0x44

.field static final TRANSACTION_noteWifiOff:I = 0x31

.field static final TRANSACTION_noteWifiOn:I = 0x30

.field static final TRANSACTION_noteWifiRadioPowerState:I = 0x46

.field static final TRANSACTION_noteWifiRssiChanged:I = 0x37

.field static final TRANSACTION_noteWifiRunning:I = 0x32

.field static final TRANSACTION_noteWifiRunningChanged:I = 0x33

.field static final TRANSACTION_noteWifiScanStarted:I = 0x3a

.field static final TRANSACTION_noteWifiScanStartedFromSource:I = 0x40

.field static final TRANSACTION_noteWifiScanStopped:I = 0x3b

.field static final TRANSACTION_noteWifiScanStoppedFromSource:I = 0x41

.field static final TRANSACTION_noteWifiState:I = 0x35

.field static final TRANSACTION_noteWifiStopped:I = 0x34

.field static final TRANSACTION_noteWifiSupplicantStateChanged:I = 0x36

.field static final TRANSACTION_setBatteryState:I = 0x4a

.field static final TRANSACTION_takeUidSnapshot:I = 0x50

.field static final TRANSACTION_takeUidSnapshots:I = 0x51


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.app.IBatteryStats"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    if-nez p0, :cond_0

    #@3
    .line 24
    return-object v1

    #@4
    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.app.IBatteryStats"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 50
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1020
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 42
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 43
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 47
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v5

    #@1e
    .line 51
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v6

    #@22
    .line 52
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    #@27
    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    .line 54
    const/4 v4, 0x1

    #@2b
    return v4

    #@2c
    .line 58
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@2f
    move-object/from16 v0, p2

    #@31
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v5

    #@38
    .line 62
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v6

    #@3c
    .line 63
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@3e
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    #@41
    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44
    .line 65
    const/4 v4, 0x1

    #@45
    return v4

    #@46
    .line 69
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@49
    move-object/from16 v0, p2

    #@4b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v5

    #@52
    .line 72
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@54
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo(I)V

    #@57
    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a
    .line 74
    const/4 v4, 0x1

    #@5b
    return v4

    #@5c
    .line 78
    .end local v5    # "_arg0":I
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@5f
    move-object/from16 v0, p2

    #@61
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v5

    #@68
    .line 81
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@6a
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo(I)V

    #@6d
    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70
    .line 83
    const/4 v4, 0x1

    #@71
    return v4

    #@72
    .line 87
    .end local v5    # "_arg0":I
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@75
    move-object/from16 v0, p2

    #@77
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v5

    #@7e
    .line 90
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@80
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio(I)V

    #@83
    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86
    .line 92
    const/4 v4, 0x1

    #@87
    return v4

    #@88
    .line 96
    .end local v5    # "_arg0":I
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@8b
    move-object/from16 v0, p2

    #@8d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v5

    #@94
    .line 99
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@96
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio(I)V

    #@99
    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c
    .line 101
    const/4 v4, 0x1

    #@9d
    return v4

    #@9e
    .line 105
    .end local v5    # "_arg0":I
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@a1
    move-object/from16 v0, p2

    #@a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo()V

    #@a9
    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    .line 108
    const/4 v4, 0x1

    #@ad
    return v4

    #@ae
    .line 112
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@b1
    move-object/from16 v0, p2

    #@b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio()V

    #@b9
    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bc
    .line 115
    const/4 v4, 0x1

    #@bd
    return v4

    #@be
    .line 119
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@c1
    move-object/from16 v0, p2

    #@c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c6
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c9
    move-result v5

    #@ca
    .line 122
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@cc
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn(I)V

    #@cf
    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d2
    .line 124
    const/4 v4, 0x1

    #@d3
    return v4

    #@d4
    .line 128
    .end local v5    # "_arg0":I
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@d7
    move-object/from16 v0, p2

    #@d9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dc
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@df
    move-result v5

    #@e0
    .line 131
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@e2
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff(I)V

    #@e5
    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e8
    .line 133
    const/4 v4, 0x1

    #@e9
    return v4

    #@ea
    .line 137
    .end local v5    # "_arg0":I
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@ed
    move-object/from16 v0, p2

    #@ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f2
    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f5
    move-result v5

    #@f6
    .line 140
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@f8
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera(I)V

    #@fb
    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fe
    .line 142
    const/4 v4, 0x1

    #@ff
    return v4

    #@100
    .line 146
    .end local v5    # "_arg0":I
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@103
    move-object/from16 v0, p2

    #@105
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@108
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10b
    move-result v5

    #@10c
    .line 149
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@10e
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera(I)V

    #@111
    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@114
    .line 151
    const/4 v4, 0x1

    #@115
    return v4

    #@116
    .line 155
    .end local v5    # "_arg0":I
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@119
    move-object/from16 v0, p2

    #@11b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11e
    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera()V

    #@121
    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@124
    .line 158
    const/4 v4, 0x1

    #@125
    return v4

    #@126
    .line 162
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@129
    move-object/from16 v0, p2

    #@12b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12e
    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight()V

    #@131
    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@134
    .line 165
    const/4 v4, 0x1

    #@135
    return v4

    #@136
    .line 169
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@139
    move-object/from16 v0, p2

    #@13b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13e
    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    #@141
    move-result-object v48

    #@142
    .line 171
    .local v48, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@145
    .line 172
    move-object/from16 v0, p3

    #@147
    move-object/from16 v1, v48

    #@149
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14c
    .line 173
    const/4 v4, 0x1

    #@14d
    return v4

    #@14e
    .line 177
    .end local v48    # "_result":[B
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@151
    move-object/from16 v0, p2

    #@153
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@156
    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    #@159
    move-result-object v43

    #@15a
    .line 179
    .local v43, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15d
    .line 180
    if-eqz v43, :cond_0

    #@15f
    .line 181
    const/4 v4, 0x1

    #@160
    move-object/from16 v0, p3

    #@162
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@165
    .line 182
    const/4 v4, 0x1

    #@166
    move-object/from16 v0, v43

    #@168
    move-object/from16 v1, p3

    #@16a
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@16d
    .line 187
    :goto_0
    const/4 v4, 0x1

    #@16e
    return v4

    #@16f
    .line 185
    :cond_0
    const/4 v4, 0x0

    #@170
    move-object/from16 v0, p3

    #@172
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@175
    goto :goto_0

    #@176
    .line 191
    .end local v43    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@179
    move-object/from16 v0, p2

    #@17b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17e
    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->isCharging()Z

    #@181
    move-result v47

    #@182
    .line 193
    .local v47, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@185
    .line 194
    if-eqz v47, :cond_1

    #@187
    const/4 v4, 0x1

    #@188
    :goto_1
    move-object/from16 v0, p3

    #@18a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18d
    .line 195
    const/4 v4, 0x1

    #@18e
    return v4

    #@18f
    .line 194
    :cond_1
    const/4 v4, 0x0

    #@190
    goto :goto_1

    #@191
    .line 199
    .end local v47    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@194
    move-object/from16 v0, p2

    #@196
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@199
    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryTimeRemaining()J

    #@19c
    move-result-wide v44

    #@19d
    .line 201
    .local v44, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a0
    .line 202
    move-object/from16 v0, p3

    #@1a2
    move-wide/from16 v1, v44

    #@1a4
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@1a7
    .line 203
    const/4 v4, 0x1

    #@1a8
    return v4

    #@1a9
    .line 207
    .end local v44    # "_result":J
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@1ac
    move-object/from16 v0, p2

    #@1ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b1
    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeChargeTimeRemaining()J

    #@1b4
    move-result-wide v44

    #@1b5
    .line 209
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b8
    .line 210
    move-object/from16 v0, p3

    #@1ba
    move-wide/from16 v1, v44

    #@1bc
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@1bf
    .line 211
    const/4 v4, 0x1

    #@1c0
    return v4

    #@1c1
    .line 215
    .end local v44    # "_result":J
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@1c4
    move-object/from16 v0, p2

    #@1c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c9
    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cc
    move-result v5

    #@1cd
    .line 219
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d0
    move-result-object v41

    #@1d1
    .line 221
    .local v41, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d4
    move-result v26

    #@1d5
    .line 222
    .local v26, "_arg2":I
    move-object/from16 v0, p0

    #@1d7
    move-object/from16 v1, v41

    #@1d9
    move/from16 v2, v26

    #@1db
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent(ILjava/lang/String;I)V

    #@1de
    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e1
    .line 224
    const/4 v4, 0x1

    #@1e2
    return v4

    #@1e3
    .line 228
    .end local v5    # "_arg0":I
    .end local v26    # "_arg2":I
    .end local v41    # "_arg1":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@1e6
    move-object/from16 v0, p2

    #@1e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1eb
    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ee
    move-result-object v35

    #@1ef
    .line 232
    .local v35, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f2
    move-result v6

    #@1f3
    .line 233
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1f5
    move-object/from16 v1, v35

    #@1f7
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart(Ljava/lang/String;I)V

    #@1fa
    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fd
    .line 235
    const/4 v4, 0x1

    #@1fe
    return v4

    #@1ff
    .line 239
    .end local v6    # "_arg1":I
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@202
    move-object/from16 v0, p2

    #@204
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@207
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20a
    move-result-object v35

    #@20b
    .line 243
    .restart local v35    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20e
    move-result v6

    #@20f
    .line 244
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@211
    move-object/from16 v1, v35

    #@213
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish(Ljava/lang/String;I)V

    #@216
    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@219
    .line 246
    const/4 v4, 0x1

    #@21a
    return v4

    #@21b
    .line 250
    .end local v6    # "_arg1":I
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@21e
    move-object/from16 v0, p2

    #@220
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@223
    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@226
    move-result-object v35

    #@227
    .line 254
    .restart local v35    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22a
    move-result v6

    #@22b
    .line 255
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@22d
    move-object/from16 v1, v35

    #@22f
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart(Ljava/lang/String;I)V

    #@232
    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@235
    .line 257
    const/4 v4, 0x1

    #@236
    return v4

    #@237
    .line 261
    .end local v6    # "_arg1":I
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@23a
    move-object/from16 v0, p2

    #@23c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23f
    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@242
    move-result-object v35

    #@243
    .line 265
    .restart local v35    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@246
    move-result v6

    #@247
    .line 266
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@249
    move-object/from16 v1, v35

    #@24b
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish(Ljava/lang/String;I)V

    #@24e
    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@251
    .line 268
    const/4 v4, 0x1

    #@252
    return v4

    #@253
    .line 272
    .end local v6    # "_arg1":I
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@256
    move-object/from16 v0, p2

    #@258
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25b
    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25e
    move-result v5

    #@25f
    .line 276
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@262
    move-result v6

    #@263
    .line 278
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@266
    move-result-object v7

    #@267
    .line 280
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26a
    move-result-object v8

    #@26b
    .line 282
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26e
    move-result v9

    #@26f
    .line 284
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@272
    move-result v4

    #@273
    if-eqz v4, :cond_2

    #@275
    const/4 v10, 0x1

    #@276
    .local v10, "_arg5":Z
    :goto_2
    move-object/from16 v4, p0

    #@278
    .line 285
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    #@27b
    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27e
    .line 287
    const/4 v4, 0x1

    #@27f
    return v4

    #@280
    .line 284
    .end local v10    # "_arg5":Z
    :cond_2
    const/4 v10, 0x0

    #@281
    goto :goto_2

    #@282
    .line 291
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@285
    move-object/from16 v0, p2

    #@287
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28a
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28d
    move-result v5

    #@28e
    .line 295
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@291
    move-result v6

    #@292
    .line 297
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@295
    move-result-object v7

    #@296
    .line 299
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@299
    move-result-object v8

    #@29a
    .line 301
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29d
    move-result v9

    #@29e
    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    #@2a0
    .line 302
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    #@2a3
    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a6
    .line 304
    const/4 v4, 0x1

    #@2a7
    return v4

    #@2a8
    .line 308
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@2ab
    move-object/from16 v0, p2

    #@2ad
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b0
    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b3
    move-result v4

    #@2b4
    if-eqz v4, :cond_3

    #@2b6
    .line 311
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b8
    move-object/from16 v0, p2

    #@2ba
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2bd
    move-result-object v12

    #@2be
    check-cast v12, Landroid/os/WorkSource;

    #@2c0
    .line 317
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c3
    move-result v6

    #@2c4
    .line 319
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c7
    move-result-object v7

    #@2c8
    .line 321
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2cb
    move-result-object v8

    #@2cc
    .line 323
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cf
    move-result v9

    #@2d0
    .line 325
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d3
    move-result v4

    #@2d4
    if-eqz v4, :cond_4

    #@2d6
    const/4 v10, 0x1

    #@2d7
    .restart local v10    # "_arg5":Z
    :goto_4
    move-object/from16 v11, p0

    #@2d9
    move v13, v6

    #@2da
    move-object v14, v7

    #@2db
    move-object v15, v8

    #@2dc
    move/from16 v16, v9

    #@2de
    move/from16 v17, v10

    #@2e0
    .line 326
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    #@2e3
    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e6
    .line 328
    const/4 v4, 0x1

    #@2e7
    return v4

    #@2e8
    .line 314
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Z
    :cond_3
    const/4 v12, 0x0

    #@2e9
    .local v12, "_arg0":Landroid/os/WorkSource;
    goto :goto_3

    #@2ea
    .line 325
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":I
    :cond_4
    const/4 v10, 0x0

    #@2eb
    goto :goto_4

    #@2ec
    .line 332
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@2ef
    move-object/from16 v0, p2

    #@2f1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f4
    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f7
    move-result v4

    #@2f8
    if-eqz v4, :cond_5

    #@2fa
    .line 335
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2fc
    move-object/from16 v0, p2

    #@2fe
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@301
    move-result-object v12

    #@302
    check-cast v12, Landroid/os/WorkSource;

    #@304
    .line 341
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@307
    move-result v6

    #@308
    .line 343
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30b
    move-result-object v7

    #@30c
    .line 345
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30f
    move-result-object v8

    #@310
    .line 347
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@313
    move-result v9

    #@314
    .line 349
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@317
    move-result v4

    #@318
    if-eqz v4, :cond_6

    #@31a
    .line 350
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31c
    move-object/from16 v0, p2

    #@31e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@321
    move-result-object v17

    #@322
    check-cast v17, Landroid/os/WorkSource;

    #@324
    .line 356
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@327
    move-result v18

    #@328
    .line 358
    .local v18, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32b
    move-result-object v19

    #@32c
    .line 360
    .local v19, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32f
    move-result-object v20

    #@330
    .line 362
    .local v20, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@333
    move-result v21

    #@334
    .line 364
    .local v21, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@337
    move-result v4

    #@338
    if-eqz v4, :cond_7

    #@33a
    const/16 v22, 0x1

    #@33c
    .local v22, "_arg10":Z
    :goto_7
    move-object/from16 v11, p0

    #@33e
    move v13, v6

    #@33f
    move-object v14, v7

    #@340
    move-object v15, v8

    #@341
    move/from16 v16, v9

    #@343
    .line 365
    invoke-virtual/range {v11 .. v22}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    #@346
    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@349
    .line 367
    const/4 v4, 0x1

    #@34a
    return v4

    #@34b
    .line 338
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v18    # "_arg6":I
    .end local v19    # "_arg7":Ljava/lang/String;
    .end local v20    # "_arg8":Ljava/lang/String;
    .end local v21    # "_arg9":I
    .end local v22    # "_arg10":Z
    :cond_5
    const/4 v12, 0x0

    #@34c
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_5

    #@34d
    .line 353
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_arg3":Ljava/lang/String;
    .restart local v9    # "_arg4":I
    :cond_6
    const/16 v17, 0x0

    #@34f
    .local v17, "_arg5":Landroid/os/WorkSource;
    goto :goto_6

    #@350
    .line 364
    .end local v17    # "_arg5":Landroid/os/WorkSource;
    .restart local v18    # "_arg6":I
    .restart local v19    # "_arg7":Ljava/lang/String;
    .restart local v20    # "_arg8":Ljava/lang/String;
    .restart local v21    # "_arg9":I
    :cond_7
    const/16 v22, 0x0

    #@352
    goto :goto_7

    #@353
    .line 371
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v18    # "_arg6":I
    .end local v19    # "_arg7":Ljava/lang/String;
    .end local v20    # "_arg8":Ljava/lang/String;
    .end local v21    # "_arg9":I
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@356
    move-object/from16 v0, p2

    #@358
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35b
    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35e
    move-result v4

    #@35f
    if-eqz v4, :cond_8

    #@361
    .line 374
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@363
    move-object/from16 v0, p2

    #@365
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@368
    move-result-object v12

    #@369
    check-cast v12, Landroid/os/WorkSource;

    #@36b
    .line 380
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36e
    move-result v6

    #@36f
    .line 382
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@372
    move-result-object v7

    #@373
    .line 384
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@376
    move-result-object v8

    #@377
    .line 386
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37a
    move-result v9

    #@37b
    .restart local v9    # "_arg4":I
    move-object/from16 v11, p0

    #@37d
    move v13, v6

    #@37e
    move-object v14, v7

    #@37f
    move-object v15, v8

    #@380
    move/from16 v16, v9

    #@382
    .line 387
    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    #@385
    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@388
    .line 389
    const/4 v4, 0x1

    #@389
    return v4

    #@38a
    .line 377
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :cond_8
    const/4 v12, 0x0

    #@38b
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_8

    #@38c
    .line 393
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@38f
    move-object/from16 v0, p2

    #@391
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@394
    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@397
    move-result-object v35

    #@398
    .line 397
    .restart local v35    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39b
    move-result-object v41

    #@39c
    .line 399
    .restart local v41    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39f
    move-result v26

    #@3a0
    .line 400
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@3a2
    move-object/from16 v1, v35

    #@3a4
    move-object/from16 v2, v41

    #@3a6
    move/from16 v3, v26

    #@3a8
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    #@3ab
    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ae
    .line 402
    const/4 v4, 0x1

    #@3af
    return v4

    #@3b0
    .line 406
    .end local v26    # "_arg2":I
    .end local v35    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@3b3
    move-object/from16 v0, p2

    #@3b5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b8
    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3bb
    move-result-object v35

    #@3bc
    .line 410
    .restart local v35    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3bf
    move-result-object v41

    #@3c0
    .line 412
    .restart local v41    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c3
    move-result v26

    #@3c4
    .line 413
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@3c6
    move-object/from16 v1, v35

    #@3c8
    move-object/from16 v2, v41

    #@3ca
    move/from16 v3, v26

    #@3cc
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    #@3cf
    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d2
    .line 415
    const/4 v4, 0x1

    #@3d3
    return v4

    #@3d4
    .line 419
    .end local v26    # "_arg2":I
    .end local v35    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@3d7
    move-object/from16 v0, p2

    #@3d9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3dc
    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3df
    move-result v5

    #@3e0
    .line 423
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@3e3
    move-result-wide v38

    #@3e4
    .line 424
    .local v38, "_arg1":J
    move-object/from16 v0, p0

    #@3e6
    move-wide/from16 v1, v38

    #@3e8
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    #@3eb
    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ee
    .line 426
    const/4 v4, 0x1

    #@3ef
    return v4

    #@3f0
    .line 430
    .end local v5    # "_arg0":I
    .end local v38    # "_arg1":J
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@3f3
    move-object/from16 v0, p2

    #@3f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f8
    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3fb
    move-result v5

    #@3fc
    .line 433
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@3fe
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    #@401
    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@404
    .line 435
    const/4 v4, 0x1

    #@405
    return v4

    #@406
    .line 439
    .end local v5    # "_arg0":I
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@409
    move-object/from16 v0, p2

    #@40b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40e
    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@411
    move-result v5

    #@412
    .line 442
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@414
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps(I)V

    #@417
    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41a
    .line 444
    const/4 v4, 0x1

    #@41b
    return v4

    #@41c
    .line 448
    .end local v5    # "_arg0":I
    :sswitch_23
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@41f
    move-object/from16 v0, p2

    #@421
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@424
    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@427
    move-result v5

    #@428
    .line 451
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@42a
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps(I)V

    #@42d
    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@430
    .line 453
    const/4 v4, 0x1

    #@431
    return v4

    #@432
    .line 457
    .end local v5    # "_arg0":I
    :sswitch_24
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@435
    move-object/from16 v0, p2

    #@437
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43a
    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43d
    move-result v5

    #@43e
    .line 460
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@440
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState(I)V

    #@443
    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@446
    .line 462
    const/4 v4, 0x1

    #@447
    return v4

    #@448
    .line 466
    .end local v5    # "_arg0":I
    :sswitch_25
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@44b
    move-object/from16 v0, p2

    #@44d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@450
    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@453
    move-result v5

    #@454
    .line 469
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@456
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    #@459
    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45c
    .line 471
    const/4 v4, 0x1

    #@45d
    return v4

    #@45e
    .line 475
    .end local v5    # "_arg0":I
    :sswitch_26
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@461
    move-object/from16 v0, p2

    #@463
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@466
    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@469
    move-result v5

    #@46a
    .line 479
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46d
    move-result v6

    #@46e
    .line 480
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@470
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    #@473
    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@476
    .line 482
    const/4 v4, 0x1

    #@477
    return v4

    #@478
    .line 486
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_27
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@47b
    move-object/from16 v0, p2

    #@47d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@480
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@483
    move-result-object v35

    #@484
    .line 490
    .restart local v35    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@487
    move-result v6

    #@488
    .line 491
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@48a
    move-object/from16 v1, v35

    #@48c
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp(Ljava/lang/String;I)V

    #@48f
    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@492
    .line 493
    const/4 v4, 0x1

    #@493
    return v4

    #@494
    .line 497
    .end local v6    # "_arg1":I
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@497
    move-object/from16 v0, p2

    #@499
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49c
    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49f
    move-result v4

    #@4a0
    if-eqz v4, :cond_9

    #@4a2
    const/16 v36, 0x1

    #@4a4
    .line 500
    .local v36, "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    #@4a6
    move/from16 v1, v36

    #@4a8
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive(Z)V

    #@4ab
    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ae
    .line 502
    const/4 v4, 0x1

    #@4af
    return v4

    #@4b0
    .line 499
    .end local v36    # "_arg0":Z
    :cond_9
    const/16 v36, 0x0

    #@4b2
    goto :goto_9

    #@4b3
    .line 506
    :sswitch_29
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4b6
    move-object/from16 v0, p2

    #@4b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4bb
    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4be
    move-result v5

    #@4bf
    .line 510
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4c2
    move-result-object v41

    #@4c3
    .line 511
    .restart local v41    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4c5
    move-object/from16 v1, v41

    #@4c7
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged(ILjava/lang/String;)V

    #@4ca
    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4cd
    .line 513
    const/4 v4, 0x1

    #@4ce
    return v4

    #@4cf
    .line 517
    .end local v5    # "_arg0":I
    .end local v41    # "_arg1":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4d2
    move-object/from16 v0, p2

    #@4d4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d7
    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4da
    move-result v5

    #@4db
    .line 521
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@4de
    move-result-wide v38

    #@4df
    .line 523
    .restart local v38    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e2
    move-result v26

    #@4e3
    .line 524
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@4e5
    move-wide/from16 v1, v38

    #@4e7
    move/from16 v3, v26

    #@4e9
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJI)V

    #@4ec
    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ef
    .line 526
    const/4 v4, 0x1

    #@4f0
    return v4

    #@4f1
    .line 530
    .end local v5    # "_arg0":I
    .end local v26    # "_arg2":I
    .end local v38    # "_arg1":J
    :sswitch_2b
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4f4
    move-object/from16 v0, p2

    #@4f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f9
    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    #@4fc
    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ff
    .line 533
    const/4 v4, 0x1

    #@500
    return v4

    #@501
    .line 537
    :sswitch_2c
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@504
    move-object/from16 v0, p2

    #@506
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@509
    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    #@50c
    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50f
    .line 540
    const/4 v4, 0x1

    #@510
    return v4

    #@511
    .line 544
    :sswitch_2d
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@514
    move-object/from16 v0, p2

    #@516
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@519
    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51c
    move-result v4

    #@51d
    if-eqz v4, :cond_a

    #@51f
    .line 547
    sget-object v4, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    #@521
    move-object/from16 v0, p2

    #@523
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@526
    move-result-object v34

    #@527
    check-cast v34, Landroid/telephony/SignalStrength;

    #@529
    .line 552
    :goto_a
    move-object/from16 v0, p0

    #@52b
    move-object/from16 v1, v34

    #@52d
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    #@530
    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@533
    .line 554
    const/4 v4, 0x1

    #@534
    return v4

    #@535
    .line 550
    :cond_a
    const/16 v34, 0x0

    #@537
    .local v34, "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_a

    #@538
    .line 558
    .end local v34    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_2e
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@53b
    move-object/from16 v0, p2

    #@53d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@540
    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@543
    move-result v5

    #@544
    .line 562
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@547
    move-result v4

    #@548
    if-eqz v4, :cond_b

    #@54a
    const/16 v42, 0x1

    #@54c
    .line 563
    .local v42, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    #@54e
    move/from16 v1, v42

    #@550
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZ)V

    #@553
    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@556
    .line 565
    const/4 v4, 0x1

    #@557
    return v4

    #@558
    .line 562
    .end local v42    # "_arg1":Z
    :cond_b
    const/16 v42, 0x0

    #@55a
    goto :goto_b

    #@55b
    .line 569
    .end local v5    # "_arg0":I
    :sswitch_2f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@55e
    move-object/from16 v0, p2

    #@560
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@563
    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@566
    move-result v5

    #@567
    .line 572
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@569
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    #@56c
    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@56f
    .line 574
    const/4 v4, 0x1

    #@570
    return v4

    #@571
    .line 578
    .end local v5    # "_arg0":I
    :sswitch_30
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@574
    move-object/from16 v0, p2

    #@576
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@579
    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    #@57c
    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@57f
    .line 581
    const/4 v4, 0x1

    #@580
    return v4

    #@581
    .line 585
    :sswitch_31
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@584
    move-object/from16 v0, p2

    #@586
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@589
    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    #@58c
    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@58f
    .line 588
    const/4 v4, 0x1

    #@590
    return v4

    #@591
    .line 592
    :sswitch_32
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@594
    move-object/from16 v0, p2

    #@596
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@599
    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59c
    move-result v4

    #@59d
    if-eqz v4, :cond_c

    #@59f
    .line 595
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5a1
    move-object/from16 v0, p2

    #@5a3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5a6
    move-result-object v12

    #@5a7
    check-cast v12, Landroid/os/WorkSource;

    #@5a9
    .line 600
    :goto_c
    move-object/from16 v0, p0

    #@5ab
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    #@5ae
    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b1
    .line 602
    const/4 v4, 0x1

    #@5b2
    return v4

    #@5b3
    .line 598
    :cond_c
    const/4 v12, 0x0

    #@5b4
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_c

    #@5b5
    .line 606
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_33
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@5b8
    move-object/from16 v0, p2

    #@5ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5bd
    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c0
    move-result v4

    #@5c1
    if-eqz v4, :cond_d

    #@5c3
    .line 609
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c5
    move-object/from16 v0, p2

    #@5c7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5ca
    move-result-object v12

    #@5cb
    check-cast v12, Landroid/os/WorkSource;

    #@5cd
    .line 615
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d0
    move-result v4

    #@5d1
    if-eqz v4, :cond_e

    #@5d3
    .line 616
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5d5
    move-object/from16 v0, p2

    #@5d7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5da
    move-result-object v40

    #@5db
    check-cast v40, Landroid/os/WorkSource;

    #@5dd
    .line 621
    :goto_e
    move-object/from16 v0, p0

    #@5df
    move-object/from16 v1, v40

    #@5e1
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    #@5e4
    .line 622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e7
    .line 623
    const/4 v4, 0x1

    #@5e8
    return v4

    #@5e9
    .line 612
    :cond_d
    const/4 v12, 0x0

    #@5ea
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_d

    #@5eb
    .line 619
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :cond_e
    const/16 v40, 0x0

    #@5ed
    .local v40, "_arg1":Landroid/os/WorkSource;
    goto :goto_e

    #@5ee
    .line 627
    .end local v40    # "_arg1":Landroid/os/WorkSource;
    :sswitch_34
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@5f1
    move-object/from16 v0, p2

    #@5f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f6
    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f9
    move-result v4

    #@5fa
    if-eqz v4, :cond_f

    #@5fc
    .line 630
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5fe
    move-object/from16 v0, p2

    #@600
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@603
    move-result-object v12

    #@604
    check-cast v12, Landroid/os/WorkSource;

    #@606
    .line 635
    :goto_f
    move-object/from16 v0, p0

    #@608
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    #@60b
    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@60e
    .line 637
    const/4 v4, 0x1

    #@60f
    return v4

    #@610
    .line 633
    :cond_f
    const/4 v12, 0x0

    #@611
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_f

    #@612
    .line 641
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_35
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@615
    move-object/from16 v0, p2

    #@617
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61a
    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61d
    move-result v5

    #@61e
    .line 645
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@621
    move-result-object v41

    #@622
    .line 646
    .restart local v41    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@624
    move-object/from16 v1, v41

    #@626
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    #@629
    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62c
    .line 648
    const/4 v4, 0x1

    #@62d
    return v4

    #@62e
    .line 652
    .end local v5    # "_arg0":I
    .end local v41    # "_arg1":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@631
    move-object/from16 v0, p2

    #@633
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@636
    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@639
    move-result v5

    #@63a
    .line 656
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63d
    move-result v4

    #@63e
    if-eqz v4, :cond_10

    #@640
    const/16 v42, 0x1

    #@642
    .line 657
    .restart local v42    # "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    #@644
    move/from16 v1, v42

    #@646
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    #@649
    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64c
    .line 659
    const/4 v4, 0x1

    #@64d
    return v4

    #@64e
    .line 656
    .end local v42    # "_arg1":Z
    :cond_10
    const/16 v42, 0x0

    #@650
    goto :goto_10

    #@651
    .line 663
    .end local v5    # "_arg0":I
    :sswitch_37
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@654
    move-object/from16 v0, p2

    #@656
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@659
    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@65c
    move-result v5

    #@65d
    .line 666
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@65f
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    #@662
    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@665
    .line 668
    const/4 v4, 0x1

    #@666
    return v4

    #@667
    .line 672
    .end local v5    # "_arg0":I
    :sswitch_38
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@66a
    move-object/from16 v0, p2

    #@66c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66f
    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@672
    move-result v5

    #@673
    .line 675
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@675
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    #@678
    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67b
    .line 677
    const/4 v4, 0x1

    #@67c
    return v4

    #@67d
    .line 681
    .end local v5    # "_arg0":I
    :sswitch_39
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@680
    move-object/from16 v0, p2

    #@682
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@685
    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@688
    move-result v5

    #@689
    .line 684
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@68b
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    #@68e
    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@691
    .line 686
    const/4 v4, 0x1

    #@692
    return v4

    #@693
    .line 690
    .end local v5    # "_arg0":I
    :sswitch_3a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@696
    move-object/from16 v0, p2

    #@698
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69b
    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@69e
    move-result v5

    #@69f
    .line 693
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@6a1
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    #@6a4
    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a7
    .line 695
    const/4 v4, 0x1

    #@6a8
    return v4

    #@6a9
    .line 699
    .end local v5    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@6ac
    move-object/from16 v0, p2

    #@6ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b1
    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b4
    move-result v5

    #@6b5
    .line 702
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@6b7
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    #@6ba
    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6bd
    .line 704
    const/4 v4, 0x1

    #@6be
    return v4

    #@6bf
    .line 708
    .end local v5    # "_arg0":I
    :sswitch_3c
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@6c2
    move-object/from16 v0, p2

    #@6c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c7
    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ca
    move-result v5

    #@6cb
    .line 711
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@6cd
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    #@6d0
    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d3
    .line 713
    const/4 v4, 0x1

    #@6d4
    return v4

    #@6d5
    .line 717
    .end local v5    # "_arg0":I
    :sswitch_3d
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@6d8
    move-object/from16 v0, p2

    #@6da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6dd
    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e0
    move-result v5

    #@6e1
    .line 720
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@6e3
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    #@6e6
    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e9
    .line 722
    const/4 v4, 0x1

    #@6ea
    return v4

    #@6eb
    .line 726
    .end local v5    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@6ee
    move-object/from16 v0, p2

    #@6f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f3
    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f6
    move-result v4

    #@6f7
    if-eqz v4, :cond_11

    #@6f9
    .line 729
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6fb
    move-object/from16 v0, p2

    #@6fd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@700
    move-result-object v12

    #@701
    check-cast v12, Landroid/os/WorkSource;

    #@703
    .line 734
    :goto_11
    move-object/from16 v0, p0

    #@705
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    #@708
    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70b
    .line 736
    const/4 v4, 0x1

    #@70c
    return v4

    #@70d
    .line 732
    :cond_11
    const/4 v12, 0x0

    #@70e
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_11

    #@70f
    .line 740
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@712
    move-object/from16 v0, p2

    #@714
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@717
    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71a
    move-result v4

    #@71b
    if-eqz v4, :cond_12

    #@71d
    .line 743
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@71f
    move-object/from16 v0, p2

    #@721
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@724
    move-result-object v12

    #@725
    check-cast v12, Landroid/os/WorkSource;

    #@727
    .line 748
    :goto_12
    move-object/from16 v0, p0

    #@729
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    #@72c
    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72f
    .line 750
    const/4 v4, 0x1

    #@730
    return v4

    #@731
    .line 746
    :cond_12
    const/4 v12, 0x0

    #@732
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_12

    #@733
    .line 754
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_40
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@736
    move-object/from16 v0, p2

    #@738
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@73b
    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73e
    move-result v4

    #@73f
    if-eqz v4, :cond_13

    #@741
    .line 757
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@743
    move-object/from16 v0, p2

    #@745
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@748
    move-result-object v12

    #@749
    check-cast v12, Landroid/os/WorkSource;

    #@74b
    .line 762
    :goto_13
    move-object/from16 v0, p0

    #@74d
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    #@750
    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@753
    .line 764
    const/4 v4, 0x1

    #@754
    return v4

    #@755
    .line 760
    :cond_13
    const/4 v12, 0x0

    #@756
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_13

    #@757
    .line 768
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_41
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@75a
    move-object/from16 v0, p2

    #@75c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@75f
    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@762
    move-result v4

    #@763
    if-eqz v4, :cond_14

    #@765
    .line 771
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@767
    move-object/from16 v0, p2

    #@769
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@76c
    move-result-object v12

    #@76d
    check-cast v12, Landroid/os/WorkSource;

    #@76f
    .line 776
    :goto_14
    move-object/from16 v0, p0

    #@771
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    #@774
    .line 777
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@777
    .line 778
    const/4 v4, 0x1

    #@778
    return v4

    #@779
    .line 774
    :cond_14
    const/4 v12, 0x0

    #@77a
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_14

    #@77b
    .line 782
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_42
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@77e
    move-object/from16 v0, p2

    #@780
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@783
    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@786
    move-result v4

    #@787
    if-eqz v4, :cond_15

    #@789
    .line 785
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@78b
    move-object/from16 v0, p2

    #@78d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@790
    move-result-object v12

    #@791
    check-cast v12, Landroid/os/WorkSource;

    #@793
    .line 791
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@796
    move-result v6

    #@797
    .line 792
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@799
    invoke-virtual {v0, v12, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    #@79c
    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79f
    .line 794
    const/4 v4, 0x1

    #@7a0
    return v4

    #@7a1
    .line 788
    .end local v6    # "_arg1":I
    :cond_15
    const/4 v12, 0x0

    #@7a2
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_15

    #@7a3
    .line 798
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_43
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@7a6
    move-object/from16 v0, p2

    #@7a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ab
    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ae
    move-result v4

    #@7af
    if-eqz v4, :cond_16

    #@7b1
    .line 801
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7b3
    move-object/from16 v0, p2

    #@7b5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7b8
    move-result-object v12

    #@7b9
    check-cast v12, Landroid/os/WorkSource;

    #@7bb
    .line 806
    :goto_16
    move-object/from16 v0, p0

    #@7bd
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    #@7c0
    .line 807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c3
    .line 808
    const/4 v4, 0x1

    #@7c4
    return v4

    #@7c5
    .line 804
    :cond_16
    const/4 v12, 0x0

    #@7c6
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_16

    #@7c7
    .line 812
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_44
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@7ca
    move-object/from16 v0, p2

    #@7cc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7cf
    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d2
    move-result v4

    #@7d3
    if-eqz v4, :cond_17

    #@7d5
    .line 815
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7d7
    move-object/from16 v0, p2

    #@7d9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7dc
    move-result-object v12

    #@7dd
    check-cast v12, Landroid/os/WorkSource;

    #@7df
    .line 820
    :goto_17
    move-object/from16 v0, p0

    #@7e1
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V

    #@7e4
    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e7
    .line 822
    const/4 v4, 0x1

    #@7e8
    return v4

    #@7e9
    .line 818
    :cond_17
    const/4 v12, 0x0

    #@7ea
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_17

    #@7eb
    .line 826
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_45
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@7ee
    move-object/from16 v0, p2

    #@7f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f3
    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f6
    move-result v4

    #@7f7
    if-eqz v4, :cond_18

    #@7f9
    .line 829
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7fb
    move-object/from16 v0, p2

    #@7fd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@800
    move-result-object v12

    #@801
    check-cast v12, Landroid/os/WorkSource;

    #@803
    .line 834
    :goto_18
    move-object/from16 v0, p0

    #@805
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V

    #@808
    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@80b
    .line 836
    const/4 v4, 0x1

    #@80c
    return v4

    #@80d
    .line 832
    :cond_18
    const/4 v12, 0x0

    #@80e
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_18

    #@80f
    .line 840
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_46
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@812
    move-object/from16 v0, p2

    #@814
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@817
    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@81a
    move-result v5

    #@81b
    .line 844
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@81e
    move-result-wide v38

    #@81f
    .line 846
    .restart local v38    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@822
    move-result v26

    #@823
    .line 847
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@825
    move-wide/from16 v1, v38

    #@827
    move/from16 v3, v26

    #@829
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState(IJI)V

    #@82c
    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82f
    .line 849
    const/4 v4, 0x1

    #@830
    return v4

    #@831
    .line 853
    .end local v5    # "_arg0":I
    .end local v26    # "_arg2":I
    .end local v38    # "_arg1":J
    :sswitch_47
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@834
    move-object/from16 v0, p2

    #@836
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@839
    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@83c
    move-result-object v35

    #@83d
    .line 857
    .restart local v35    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@840
    move-result v6

    #@841
    .line 858
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@843
    move-object/from16 v1, v35

    #@845
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    #@848
    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@84b
    .line 860
    const/4 v4, 0x1

    #@84c
    return v4

    #@84d
    .line 864
    .end local v6    # "_arg1":I
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_48
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@850
    move-object/from16 v0, p2

    #@852
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@855
    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    #@858
    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85b
    .line 867
    const/4 v4, 0x1

    #@85c
    return v4

    #@85d
    .line 871
    :sswitch_49
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@860
    move-object/from16 v0, p2

    #@862
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@865
    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@868
    move-result v5

    #@869
    .line 875
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@86c
    move-result-object v41

    #@86d
    .line 877
    .restart local v41    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@870
    move-result v26

    #@871
    .line 878
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@873
    move-object/from16 v1, v41

    #@875
    move/from16 v2, v26

    #@877
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode(ILjava/lang/String;I)V

    #@87a
    .line 879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@87d
    .line 880
    const/4 v4, 0x1

    #@87e
    return v4

    #@87f
    .line 884
    .end local v5    # "_arg0":I
    .end local v26    # "_arg2":I
    .end local v41    # "_arg1":Ljava/lang/String;
    :sswitch_4a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@882
    move-object/from16 v0, p2

    #@884
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@887
    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@88a
    move-result v5

    #@88b
    .line 888
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@88e
    move-result v6

    #@88f
    .line 890
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@892
    move-result v26

    #@893
    .line 892
    .restart local v26    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@896
    move-result v27

    #@897
    .line 894
    .local v27, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@89a
    move-result v9

    #@89b
    .line 896
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@89e
    move-result v29

    #@89f
    .line 898
    .local v29, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a2
    move-result v18

    #@8a3
    .restart local v18    # "_arg6":I
    move-object/from16 v23, p0

    #@8a5
    move/from16 v24, v5

    #@8a7
    move/from16 v25, v6

    #@8a9
    move/from16 v28, v9

    #@8ab
    move/from16 v30, v18

    #@8ad
    .line 899
    invoke-virtual/range {v23 .. v30}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIIII)V

    #@8b0
    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b3
    .line 901
    const/4 v4, 0x1

    #@8b4
    return v4

    #@8b5
    .line 905
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":I
    .end local v18    # "_arg6":I
    .end local v26    # "_arg2":I
    .end local v27    # "_arg3":I
    .end local v29    # "_arg5":I
    :sswitch_4b
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@8b8
    move-object/from16 v0, p2

    #@8ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8bd
    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    #@8c0
    move-result-wide v44

    #@8c1
    .line 907
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c4
    .line 908
    move-object/from16 v0, p3

    #@8c6
    move-wide/from16 v1, v44

    #@8c8
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@8cb
    .line 909
    const/4 v4, 0x1

    #@8cc
    return v4

    #@8cd
    .line 913
    .end local v44    # "_result":J
    :sswitch_4c
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@8d0
    move-object/from16 v0, p2

    #@8d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d5
    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    #@8d8
    move-result-wide v44

    #@8d9
    .line 915
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8dc
    .line 916
    move-object/from16 v0, p3

    #@8de
    move-wide/from16 v1, v44

    #@8e0
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@8e3
    .line 917
    const/4 v4, 0x1

    #@8e4
    return v4

    #@8e5
    .line 921
    .end local v44    # "_result":J
    :sswitch_4d
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@8e8
    move-object/from16 v0, p2

    #@8ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ed
    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f0
    move-result v4

    #@8f1
    if-eqz v4, :cond_19

    #@8f3
    .line 924
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8f5
    move-object/from16 v0, p2

    #@8f7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8fa
    move-result-object v12

    #@8fb
    check-cast v12, Landroid/os/WorkSource;

    #@8fd
    .line 929
    :goto_19
    move-object/from16 v0, p0

    #@8ff
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted(Landroid/os/WorkSource;)V

    #@902
    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@905
    .line 931
    const/4 v4, 0x1

    #@906
    return v4

    #@907
    .line 927
    :cond_19
    const/4 v12, 0x0

    #@908
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_19

    #@909
    .line 935
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_4e
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@90c
    move-object/from16 v0, p2

    #@90e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@911
    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@914
    move-result v4

    #@915
    if-eqz v4, :cond_1a

    #@917
    .line 938
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@919
    move-object/from16 v0, p2

    #@91b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@91e
    move-result-object v12

    #@91f
    check-cast v12, Landroid/os/WorkSource;

    #@921
    .line 943
    :goto_1a
    move-object/from16 v0, p0

    #@923
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped(Landroid/os/WorkSource;)V

    #@926
    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@929
    .line 945
    const/4 v4, 0x1

    #@92a
    return v4

    #@92b
    .line 941
    :cond_1a
    const/4 v12, 0x0

    #@92c
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_1a

    #@92d
    .line 949
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_4f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@930
    move-object/from16 v0, p2

    #@932
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@935
    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetBleScan()V

    #@938
    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93b
    .line 952
    const/4 v4, 0x1

    #@93c
    return v4

    #@93d
    .line 956
    :sswitch_50
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@940
    move-object/from16 v0, p2

    #@942
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@945
    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@948
    move-result v5

    #@949
    .line 959
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@94b
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    #@94e
    move-result-object v46

    #@94f
    .line 960
    .local v46, "_result":Landroid/os/health/HealthStatsParceler;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@952
    .line 961
    if-eqz v46, :cond_1b

    #@954
    .line 962
    const/4 v4, 0x1

    #@955
    move-object/from16 v0, p3

    #@957
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@95a
    .line 963
    const/4 v4, 0x1

    #@95b
    move-object/from16 v0, v46

    #@95d
    move-object/from16 v1, p3

    #@95f
    invoke-virtual {v0, v1, v4}, Landroid/os/health/HealthStatsParceler;->writeToParcel(Landroid/os/Parcel;I)V

    #@962
    .line 968
    :goto_1b
    const/4 v4, 0x1

    #@963
    return v4

    #@964
    .line 966
    :cond_1b
    const/4 v4, 0x0

    #@965
    move-object/from16 v0, p3

    #@967
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@96a
    goto :goto_1b

    #@96b
    .line 972
    .end local v5    # "_arg0":I
    .end local v46    # "_result":Landroid/os/health/HealthStatsParceler;
    :sswitch_51
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@96e
    move-object/from16 v0, p2

    #@970
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@973
    .line 974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@976
    move-result-object v37

    #@977
    .line 975
    .local v37, "_arg0":[I
    move-object/from16 v0, p0

    #@979
    move-object/from16 v1, v37

    #@97b
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    #@97e
    move-result-object v49

    #@97f
    .line 976
    .local v49, "_result":[Landroid/os/health/HealthStatsParceler;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@982
    .line 977
    const/4 v4, 0x1

    #@983
    move-object/from16 v0, p3

    #@985
    move-object/from16 v1, v49

    #@987
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@98a
    .line 978
    const/4 v4, 0x1

    #@98b
    return v4

    #@98c
    .line 982
    .end local v37    # "_arg0":[I
    .end local v49    # "_result":[Landroid/os/health/HealthStatsParceler;
    :sswitch_52
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@98f
    move-object/from16 v0, p2

    #@991
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@994
    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@997
    move-result v4

    #@998
    if-eqz v4, :cond_1c

    #@99a
    .line 985
    sget-object v4, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@99c
    move-object/from16 v0, p2

    #@99e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9a1
    move-result-object v31

    #@9a2
    check-cast v31, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@9a4
    .line 990
    :goto_1c
    move-object/from16 v0, p0

    #@9a6
    move-object/from16 v1, v31

    #@9a8
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    #@9ab
    .line 991
    const/4 v4, 0x1

    #@9ac
    return v4

    #@9ad
    .line 988
    :cond_1c
    const/16 v31, 0x0

    #@9af
    .local v31, "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    goto :goto_1c

    #@9b0
    .line 995
    .end local v31    # "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :sswitch_53
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@9b3
    move-object/from16 v0, p2

    #@9b5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b8
    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9bb
    move-result v4

    #@9bc
    if-eqz v4, :cond_1d

    #@9be
    .line 998
    sget-object v4, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9c0
    move-object/from16 v0, p2

    #@9c2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9c5
    move-result-object v33

    #@9c6
    check-cast v33, Landroid/telephony/ModemActivityInfo;

    #@9c8
    .line 1003
    :goto_1d
    move-object/from16 v0, p0

    #@9ca
    move-object/from16 v1, v33

    #@9cc
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V

    #@9cf
    .line 1004
    const/4 v4, 0x1

    #@9d0
    return v4

    #@9d1
    .line 1001
    :cond_1d
    const/16 v33, 0x0

    #@9d3
    .local v33, "_arg0":Landroid/telephony/ModemActivityInfo;
    goto :goto_1d

    #@9d4
    .line 1008
    .end local v33    # "_arg0":Landroid/telephony/ModemActivityInfo;
    :sswitch_54
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@9d7
    move-object/from16 v0, p2

    #@9d9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9dc
    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9df
    move-result v4

    #@9e0
    if-eqz v4, :cond_1e

    #@9e2
    .line 1011
    sget-object v4, Landroid/net/wifi/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9e4
    move-object/from16 v0, p2

    #@9e6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9e9
    move-result-object v32

    #@9ea
    check-cast v32, Landroid/net/wifi/WifiActivityEnergyInfo;

    #@9ec
    .line 1016
    :goto_1e
    move-object/from16 v0, p0

    #@9ee
    move-object/from16 v1, v32

    #@9f0
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    #@9f3
    .line 1017
    const/4 v4, 0x1

    #@9f4
    return v4

    #@9f5
    .line 1014
    :cond_1e
    const/16 v32, 0x0

    #@9f7
    .local v32, "_arg0":Landroid/net/wifi/WifiActivityEnergyInfo;
    goto :goto_1e

    #@9f8
    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

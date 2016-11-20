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

.field static final TRANSACTION_getAwakeTimeBattery:I = 0x49

.field static final TRANSACTION_getAwakeTimePlugged:I = 0x4a

.field static final TRANSACTION_getStatistics:I = 0xf

.field static final TRANSACTION_getStatisticsStream:I = 0x10

.field static final TRANSACTION_isCharging:I = 0x11

.field static final TRANSACTION_noteBleScanStarted:I = 0x4b

.field static final TRANSACTION_noteBleScanStopped:I = 0x4c

.field static final TRANSACTION_noteBluetoothControllerActivity:I = 0x50

.field static final TRANSACTION_noteChangeWakelockFromSource:I = 0x1c

.field static final TRANSACTION_noteConnectivityChanged:I = 0x27

.field static final TRANSACTION_noteDeviceIdleMode:I = 0x47

.field static final TRANSACTION_noteEvent:I = 0x14

.field static final TRANSACTION_noteFlashlightOff:I = 0xa

.field static final TRANSACTION_noteFlashlightOn:I = 0x9

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x36

.field static final TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x3c

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x37

.field static final TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x3d

.field static final TRANSACTION_noteInteractive:I = 0x26

.field static final TRANSACTION_noteJobFinish:I = 0x18

.field static final TRANSACTION_noteJobStart:I = 0x17

.field static final TRANSACTION_noteMobileRadioPowerState:I = 0x28

.field static final TRANSACTION_noteModemControllerActivity:I = 0x51

.field static final TRANSACTION_noteNetworkInterfaceType:I = 0x45

.field static final TRANSACTION_noteNetworkStatsEnabled:I = 0x46

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x2c

.field static final TRANSACTION_notePhoneOff:I = 0x2a

.field static final TRANSACTION_notePhoneOn:I = 0x29

.field static final TRANSACTION_notePhoneSignalStrength:I = 0x2b

.field static final TRANSACTION_notePhoneState:I = 0x2d

.field static final TRANSACTION_noteResetAudio:I = 0x8

.field static final TRANSACTION_noteResetBleScan:I = 0x4d

.field static final TRANSACTION_noteResetCamera:I = 0xd

.field static final TRANSACTION_noteResetFlashlight:I = 0xe

.field static final TRANSACTION_noteResetVideo:I = 0x7

.field static final TRANSACTION_noteScreenBrightness:I = 0x23

.field static final TRANSACTION_noteScreenState:I = 0x22

.field static final TRANSACTION_noteStartAudio:I = 0x5

.field static final TRANSACTION_noteStartCamera:I = 0xb

.field static final TRANSACTION_noteStartGps:I = 0x20

.field static final TRANSACTION_noteStartSensor:I = 0x1

.field static final TRANSACTION_noteStartVideo:I = 0x3

.field static final TRANSACTION_noteStartWakelock:I = 0x19

.field static final TRANSACTION_noteStartWakelockFromSource:I = 0x1b

.field static final TRANSACTION_noteStopAudio:I = 0x6

.field static final TRANSACTION_noteStopCamera:I = 0xc

.field static final TRANSACTION_noteStopGps:I = 0x21

.field static final TRANSACTION_noteStopSensor:I = 0x2

.field static final TRANSACTION_noteStopVideo:I = 0x4

.field static final TRANSACTION_noteStopWakelock:I = 0x1a

.field static final TRANSACTION_noteStopWakelockFromSource:I = 0x1d

.field static final TRANSACTION_noteSyncFinish:I = 0x16

.field static final TRANSACTION_noteSyncStart:I = 0x15

.field static final TRANSACTION_noteUserActivity:I = 0x24

.field static final TRANSACTION_noteVibratorOff:I = 0x1f

.field static final TRANSACTION_noteVibratorOn:I = 0x1e

.field static final TRANSACTION_noteWakeUp:I = 0x25

.field static final TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x40

.field static final TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x41

.field static final TRANSACTION_noteWifiControllerActivity:I = 0x52

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x3b

.field static final TRANSACTION_noteWifiMulticastDisabledFromSource:I = 0x43

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x3a

.field static final TRANSACTION_noteWifiMulticastEnabledFromSource:I = 0x42

.field static final TRANSACTION_noteWifiOff:I = 0x2f

.field static final TRANSACTION_noteWifiOn:I = 0x2e

.field static final TRANSACTION_noteWifiRadioPowerState:I = 0x44

.field static final TRANSACTION_noteWifiRssiChanged:I = 0x35

.field static final TRANSACTION_noteWifiRunning:I = 0x30

.field static final TRANSACTION_noteWifiRunningChanged:I = 0x31

.field static final TRANSACTION_noteWifiScanStarted:I = 0x38

.field static final TRANSACTION_noteWifiScanStartedFromSource:I = 0x3e

.field static final TRANSACTION_noteWifiScanStopped:I = 0x39

.field static final TRANSACTION_noteWifiScanStoppedFromSource:I = 0x3f

.field static final TRANSACTION_noteWifiState:I = 0x33

.field static final TRANSACTION_noteWifiStopped:I = 0x32

.field static final TRANSACTION_noteWifiSupplicantStateChanged:I = 0x34

.field static final TRANSACTION_setBatteryState:I = 0x48

.field static final TRANSACTION_takeUidSnapshot:I = 0x4e

.field static final TRANSACTION_takeUidSnapshots:I = 0x4f


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
    .line 992
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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@397
    move-result v5

    #@398
    .line 397
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@39b
    move-result-wide v38

    #@39c
    .line 398
    .local v38, "_arg1":J
    move-object/from16 v0, p0

    #@39e
    move-wide/from16 v1, v38

    #@3a0
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    #@3a3
    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a6
    .line 400
    const/4 v4, 0x1

    #@3a7
    return v4

    #@3a8
    .line 404
    .end local v5    # "_arg0":I
    .end local v38    # "_arg1":J
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@3ab
    move-object/from16 v0, p2

    #@3ad
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b0
    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b3
    move-result v5

    #@3b4
    .line 407
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@3b6
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    #@3b9
    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3bc
    .line 409
    const/4 v4, 0x1

    #@3bd
    return v4

    #@3be
    .line 413
    .end local v5    # "_arg0":I
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@3c1
    move-object/from16 v0, p2

    #@3c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c6
    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c9
    move-result v5

    #@3ca
    .line 416
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@3cc
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps(I)V

    #@3cf
    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d2
    .line 418
    const/4 v4, 0x1

    #@3d3
    return v4

    #@3d4
    .line 422
    .end local v5    # "_arg0":I
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@3d7
    move-object/from16 v0, p2

    #@3d9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3dc
    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3df
    move-result v5

    #@3e0
    .line 425
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@3e2
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps(I)V

    #@3e5
    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e8
    .line 427
    const/4 v4, 0x1

    #@3e9
    return v4

    #@3ea
    .line 431
    .end local v5    # "_arg0":I
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@3ed
    move-object/from16 v0, p2

    #@3ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f2
    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f5
    move-result v5

    #@3f6
    .line 434
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@3f8
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState(I)V

    #@3fb
    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fe
    .line 436
    const/4 v4, 0x1

    #@3ff
    return v4

    #@400
    .line 440
    .end local v5    # "_arg0":I
    :sswitch_23
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@403
    move-object/from16 v0, p2

    #@405
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@408
    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40b
    move-result v5

    #@40c
    .line 443
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@40e
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    #@411
    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@414
    .line 445
    const/4 v4, 0x1

    #@415
    return v4

    #@416
    .line 449
    .end local v5    # "_arg0":I
    :sswitch_24
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@419
    move-object/from16 v0, p2

    #@41b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41e
    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@421
    move-result v5

    #@422
    .line 453
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@425
    move-result v6

    #@426
    .line 454
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@428
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    #@42b
    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42e
    .line 456
    const/4 v4, 0x1

    #@42f
    return v4

    #@430
    .line 460
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_25
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@433
    move-object/from16 v0, p2

    #@435
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@438
    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43b
    move-result-object v35

    #@43c
    .line 464
    .restart local v35    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43f
    move-result v6

    #@440
    .line 465
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@442
    move-object/from16 v1, v35

    #@444
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp(Ljava/lang/String;I)V

    #@447
    .line 466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44a
    .line 467
    const/4 v4, 0x1

    #@44b
    return v4

    #@44c
    .line 471
    .end local v6    # "_arg1":I
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@44f
    move-object/from16 v0, p2

    #@451
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@454
    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@457
    move-result v4

    #@458
    if-eqz v4, :cond_9

    #@45a
    const/16 v36, 0x1

    #@45c
    .line 474
    .local v36, "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    #@45e
    move/from16 v1, v36

    #@460
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive(Z)V

    #@463
    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@466
    .line 476
    const/4 v4, 0x1

    #@467
    return v4

    #@468
    .line 473
    .end local v36    # "_arg0":Z
    :cond_9
    const/16 v36, 0x0

    #@46a
    goto :goto_9

    #@46b
    .line 480
    :sswitch_27
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@46e
    move-object/from16 v0, p2

    #@470
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@473
    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@476
    move-result v5

    #@477
    .line 484
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@47a
    move-result-object v41

    #@47b
    .line 485
    .restart local v41    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@47d
    move-object/from16 v1, v41

    #@47f
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged(ILjava/lang/String;)V

    #@482
    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@485
    .line 487
    const/4 v4, 0x1

    #@486
    return v4

    #@487
    .line 491
    .end local v5    # "_arg0":I
    .end local v41    # "_arg1":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@48a
    move-object/from16 v0, p2

    #@48c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48f
    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@492
    move-result v5

    #@493
    .line 495
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@496
    move-result-wide v38

    #@497
    .line 497
    .restart local v38    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49a
    move-result v26

    #@49b
    .line 498
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@49d
    move-wide/from16 v1, v38

    #@49f
    move/from16 v3, v26

    #@4a1
    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJI)V

    #@4a4
    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a7
    .line 500
    const/4 v4, 0x1

    #@4a8
    return v4

    #@4a9
    .line 504
    .end local v5    # "_arg0":I
    .end local v26    # "_arg2":I
    .end local v38    # "_arg1":J
    :sswitch_29
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4ac
    move-object/from16 v0, p2

    #@4ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b1
    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    #@4b4
    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b7
    .line 507
    const/4 v4, 0x1

    #@4b8
    return v4

    #@4b9
    .line 511
    :sswitch_2a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4bc
    move-object/from16 v0, p2

    #@4be
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c1
    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    #@4c4
    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c7
    .line 514
    const/4 v4, 0x1

    #@4c8
    return v4

    #@4c9
    .line 518
    :sswitch_2b
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4cc
    move-object/from16 v0, p2

    #@4ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d1
    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d4
    move-result v4

    #@4d5
    if-eqz v4, :cond_a

    #@4d7
    .line 521
    sget-object v4, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d9
    move-object/from16 v0, p2

    #@4db
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4de
    move-result-object v34

    #@4df
    check-cast v34, Landroid/telephony/SignalStrength;

    #@4e1
    .line 526
    :goto_a
    move-object/from16 v0, p0

    #@4e3
    move-object/from16 v1, v34

    #@4e5
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    #@4e8
    .line 527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4eb
    .line 528
    const/4 v4, 0x1

    #@4ec
    return v4

    #@4ed
    .line 524
    :cond_a
    const/16 v34, 0x0

    #@4ef
    .local v34, "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_a

    #@4f0
    .line 532
    .end local v34    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_2c
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4f3
    move-object/from16 v0, p2

    #@4f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f8
    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4fb
    move-result v5

    #@4fc
    .line 536
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ff
    move-result v4

    #@500
    if-eqz v4, :cond_b

    #@502
    const/16 v42, 0x1

    #@504
    .line 537
    .local v42, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    #@506
    move/from16 v1, v42

    #@508
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZ)V

    #@50b
    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50e
    .line 539
    const/4 v4, 0x1

    #@50f
    return v4

    #@510
    .line 536
    .end local v42    # "_arg1":Z
    :cond_b
    const/16 v42, 0x0

    #@512
    goto :goto_b

    #@513
    .line 543
    .end local v5    # "_arg0":I
    :sswitch_2d
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@516
    move-object/from16 v0, p2

    #@518
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51b
    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51e
    move-result v5

    #@51f
    .line 546
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@521
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    #@524
    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@527
    .line 548
    const/4 v4, 0x1

    #@528
    return v4

    #@529
    .line 552
    .end local v5    # "_arg0":I
    :sswitch_2e
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@52c
    move-object/from16 v0, p2

    #@52e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@531
    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    #@534
    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@537
    .line 555
    const/4 v4, 0x1

    #@538
    return v4

    #@539
    .line 559
    :sswitch_2f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@53c
    move-object/from16 v0, p2

    #@53e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@541
    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    #@544
    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@547
    .line 562
    const/4 v4, 0x1

    #@548
    return v4

    #@549
    .line 566
    :sswitch_30
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@54c
    move-object/from16 v0, p2

    #@54e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@551
    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@554
    move-result v4

    #@555
    if-eqz v4, :cond_c

    #@557
    .line 569
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@559
    move-object/from16 v0, p2

    #@55b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@55e
    move-result-object v12

    #@55f
    check-cast v12, Landroid/os/WorkSource;

    #@561
    .line 574
    :goto_c
    move-object/from16 v0, p0

    #@563
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    #@566
    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@569
    .line 576
    const/4 v4, 0x1

    #@56a
    return v4

    #@56b
    .line 572
    :cond_c
    const/4 v12, 0x0

    #@56c
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_c

    #@56d
    .line 580
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_31
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@570
    move-object/from16 v0, p2

    #@572
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@575
    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@578
    move-result v4

    #@579
    if-eqz v4, :cond_d

    #@57b
    .line 583
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@57d
    move-object/from16 v0, p2

    #@57f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@582
    move-result-object v12

    #@583
    check-cast v12, Landroid/os/WorkSource;

    #@585
    .line 589
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@588
    move-result v4

    #@589
    if-eqz v4, :cond_e

    #@58b
    .line 590
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@58d
    move-object/from16 v0, p2

    #@58f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@592
    move-result-object v40

    #@593
    check-cast v40, Landroid/os/WorkSource;

    #@595
    .line 595
    :goto_e
    move-object/from16 v0, p0

    #@597
    move-object/from16 v1, v40

    #@599
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    #@59c
    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59f
    .line 597
    const/4 v4, 0x1

    #@5a0
    return v4

    #@5a1
    .line 586
    :cond_d
    const/4 v12, 0x0

    #@5a2
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_d

    #@5a3
    .line 593
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :cond_e
    const/16 v40, 0x0

    #@5a5
    .local v40, "_arg1":Landroid/os/WorkSource;
    goto :goto_e

    #@5a6
    .line 601
    .end local v40    # "_arg1":Landroid/os/WorkSource;
    :sswitch_32
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@5a9
    move-object/from16 v0, p2

    #@5ab
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ae
    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5b1
    move-result v4

    #@5b2
    if-eqz v4, :cond_f

    #@5b4
    .line 604
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5b6
    move-object/from16 v0, p2

    #@5b8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5bb
    move-result-object v12

    #@5bc
    check-cast v12, Landroid/os/WorkSource;

    #@5be
    .line 609
    :goto_f
    move-object/from16 v0, p0

    #@5c0
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    #@5c3
    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c6
    .line 611
    const/4 v4, 0x1

    #@5c7
    return v4

    #@5c8
    .line 607
    :cond_f
    const/4 v12, 0x0

    #@5c9
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_f

    #@5ca
    .line 615
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_33
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@5cd
    move-object/from16 v0, p2

    #@5cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d2
    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d5
    move-result v5

    #@5d6
    .line 619
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d9
    move-result-object v41

    #@5da
    .line 620
    .restart local v41    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5dc
    move-object/from16 v1, v41

    #@5de
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    #@5e1
    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e4
    .line 622
    const/4 v4, 0x1

    #@5e5
    return v4

    #@5e6
    .line 626
    .end local v5    # "_arg0":I
    .end local v41    # "_arg1":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@5e9
    move-object/from16 v0, p2

    #@5eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ee
    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f1
    move-result v5

    #@5f2
    .line 630
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f5
    move-result v4

    #@5f6
    if-eqz v4, :cond_10

    #@5f8
    const/16 v42, 0x1

    #@5fa
    .line 631
    .restart local v42    # "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    #@5fc
    move/from16 v1, v42

    #@5fe
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    #@601
    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@604
    .line 633
    const/4 v4, 0x1

    #@605
    return v4

    #@606
    .line 630
    .end local v42    # "_arg1":Z
    :cond_10
    const/16 v42, 0x0

    #@608
    goto :goto_10

    #@609
    .line 637
    .end local v5    # "_arg0":I
    :sswitch_35
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@60c
    move-object/from16 v0, p2

    #@60e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@611
    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@614
    move-result v5

    #@615
    .line 640
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@617
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    #@61a
    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@61d
    .line 642
    const/4 v4, 0x1

    #@61e
    return v4

    #@61f
    .line 646
    .end local v5    # "_arg0":I
    :sswitch_36
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@622
    move-object/from16 v0, p2

    #@624
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@627
    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62a
    move-result v5

    #@62b
    .line 649
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@62d
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    #@630
    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@633
    .line 651
    const/4 v4, 0x1

    #@634
    return v4

    #@635
    .line 655
    .end local v5    # "_arg0":I
    :sswitch_37
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@638
    move-object/from16 v0, p2

    #@63a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63d
    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@640
    move-result v5

    #@641
    .line 658
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@643
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    #@646
    .line 659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@649
    .line 660
    const/4 v4, 0x1

    #@64a
    return v4

    #@64b
    .line 664
    .end local v5    # "_arg0":I
    :sswitch_38
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@64e
    move-object/from16 v0, p2

    #@650
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@653
    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@656
    move-result v5

    #@657
    .line 667
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@659
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    #@65c
    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@65f
    .line 669
    const/4 v4, 0x1

    #@660
    return v4

    #@661
    .line 673
    .end local v5    # "_arg0":I
    :sswitch_39
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@664
    move-object/from16 v0, p2

    #@666
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@669
    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66c
    move-result v5

    #@66d
    .line 676
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@66f
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    #@672
    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@675
    .line 678
    const/4 v4, 0x1

    #@676
    return v4

    #@677
    .line 682
    .end local v5    # "_arg0":I
    :sswitch_3a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@67a
    move-object/from16 v0, p2

    #@67c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67f
    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@682
    move-result v5

    #@683
    .line 685
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@685
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    #@688
    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68b
    .line 687
    const/4 v4, 0x1

    #@68c
    return v4

    #@68d
    .line 691
    .end local v5    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@690
    move-object/from16 v0, p2

    #@692
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@695
    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@698
    move-result v5

    #@699
    .line 694
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@69b
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    #@69e
    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a1
    .line 696
    const/4 v4, 0x1

    #@6a2
    return v4

    #@6a3
    .line 700
    .end local v5    # "_arg0":I
    :sswitch_3c
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@6a6
    move-object/from16 v0, p2

    #@6a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ab
    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ae
    move-result v4

    #@6af
    if-eqz v4, :cond_11

    #@6b1
    .line 703
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6b3
    move-object/from16 v0, p2

    #@6b5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b8
    move-result-object v12

    #@6b9
    check-cast v12, Landroid/os/WorkSource;

    #@6bb
    .line 708
    :goto_11
    move-object/from16 v0, p0

    #@6bd
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    #@6c0
    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c3
    .line 710
    const/4 v4, 0x1

    #@6c4
    return v4

    #@6c5
    .line 706
    :cond_11
    const/4 v12, 0x0

    #@6c6
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_11

    #@6c7
    .line 714
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3d
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@6ca
    move-object/from16 v0, p2

    #@6cc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6cf
    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d2
    move-result v4

    #@6d3
    if-eqz v4, :cond_12

    #@6d5
    .line 717
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6d7
    move-object/from16 v0, p2

    #@6d9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6dc
    move-result-object v12

    #@6dd
    check-cast v12, Landroid/os/WorkSource;

    #@6df
    .line 722
    :goto_12
    move-object/from16 v0, p0

    #@6e1
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    #@6e4
    .line 723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e7
    .line 724
    const/4 v4, 0x1

    #@6e8
    return v4

    #@6e9
    .line 720
    :cond_12
    const/4 v12, 0x0

    #@6ea
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_12

    #@6eb
    .line 728
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3e
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@6ee
    move-object/from16 v0, p2

    #@6f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f3
    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f6
    move-result v4

    #@6f7
    if-eqz v4, :cond_13

    #@6f9
    .line 731
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
    .line 736
    :goto_13
    move-object/from16 v0, p0

    #@705
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    #@708
    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70b
    .line 738
    const/4 v4, 0x1

    #@70c
    return v4

    #@70d
    .line 734
    :cond_13
    const/4 v12, 0x0

    #@70e
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_13

    #@70f
    .line 742
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@712
    move-object/from16 v0, p2

    #@714
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@717
    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71a
    move-result v4

    #@71b
    if-eqz v4, :cond_14

    #@71d
    .line 745
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
    .line 750
    :goto_14
    move-object/from16 v0, p0

    #@729
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    #@72c
    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72f
    .line 752
    const/4 v4, 0x1

    #@730
    return v4

    #@731
    .line 748
    :cond_14
    const/4 v12, 0x0

    #@732
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_14

    #@733
    .line 756
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_40
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@736
    move-object/from16 v0, p2

    #@738
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@73b
    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73e
    move-result v4

    #@73f
    if-eqz v4, :cond_15

    #@741
    .line 759
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
    .line 765
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74e
    move-result v6

    #@74f
    .line 766
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@751
    invoke-virtual {v0, v12, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    #@754
    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@757
    .line 768
    const/4 v4, 0x1

    #@758
    return v4

    #@759
    .line 762
    .end local v6    # "_arg1":I
    :cond_15
    const/4 v12, 0x0

    #@75a
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_15

    #@75b
    .line 772
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_41
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@75e
    move-object/from16 v0, p2

    #@760
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@763
    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@766
    move-result v4

    #@767
    if-eqz v4, :cond_16

    #@769
    .line 775
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@76b
    move-object/from16 v0, p2

    #@76d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@770
    move-result-object v12

    #@771
    check-cast v12, Landroid/os/WorkSource;

    #@773
    .line 780
    :goto_16
    move-object/from16 v0, p0

    #@775
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    #@778
    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@77b
    .line 782
    const/4 v4, 0x1

    #@77c
    return v4

    #@77d
    .line 778
    :cond_16
    const/4 v12, 0x0

    #@77e
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_16

    #@77f
    .line 786
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_42
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@782
    move-object/from16 v0, p2

    #@784
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@787
    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78a
    move-result v4

    #@78b
    if-eqz v4, :cond_17

    #@78d
    .line 789
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@78f
    move-object/from16 v0, p2

    #@791
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@794
    move-result-object v12

    #@795
    check-cast v12, Landroid/os/WorkSource;

    #@797
    .line 794
    :goto_17
    move-object/from16 v0, p0

    #@799
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V

    #@79c
    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79f
    .line 796
    const/4 v4, 0x1

    #@7a0
    return v4

    #@7a1
    .line 792
    :cond_17
    const/4 v12, 0x0

    #@7a2
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_17

    #@7a3
    .line 800
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_43
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@7a6
    move-object/from16 v0, p2

    #@7a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ab
    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ae
    move-result v4

    #@7af
    if-eqz v4, :cond_18

    #@7b1
    .line 803
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
    .line 808
    :goto_18
    move-object/from16 v0, p0

    #@7bd
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V

    #@7c0
    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c3
    .line 810
    const/4 v4, 0x1

    #@7c4
    return v4

    #@7c5
    .line 806
    :cond_18
    const/4 v12, 0x0

    #@7c6
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_18

    #@7c7
    .line 814
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_44
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@7ca
    move-object/from16 v0, p2

    #@7cc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7cf
    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7d2
    move-result v5

    #@7d3
    .line 818
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@7d6
    move-result-wide v38

    #@7d7
    .line 819
    .restart local v38    # "_arg1":J
    move-object/from16 v0, p0

    #@7d9
    move-wide/from16 v1, v38

    #@7db
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState(IJ)V

    #@7de
    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e1
    .line 821
    const/4 v4, 0x1

    #@7e2
    return v4

    #@7e3
    .line 825
    .end local v5    # "_arg0":I
    .end local v38    # "_arg1":J
    :sswitch_45
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@7e6
    move-object/from16 v0, p2

    #@7e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7eb
    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7ee
    move-result-object v35

    #@7ef
    .line 829
    .restart local v35    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f2
    move-result v6

    #@7f3
    .line 830
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@7f5
    move-object/from16 v1, v35

    #@7f7
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    #@7fa
    .line 831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7fd
    .line 832
    const/4 v4, 0x1

    #@7fe
    return v4

    #@7ff
    .line 836
    .end local v6    # "_arg1":I
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@802
    move-object/from16 v0, p2

    #@804
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@807
    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    #@80a
    .line 838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@80d
    .line 839
    const/4 v4, 0x1

    #@80e
    return v4

    #@80f
    .line 843
    :sswitch_47
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@812
    move-object/from16 v0, p2

    #@814
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@817
    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@81a
    move-result v5

    #@81b
    .line 847
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@81e
    move-result-object v41

    #@81f
    .line 849
    .restart local v41    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@822
    move-result v26

    #@823
    .line 850
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@825
    move-object/from16 v1, v41

    #@827
    move/from16 v2, v26

    #@829
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode(ILjava/lang/String;I)V

    #@82c
    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82f
    .line 852
    const/4 v4, 0x1

    #@830
    return v4

    #@831
    .line 856
    .end local v5    # "_arg0":I
    .end local v26    # "_arg2":I
    .end local v41    # "_arg1":Ljava/lang/String;
    :sswitch_48
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@834
    move-object/from16 v0, p2

    #@836
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@839
    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83c
    move-result v5

    #@83d
    .line 860
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@840
    move-result v6

    #@841
    .line 862
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@844
    move-result v26

    #@845
    .line 864
    .restart local v26    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@848
    move-result v27

    #@849
    .line 866
    .local v27, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@84c
    move-result v9

    #@84d
    .line 868
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@850
    move-result v29

    #@851
    .line 870
    .local v29, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@854
    move-result v18

    #@855
    .restart local v18    # "_arg6":I
    move-object/from16 v23, p0

    #@857
    move/from16 v24, v5

    #@859
    move/from16 v25, v6

    #@85b
    move/from16 v28, v9

    #@85d
    move/from16 v30, v18

    #@85f
    .line 871
    invoke-virtual/range {v23 .. v30}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIIII)V

    #@862
    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@865
    .line 873
    const/4 v4, 0x1

    #@866
    return v4

    #@867
    .line 877
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":I
    .end local v18    # "_arg6":I
    .end local v26    # "_arg2":I
    .end local v27    # "_arg3":I
    .end local v29    # "_arg5":I
    :sswitch_49
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@86a
    move-object/from16 v0, p2

    #@86c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86f
    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    #@872
    move-result-wide v44

    #@873
    .line 879
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@876
    .line 880
    move-object/from16 v0, p3

    #@878
    move-wide/from16 v1, v44

    #@87a
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@87d
    .line 881
    const/4 v4, 0x1

    #@87e
    return v4

    #@87f
    .line 885
    .end local v44    # "_result":J
    :sswitch_4a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@882
    move-object/from16 v0, p2

    #@884
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@887
    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    #@88a
    move-result-wide v44

    #@88b
    .line 887
    .restart local v44    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@88e
    .line 888
    move-object/from16 v0, p3

    #@890
    move-wide/from16 v1, v44

    #@892
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@895
    .line 889
    const/4 v4, 0x1

    #@896
    return v4

    #@897
    .line 893
    .end local v44    # "_result":J
    :sswitch_4b
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@89a
    move-object/from16 v0, p2

    #@89c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89f
    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a2
    move-result v4

    #@8a3
    if-eqz v4, :cond_19

    #@8a5
    .line 896
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8a7
    move-object/from16 v0, p2

    #@8a9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8ac
    move-result-object v12

    #@8ad
    check-cast v12, Landroid/os/WorkSource;

    #@8af
    .line 901
    :goto_19
    move-object/from16 v0, p0

    #@8b1
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted(Landroid/os/WorkSource;)V

    #@8b4
    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b7
    .line 903
    const/4 v4, 0x1

    #@8b8
    return v4

    #@8b9
    .line 899
    :cond_19
    const/4 v12, 0x0

    #@8ba
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_19

    #@8bb
    .line 907
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_4c
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@8be
    move-object/from16 v0, p2

    #@8c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c3
    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8c6
    move-result v4

    #@8c7
    if-eqz v4, :cond_1a

    #@8c9
    .line 910
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8cb
    move-object/from16 v0, p2

    #@8cd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8d0
    move-result-object v12

    #@8d1
    check-cast v12, Landroid/os/WorkSource;

    #@8d3
    .line 915
    :goto_1a
    move-object/from16 v0, p0

    #@8d5
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped(Landroid/os/WorkSource;)V

    #@8d8
    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8db
    .line 917
    const/4 v4, 0x1

    #@8dc
    return v4

    #@8dd
    .line 913
    :cond_1a
    const/4 v12, 0x0

    #@8de
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_1a

    #@8df
    .line 921
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_4d
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@8e2
    move-object/from16 v0, p2

    #@8e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e7
    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetBleScan()V

    #@8ea
    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ed
    .line 924
    const/4 v4, 0x1

    #@8ee
    return v4

    #@8ef
    .line 928
    :sswitch_4e
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@8f2
    move-object/from16 v0, p2

    #@8f4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f7
    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8fa
    move-result v5

    #@8fb
    .line 931
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@8fd
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    #@900
    move-result-object v46

    #@901
    .line 932
    .local v46, "_result":Landroid/os/health/HealthStatsParceler;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@904
    .line 933
    if-eqz v46, :cond_1b

    #@906
    .line 934
    const/4 v4, 0x1

    #@907
    move-object/from16 v0, p3

    #@909
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@90c
    .line 935
    const/4 v4, 0x1

    #@90d
    move-object/from16 v0, v46

    #@90f
    move-object/from16 v1, p3

    #@911
    invoke-virtual {v0, v1, v4}, Landroid/os/health/HealthStatsParceler;->writeToParcel(Landroid/os/Parcel;I)V

    #@914
    .line 940
    :goto_1b
    const/4 v4, 0x1

    #@915
    return v4

    #@916
    .line 938
    :cond_1b
    const/4 v4, 0x0

    #@917
    move-object/from16 v0, p3

    #@919
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@91c
    goto :goto_1b

    #@91d
    .line 944
    .end local v5    # "_arg0":I
    .end local v46    # "_result":Landroid/os/health/HealthStatsParceler;
    :sswitch_4f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@920
    move-object/from16 v0, p2

    #@922
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@925
    .line 946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@928
    move-result-object v37

    #@929
    .line 947
    .local v37, "_arg0":[I
    move-object/from16 v0, p0

    #@92b
    move-object/from16 v1, v37

    #@92d
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    #@930
    move-result-object v49

    #@931
    .line 948
    .local v49, "_result":[Landroid/os/health/HealthStatsParceler;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@934
    .line 949
    const/4 v4, 0x1

    #@935
    move-object/from16 v0, p3

    #@937
    move-object/from16 v1, v49

    #@939
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@93c
    .line 950
    const/4 v4, 0x1

    #@93d
    return v4

    #@93e
    .line 954
    .end local v37    # "_arg0":[I
    .end local v49    # "_result":[Landroid/os/health/HealthStatsParceler;
    :sswitch_50
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@941
    move-object/from16 v0, p2

    #@943
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@946
    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@949
    move-result v4

    #@94a
    if-eqz v4, :cond_1c

    #@94c
    .line 957
    sget-object v4, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@94e
    move-object/from16 v0, p2

    #@950
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@953
    move-result-object v31

    #@954
    check-cast v31, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    #@956
    .line 962
    :goto_1c
    move-object/from16 v0, p0

    #@958
    move-object/from16 v1, v31

    #@95a
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    #@95d
    .line 963
    const/4 v4, 0x1

    #@95e
    return v4

    #@95f
    .line 960
    :cond_1c
    const/16 v31, 0x0

    #@961
    .local v31, "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    goto :goto_1c

    #@962
    .line 967
    .end local v31    # "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :sswitch_51
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@965
    move-object/from16 v0, p2

    #@967
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96a
    .line 969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@96d
    move-result v4

    #@96e
    if-eqz v4, :cond_1d

    #@970
    .line 970
    sget-object v4, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@972
    move-object/from16 v0, p2

    #@974
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@977
    move-result-object v33

    #@978
    check-cast v33, Landroid/telephony/ModemActivityInfo;

    #@97a
    .line 975
    :goto_1d
    move-object/from16 v0, p0

    #@97c
    move-object/from16 v1, v33

    #@97e
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V

    #@981
    .line 976
    const/4 v4, 0x1

    #@982
    return v4

    #@983
    .line 973
    :cond_1d
    const/16 v33, 0x0

    #@985
    .local v33, "_arg0":Landroid/telephony/ModemActivityInfo;
    goto :goto_1d

    #@986
    .line 980
    .end local v33    # "_arg0":Landroid/telephony/ModemActivityInfo;
    :sswitch_52
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@989
    move-object/from16 v0, p2

    #@98b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98e
    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@991
    move-result v4

    #@992
    if-eqz v4, :cond_1e

    #@994
    .line 983
    sget-object v4, Landroid/net/wifi/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@996
    move-object/from16 v0, p2

    #@998
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@99b
    move-result-object v32

    #@99c
    check-cast v32, Landroid/net/wifi/WifiActivityEnergyInfo;

    #@99e
    .line 988
    :goto_1e
    move-object/from16 v0, p0

    #@9a0
    move-object/from16 v1, v32

    #@9a2
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    #@9a5
    .line 989
    const/4 v4, 0x1

    #@9a6
    return v4

    #@9a7
    .line 986
    :cond_1e
    const/16 v32, 0x0

    #@9a9
    .local v32, "_arg0":Landroid/net/wifi/WifiActivityEnergyInfo;
    goto :goto_1e

    #@9aa
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

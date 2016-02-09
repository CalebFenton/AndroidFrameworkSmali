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

.field static final TRANSACTION_noteNetworkInterfaceType:I = 0x45

.field static final TRANSACTION_noteNetworkStatsEnabled:I = 0x46

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x2c

.field static final TRANSACTION_notePhoneOff:I = 0x2a

.field static final TRANSACTION_notePhoneOn:I = 0x29

.field static final TRANSACTION_notePhoneSignalStrength:I = 0x2b

.field static final TRANSACTION_notePhoneState:I = 0x2d

.field static final TRANSACTION_noteResetAudio:I = 0x8

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
    .locals 43
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
    .line 888
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
    move-result-object v42

    #@142
    .line 171
    .local v42, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@145
    .line 172
    move-object/from16 v0, p3

    #@147
    move-object/from16 v1, v42

    #@149
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14c
    .line 173
    const/4 v4, 0x1

    #@14d
    return v4

    #@14e
    .line 177
    .end local v42    # "_result":[B
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
    move-result-object v40

    #@15a
    .line 179
    .local v40, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15d
    .line 180
    if-eqz v40, :cond_0

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
    move-object/from16 v0, v40

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
    .end local v40    # "_result":Landroid/os/ParcelFileDescriptor;
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
    move-result v41

    #@182
    .line 193
    .local v41, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@185
    .line 194
    if-eqz v41, :cond_1

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
    .end local v41    # "_result":Z
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
    move-result-wide v38

    #@19d
    .line 201
    .local v38, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a0
    .line 202
    move-object/from16 v0, p3

    #@1a2
    move-wide/from16 v1, v38

    #@1a4
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@1a7
    .line 203
    const/4 v4, 0x1

    #@1a8
    return v4

    #@1a9
    .line 207
    .end local v38    # "_result":J
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
    move-result-wide v38

    #@1b5
    .line 209
    .restart local v38    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b8
    .line 210
    move-object/from16 v0, p3

    #@1ba
    move-wide/from16 v1, v38

    #@1bc
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@1bf
    .line 211
    const/4 v4, 0x1

    #@1c0
    return v4

    #@1c1
    .line 215
    .end local v38    # "_result":J
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
    move-result-object v36

    #@1d1
    .line 221
    .local v36, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d4
    move-result v26

    #@1d5
    .line 222
    .local v26, "_arg2":I
    move-object/from16 v0, p0

    #@1d7
    move-object/from16 v1, v36

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
    .end local v36    # "_arg1":Ljava/lang/String;
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
    move-result-object v31

    #@1ef
    .line 232
    .local v31, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f2
    move-result v6

    #@1f3
    .line 233
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1f5
    move-object/from16 v1, v31

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
    .end local v31    # "_arg0":Ljava/lang/String;
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
    move-result-object v31

    #@20b
    .line 243
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20e
    move-result v6

    #@20f
    .line 244
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@211
    move-object/from16 v1, v31

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
    .end local v31    # "_arg0":Ljava/lang/String;
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
    move-result-object v31

    #@227
    .line 254
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22a
    move-result v6

    #@22b
    .line 255
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@22d
    move-object/from16 v1, v31

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
    .end local v31    # "_arg0":Ljava/lang/String;
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
    move-result-object v31

    #@243
    .line 265
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@246
    move-result v6

    #@247
    .line 266
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@249
    move-object/from16 v1, v31

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
    .end local v31    # "_arg0":Ljava/lang/String;
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
    .restart local v10    # "_arg5":Z
    goto :goto_2

    #@282
    .line 291
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Z
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
    .restart local v10    # "_arg5":Z
    goto :goto_4

    #@2ec
    .line 332
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Z
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
    .restart local v22    # "_arg10":Z
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
    .end local v22    # "_arg10":Z
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
    move-result-wide v34

    #@39c
    .line 398
    .local v34, "_arg1":J
    move-object/from16 v0, p0

    #@39e
    move-wide/from16 v1, v34

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
    .end local v34    # "_arg1":J
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
    move-result-object v31

    #@43c
    .line 464
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43f
    move-result v6

    #@440
    .line 465
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@442
    move-object/from16 v1, v31

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
    .end local v31    # "_arg0":Ljava/lang/String;
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
    const/16 v32, 0x1

    #@45c
    .line 474
    .local v32, "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    #@45e
    move/from16 v1, v32

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
    .end local v32    # "_arg0":Z
    :cond_9
    const/16 v32, 0x0

    #@46a
    .restart local v32    # "_arg0":Z
    goto :goto_9

    #@46b
    .line 480
    .end local v32    # "_arg0":Z
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
    move-result-object v36

    #@47b
    .line 485
    .restart local v36    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@47d
    move-object/from16 v1, v36

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
    .end local v36    # "_arg1":Ljava/lang/String;
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
    move-result-wide v34

    #@497
    .line 496
    .restart local v34    # "_arg1":J
    move-object/from16 v0, p0

    #@499
    move-wide/from16 v1, v34

    #@49b
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJ)V

    #@49e
    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a1
    .line 498
    const/4 v4, 0x1

    #@4a2
    return v4

    #@4a3
    .line 502
    .end local v5    # "_arg0":I
    .end local v34    # "_arg1":J
    :sswitch_29
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4a6
    move-object/from16 v0, p2

    #@4a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ab
    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    #@4ae
    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b1
    .line 505
    const/4 v4, 0x1

    #@4b2
    return v4

    #@4b3
    .line 509
    :sswitch_2a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4b6
    move-object/from16 v0, p2

    #@4b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4bb
    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    #@4be
    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c1
    .line 512
    const/4 v4, 0x1

    #@4c2
    return v4

    #@4c3
    .line 516
    :sswitch_2b
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4c6
    move-object/from16 v0, p2

    #@4c8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4cb
    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ce
    move-result v4

    #@4cf
    if-eqz v4, :cond_a

    #@4d1
    .line 519
    sget-object v4, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d3
    move-object/from16 v0, p2

    #@4d5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d8
    move-result-object v30

    #@4d9
    check-cast v30, Landroid/telephony/SignalStrength;

    #@4db
    .line 524
    :goto_a
    move-object/from16 v0, p0

    #@4dd
    move-object/from16 v1, v30

    #@4df
    invoke-virtual {v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    #@4e2
    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e5
    .line 526
    const/4 v4, 0x1

    #@4e6
    return v4

    #@4e7
    .line 522
    :cond_a
    const/16 v30, 0x0

    #@4e9
    .local v30, "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_a

    #@4ea
    .line 530
    .end local v30    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_2c
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@4ed
    move-object/from16 v0, p2

    #@4ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f2
    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f5
    move-result v5

    #@4f6
    .line 534
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f9
    move-result v4

    #@4fa
    if-eqz v4, :cond_b

    #@4fc
    const/16 v37, 0x1

    #@4fe
    .line 535
    .local v37, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    #@500
    move/from16 v1, v37

    #@502
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZ)V

    #@505
    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@508
    .line 537
    const/4 v4, 0x1

    #@509
    return v4

    #@50a
    .line 534
    .end local v37    # "_arg1":Z
    :cond_b
    const/16 v37, 0x0

    #@50c
    .restart local v37    # "_arg1":Z
    goto :goto_b

    #@50d
    .line 541
    .end local v5    # "_arg0":I
    .end local v37    # "_arg1":Z
    :sswitch_2d
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@510
    move-object/from16 v0, p2

    #@512
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@515
    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@518
    move-result v5

    #@519
    .line 544
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@51b
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    #@51e
    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@521
    .line 546
    const/4 v4, 0x1

    #@522
    return v4

    #@523
    .line 550
    .end local v5    # "_arg0":I
    :sswitch_2e
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@526
    move-object/from16 v0, p2

    #@528
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52b
    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    #@52e
    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@531
    .line 553
    const/4 v4, 0x1

    #@532
    return v4

    #@533
    .line 557
    :sswitch_2f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@536
    move-object/from16 v0, p2

    #@538
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53b
    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    #@53e
    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@541
    .line 560
    const/4 v4, 0x1

    #@542
    return v4

    #@543
    .line 564
    :sswitch_30
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@546
    move-object/from16 v0, p2

    #@548
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54b
    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@54e
    move-result v4

    #@54f
    if-eqz v4, :cond_c

    #@551
    .line 567
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@553
    move-object/from16 v0, p2

    #@555
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@558
    move-result-object v12

    #@559
    check-cast v12, Landroid/os/WorkSource;

    #@55b
    .line 572
    :goto_c
    move-object/from16 v0, p0

    #@55d
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    #@560
    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@563
    .line 574
    const/4 v4, 0x1

    #@564
    return v4

    #@565
    .line 570
    :cond_c
    const/4 v12, 0x0

    #@566
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_c

    #@567
    .line 578
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_31
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@56a
    move-object/from16 v0, p2

    #@56c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56f
    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@572
    move-result v4

    #@573
    if-eqz v4, :cond_d

    #@575
    .line 581
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@577
    move-object/from16 v0, p2

    #@579
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57c
    move-result-object v12

    #@57d
    check-cast v12, Landroid/os/WorkSource;

    #@57f
    .line 587
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@582
    move-result v4

    #@583
    if-eqz v4, :cond_e

    #@585
    .line 588
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@587
    move-object/from16 v0, p2

    #@589
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@58c
    move-result-object v33

    #@58d
    check-cast v33, Landroid/os/WorkSource;

    #@58f
    .line 593
    :goto_e
    move-object/from16 v0, p0

    #@591
    move-object/from16 v1, v33

    #@593
    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    #@596
    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@599
    .line 595
    const/4 v4, 0x1

    #@59a
    return v4

    #@59b
    .line 584
    :cond_d
    const/4 v12, 0x0

    #@59c
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_d

    #@59d
    .line 591
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :cond_e
    const/16 v33, 0x0

    #@59f
    .local v33, "_arg1":Landroid/os/WorkSource;
    goto :goto_e

    #@5a0
    .line 599
    .end local v33    # "_arg1":Landroid/os/WorkSource;
    :sswitch_32
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@5a3
    move-object/from16 v0, p2

    #@5a5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a8
    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ab
    move-result v4

    #@5ac
    if-eqz v4, :cond_f

    #@5ae
    .line 602
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5b0
    move-object/from16 v0, p2

    #@5b2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5b5
    move-result-object v12

    #@5b6
    check-cast v12, Landroid/os/WorkSource;

    #@5b8
    .line 607
    :goto_f
    move-object/from16 v0, p0

    #@5ba
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    #@5bd
    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c0
    .line 609
    const/4 v4, 0x1

    #@5c1
    return v4

    #@5c2
    .line 605
    :cond_f
    const/4 v12, 0x0

    #@5c3
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_f

    #@5c4
    .line 613
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_33
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@5c7
    move-object/from16 v0, p2

    #@5c9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5cc
    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5cf
    move-result v5

    #@5d0
    .line 617
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d3
    move-result-object v36

    #@5d4
    .line 618
    .restart local v36    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5d6
    move-object/from16 v1, v36

    #@5d8
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    #@5db
    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5de
    .line 620
    const/4 v4, 0x1

    #@5df
    return v4

    #@5e0
    .line 624
    .end local v5    # "_arg0":I
    .end local v36    # "_arg1":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@5e3
    move-object/from16 v0, p2

    #@5e5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e8
    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5eb
    move-result v5

    #@5ec
    .line 628
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ef
    move-result v4

    #@5f0
    if-eqz v4, :cond_10

    #@5f2
    const/16 v37, 0x1

    #@5f4
    .line 629
    .restart local v37    # "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    #@5f6
    move/from16 v1, v37

    #@5f8
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    #@5fb
    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5fe
    .line 631
    const/4 v4, 0x1

    #@5ff
    return v4

    #@600
    .line 628
    .end local v37    # "_arg1":Z
    :cond_10
    const/16 v37, 0x0

    #@602
    .restart local v37    # "_arg1":Z
    goto :goto_10

    #@603
    .line 635
    .end local v5    # "_arg0":I
    .end local v37    # "_arg1":Z
    :sswitch_35
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@606
    move-object/from16 v0, p2

    #@608
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60b
    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@60e
    move-result v5

    #@60f
    .line 638
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@611
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    #@614
    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@617
    .line 640
    const/4 v4, 0x1

    #@618
    return v4

    #@619
    .line 644
    .end local v5    # "_arg0":I
    :sswitch_36
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@61c
    move-object/from16 v0, p2

    #@61e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@621
    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@624
    move-result v5

    #@625
    .line 647
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@627
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    #@62a
    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62d
    .line 649
    const/4 v4, 0x1

    #@62e
    return v4

    #@62f
    .line 653
    .end local v5    # "_arg0":I
    :sswitch_37
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@632
    move-object/from16 v0, p2

    #@634
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@637
    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63a
    move-result v5

    #@63b
    .line 656
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@63d
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    #@640
    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@643
    .line 658
    const/4 v4, 0x1

    #@644
    return v4

    #@645
    .line 662
    .end local v5    # "_arg0":I
    :sswitch_38
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@648
    move-object/from16 v0, p2

    #@64a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64d
    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@650
    move-result v5

    #@651
    .line 665
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@653
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    #@656
    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@659
    .line 667
    const/4 v4, 0x1

    #@65a
    return v4

    #@65b
    .line 671
    .end local v5    # "_arg0":I
    :sswitch_39
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@65e
    move-object/from16 v0, p2

    #@660
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@663
    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@666
    move-result v5

    #@667
    .line 674
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@669
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    #@66c
    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@66f
    .line 676
    const/4 v4, 0x1

    #@670
    return v4

    #@671
    .line 680
    .end local v5    # "_arg0":I
    :sswitch_3a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@674
    move-object/from16 v0, p2

    #@676
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@679
    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@67c
    move-result v5

    #@67d
    .line 683
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@67f
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    #@682
    .line 684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@685
    .line 685
    const/4 v4, 0x1

    #@686
    return v4

    #@687
    .line 689
    .end local v5    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@68a
    move-object/from16 v0, p2

    #@68c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68f
    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@692
    move-result v5

    #@693
    .line 692
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@695
    invoke-virtual {v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    #@698
    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@69b
    .line 694
    const/4 v4, 0x1

    #@69c
    return v4

    #@69d
    .line 698
    .end local v5    # "_arg0":I
    :sswitch_3c
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@6a0
    move-object/from16 v0, p2

    #@6a2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a5
    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a8
    move-result v4

    #@6a9
    if-eqz v4, :cond_11

    #@6ab
    .line 701
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6ad
    move-object/from16 v0, p2

    #@6af
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b2
    move-result-object v12

    #@6b3
    check-cast v12, Landroid/os/WorkSource;

    #@6b5
    .line 706
    :goto_11
    move-object/from16 v0, p0

    #@6b7
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    #@6ba
    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6bd
    .line 708
    const/4 v4, 0x1

    #@6be
    return v4

    #@6bf
    .line 704
    :cond_11
    const/4 v12, 0x0

    #@6c0
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_11

    #@6c1
    .line 712
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3d
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@6c4
    move-object/from16 v0, p2

    #@6c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c9
    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6cc
    move-result v4

    #@6cd
    if-eqz v4, :cond_12

    #@6cf
    .line 715
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6d1
    move-object/from16 v0, p2

    #@6d3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6d6
    move-result-object v12

    #@6d7
    check-cast v12, Landroid/os/WorkSource;

    #@6d9
    .line 720
    :goto_12
    move-object/from16 v0, p0

    #@6db
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    #@6de
    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e1
    .line 722
    const/4 v4, 0x1

    #@6e2
    return v4

    #@6e3
    .line 718
    :cond_12
    const/4 v12, 0x0

    #@6e4
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_12

    #@6e5
    .line 726
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3e
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@6e8
    move-object/from16 v0, p2

    #@6ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ed
    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f0
    move-result v4

    #@6f1
    if-eqz v4, :cond_13

    #@6f3
    .line 729
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6f5
    move-object/from16 v0, p2

    #@6f7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6fa
    move-result-object v12

    #@6fb
    check-cast v12, Landroid/os/WorkSource;

    #@6fd
    .line 734
    :goto_13
    move-object/from16 v0, p0

    #@6ff
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    #@702
    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@705
    .line 736
    const/4 v4, 0x1

    #@706
    return v4

    #@707
    .line 732
    :cond_13
    const/4 v12, 0x0

    #@708
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_13

    #@709
    .line 740
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_3f
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@70c
    move-object/from16 v0, p2

    #@70e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@711
    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@714
    move-result v4

    #@715
    if-eqz v4, :cond_14

    #@717
    .line 743
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@719
    move-object/from16 v0, p2

    #@71b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@71e
    move-result-object v12

    #@71f
    check-cast v12, Landroid/os/WorkSource;

    #@721
    .line 748
    :goto_14
    move-object/from16 v0, p0

    #@723
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    #@726
    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@729
    .line 750
    const/4 v4, 0x1

    #@72a
    return v4

    #@72b
    .line 746
    :cond_14
    const/4 v12, 0x0

    #@72c
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_14

    #@72d
    .line 754
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_40
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@730
    move-object/from16 v0, p2

    #@732
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@735
    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@738
    move-result v4

    #@739
    if-eqz v4, :cond_15

    #@73b
    .line 757
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@73d
    move-object/from16 v0, p2

    #@73f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@742
    move-result-object v12

    #@743
    check-cast v12, Landroid/os/WorkSource;

    #@745
    .line 763
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@748
    move-result v6

    #@749
    .line 764
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@74b
    invoke-virtual {v0, v12, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    #@74e
    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@751
    .line 766
    const/4 v4, 0x1

    #@752
    return v4

    #@753
    .line 760
    .end local v6    # "_arg1":I
    :cond_15
    const/4 v12, 0x0

    #@754
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_15

    #@755
    .line 770
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_41
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@758
    move-object/from16 v0, p2

    #@75a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@75d
    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@760
    move-result v4

    #@761
    if-eqz v4, :cond_16

    #@763
    .line 773
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@765
    move-object/from16 v0, p2

    #@767
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@76a
    move-result-object v12

    #@76b
    check-cast v12, Landroid/os/WorkSource;

    #@76d
    .line 778
    :goto_16
    move-object/from16 v0, p0

    #@76f
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    #@772
    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@775
    .line 780
    const/4 v4, 0x1

    #@776
    return v4

    #@777
    .line 776
    :cond_16
    const/4 v12, 0x0

    #@778
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_16

    #@779
    .line 784
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_42
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@77c
    move-object/from16 v0, p2

    #@77e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@781
    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@784
    move-result v4

    #@785
    if-eqz v4, :cond_17

    #@787
    .line 787
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@789
    move-object/from16 v0, p2

    #@78b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@78e
    move-result-object v12

    #@78f
    check-cast v12, Landroid/os/WorkSource;

    #@791
    .line 792
    :goto_17
    move-object/from16 v0, p0

    #@793
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V

    #@796
    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@799
    .line 794
    const/4 v4, 0x1

    #@79a
    return v4

    #@79b
    .line 790
    :cond_17
    const/4 v12, 0x0

    #@79c
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_17

    #@79d
    .line 798
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_43
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@7a0
    move-object/from16 v0, p2

    #@7a2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a5
    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7a8
    move-result v4

    #@7a9
    if-eqz v4, :cond_18

    #@7ab
    .line 801
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7ad
    move-object/from16 v0, p2

    #@7af
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7b2
    move-result-object v12

    #@7b3
    check-cast v12, Landroid/os/WorkSource;

    #@7b5
    .line 806
    :goto_18
    move-object/from16 v0, p0

    #@7b7
    invoke-virtual {v0, v12}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V

    #@7ba
    .line 807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7bd
    .line 808
    const/4 v4, 0x1

    #@7be
    return v4

    #@7bf
    .line 804
    :cond_18
    const/4 v12, 0x0

    #@7c0
    .restart local v12    # "_arg0":Landroid/os/WorkSource;
    goto :goto_18

    #@7c1
    .line 812
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_44
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@7c4
    move-object/from16 v0, p2

    #@7c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c9
    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7cc
    move-result v5

    #@7cd
    .line 816
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@7d0
    move-result-wide v34

    #@7d1
    .line 817
    .restart local v34    # "_arg1":J
    move-object/from16 v0, p0

    #@7d3
    move-wide/from16 v1, v34

    #@7d5
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState(IJ)V

    #@7d8
    .line 818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7db
    .line 819
    const/4 v4, 0x1

    #@7dc
    return v4

    #@7dd
    .line 823
    .end local v5    # "_arg0":I
    .end local v34    # "_arg1":J
    :sswitch_45
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@7e0
    move-object/from16 v0, p2

    #@7e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e5
    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7e8
    move-result-object v31

    #@7e9
    .line 827
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ec
    move-result v6

    #@7ed
    .line 828
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@7ef
    move-object/from16 v1, v31

    #@7f1
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    #@7f4
    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f7
    .line 830
    const/4 v4, 0x1

    #@7f8
    return v4

    #@7f9
    .line 834
    .end local v6    # "_arg1":I
    .end local v31    # "_arg0":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@7fc
    move-object/from16 v0, p2

    #@7fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@801
    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    #@804
    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@807
    .line 837
    const/4 v4, 0x1

    #@808
    return v4

    #@809
    .line 841
    :sswitch_47
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@80c
    move-object/from16 v0, p2

    #@80e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@811
    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@814
    move-result v4

    #@815
    if-eqz v4, :cond_19

    #@817
    const/16 v32, 0x1

    #@819
    .line 845
    .restart local v32    # "_arg0":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@81c
    move-result-object v36

    #@81d
    .line 847
    .restart local v36    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@820
    move-result v26

    #@821
    .line 848
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@823
    move/from16 v1, v32

    #@825
    move-object/from16 v2, v36

    #@827
    move/from16 v3, v26

    #@829
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode(ZLjava/lang/String;I)V

    #@82c
    .line 849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82f
    .line 850
    const/4 v4, 0x1

    #@830
    return v4

    #@831
    .line 843
    .end local v26    # "_arg2":I
    .end local v32    # "_arg0":Z
    .end local v36    # "_arg1":Ljava/lang/String;
    :cond_19
    const/16 v32, 0x0

    #@833
    .restart local v32    # "_arg0":Z
    goto :goto_19

    #@834
    .line 854
    .end local v32    # "_arg0":Z
    :sswitch_48
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@837
    move-object/from16 v0, p2

    #@839
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83c
    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83f
    move-result v5

    #@840
    .line 858
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@843
    move-result v6

    #@844
    .line 860
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@847
    move-result v26

    #@848
    .line 862
    .restart local v26    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@84b
    move-result v27

    #@84c
    .line 864
    .local v27, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@84f
    move-result v9

    #@850
    .line 866
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@853
    move-result v29

    #@854
    .local v29, "_arg5":I
    move-object/from16 v23, p0

    #@856
    move/from16 v24, v5

    #@858
    move/from16 v25, v6

    #@85a
    move/from16 v28, v9

    #@85c
    .line 867
    invoke-virtual/range {v23 .. v29}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIII)V

    #@85f
    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@862
    .line 869
    const/4 v4, 0x1

    #@863
    return v4

    #@864
    .line 873
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":I
    .end local v26    # "_arg2":I
    .end local v27    # "_arg3":I
    .end local v29    # "_arg5":I
    :sswitch_49
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@867
    move-object/from16 v0, p2

    #@869
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86c
    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    #@86f
    move-result-wide v38

    #@870
    .line 875
    .restart local v38    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@873
    .line 876
    move-object/from16 v0, p3

    #@875
    move-wide/from16 v1, v38

    #@877
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@87a
    .line 877
    const/4 v4, 0x1

    #@87b
    return v4

    #@87c
    .line 881
    .end local v38    # "_result":J
    :sswitch_4a
    const-string/jumbo v4, "com.android.internal.app.IBatteryStats"

    #@87f
    move-object/from16 v0, p2

    #@881
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@884
    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    #@887
    move-result-wide v38

    #@888
    .line 883
    .restart local v38    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@88b
    .line 884
    move-object/from16 v0, p3

    #@88d
    move-wide/from16 v1, v38

    #@88f
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@892
    .line 885
    const/4 v4, 0x1

    #@893
    return v4

    #@894
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

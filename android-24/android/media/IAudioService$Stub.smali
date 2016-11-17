.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x24

.field static final TRANSACTION_adjustStreamVolume:I = 0x2

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x1

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x1c

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x36

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0x5

.field static final TRANSACTION_forceVolumeControlStream:I = 0x2a

.field static final TRANSACTION_getActiveRecordingConfigurations:I = 0x3f

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x26

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xb

.field static final TRANSACTION_getMode:I = 0x16

.field static final TRANSACTION_getRingerModeExternal:I = 0xf

.field static final TRANSACTION_getRingerModeInternal:I = 0x10

.field static final TRANSACTION_getRingtonePlayer:I = 0x2c

.field static final TRANSACTION_getStreamMaxVolume:I = 0xa

.field static final TRANSACTION_getStreamMinVolume:I = 0x9

.field static final TRANSACTION_getStreamVolume:I = 0x8

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x2d

.field static final TRANSACTION_getVibrateSetting:I = 0x13

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x22

.field static final TRANSACTION_isBluetoothScoOn:I = 0x20

.field static final TRANSACTION_isCameraSoundForced:I = 0x31

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x38

.field static final TRANSACTION_isMasterMute:I = 0x6

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x1e

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x35

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x34

.field static final TRANSACTION_isStreamMute:I = 0x4

.field static final TRANSACTION_isValidRingerMode:I = 0x11

.field static final TRANSACTION_loadSoundEffects:I = 0x19

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x33

.field static final TRANSACTION_playSoundEffect:I = 0x17

.field static final TRANSACTION_playSoundEffectVolume:I = 0x18

.field static final TRANSACTION_registerAudioPolicy:I = 0x39

.field static final TRANSACTION_registerRecordingCallback:I = 0x3d

.field static final TRANSACTION_reloadAudioSettings:I = 0x1b

.field static final TRANSACTION_requestAudioFocus:I = 0x23

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x2f

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x21

.field static final TRANSACTION_setBluetoothScoOn:I = 0x1f

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x3b

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x37

.field static final TRANSACTION_setMasterMute:I = 0x7

.field static final TRANSACTION_setMicrophoneMute:I = 0xc

.field static final TRANSACTION_setMode:I = 0x15

.field static final TRANSACTION_setRingerModeExternal:I = 0xd

.field static final TRANSACTION_setRingerModeInternal:I = 0xe

.field static final TRANSACTION_setRingtonePlayer:I = 0x2b

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x1d

.field static final TRANSACTION_setStreamVolume:I = 0x3

.field static final TRANSACTION_setVibrateSetting:I = 0x12

.field static final TRANSACTION_setVolumeController:I = 0x32

.field static final TRANSACTION_setVolumePolicy:I = 0x3c

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x2e

.field static final TRANSACTION_shouldVibrate:I = 0x14

.field static final TRANSACTION_startBluetoothSco:I = 0x27

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x28

.field static final TRANSACTION_startWatchingRoutes:I = 0x30

.field static final TRANSACTION_stopBluetoothSco:I = 0x29

.field static final TRANSACTION_unloadSoundEffects:I = 0x1a

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x25

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x3a

.field static final TRANSACTION_unregisterRecordingCallback:I = 0x3e


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.media.IAudioService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.media.IAudioService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/IAudioService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/media/IAudioService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 51
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 726
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.media.IAudioService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.media.IAudioService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v5

    #@1e
    .line 54
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v6

    #@22
    .line 56
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v7

    #@26
    .line 58
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    .line 60
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d
    move-result-object v9

    #@2e
    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    #@30
    .line 61
    invoke-virtual/range {v4 .. v9}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V

    #@33
    .line 62
    const/4 v4, 0x1

    #@34
    return v4

    #@35
    .line 66
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "android.media.IAudioService"

    #@38
    move-object/from16 v0, p2

    #@3a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v5

    #@41
    .line 70
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v6

    #@45
    .line 72
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v7

    #@49
    .line 74
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4c
    move-result-object v8

    #@4d
    .line 75
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4f
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    #@52
    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 77
    const/4 v4, 0x1

    #@56
    return v4

    #@57
    .line 81
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "android.media.IAudioService"

    #@5a
    move-object/from16 v0, p2

    #@5c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f
    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v5

    #@63
    .line 85
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v6

    #@67
    .line 87
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v7

    #@6b
    .line 89
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    .line 90
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    #@74
    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@77
    .line 92
    const/4 v4, 0x1

    #@78
    return v4

    #@79
    .line 96
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.media.IAudioService"

    #@7c
    move-object/from16 v0, p2

    #@7e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@81
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v5

    #@85
    .line 99
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@87
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    #@8a
    move-result v50

    #@8b
    .line 100
    .local v50, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8e
    .line 101
    if-eqz v50, :cond_0

    #@90
    const/4 v4, 0x1

    #@91
    :goto_0
    move-object/from16 v0, p3

    #@93
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@96
    .line 102
    const/4 v4, 0x1

    #@97
    return v4

    #@98
    .line 101
    :cond_0
    const/4 v4, 0x0

    #@99
    goto :goto_0

    #@9a
    .line 106
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.media.IAudioService"

    #@9d
    move-object/from16 v0, p2

    #@9f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v4

    #@a6
    if-eqz v4, :cond_1

    #@a8
    const/16 v36, 0x1

    #@aa
    .line 110
    .local v36, "_arg0":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ad
    move-result-object v39

    #@ae
    .line 111
    .local v39, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@b0
    move/from16 v1, v36

    #@b2
    move-object/from16 v2, v39

    #@b4
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    #@b7
    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ba
    .line 113
    const/4 v4, 0x1

    #@bb
    return v4

    #@bc
    .line 108
    .end local v36    # "_arg0":Z
    .end local v39    # "_arg1":Landroid/os/IBinder;
    :cond_1
    const/16 v36, 0x0

    #@be
    .restart local v36    # "_arg0":Z
    goto :goto_1

    #@bf
    .line 117
    .end local v36    # "_arg0":Z
    :sswitch_6
    const-string/jumbo v4, "android.media.IAudioService"

    #@c2
    move-object/from16 v0, p2

    #@c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    #@ca
    move-result v50

    #@cb
    .line 119
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ce
    .line 120
    if-eqz v50, :cond_2

    #@d0
    const/4 v4, 0x1

    #@d1
    :goto_2
    move-object/from16 v0, p3

    #@d3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@d6
    .line 121
    const/4 v4, 0x1

    #@d7
    return v4

    #@d8
    .line 120
    :cond_2
    const/4 v4, 0x0

    #@d9
    goto :goto_2

    #@da
    .line 125
    .end local v50    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "android.media.IAudioService"

    #@dd
    move-object/from16 v0, p2

    #@df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v4

    #@e6
    if-eqz v4, :cond_3

    #@e8
    const/16 v36, 0x1

    #@ea
    .line 129
    .restart local v36    # "_arg0":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ed
    move-result v6

    #@ee
    .line 131
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f1
    move-result-object v22

    #@f2
    .line 133
    .local v22, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f5
    move-result v44

    #@f6
    .line 134
    .local v44, "_arg3":I
    move-object/from16 v0, p0

    #@f8
    move/from16 v1, v36

    #@fa
    move-object/from16 v2, v22

    #@fc
    move/from16 v3, v44

    #@fe
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;I)V

    #@101
    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@104
    .line 136
    const/4 v4, 0x1

    #@105
    return v4

    #@106
    .line 127
    .end local v6    # "_arg1":I
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v36    # "_arg0":Z
    .end local v44    # "_arg3":I
    :cond_3
    const/16 v36, 0x0

    #@108
    .restart local v36    # "_arg0":Z
    goto :goto_3

    #@109
    .line 140
    .end local v36    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v4, "android.media.IAudioService"

    #@10c
    move-object/from16 v0, p2

    #@10e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@111
    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@114
    move-result v5

    #@115
    .line 143
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@117
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    #@11a
    move-result v45

    #@11b
    .line 144
    .local v45, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11e
    .line 145
    move-object/from16 v0, p3

    #@120
    move/from16 v1, v45

    #@122
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@125
    .line 146
    const/4 v4, 0x1

    #@126
    return v4

    #@127
    .line 150
    .end local v5    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_9
    const-string/jumbo v4, "android.media.IAudioService"

    #@12a
    move-object/from16 v0, p2

    #@12c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12f
    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@132
    move-result v5

    #@133
    .line 153
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@135
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    #@138
    move-result v45

    #@139
    .line 154
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13c
    .line 155
    move-object/from16 v0, p3

    #@13e
    move/from16 v1, v45

    #@140
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@143
    .line 156
    const/4 v4, 0x1

    #@144
    return v4

    #@145
    .line 160
    .end local v5    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "android.media.IAudioService"

    #@148
    move-object/from16 v0, p2

    #@14a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14d
    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@150
    move-result v5

    #@151
    .line 163
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@153
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    #@156
    move-result v45

    #@157
    .line 164
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15a
    .line 165
    move-object/from16 v0, p3

    #@15c
    move/from16 v1, v45

    #@15e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@161
    .line 166
    const/4 v4, 0x1

    #@162
    return v4

    #@163
    .line 170
    .end local v5    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.media.IAudioService"

    #@166
    move-object/from16 v0, p2

    #@168
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16b
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16e
    move-result v5

    #@16f
    .line 173
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@171
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    #@174
    move-result v45

    #@175
    .line 174
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@178
    .line 175
    move-object/from16 v0, p3

    #@17a
    move/from16 v1, v45

    #@17c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17f
    .line 176
    const/4 v4, 0x1

    #@180
    return v4

    #@181
    .line 180
    .end local v5    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.media.IAudioService"

    #@184
    move-object/from16 v0, p2

    #@186
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@189
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18c
    move-result v4

    #@18d
    if-eqz v4, :cond_4

    #@18f
    const/16 v36, 0x1

    #@191
    .line 184
    .restart local v36    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@194
    move-result-object v40

    #@195
    .line 186
    .local v40, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@198
    move-result v7

    #@199
    .line 187
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@19b
    move/from16 v1, v36

    #@19d
    move-object/from16 v2, v40

    #@19f
    invoke-virtual {v0, v1, v2, v7}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;I)V

    #@1a2
    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a5
    .line 189
    const/4 v4, 0x1

    #@1a6
    return v4

    #@1a7
    .line 182
    .end local v7    # "_arg2":I
    .end local v36    # "_arg0":Z
    .end local v40    # "_arg1":Ljava/lang/String;
    :cond_4
    const/16 v36, 0x0

    #@1a9
    .restart local v36    # "_arg0":Z
    goto :goto_4

    #@1aa
    .line 193
    .end local v36    # "_arg0":Z
    :sswitch_d
    const-string/jumbo v4, "android.media.IAudioService"

    #@1ad
    move-object/from16 v0, p2

    #@1af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b2
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5
    move-result v5

    #@1b6
    .line 197
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b9
    move-result-object v40

    #@1ba
    .line 198
    .restart local v40    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1bc
    move-object/from16 v1, v40

    #@1be
    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    #@1c1
    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c4
    .line 200
    const/4 v4, 0x1

    #@1c5
    return v4

    #@1c6
    .line 204
    .end local v5    # "_arg0":I
    .end local v40    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "android.media.IAudioService"

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d1
    move-result v5

    #@1d2
    .line 208
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d5
    move-result-object v40

    #@1d6
    .line 209
    .restart local v40    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1d8
    move-object/from16 v1, v40

    #@1da
    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    #@1dd
    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e0
    .line 211
    const/4 v4, 0x1

    #@1e1
    return v4

    #@1e2
    .line 215
    .end local v5    # "_arg0":I
    .end local v40    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v4, "android.media.IAudioService"

    #@1e5
    move-object/from16 v0, p2

    #@1e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ea
    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    #@1ed
    move-result v45

    #@1ee
    .line 217
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f1
    .line 218
    move-object/from16 v0, p3

    #@1f3
    move/from16 v1, v45

    #@1f5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f8
    .line 219
    const/4 v4, 0x1

    #@1f9
    return v4

    #@1fa
    .line 223
    .end local v45    # "_result":I
    :sswitch_10
    const-string/jumbo v4, "android.media.IAudioService"

    #@1fd
    move-object/from16 v0, p2

    #@1ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@202
    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    #@205
    move-result v45

    #@206
    .line 225
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@209
    .line 226
    move-object/from16 v0, p3

    #@20b
    move/from16 v1, v45

    #@20d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@210
    .line 227
    const/4 v4, 0x1

    #@211
    return v4

    #@212
    .line 231
    .end local v45    # "_result":I
    :sswitch_11
    const-string/jumbo v4, "android.media.IAudioService"

    #@215
    move-object/from16 v0, p2

    #@217
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21a
    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21d
    move-result v5

    #@21e
    .line 234
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@220
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    #@223
    move-result v50

    #@224
    .line 235
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@227
    .line 236
    if-eqz v50, :cond_5

    #@229
    const/4 v4, 0x1

    #@22a
    :goto_5
    move-object/from16 v0, p3

    #@22c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22f
    .line 237
    const/4 v4, 0x1

    #@230
    return v4

    #@231
    .line 236
    :cond_5
    const/4 v4, 0x0

    #@232
    goto :goto_5

    #@233
    .line 241
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.media.IAudioService"

    #@236
    move-object/from16 v0, p2

    #@238
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23b
    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23e
    move-result v5

    #@23f
    .line 245
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@242
    move-result v6

    #@243
    .line 246
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@245
    invoke-virtual {v0, v5, v6}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    #@248
    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24b
    .line 248
    const/4 v4, 0x1

    #@24c
    return v4

    #@24d
    .line 252
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_13
    const-string/jumbo v4, "android.media.IAudioService"

    #@250
    move-object/from16 v0, p2

    #@252
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@255
    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@258
    move-result v5

    #@259
    .line 255
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@25b
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    #@25e
    move-result v45

    #@25f
    .line 256
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@262
    .line 257
    move-object/from16 v0, p3

    #@264
    move/from16 v1, v45

    #@266
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@269
    .line 258
    const/4 v4, 0x1

    #@26a
    return v4

    #@26b
    .line 262
    .end local v5    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_14
    const-string/jumbo v4, "android.media.IAudioService"

    #@26e
    move-object/from16 v0, p2

    #@270
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@273
    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@276
    move-result v5

    #@277
    .line 265
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@279
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    #@27c
    move-result v50

    #@27d
    .line 266
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@280
    .line 267
    if-eqz v50, :cond_6

    #@282
    const/4 v4, 0x1

    #@283
    :goto_6
    move-object/from16 v0, p3

    #@285
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@288
    .line 268
    const/4 v4, 0x1

    #@289
    return v4

    #@28a
    .line 267
    :cond_6
    const/4 v4, 0x0

    #@28b
    goto :goto_6

    #@28c
    .line 272
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "android.media.IAudioService"

    #@28f
    move-object/from16 v0, p2

    #@291
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@294
    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@297
    move-result v5

    #@298
    .line 276
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29b
    move-result-object v39

    #@29c
    .line 278
    .restart local v39    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29f
    move-result-object v22

    #@2a0
    .line 279
    .restart local v22    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a2
    move-object/from16 v1, v39

    #@2a4
    move-object/from16 v2, v22

    #@2a6
    invoke-virtual {v0, v5, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    #@2a9
    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ac
    .line 281
    const/4 v4, 0x1

    #@2ad
    return v4

    #@2ae
    .line 285
    .end local v5    # "_arg0":I
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v39    # "_arg1":Landroid/os/IBinder;
    :sswitch_16
    const-string/jumbo v4, "android.media.IAudioService"

    #@2b1
    move-object/from16 v0, p2

    #@2b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b6
    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    #@2b9
    move-result v45

    #@2ba
    .line 287
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bd
    .line 288
    move-object/from16 v0, p3

    #@2bf
    move/from16 v1, v45

    #@2c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2c4
    .line 289
    const/4 v4, 0x1

    #@2c5
    return v4

    #@2c6
    .line 293
    .end local v45    # "_result":I
    :sswitch_17
    const-string/jumbo v4, "android.media.IAudioService"

    #@2c9
    move-object/from16 v0, p2

    #@2cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ce
    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d1
    move-result v5

    #@2d2
    .line 296
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@2d4
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    #@2d7
    .line 297
    const/4 v4, 0x1

    #@2d8
    return v4

    #@2d9
    .line 301
    .end local v5    # "_arg0":I
    :sswitch_18
    const-string/jumbo v4, "android.media.IAudioService"

    #@2dc
    move-object/from16 v0, p2

    #@2de
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e1
    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e4
    move-result v5

    #@2e5
    .line 305
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@2e8
    move-result v37

    #@2e9
    .line 306
    .local v37, "_arg1":F
    move-object/from16 v0, p0

    #@2eb
    move/from16 v1, v37

    #@2ed
    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    #@2f0
    .line 307
    const/4 v4, 0x1

    #@2f1
    return v4

    #@2f2
    .line 311
    .end local v5    # "_arg0":I
    .end local v37    # "_arg1":F
    :sswitch_19
    const-string/jumbo v4, "android.media.IAudioService"

    #@2f5
    move-object/from16 v0, p2

    #@2f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fa
    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    #@2fd
    move-result v50

    #@2fe
    .line 313
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@301
    .line 314
    if-eqz v50, :cond_7

    #@303
    const/4 v4, 0x1

    #@304
    :goto_7
    move-object/from16 v0, p3

    #@306
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@309
    .line 315
    const/4 v4, 0x1

    #@30a
    return v4

    #@30b
    .line 314
    :cond_7
    const/4 v4, 0x0

    #@30c
    goto :goto_7

    #@30d
    .line 319
    .end local v50    # "_result":Z
    :sswitch_1a
    const-string/jumbo v4, "android.media.IAudioService"

    #@310
    move-object/from16 v0, p2

    #@312
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@315
    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    #@318
    .line 321
    const/4 v4, 0x1

    #@319
    return v4

    #@31a
    .line 325
    :sswitch_1b
    const-string/jumbo v4, "android.media.IAudioService"

    #@31d
    move-object/from16 v0, p2

    #@31f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@322
    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    #@325
    .line 327
    const/4 v4, 0x1

    #@326
    return v4

    #@327
    .line 331
    :sswitch_1c
    const-string/jumbo v4, "android.media.IAudioService"

    #@32a
    move-object/from16 v0, p2

    #@32c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32f
    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@332
    move-result-object v35

    #@333
    .line 335
    .local v35, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@336
    move-result v4

    #@337
    if-eqz v4, :cond_8

    #@339
    const/16 v41, 0x1

    #@33b
    .line 336
    .local v41, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    #@33d
    move-object/from16 v1, v35

    #@33f
    move/from16 v2, v41

    #@341
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    #@344
    .line 337
    const/4 v4, 0x1

    #@345
    return v4

    #@346
    .line 335
    .end local v41    # "_arg1":Z
    :cond_8
    const/16 v41, 0x0

    #@348
    goto :goto_8

    #@349
    .line 341
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.media.IAudioService"

    #@34c
    move-object/from16 v0, p2

    #@34e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@351
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@354
    move-result v4

    #@355
    if-eqz v4, :cond_9

    #@357
    const/16 v36, 0x1

    #@359
    .line 344
    .local v36, "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    #@35b
    move/from16 v1, v36

    #@35d
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    #@360
    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@363
    .line 346
    const/4 v4, 0x1

    #@364
    return v4

    #@365
    .line 343
    .end local v36    # "_arg0":Z
    :cond_9
    const/16 v36, 0x0

    #@367
    goto :goto_9

    #@368
    .line 350
    :sswitch_1e
    const-string/jumbo v4, "android.media.IAudioService"

    #@36b
    move-object/from16 v0, p2

    #@36d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@370
    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    #@373
    move-result v50

    #@374
    .line 352
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@377
    .line 353
    if-eqz v50, :cond_a

    #@379
    const/4 v4, 0x1

    #@37a
    :goto_a
    move-object/from16 v0, p3

    #@37c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@37f
    .line 354
    const/4 v4, 0x1

    #@380
    return v4

    #@381
    .line 353
    :cond_a
    const/4 v4, 0x0

    #@382
    goto :goto_a

    #@383
    .line 358
    .end local v50    # "_result":Z
    :sswitch_1f
    const-string/jumbo v4, "android.media.IAudioService"

    #@386
    move-object/from16 v0, p2

    #@388
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38b
    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38e
    move-result v4

    #@38f
    if-eqz v4, :cond_b

    #@391
    const/16 v36, 0x1

    #@393
    .line 361
    .restart local v36    # "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    #@395
    move/from16 v1, v36

    #@397
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    #@39a
    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39d
    .line 363
    const/4 v4, 0x1

    #@39e
    return v4

    #@39f
    .line 360
    .end local v36    # "_arg0":Z
    :cond_b
    const/16 v36, 0x0

    #@3a1
    goto :goto_b

    #@3a2
    .line 367
    :sswitch_20
    const-string/jumbo v4, "android.media.IAudioService"

    #@3a5
    move-object/from16 v0, p2

    #@3a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3aa
    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    #@3ad
    move-result v50

    #@3ae
    .line 369
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b1
    .line 370
    if-eqz v50, :cond_c

    #@3b3
    const/4 v4, 0x1

    #@3b4
    :goto_c
    move-object/from16 v0, p3

    #@3b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3b9
    .line 371
    const/4 v4, 0x1

    #@3ba
    return v4

    #@3bb
    .line 370
    :cond_c
    const/4 v4, 0x0

    #@3bc
    goto :goto_c

    #@3bd
    .line 375
    .end local v50    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.media.IAudioService"

    #@3c0
    move-object/from16 v0, p2

    #@3c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c5
    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c8
    move-result v4

    #@3c9
    if-eqz v4, :cond_d

    #@3cb
    const/16 v36, 0x1

    #@3cd
    .line 378
    .restart local v36    # "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    #@3cf
    move/from16 v1, v36

    #@3d1
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    #@3d4
    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d7
    .line 380
    const/4 v4, 0x1

    #@3d8
    return v4

    #@3d9
    .line 377
    .end local v36    # "_arg0":Z
    :cond_d
    const/16 v36, 0x0

    #@3db
    goto :goto_d

    #@3dc
    .line 384
    :sswitch_22
    const-string/jumbo v4, "android.media.IAudioService"

    #@3df
    move-object/from16 v0, p2

    #@3e1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e4
    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    #@3e7
    move-result v50

    #@3e8
    .line 386
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3eb
    .line 387
    if-eqz v50, :cond_e

    #@3ed
    const/4 v4, 0x1

    #@3ee
    :goto_e
    move-object/from16 v0, p3

    #@3f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f3
    .line 388
    const/4 v4, 0x1

    #@3f4
    return v4

    #@3f5
    .line 387
    :cond_e
    const/4 v4, 0x0

    #@3f6
    goto :goto_e

    #@3f7
    .line 392
    .end local v50    # "_result":Z
    :sswitch_23
    const-string/jumbo v4, "android.media.IAudioService"

    #@3fa
    move-object/from16 v0, p2

    #@3fc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ff
    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@402
    move-result v4

    #@403
    if-eqz v4, :cond_f

    #@405
    .line 395
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@407
    move-object/from16 v0, p2

    #@409
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@40c
    move-result-object v11

    #@40d
    check-cast v11, Landroid/media/AudioAttributes;

    #@40f
    .line 401
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@412
    move-result v6

    #@413
    .line 403
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@416
    move-result-object v13

    #@417
    .line 405
    .local v13, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@41a
    move-result-object v4

    #@41b
    invoke-static {v4}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    #@41e
    move-result-object v14

    #@41f
    .line 407
    .local v14, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@422
    move-result-object v9

    #@423
    .line 409
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@426
    move-result-object v16

    #@427
    .line 411
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42a
    move-result v17

    #@42b
    .line 413
    .local v17, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@42e
    move-result-object v4

    #@42f
    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@432
    move-result-object v18

    #@433
    .local v18, "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v10, p0

    #@435
    move v12, v6

    #@436
    move-object v15, v9

    #@437
    .line 414
    invoke-virtual/range {v10 .. v18}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    #@43a
    move-result v45

    #@43b
    .line 415
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43e
    .line 416
    move-object/from16 v0, p3

    #@440
    move/from16 v1, v45

    #@442
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@445
    .line 417
    const/4 v4, 0x1

    #@446
    return v4

    #@447
    .line 398
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/IBinder;
    .end local v14    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":I
    .end local v18    # "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v45    # "_result":I
    :cond_f
    const/4 v11, 0x0

    #@448
    .local v11, "_arg0":Landroid/media/AudioAttributes;
    goto :goto_f

    #@449
    .line 421
    .end local v11    # "_arg0":Landroid/media/AudioAttributes;
    :sswitch_24
    const-string/jumbo v4, "android.media.IAudioService"

    #@44c
    move-object/from16 v0, p2

    #@44e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@451
    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@454
    move-result-object v4

    #@455
    invoke-static {v4}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    #@458
    move-result-object v26

    #@459
    .line 425
    .local v26, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45c
    move-result-object v40

    #@45d
    .line 427
    .restart local v40    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@460
    move-result v4

    #@461
    if-eqz v4, :cond_10

    #@463
    .line 428
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@465
    move-object/from16 v0, p2

    #@467
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@46a
    move-result-object v42

    #@46b
    check-cast v42, Landroid/media/AudioAttributes;

    #@46d
    .line 433
    :goto_10
    move-object/from16 v0, p0

    #@46f
    move-object/from16 v1, v26

    #@471
    move-object/from16 v2, v40

    #@473
    move-object/from16 v3, v42

    #@475
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    #@478
    move-result v45

    #@479
    .line 434
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@47c
    .line 435
    move-object/from16 v0, p3

    #@47e
    move/from16 v1, v45

    #@480
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@483
    .line 436
    const/4 v4, 0x1

    #@484
    return v4

    #@485
    .line 431
    .end local v45    # "_result":I
    :cond_10
    const/16 v42, 0x0

    #@487
    .local v42, "_arg2":Landroid/media/AudioAttributes;
    goto :goto_10

    #@488
    .line 440
    .end local v26    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v40    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":Landroid/media/AudioAttributes;
    :sswitch_25
    const-string/jumbo v4, "android.media.IAudioService"

    #@48b
    move-object/from16 v0, p2

    #@48d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@490
    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@493
    move-result-object v35

    #@494
    .line 443
    .restart local v35    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@496
    move-object/from16 v1, v35

    #@498
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    #@49b
    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49e
    .line 445
    const/4 v4, 0x1

    #@49f
    return v4

    #@4a0
    .line 449
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v4, "android.media.IAudioService"

    #@4a3
    move-object/from16 v0, p2

    #@4a5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a8
    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    #@4ab
    move-result v45

    #@4ac
    .line 451
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4af
    .line 452
    move-object/from16 v0, p3

    #@4b1
    move/from16 v1, v45

    #@4b3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b6
    .line 453
    const/4 v4, 0x1

    #@4b7
    return v4

    #@4b8
    .line 457
    .end local v45    # "_result":I
    :sswitch_27
    const-string/jumbo v4, "android.media.IAudioService"

    #@4bb
    move-object/from16 v0, p2

    #@4bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c0
    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4c3
    move-result-object v34

    #@4c4
    .line 461
    .local v34, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c7
    move-result v6

    #@4c8
    .line 462
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@4ca
    move-object/from16 v1, v34

    #@4cc
    invoke-virtual {v0, v1, v6}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    #@4cf
    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d2
    .line 464
    const/4 v4, 0x1

    #@4d3
    return v4

    #@4d4
    .line 468
    .end local v6    # "_arg1":I
    .end local v34    # "_arg0":Landroid/os/IBinder;
    :sswitch_28
    const-string/jumbo v4, "android.media.IAudioService"

    #@4d7
    move-object/from16 v0, p2

    #@4d9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4dc
    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4df
    move-result-object v34

    #@4e0
    .line 471
    .restart local v34    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@4e2
    move-object/from16 v1, v34

    #@4e4
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    #@4e7
    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ea
    .line 473
    const/4 v4, 0x1

    #@4eb
    return v4

    #@4ec
    .line 477
    .end local v34    # "_arg0":Landroid/os/IBinder;
    :sswitch_29
    const-string/jumbo v4, "android.media.IAudioService"

    #@4ef
    move-object/from16 v0, p2

    #@4f1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f4
    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4f7
    move-result-object v34

    #@4f8
    .line 480
    .restart local v34    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@4fa
    move-object/from16 v1, v34

    #@4fc
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    #@4ff
    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@502
    .line 482
    const/4 v4, 0x1

    #@503
    return v4

    #@504
    .line 486
    .end local v34    # "_arg0":Landroid/os/IBinder;
    :sswitch_2a
    const-string/jumbo v4, "android.media.IAudioService"

    #@507
    move-object/from16 v0, p2

    #@509
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50c
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50f
    move-result v5

    #@510
    .line 490
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@513
    move-result-object v39

    #@514
    .line 491
    .restart local v39    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@516
    move-object/from16 v1, v39

    #@518
    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    #@51b
    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@51e
    .line 493
    const/4 v4, 0x1

    #@51f
    return v4

    #@520
    .line 497
    .end local v5    # "_arg0":I
    .end local v39    # "_arg1":Landroid/os/IBinder;
    :sswitch_2b
    const-string/jumbo v4, "android.media.IAudioService"

    #@523
    move-object/from16 v0, p2

    #@525
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@528
    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@52b
    move-result-object v4

    #@52c
    invoke-static {v4}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    #@52f
    move-result-object v29

    #@530
    .line 500
    .local v29, "_arg0":Landroid/media/IRingtonePlayer;
    move-object/from16 v0, p0

    #@532
    move-object/from16 v1, v29

    #@534
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    #@537
    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@53a
    .line 502
    const/4 v4, 0x1

    #@53b
    return v4

    #@53c
    .line 506
    .end local v29    # "_arg0":Landroid/media/IRingtonePlayer;
    :sswitch_2c
    const-string/jumbo v4, "android.media.IAudioService"

    #@53f
    move-object/from16 v0, p2

    #@541
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@544
    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    #@547
    move-result-object v47

    #@548
    .line 508
    .local v47, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54b
    .line 509
    if-eqz v47, :cond_11

    #@54d
    invoke-interface/range {v47 .. v47}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    #@550
    move-result-object v4

    #@551
    :goto_11
    move-object/from16 v0, p3

    #@553
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@556
    .line 510
    const/4 v4, 0x1

    #@557
    return v4

    #@558
    .line 509
    :cond_11
    const/4 v4, 0x0

    #@559
    goto :goto_11

    #@55a
    .line 514
    .end local v47    # "_result":Landroid/media/IRingtonePlayer;
    :sswitch_2d
    const-string/jumbo v4, "android.media.IAudioService"

    #@55d
    move-object/from16 v0, p2

    #@55f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@562
    .line 515
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    #@565
    move-result v45

    #@566
    .line 516
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@569
    .line 517
    move-object/from16 v0, p3

    #@56b
    move/from16 v1, v45

    #@56d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@570
    .line 518
    const/4 v4, 0x1

    #@571
    return v4

    #@572
    .line 522
    .end local v45    # "_result":I
    :sswitch_2e
    const-string/jumbo v4, "android.media.IAudioService"

    #@575
    move-object/from16 v0, p2

    #@577
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57a
    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@57d
    move-result v5

    #@57e
    .line 526
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@581
    move-result v6

    #@582
    .line 528
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@585
    move-result-object v22

    #@586
    .line 530
    .restart local v22    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@589
    move-result-object v8

    #@58a
    .line 532
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@58d
    move-result-object v9

    #@58e
    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v19, p0

    #@590
    move/from16 v20, v5

    #@592
    move/from16 v21, v6

    #@594
    move-object/from16 v23, v8

    #@596
    move-object/from16 v24, v9

    #@598
    .line 533
    invoke-virtual/range {v19 .. v24}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@59b
    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59e
    .line 535
    const/4 v4, 0x1

    #@59f
    return v4

    #@5a0
    .line 539
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg2":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v4, "android.media.IAudioService"

    #@5a3
    move-object/from16 v0, p2

    #@5a5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a8
    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ab
    move-result v4

    #@5ac
    if-eqz v4, :cond_12

    #@5ae
    .line 542
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5b0
    move-object/from16 v0, p2

    #@5b2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5b5
    move-result-object v25

    #@5b6
    check-cast v25, Landroid/bluetooth/BluetoothDevice;

    #@5b8
    .line 548
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5bb
    move-result v6

    #@5bc
    .line 550
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5bf
    move-result v7

    #@5c0
    .line 551
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@5c2
    move-object/from16 v1, v25

    #@5c4
    invoke-virtual {v0, v1, v6, v7}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    #@5c7
    move-result v45

    #@5c8
    .line 552
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5cb
    .line 553
    move-object/from16 v0, p3

    #@5cd
    move/from16 v1, v45

    #@5cf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d2
    .line 554
    const/4 v4, 0x1

    #@5d3
    return v4

    #@5d4
    .line 545
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v45    # "_result":I
    :cond_12
    const/16 v25, 0x0

    #@5d6
    .local v25, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    #@5d7
    .line 558
    .end local v25    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_30
    const-string/jumbo v4, "android.media.IAudioService"

    #@5da
    move-object/from16 v0, p2

    #@5dc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5df
    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5e2
    move-result-object v4

    #@5e3
    invoke-static {v4}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    #@5e6
    move-result-object v27

    #@5e7
    .line 561
    .local v27, "_arg0":Landroid/media/IAudioRoutesObserver;
    move-object/from16 v0, p0

    #@5e9
    move-object/from16 v1, v27

    #@5eb
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    #@5ee
    move-result-object v46

    #@5ef
    .line 562
    .local v46, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f2
    .line 563
    if-eqz v46, :cond_13

    #@5f4
    .line 564
    const/4 v4, 0x1

    #@5f5
    move-object/from16 v0, p3

    #@5f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5fa
    .line 565
    const/4 v4, 0x1

    #@5fb
    move-object/from16 v0, v46

    #@5fd
    move-object/from16 v1, p3

    #@5ff
    invoke-virtual {v0, v1, v4}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@602
    .line 570
    :goto_13
    const/4 v4, 0x1

    #@603
    return v4

    #@604
    .line 568
    :cond_13
    const/4 v4, 0x0

    #@605
    move-object/from16 v0, p3

    #@607
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@60a
    goto :goto_13

    #@60b
    .line 574
    .end local v27    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v46    # "_result":Landroid/media/AudioRoutesInfo;
    :sswitch_31
    const-string/jumbo v4, "android.media.IAudioService"

    #@60e
    move-object/from16 v0, p2

    #@610
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@613
    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    #@616
    move-result v50

    #@617
    .line 576
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@61a
    .line 577
    if-eqz v50, :cond_14

    #@61c
    const/4 v4, 0x1

    #@61d
    :goto_14
    move-object/from16 v0, p3

    #@61f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@622
    .line 578
    const/4 v4, 0x1

    #@623
    return v4

    #@624
    .line 577
    :cond_14
    const/4 v4, 0x0

    #@625
    goto :goto_14

    #@626
    .line 582
    .end local v50    # "_result":Z
    :sswitch_32
    const-string/jumbo v4, "android.media.IAudioService"

    #@629
    move-object/from16 v0, p2

    #@62b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62e
    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@631
    move-result-object v4

    #@632
    invoke-static {v4}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    #@635
    move-result-object v30

    #@636
    .line 585
    .local v30, "_arg0":Landroid/media/IVolumeController;
    move-object/from16 v0, p0

    #@638
    move-object/from16 v1, v30

    #@63a
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    #@63d
    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@640
    .line 587
    const/4 v4, 0x1

    #@641
    return v4

    #@642
    .line 591
    .end local v30    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_33
    const-string/jumbo v4, "android.media.IAudioService"

    #@645
    move-object/from16 v0, p2

    #@647
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64a
    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@64d
    move-result-object v4

    #@64e
    invoke-static {v4}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    #@651
    move-result-object v30

    #@652
    .line 595
    .restart local v30    # "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@655
    move-result v4

    #@656
    if-eqz v4, :cond_15

    #@658
    const/16 v41, 0x1

    #@65a
    .line 596
    .restart local v41    # "_arg1":Z
    :goto_15
    move-object/from16 v0, p0

    #@65c
    move-object/from16 v1, v30

    #@65e
    move/from16 v2, v41

    #@660
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    #@663
    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@666
    .line 598
    const/4 v4, 0x1

    #@667
    return v4

    #@668
    .line 595
    .end local v41    # "_arg1":Z
    :cond_15
    const/16 v41, 0x0

    #@66a
    goto :goto_15

    #@66b
    .line 602
    .end local v30    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_34
    const-string/jumbo v4, "android.media.IAudioService"

    #@66e
    move-object/from16 v0, p2

    #@670
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@673
    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@676
    move-result v5

    #@677
    .line 605
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@679
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    #@67c
    move-result v50

    #@67d
    .line 606
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@680
    .line 607
    if-eqz v50, :cond_16

    #@682
    const/4 v4, 0x1

    #@683
    :goto_16
    move-object/from16 v0, p3

    #@685
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@688
    .line 608
    const/4 v4, 0x1

    #@689
    return v4

    #@68a
    .line 607
    :cond_16
    const/4 v4, 0x0

    #@68b
    goto :goto_16

    #@68c
    .line 612
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "android.media.IAudioService"

    #@68f
    move-object/from16 v0, p2

    #@691
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@694
    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@697
    move-result v5

    #@698
    .line 615
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@69a
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    #@69d
    move-result v50

    #@69e
    .line 616
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a1
    .line 617
    if-eqz v50, :cond_17

    #@6a3
    const/4 v4, 0x1

    #@6a4
    :goto_17
    move-object/from16 v0, p3

    #@6a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6a9
    .line 618
    const/4 v4, 0x1

    #@6aa
    return v4

    #@6ab
    .line 617
    :cond_17
    const/4 v4, 0x0

    #@6ac
    goto :goto_17

    #@6ad
    .line 622
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_36
    const-string/jumbo v4, "android.media.IAudioService"

    #@6b0
    move-object/from16 v0, p2

    #@6b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b5
    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b8
    move-result-object v35

    #@6b9
    .line 625
    .restart local v35    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6bb
    move-object/from16 v1, v35

    #@6bd
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    #@6c0
    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c3
    .line 627
    const/4 v4, 0x1

    #@6c4
    return v4

    #@6c5
    .line 631
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v4, "android.media.IAudioService"

    #@6c8
    move-object/from16 v0, p2

    #@6ca
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6cd
    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d0
    move-result v4

    #@6d1
    if-eqz v4, :cond_18

    #@6d3
    const/16 v36, 0x1

    #@6d5
    .line 634
    .restart local v36    # "_arg0":Z
    :goto_18
    move-object/from16 v0, p0

    #@6d7
    move/from16 v1, v36

    #@6d9
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    #@6dc
    move-result v45

    #@6dd
    .line 635
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e0
    .line 636
    move-object/from16 v0, p3

    #@6e2
    move/from16 v1, v45

    #@6e4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6e7
    .line 637
    const/4 v4, 0x1

    #@6e8
    return v4

    #@6e9
    .line 633
    .end local v36    # "_arg0":Z
    .end local v45    # "_result":I
    :cond_18
    const/16 v36, 0x0

    #@6eb
    goto :goto_18

    #@6ec
    .line 641
    :sswitch_38
    const-string/jumbo v4, "android.media.IAudioService"

    #@6ef
    move-object/from16 v0, p2

    #@6f1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f4
    .line 642
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    #@6f7
    move-result v50

    #@6f8
    .line 643
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6fb
    .line 644
    if-eqz v50, :cond_19

    #@6fd
    const/4 v4, 0x1

    #@6fe
    :goto_19
    move-object/from16 v0, p3

    #@700
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@703
    .line 645
    const/4 v4, 0x1

    #@704
    return v4

    #@705
    .line 644
    :cond_19
    const/4 v4, 0x0

    #@706
    goto :goto_19

    #@707
    .line 649
    .end local v50    # "_result":Z
    :sswitch_39
    const-string/jumbo v4, "android.media.IAudioService"

    #@70a
    move-object/from16 v0, p2

    #@70c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70f
    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@712
    move-result v4

    #@713
    if-eqz v4, :cond_1a

    #@715
    .line 652
    sget-object v4, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@717
    move-object/from16 v0, p2

    #@719
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@71c
    move-result-object v32

    #@71d
    check-cast v32, Landroid/media/audiopolicy/AudioPolicyConfig;

    #@71f
    .line 658
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@722
    move-result-object v4

    #@723
    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@726
    move-result-object v38

    #@727
    .line 660
    .local v38, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@72a
    move-result v4

    #@72b
    if-eqz v4, :cond_1b

    #@72d
    const/16 v43, 0x1

    #@72f
    .line 661
    .local v43, "_arg2":Z
    :goto_1b
    move-object/from16 v0, p0

    #@731
    move-object/from16 v1, v32

    #@733
    move-object/from16 v2, v38

    #@735
    move/from16 v3, v43

    #@737
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;

    #@73a
    move-result-object v48

    #@73b
    .line 662
    .local v48, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@73e
    .line 663
    move-object/from16 v0, p3

    #@740
    move-object/from16 v1, v48

    #@742
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@745
    .line 664
    const/4 v4, 0x1

    #@746
    return v4

    #@747
    .line 655
    .end local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v43    # "_arg2":Z
    .end local v48    # "_result":Ljava/lang/String;
    :cond_1a
    const/16 v32, 0x0

    #@749
    .local v32, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    goto :goto_1a

    #@74a
    .line 660
    .end local v32    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .restart local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_1b
    const/16 v43, 0x0

    #@74c
    goto :goto_1b

    #@74d
    .line 668
    .end local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :sswitch_3a
    const-string/jumbo v4, "android.media.IAudioService"

    #@750
    move-object/from16 v0, p2

    #@752
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@755
    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@758
    move-result-object v4

    #@759
    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@75c
    move-result-object v33

    #@75d
    .line 671
    .local v33, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    #@75f
    move-object/from16 v1, v33

    #@761
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    #@764
    .line 672
    const/4 v4, 0x1

    #@765
    return v4

    #@766
    .line 676
    .end local v33    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :sswitch_3b
    const-string/jumbo v4, "android.media.IAudioService"

    #@769
    move-object/from16 v0, p2

    #@76b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76e
    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@771
    move-result v5

    #@772
    .line 680
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@775
    move-result-object v4

    #@776
    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@779
    move-result-object v38

    #@77a
    .line 681
    .restart local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    #@77c
    move-object/from16 v1, v38

    #@77e
    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    #@781
    move-result v45

    #@782
    .line 682
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@785
    .line 683
    move-object/from16 v0, p3

    #@787
    move/from16 v1, v45

    #@789
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@78c
    .line 684
    const/4 v4, 0x1

    #@78d
    return v4

    #@78e
    .line 688
    .end local v5    # "_arg0":I
    .end local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v45    # "_result":I
    :sswitch_3c
    const-string/jumbo v4, "android.media.IAudioService"

    #@791
    move-object/from16 v0, p2

    #@793
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@796
    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@799
    move-result v4

    #@79a
    if-eqz v4, :cond_1c

    #@79c
    .line 691
    sget-object v4, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@79e
    move-object/from16 v0, p2

    #@7a0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7a3
    move-result-object v31

    #@7a4
    check-cast v31, Landroid/media/VolumePolicy;

    #@7a6
    .line 696
    :goto_1c
    move-object/from16 v0, p0

    #@7a8
    move-object/from16 v1, v31

    #@7aa
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    #@7ad
    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b0
    .line 698
    const/4 v4, 0x1

    #@7b1
    return v4

    #@7b2
    .line 694
    :cond_1c
    const/16 v31, 0x0

    #@7b4
    .local v31, "_arg0":Landroid/media/VolumePolicy;
    goto :goto_1c

    #@7b5
    .line 702
    .end local v31    # "_arg0":Landroid/media/VolumePolicy;
    :sswitch_3d
    const-string/jumbo v4, "android.media.IAudioService"

    #@7b8
    move-object/from16 v0, p2

    #@7ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7bd
    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7c0
    move-result-object v4

    #@7c1
    invoke-static {v4}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    #@7c4
    move-result-object v28

    #@7c5
    .line 705
    .local v28, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    move-object/from16 v0, p0

    #@7c7
    move-object/from16 v1, v28

    #@7c9
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    #@7cc
    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7cf
    .line 707
    const/4 v4, 0x1

    #@7d0
    return v4

    #@7d1
    .line 711
    .end local v28    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :sswitch_3e
    const-string/jumbo v4, "android.media.IAudioService"

    #@7d4
    move-object/from16 v0, p2

    #@7d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d9
    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7dc
    move-result-object v4

    #@7dd
    invoke-static {v4}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    #@7e0
    move-result-object v28

    #@7e1
    .line 714
    .restart local v28    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    move-object/from16 v0, p0

    #@7e3
    move-object/from16 v1, v28

    #@7e5
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    #@7e8
    .line 715
    const/4 v4, 0x1

    #@7e9
    return v4

    #@7ea
    .line 719
    .end local v28    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :sswitch_3f
    const-string/jumbo v4, "android.media.IAudioService"

    #@7ed
    move-object/from16 v0, p2

    #@7ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f2
    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    #@7f5
    move-result-object v49

    #@7f6
    .line 721
    .local v49, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f9
    .line 722
    move-object/from16 v0, p3

    #@7fb
    move-object/from16 v1, v49

    #@7fd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@800
    .line 723
    const/4 v4, 0x1

    #@801
    return v4

    #@802
    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

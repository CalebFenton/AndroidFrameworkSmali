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

.field static final TRANSACTION_abandonAudioFocus:I = 0x25

.field static final TRANSACTION_adjustStreamVolume:I = 0x2

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x1

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x1d

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x3c

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0x6

.field static final TRANSACTION_forceVolumeControlStream:I = 0x30

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x27

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xc

.field static final TRANSACTION_getMode:I = 0x17

.field static final TRANSACTION_getRingerModeExternal:I = 0x10

.field static final TRANSACTION_getRingerModeInternal:I = 0x11

.field static final TRANSACTION_getRingtonePlayer:I = 0x32

.field static final TRANSACTION_getStreamMaxVolume:I = 0xb

.field static final TRANSACTION_getStreamMinVolume:I = 0xa

.field static final TRANSACTION_getStreamVolume:I = 0x9

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x33

.field static final TRANSACTION_getVibrateSetting:I = 0x14

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x23

.field static final TRANSACTION_isBluetoothScoOn:I = 0x21

.field static final TRANSACTION_isCameraSoundForced:I = 0x37

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x3e

.field static final TRANSACTION_isMasterMute:I = 0x7

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x1f

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x3b

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x3a

.field static final TRANSACTION_isStreamMute:I = 0x5

.field static final TRANSACTION_isValidRingerMode:I = 0x12

.field static final TRANSACTION_loadSoundEffects:I = 0x1a

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x39

.field static final TRANSACTION_playSoundEffect:I = 0x18

.field static final TRANSACTION_playSoundEffectVolume:I = 0x19

.field static final TRANSACTION_registerAudioPolicy:I = 0x3f

.field static final TRANSACTION_registerRemoteControlDisplay:I = 0x28

.field static final TRANSACTION_registerRemoteController:I = 0x29

.field static final TRANSACTION_reloadAudioSettings:I = 0x1c

.field static final TRANSACTION_remoteControlDisplayUsesBitmapSize:I = 0x2b

.field static final TRANSACTION_remoteControlDisplayWantsPlaybackPositionSync:I = 0x2c

.field static final TRANSACTION_requestAudioFocus:I = 0x24

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x35

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x22

.field static final TRANSACTION_setBluetoothScoOn:I = 0x20

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x41

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x3d

.field static final TRANSACTION_setMasterMute:I = 0x8

.field static final TRANSACTION_setMicrophoneMute:I = 0xd

.field static final TRANSACTION_setMode:I = 0x16

.field static final TRANSACTION_setRemoteStreamVolume:I = 0x4

.field static final TRANSACTION_setRingerModeExternal:I = 0xe

.field static final TRANSACTION_setRingerModeInternal:I = 0xf

.field static final TRANSACTION_setRingtonePlayer:I = 0x31

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x1e

.field static final TRANSACTION_setStreamVolume:I = 0x3

.field static final TRANSACTION_setVibrateSetting:I = 0x13

.field static final TRANSACTION_setVolumeController:I = 0x38

.field static final TRANSACTION_setVolumePolicy:I = 0x42

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x34

.field static final TRANSACTION_shouldVibrate:I = 0x15

.field static final TRANSACTION_startBluetoothSco:I = 0x2d

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x2e

.field static final TRANSACTION_startWatchingRoutes:I = 0x36

.field static final TRANSACTION_stopBluetoothSco:I = 0x2f

.field static final TRANSACTION_unloadSoundEffects:I = 0x1b

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x26

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x40

.field static final TRANSACTION_unregisterRemoteControlDisplay:I = 0x2a


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
    .line 774
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
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->setRemoteStreamVolume(I)V

    #@8a
    .line 100
    const/4 v4, 0x1

    #@8b
    return v4

    #@8c
    .line 104
    .end local v5    # "_arg0":I
    :sswitch_5
    const-string/jumbo v4, "android.media.IAudioService"

    #@8f
    move-object/from16 v0, p2

    #@91
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v5

    #@98
    .line 107
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@9a
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    #@9d
    move-result v50

    #@9e
    .line 108
    .local v50, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    .line 109
    if-eqz v50, :cond_0

    #@a3
    const/4 v4, 0x1

    #@a4
    :goto_0
    move-object/from16 v0, p3

    #@a6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a9
    .line 110
    const/4 v4, 0x1

    #@aa
    return v4

    #@ab
    .line 109
    :cond_0
    const/4 v4, 0x0

    #@ac
    goto :goto_0

    #@ad
    .line 114
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.media.IAudioService"

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v4

    #@b9
    if-eqz v4, :cond_1

    #@bb
    const/16 v36, 0x1

    #@bd
    .line 118
    .local v36, "_arg0":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c0
    move-result-object v39

    #@c1
    .line 119
    .local v39, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@c3
    move/from16 v1, v36

    #@c5
    move-object/from16 v2, v39

    #@c7
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    #@ca
    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd
    .line 121
    const/4 v4, 0x1

    #@ce
    return v4

    #@cf
    .line 116
    .end local v36    # "_arg0":Z
    .end local v39    # "_arg1":Landroid/os/IBinder;
    :cond_1
    const/16 v36, 0x0

    #@d1
    .restart local v36    # "_arg0":Z
    goto :goto_1

    #@d2
    .line 125
    .end local v36    # "_arg0":Z
    :sswitch_7
    const-string/jumbo v4, "android.media.IAudioService"

    #@d5
    move-object/from16 v0, p2

    #@d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@da
    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    #@dd
    move-result v50

    #@de
    .line 127
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e1
    .line 128
    if-eqz v50, :cond_2

    #@e3
    const/4 v4, 0x1

    #@e4
    :goto_2
    move-object/from16 v0, p3

    #@e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@e9
    .line 129
    const/4 v4, 0x1

    #@ea
    return v4

    #@eb
    .line 128
    :cond_2
    const/4 v4, 0x0

    #@ec
    goto :goto_2

    #@ed
    .line 133
    .end local v50    # "_result":Z
    :sswitch_8
    const-string/jumbo v4, "android.media.IAudioService"

    #@f0
    move-object/from16 v0, p2

    #@f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f5
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f8
    move-result v4

    #@f9
    if-eqz v4, :cond_3

    #@fb
    const/16 v36, 0x1

    #@fd
    .line 137
    .restart local v36    # "_arg0":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@100
    move-result v6

    #@101
    .line 139
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@104
    move-result-object v22

    #@105
    .line 141
    .local v22, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@108
    move-result v44

    #@109
    .line 142
    .local v44, "_arg3":I
    move-object/from16 v0, p0

    #@10b
    move/from16 v1, v36

    #@10d
    move-object/from16 v2, v22

    #@10f
    move/from16 v3, v44

    #@111
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;I)V

    #@114
    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 144
    const/4 v4, 0x1

    #@118
    return v4

    #@119
    .line 135
    .end local v6    # "_arg1":I
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v36    # "_arg0":Z
    .end local v44    # "_arg3":I
    :cond_3
    const/16 v36, 0x0

    #@11b
    .restart local v36    # "_arg0":Z
    goto :goto_3

    #@11c
    .line 148
    .end local v36    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v4, "android.media.IAudioService"

    #@11f
    move-object/from16 v0, p2

    #@121
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@124
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@127
    move-result v5

    #@128
    .line 151
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@12a
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    #@12d
    move-result v46

    #@12e
    .line 152
    .local v46, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@131
    .line 153
    move-object/from16 v0, p3

    #@133
    move/from16 v1, v46

    #@135
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@138
    .line 154
    const/4 v4, 0x1

    #@139
    return v4

    #@13a
    .line 158
    .end local v5    # "_arg0":I
    .end local v46    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "android.media.IAudioService"

    #@13d
    move-object/from16 v0, p2

    #@13f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@142
    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@145
    move-result v5

    #@146
    .line 161
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@148
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    #@14b
    move-result v46

    #@14c
    .line 162
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14f
    .line 163
    move-object/from16 v0, p3

    #@151
    move/from16 v1, v46

    #@153
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@156
    .line 164
    const/4 v4, 0x1

    #@157
    return v4

    #@158
    .line 168
    .end local v5    # "_arg0":I
    .end local v46    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.media.IAudioService"

    #@15b
    move-object/from16 v0, p2

    #@15d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@160
    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@163
    move-result v5

    #@164
    .line 171
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@166
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    #@169
    move-result v46

    #@16a
    .line 172
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16d
    .line 173
    move-object/from16 v0, p3

    #@16f
    move/from16 v1, v46

    #@171
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@174
    .line 174
    const/4 v4, 0x1

    #@175
    return v4

    #@176
    .line 178
    .end local v5    # "_arg0":I
    .end local v46    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.media.IAudioService"

    #@179
    move-object/from16 v0, p2

    #@17b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17e
    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@181
    move-result v5

    #@182
    .line 181
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@184
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    #@187
    move-result v46

    #@188
    .line 182
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18b
    .line 183
    move-object/from16 v0, p3

    #@18d
    move/from16 v1, v46

    #@18f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@192
    .line 184
    const/4 v4, 0x1

    #@193
    return v4

    #@194
    .line 188
    .end local v5    # "_arg0":I
    .end local v46    # "_result":I
    :sswitch_d
    const-string/jumbo v4, "android.media.IAudioService"

    #@197
    move-object/from16 v0, p2

    #@199
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19c
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v4

    #@1a0
    if-eqz v4, :cond_4

    #@1a2
    const/16 v36, 0x1

    #@1a4
    .line 192
    .restart local v36    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a7
    move-result-object v40

    #@1a8
    .line 194
    .local v40, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ab
    move-result v7

    #@1ac
    .line 195
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@1ae
    move/from16 v1, v36

    #@1b0
    move-object/from16 v2, v40

    #@1b2
    invoke-virtual {v0, v1, v2, v7}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;I)V

    #@1b5
    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b8
    .line 197
    const/4 v4, 0x1

    #@1b9
    return v4

    #@1ba
    .line 190
    .end local v7    # "_arg2":I
    .end local v36    # "_arg0":Z
    .end local v40    # "_arg1":Ljava/lang/String;
    :cond_4
    const/16 v36, 0x0

    #@1bc
    .restart local v36    # "_arg0":Z
    goto :goto_4

    #@1bd
    .line 201
    .end local v36    # "_arg0":Z
    :sswitch_e
    const-string/jumbo v4, "android.media.IAudioService"

    #@1c0
    move-object/from16 v0, p2

    #@1c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c5
    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c8
    move-result v5

    #@1c9
    .line 205
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1cc
    move-result-object v40

    #@1cd
    .line 206
    .restart local v40    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1cf
    move-object/from16 v1, v40

    #@1d1
    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    #@1d4
    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d7
    .line 208
    const/4 v4, 0x1

    #@1d8
    return v4

    #@1d9
    .line 212
    .end local v5    # "_arg0":I
    .end local v40    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v4, "android.media.IAudioService"

    #@1dc
    move-object/from16 v0, p2

    #@1de
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e1
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e4
    move-result v5

    #@1e5
    .line 216
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e8
    move-result-object v40

    #@1e9
    .line 217
    .restart local v40    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1eb
    move-object/from16 v1, v40

    #@1ed
    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    #@1f0
    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f3
    .line 219
    const/4 v4, 0x1

    #@1f4
    return v4

    #@1f5
    .line 223
    .end local v5    # "_arg0":I
    .end local v40    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v4, "android.media.IAudioService"

    #@1f8
    move-object/from16 v0, p2

    #@1fa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fd
    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    #@200
    move-result v46

    #@201
    .line 225
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@204
    .line 226
    move-object/from16 v0, p3

    #@206
    move/from16 v1, v46

    #@208
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20b
    .line 227
    const/4 v4, 0x1

    #@20c
    return v4

    #@20d
    .line 231
    .end local v46    # "_result":I
    :sswitch_11
    const-string/jumbo v4, "android.media.IAudioService"

    #@210
    move-object/from16 v0, p2

    #@212
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@215
    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    #@218
    move-result v46

    #@219
    .line 233
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21c
    .line 234
    move-object/from16 v0, p3

    #@21e
    move/from16 v1, v46

    #@220
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@223
    .line 235
    const/4 v4, 0x1

    #@224
    return v4

    #@225
    .line 239
    .end local v46    # "_result":I
    :sswitch_12
    const-string/jumbo v4, "android.media.IAudioService"

    #@228
    move-object/from16 v0, p2

    #@22a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22d
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@230
    move-result v5

    #@231
    .line 242
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@233
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    #@236
    move-result v50

    #@237
    .line 243
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23a
    .line 244
    if-eqz v50, :cond_5

    #@23c
    const/4 v4, 0x1

    #@23d
    :goto_5
    move-object/from16 v0, p3

    #@23f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@242
    .line 245
    const/4 v4, 0x1

    #@243
    return v4

    #@244
    .line 244
    :cond_5
    const/4 v4, 0x0

    #@245
    goto :goto_5

    #@246
    .line 249
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.media.IAudioService"

    #@249
    move-object/from16 v0, p2

    #@24b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24e
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@251
    move-result v5

    #@252
    .line 253
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@255
    move-result v6

    #@256
    .line 254
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@258
    invoke-virtual {v0, v5, v6}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    #@25b
    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25e
    .line 256
    const/4 v4, 0x1

    #@25f
    return v4

    #@260
    .line 260
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_14
    const-string/jumbo v4, "android.media.IAudioService"

    #@263
    move-object/from16 v0, p2

    #@265
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@268
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26b
    move-result v5

    #@26c
    .line 263
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@26e
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    #@271
    move-result v46

    #@272
    .line 264
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@275
    .line 265
    move-object/from16 v0, p3

    #@277
    move/from16 v1, v46

    #@279
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27c
    .line 266
    const/4 v4, 0x1

    #@27d
    return v4

    #@27e
    .line 270
    .end local v5    # "_arg0":I
    .end local v46    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "android.media.IAudioService"

    #@281
    move-object/from16 v0, p2

    #@283
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@286
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@289
    move-result v5

    #@28a
    .line 273
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@28c
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    #@28f
    move-result v50

    #@290
    .line 274
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@293
    .line 275
    if-eqz v50, :cond_6

    #@295
    const/4 v4, 0x1

    #@296
    :goto_6
    move-object/from16 v0, p3

    #@298
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@29b
    .line 276
    const/4 v4, 0x1

    #@29c
    return v4

    #@29d
    .line 275
    :cond_6
    const/4 v4, 0x0

    #@29e
    goto :goto_6

    #@29f
    .line 280
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "android.media.IAudioService"

    #@2a2
    move-object/from16 v0, p2

    #@2a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a7
    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2aa
    move-result v5

    #@2ab
    .line 284
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ae
    move-result-object v39

    #@2af
    .line 286
    .restart local v39    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b2
    move-result-object v22

    #@2b3
    .line 287
    .restart local v22    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2b5
    move-object/from16 v1, v39

    #@2b7
    move-object/from16 v2, v22

    #@2b9
    invoke-virtual {v0, v5, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    #@2bc
    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bf
    .line 289
    const/4 v4, 0x1

    #@2c0
    return v4

    #@2c1
    .line 293
    .end local v5    # "_arg0":I
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v39    # "_arg1":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v4, "android.media.IAudioService"

    #@2c4
    move-object/from16 v0, p2

    #@2c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c9
    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    #@2cc
    move-result v46

    #@2cd
    .line 295
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d0
    .line 296
    move-object/from16 v0, p3

    #@2d2
    move/from16 v1, v46

    #@2d4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d7
    .line 297
    const/4 v4, 0x1

    #@2d8
    return v4

    #@2d9
    .line 301
    .end local v46    # "_result":I
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
    .line 304
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@2e7
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    #@2ea
    .line 305
    const/4 v4, 0x1

    #@2eb
    return v4

    #@2ec
    .line 309
    .end local v5    # "_arg0":I
    :sswitch_19
    const-string/jumbo v4, "android.media.IAudioService"

    #@2ef
    move-object/from16 v0, p2

    #@2f1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f4
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f7
    move-result v5

    #@2f8
    .line 313
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@2fb
    move-result v37

    #@2fc
    .line 314
    .local v37, "_arg1":F
    move-object/from16 v0, p0

    #@2fe
    move/from16 v1, v37

    #@300
    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    #@303
    .line 315
    const/4 v4, 0x1

    #@304
    return v4

    #@305
    .line 319
    .end local v5    # "_arg0":I
    .end local v37    # "_arg1":F
    :sswitch_1a
    const-string/jumbo v4, "android.media.IAudioService"

    #@308
    move-object/from16 v0, p2

    #@30a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30d
    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    #@310
    move-result v50

    #@311
    .line 321
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@314
    .line 322
    if-eqz v50, :cond_7

    #@316
    const/4 v4, 0x1

    #@317
    :goto_7
    move-object/from16 v0, p3

    #@319
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@31c
    .line 323
    const/4 v4, 0x1

    #@31d
    return v4

    #@31e
    .line 322
    :cond_7
    const/4 v4, 0x0

    #@31f
    goto :goto_7

    #@320
    .line 327
    .end local v50    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "android.media.IAudioService"

    #@323
    move-object/from16 v0, p2

    #@325
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@328
    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    #@32b
    .line 329
    const/4 v4, 0x1

    #@32c
    return v4

    #@32d
    .line 333
    :sswitch_1c
    const-string/jumbo v4, "android.media.IAudioService"

    #@330
    move-object/from16 v0, p2

    #@332
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@335
    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    #@338
    .line 335
    const/4 v4, 0x1

    #@339
    return v4

    #@33a
    .line 339
    :sswitch_1d
    const-string/jumbo v4, "android.media.IAudioService"

    #@33d
    move-object/from16 v0, p2

    #@33f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@342
    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@345
    move-result-object v35

    #@346
    .line 343
    .local v35, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@349
    move-result v4

    #@34a
    if-eqz v4, :cond_8

    #@34c
    const/16 v41, 0x1

    #@34e
    .line 344
    .local v41, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    #@350
    move-object/from16 v1, v35

    #@352
    move/from16 v2, v41

    #@354
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    #@357
    .line 345
    const/4 v4, 0x1

    #@358
    return v4

    #@359
    .line 343
    .end local v41    # "_arg1":Z
    :cond_8
    const/16 v41, 0x0

    #@35b
    .restart local v41    # "_arg1":Z
    goto :goto_8

    #@35c
    .line 349
    .end local v35    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Z
    :sswitch_1e
    const-string/jumbo v4, "android.media.IAudioService"

    #@35f
    move-object/from16 v0, p2

    #@361
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@364
    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@367
    move-result v4

    #@368
    if-eqz v4, :cond_9

    #@36a
    const/16 v36, 0x1

    #@36c
    .line 352
    .restart local v36    # "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    #@36e
    move/from16 v1, v36

    #@370
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    #@373
    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@376
    .line 354
    const/4 v4, 0x1

    #@377
    return v4

    #@378
    .line 351
    .end local v36    # "_arg0":Z
    :cond_9
    const/16 v36, 0x0

    #@37a
    .restart local v36    # "_arg0":Z
    goto :goto_9

    #@37b
    .line 358
    .end local v36    # "_arg0":Z
    :sswitch_1f
    const-string/jumbo v4, "android.media.IAudioService"

    #@37e
    move-object/from16 v0, p2

    #@380
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@383
    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    #@386
    move-result v50

    #@387
    .line 360
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38a
    .line 361
    if-eqz v50, :cond_a

    #@38c
    const/4 v4, 0x1

    #@38d
    :goto_a
    move-object/from16 v0, p3

    #@38f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@392
    .line 362
    const/4 v4, 0x1

    #@393
    return v4

    #@394
    .line 361
    :cond_a
    const/4 v4, 0x0

    #@395
    goto :goto_a

    #@396
    .line 366
    .end local v50    # "_result":Z
    :sswitch_20
    const-string/jumbo v4, "android.media.IAudioService"

    #@399
    move-object/from16 v0, p2

    #@39b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39e
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a1
    move-result v4

    #@3a2
    if-eqz v4, :cond_b

    #@3a4
    const/16 v36, 0x1

    #@3a6
    .line 369
    .restart local v36    # "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    #@3a8
    move/from16 v1, v36

    #@3aa
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    #@3ad
    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b0
    .line 371
    const/4 v4, 0x1

    #@3b1
    return v4

    #@3b2
    .line 368
    .end local v36    # "_arg0":Z
    :cond_b
    const/16 v36, 0x0

    #@3b4
    .restart local v36    # "_arg0":Z
    goto :goto_b

    #@3b5
    .line 375
    .end local v36    # "_arg0":Z
    :sswitch_21
    const-string/jumbo v4, "android.media.IAudioService"

    #@3b8
    move-object/from16 v0, p2

    #@3ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bd
    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    #@3c0
    move-result v50

    #@3c1
    .line 377
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c4
    .line 378
    if-eqz v50, :cond_c

    #@3c6
    const/4 v4, 0x1

    #@3c7
    :goto_c
    move-object/from16 v0, p3

    #@3c9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3cc
    .line 379
    const/4 v4, 0x1

    #@3cd
    return v4

    #@3ce
    .line 378
    :cond_c
    const/4 v4, 0x0

    #@3cf
    goto :goto_c

    #@3d0
    .line 383
    .end local v50    # "_result":Z
    :sswitch_22
    const-string/jumbo v4, "android.media.IAudioService"

    #@3d3
    move-object/from16 v0, p2

    #@3d5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d8
    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3db
    move-result v4

    #@3dc
    if-eqz v4, :cond_d

    #@3de
    const/16 v36, 0x1

    #@3e0
    .line 386
    .restart local v36    # "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    #@3e2
    move/from16 v1, v36

    #@3e4
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    #@3e7
    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ea
    .line 388
    const/4 v4, 0x1

    #@3eb
    return v4

    #@3ec
    .line 385
    .end local v36    # "_arg0":Z
    :cond_d
    const/16 v36, 0x0

    #@3ee
    .restart local v36    # "_arg0":Z
    goto :goto_d

    #@3ef
    .line 392
    .end local v36    # "_arg0":Z
    :sswitch_23
    const-string/jumbo v4, "android.media.IAudioService"

    #@3f2
    move-object/from16 v0, p2

    #@3f4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f7
    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    #@3fa
    move-result v50

    #@3fb
    .line 394
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fe
    .line 395
    if-eqz v50, :cond_e

    #@400
    const/4 v4, 0x1

    #@401
    :goto_e
    move-object/from16 v0, p3

    #@403
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@406
    .line 396
    const/4 v4, 0x1

    #@407
    return v4

    #@408
    .line 395
    :cond_e
    const/4 v4, 0x0

    #@409
    goto :goto_e

    #@40a
    .line 400
    .end local v50    # "_result":Z
    :sswitch_24
    const-string/jumbo v4, "android.media.IAudioService"

    #@40d
    move-object/from16 v0, p2

    #@40f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@412
    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@415
    move-result v4

    #@416
    if-eqz v4, :cond_f

    #@418
    .line 403
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41a
    move-object/from16 v0, p2

    #@41c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@41f
    move-result-object v11

    #@420
    check-cast v11, Landroid/media/AudioAttributes;

    #@422
    .line 409
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@425
    move-result v6

    #@426
    .line 411
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@429
    move-result-object v13

    #@42a
    .line 413
    .local v13, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@42d
    move-result-object v4

    #@42e
    invoke-static {v4}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    #@431
    move-result-object v14

    #@432
    .line 415
    .local v14, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@435
    move-result-object v9

    #@436
    .line 417
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@439
    move-result-object v16

    #@43a
    .line 419
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43d
    move-result v17

    #@43e
    .line 421
    .local v17, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@441
    move-result-object v4

    #@442
    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@445
    move-result-object v18

    #@446
    .local v18, "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v10, p0

    #@448
    move v12, v6

    #@449
    move-object v15, v9

    #@44a
    .line 422
    invoke-virtual/range {v10 .. v18}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    #@44d
    move-result v46

    #@44e
    .line 423
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@451
    .line 424
    move-object/from16 v0, p3

    #@453
    move/from16 v1, v46

    #@455
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@458
    .line 425
    const/4 v4, 0x1

    #@459
    return v4

    #@45a
    .line 406
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/IBinder;
    .end local v14    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":I
    .end local v18    # "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v46    # "_result":I
    :cond_f
    const/4 v11, 0x0

    #@45b
    .local v11, "_arg0":Landroid/media/AudioAttributes;
    goto :goto_f

    #@45c
    .line 429
    .end local v11    # "_arg0":Landroid/media/AudioAttributes;
    :sswitch_25
    const-string/jumbo v4, "android.media.IAudioService"

    #@45f
    move-object/from16 v0, p2

    #@461
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@464
    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@467
    move-result-object v4

    #@468
    invoke-static {v4}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    #@46b
    move-result-object v26

    #@46c
    .line 433
    .local v26, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46f
    move-result-object v40

    #@470
    .line 435
    .restart local v40    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@473
    move-result v4

    #@474
    if-eqz v4, :cond_10

    #@476
    .line 436
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@478
    move-object/from16 v0, p2

    #@47a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47d
    move-result-object v42

    #@47e
    check-cast v42, Landroid/media/AudioAttributes;

    #@480
    .line 441
    :goto_10
    move-object/from16 v0, p0

    #@482
    move-object/from16 v1, v26

    #@484
    move-object/from16 v2, v40

    #@486
    move-object/from16 v3, v42

    #@488
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    #@48b
    move-result v46

    #@48c
    .line 442
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@48f
    .line 443
    move-object/from16 v0, p3

    #@491
    move/from16 v1, v46

    #@493
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@496
    .line 444
    const/4 v4, 0x1

    #@497
    return v4

    #@498
    .line 439
    .end local v46    # "_result":I
    :cond_10
    const/16 v42, 0x0

    #@49a
    .local v42, "_arg2":Landroid/media/AudioAttributes;
    goto :goto_10

    #@49b
    .line 448
    .end local v26    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v40    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":Landroid/media/AudioAttributes;
    :sswitch_26
    const-string/jumbo v4, "android.media.IAudioService"

    #@49e
    move-object/from16 v0, p2

    #@4a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a3
    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a6
    move-result-object v35

    #@4a7
    .line 451
    .restart local v35    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4a9
    move-object/from16 v1, v35

    #@4ab
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    #@4ae
    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b1
    .line 453
    const/4 v4, 0x1

    #@4b2
    return v4

    #@4b3
    .line 457
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v4, "android.media.IAudioService"

    #@4b6
    move-object/from16 v0, p2

    #@4b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4bb
    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    #@4be
    move-result v46

    #@4bf
    .line 459
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c2
    .line 460
    move-object/from16 v0, p3

    #@4c4
    move/from16 v1, v46

    #@4c6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c9
    .line 461
    const/4 v4, 0x1

    #@4ca
    return v4

    #@4cb
    .line 465
    .end local v46    # "_result":I
    :sswitch_28
    const-string/jumbo v4, "android.media.IAudioService"

    #@4ce
    move-object/from16 v0, p2

    #@4d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d3
    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4d6
    move-result-object v4

    #@4d7
    invoke-static {v4}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@4da
    move-result-object v28

    #@4db
    .line 469
    .local v28, "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4de
    move-result v6

    #@4df
    .line 471
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e2
    move-result v7

    #@4e3
    .line 472
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@4e5
    move-object/from16 v1, v28

    #@4e7
    invoke-virtual {v0, v1, v6, v7}, Landroid/media/IAudioService$Stub;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    #@4ea
    move-result v50

    #@4eb
    .line 473
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ee
    .line 474
    if-eqz v50, :cond_11

    #@4f0
    const/4 v4, 0x1

    #@4f1
    :goto_11
    move-object/from16 v0, p3

    #@4f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4f6
    .line 475
    const/4 v4, 0x1

    #@4f7
    return v4

    #@4f8
    .line 474
    :cond_11
    const/4 v4, 0x0

    #@4f9
    goto :goto_11

    #@4fa
    .line 479
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v28    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v50    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "android.media.IAudioService"

    #@4fd
    move-object/from16 v0, p2

    #@4ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@502
    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@505
    move-result-object v4

    #@506
    invoke-static {v4}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@509
    move-result-object v28

    #@50a
    .line 483
    .restart local v28    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50d
    move-result v6

    #@50e
    .line 485
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@511
    move-result v7

    #@512
    .line 487
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@515
    move-result v4

    #@516
    if-eqz v4, :cond_12

    #@518
    .line 488
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@51a
    move-object/from16 v0, p2

    #@51c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51f
    move-result-object v45

    #@520
    check-cast v45, Landroid/content/ComponentName;

    #@522
    .line 493
    :goto_12
    move-object/from16 v0, p0

    #@524
    move-object/from16 v1, v28

    #@526
    move-object/from16 v2, v45

    #@528
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/media/IAudioService$Stub;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    #@52b
    move-result v50

    #@52c
    .line 494
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52f
    .line 495
    if-eqz v50, :cond_13

    #@531
    const/4 v4, 0x1

    #@532
    :goto_13
    move-object/from16 v0, p3

    #@534
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@537
    .line 496
    const/4 v4, 0x1

    #@538
    return v4

    #@539
    .line 491
    .end local v50    # "_result":Z
    :cond_12
    const/16 v45, 0x0

    #@53b
    .local v45, "_arg3":Landroid/content/ComponentName;
    goto :goto_12

    #@53c
    .line 495
    .end local v45    # "_arg3":Landroid/content/ComponentName;
    .restart local v50    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    #@53d
    goto :goto_13

    #@53e
    .line 500
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v28    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v50    # "_result":Z
    :sswitch_2a
    const-string/jumbo v4, "android.media.IAudioService"

    #@541
    move-object/from16 v0, p2

    #@543
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@546
    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@549
    move-result-object v4

    #@54a
    invoke-static {v4}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@54d
    move-result-object v28

    #@54e
    .line 503
    .restart local v28    # "_arg0":Landroid/media/IRemoteControlDisplay;
    move-object/from16 v0, p0

    #@550
    move-object/from16 v1, v28

    #@552
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    #@555
    .line 504
    const/4 v4, 0x1

    #@556
    return v4

    #@557
    .line 508
    .end local v28    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_2b
    const-string/jumbo v4, "android.media.IAudioService"

    #@55a
    move-object/from16 v0, p2

    #@55c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@55f
    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@562
    move-result-object v4

    #@563
    invoke-static {v4}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@566
    move-result-object v28

    #@567
    .line 512
    .restart local v28    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56a
    move-result v6

    #@56b
    .line 514
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56e
    move-result v7

    #@56f
    .line 515
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@571
    move-object/from16 v1, v28

    #@573
    invoke-virtual {v0, v1, v6, v7}, Landroid/media/IAudioService$Stub;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    #@576
    .line 516
    const/4 v4, 0x1

    #@577
    return v4

    #@578
    .line 520
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v28    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_2c
    const-string/jumbo v4, "android.media.IAudioService"

    #@57b
    move-object/from16 v0, p2

    #@57d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@580
    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@583
    move-result-object v4

    #@584
    invoke-static {v4}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@587
    move-result-object v28

    #@588
    .line 524
    .restart local v28    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58b
    move-result v4

    #@58c
    if-eqz v4, :cond_14

    #@58e
    const/16 v41, 0x1

    #@590
    .line 525
    .restart local v41    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    #@592
    move-object/from16 v1, v28

    #@594
    move/from16 v2, v41

    #@596
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    #@599
    .line 526
    const/4 v4, 0x1

    #@59a
    return v4

    #@59b
    .line 524
    .end local v41    # "_arg1":Z
    :cond_14
    const/16 v41, 0x0

    #@59d
    .restart local v41    # "_arg1":Z
    goto :goto_14

    #@59e
    .line 530
    .end local v28    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v41    # "_arg1":Z
    :sswitch_2d
    const-string/jumbo v4, "android.media.IAudioService"

    #@5a1
    move-object/from16 v0, p2

    #@5a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a6
    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5a9
    move-result-object v34

    #@5aa
    .line 534
    .local v34, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ad
    move-result v6

    #@5ae
    .line 535
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@5b0
    move-object/from16 v1, v34

    #@5b2
    invoke-virtual {v0, v1, v6}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    #@5b5
    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b8
    .line 537
    const/4 v4, 0x1

    #@5b9
    return v4

    #@5ba
    .line 541
    .end local v6    # "_arg1":I
    .end local v34    # "_arg0":Landroid/os/IBinder;
    :sswitch_2e
    const-string/jumbo v4, "android.media.IAudioService"

    #@5bd
    move-object/from16 v0, p2

    #@5bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c2
    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5c5
    move-result-object v34

    #@5c6
    .line 544
    .restart local v34    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5c8
    move-object/from16 v1, v34

    #@5ca
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    #@5cd
    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d0
    .line 546
    const/4 v4, 0x1

    #@5d1
    return v4

    #@5d2
    .line 550
    .end local v34    # "_arg0":Landroid/os/IBinder;
    :sswitch_2f
    const-string/jumbo v4, "android.media.IAudioService"

    #@5d5
    move-object/from16 v0, p2

    #@5d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5da
    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5dd
    move-result-object v34

    #@5de
    .line 553
    .restart local v34    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5e0
    move-object/from16 v1, v34

    #@5e2
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    #@5e5
    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e8
    .line 555
    const/4 v4, 0x1

    #@5e9
    return v4

    #@5ea
    .line 559
    .end local v34    # "_arg0":Landroid/os/IBinder;
    :sswitch_30
    const-string/jumbo v4, "android.media.IAudioService"

    #@5ed
    move-object/from16 v0, p2

    #@5ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f2
    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f5
    move-result v5

    #@5f6
    .line 563
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5f9
    move-result-object v39

    #@5fa
    .line 564
    .restart local v39    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5fc
    move-object/from16 v1, v39

    #@5fe
    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    #@601
    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@604
    .line 566
    const/4 v4, 0x1

    #@605
    return v4

    #@606
    .line 570
    .end local v5    # "_arg0":I
    .end local v39    # "_arg1":Landroid/os/IBinder;
    :sswitch_31
    const-string/jumbo v4, "android.media.IAudioService"

    #@609
    move-object/from16 v0, p2

    #@60b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60e
    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@611
    move-result-object v4

    #@612
    invoke-static {v4}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    #@615
    move-result-object v29

    #@616
    .line 573
    .local v29, "_arg0":Landroid/media/IRingtonePlayer;
    move-object/from16 v0, p0

    #@618
    move-object/from16 v1, v29

    #@61a
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    #@61d
    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@620
    .line 575
    const/4 v4, 0x1

    #@621
    return v4

    #@622
    .line 579
    .end local v29    # "_arg0":Landroid/media/IRingtonePlayer;
    :sswitch_32
    const-string/jumbo v4, "android.media.IAudioService"

    #@625
    move-object/from16 v0, p2

    #@627
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62a
    .line 580
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    #@62d
    move-result-object v48

    #@62e
    .line 581
    .local v48, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@631
    .line 582
    if-eqz v48, :cond_15

    #@633
    invoke-interface/range {v48 .. v48}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    #@636
    move-result-object v4

    #@637
    :goto_15
    move-object/from16 v0, p3

    #@639
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@63c
    .line 583
    const/4 v4, 0x1

    #@63d
    return v4

    #@63e
    .line 582
    :cond_15
    const/4 v4, 0x0

    #@63f
    goto :goto_15

    #@640
    .line 587
    .end local v48    # "_result":Landroid/media/IRingtonePlayer;
    :sswitch_33
    const-string/jumbo v4, "android.media.IAudioService"

    #@643
    move-object/from16 v0, p2

    #@645
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@648
    .line 588
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    #@64b
    move-result v46

    #@64c
    .line 589
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64f
    .line 590
    move-object/from16 v0, p3

    #@651
    move/from16 v1, v46

    #@653
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@656
    .line 591
    const/4 v4, 0x1

    #@657
    return v4

    #@658
    .line 595
    .end local v46    # "_result":I
    :sswitch_34
    const-string/jumbo v4, "android.media.IAudioService"

    #@65b
    move-object/from16 v0, p2

    #@65d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@660
    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@663
    move-result v5

    #@664
    .line 599
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@667
    move-result v6

    #@668
    .line 601
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66b
    move-result-object v22

    #@66c
    .line 603
    .restart local v22    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@66f
    move-result-object v8

    #@670
    .line 605
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@673
    move-result-object v9

    #@674
    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v19, p0

    #@676
    move/from16 v20, v5

    #@678
    move/from16 v21, v6

    #@67a
    move-object/from16 v23, v8

    #@67c
    move-object/from16 v24, v9

    #@67e
    .line 606
    invoke-virtual/range {v19 .. v24}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@681
    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@684
    .line 608
    const/4 v4, 0x1

    #@685
    return v4

    #@686
    .line 612
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg2":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v4, "android.media.IAudioService"

    #@689
    move-object/from16 v0, p2

    #@68b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68e
    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@691
    move-result v4

    #@692
    if-eqz v4, :cond_16

    #@694
    .line 615
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@696
    move-object/from16 v0, p2

    #@698
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69b
    move-result-object v25

    #@69c
    check-cast v25, Landroid/bluetooth/BluetoothDevice;

    #@69e
    .line 621
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a1
    move-result v6

    #@6a2
    .line 623
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a5
    move-result v7

    #@6a6
    .line 624
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@6a8
    move-object/from16 v1, v25

    #@6aa
    invoke-virtual {v0, v1, v6, v7}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    #@6ad
    move-result v46

    #@6ae
    .line 625
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b1
    .line 626
    move-object/from16 v0, p3

    #@6b3
    move/from16 v1, v46

    #@6b5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6b8
    .line 627
    const/4 v4, 0x1

    #@6b9
    return v4

    #@6ba
    .line 618
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v46    # "_result":I
    :cond_16
    const/16 v25, 0x0

    #@6bc
    .local v25, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    #@6bd
    .line 631
    .end local v25    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_36
    const-string/jumbo v4, "android.media.IAudioService"

    #@6c0
    move-object/from16 v0, p2

    #@6c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c5
    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6c8
    move-result-object v4

    #@6c9
    invoke-static {v4}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    #@6cc
    move-result-object v27

    #@6cd
    .line 634
    .local v27, "_arg0":Landroid/media/IAudioRoutesObserver;
    move-object/from16 v0, p0

    #@6cf
    move-object/from16 v1, v27

    #@6d1
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    #@6d4
    move-result-object v47

    #@6d5
    .line 635
    .local v47, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d8
    .line 636
    if-eqz v47, :cond_17

    #@6da
    .line 637
    const/4 v4, 0x1

    #@6db
    move-object/from16 v0, p3

    #@6dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6e0
    .line 638
    const/4 v4, 0x1

    #@6e1
    move-object/from16 v0, v47

    #@6e3
    move-object/from16 v1, p3

    #@6e5
    invoke-virtual {v0, v1, v4}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@6e8
    .line 643
    :goto_17
    const/4 v4, 0x1

    #@6e9
    return v4

    #@6ea
    .line 641
    :cond_17
    const/4 v4, 0x0

    #@6eb
    move-object/from16 v0, p3

    #@6ed
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6f0
    goto :goto_17

    #@6f1
    .line 647
    .end local v27    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v47    # "_result":Landroid/media/AudioRoutesInfo;
    :sswitch_37
    const-string/jumbo v4, "android.media.IAudioService"

    #@6f4
    move-object/from16 v0, p2

    #@6f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f9
    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    #@6fc
    move-result v50

    #@6fd
    .line 649
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@700
    .line 650
    if-eqz v50, :cond_18

    #@702
    const/4 v4, 0x1

    #@703
    :goto_18
    move-object/from16 v0, p3

    #@705
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@708
    .line 651
    const/4 v4, 0x1

    #@709
    return v4

    #@70a
    .line 650
    :cond_18
    const/4 v4, 0x0

    #@70b
    goto :goto_18

    #@70c
    .line 655
    .end local v50    # "_result":Z
    :sswitch_38
    const-string/jumbo v4, "android.media.IAudioService"

    #@70f
    move-object/from16 v0, p2

    #@711
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@714
    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@717
    move-result-object v4

    #@718
    invoke-static {v4}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    #@71b
    move-result-object v30

    #@71c
    .line 658
    .local v30, "_arg0":Landroid/media/IVolumeController;
    move-object/from16 v0, p0

    #@71e
    move-object/from16 v1, v30

    #@720
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    #@723
    .line 659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@726
    .line 660
    const/4 v4, 0x1

    #@727
    return v4

    #@728
    .line 664
    .end local v30    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_39
    const-string/jumbo v4, "android.media.IAudioService"

    #@72b
    move-object/from16 v0, p2

    #@72d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@730
    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@733
    move-result-object v4

    #@734
    invoke-static {v4}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    #@737
    move-result-object v30

    #@738
    .line 668
    .restart local v30    # "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73b
    move-result v4

    #@73c
    if-eqz v4, :cond_19

    #@73e
    const/16 v41, 0x1

    #@740
    .line 669
    .restart local v41    # "_arg1":Z
    :goto_19
    move-object/from16 v0, p0

    #@742
    move-object/from16 v1, v30

    #@744
    move/from16 v2, v41

    #@746
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    #@749
    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@74c
    .line 671
    const/4 v4, 0x1

    #@74d
    return v4

    #@74e
    .line 668
    .end local v41    # "_arg1":Z
    :cond_19
    const/16 v41, 0x0

    #@750
    .restart local v41    # "_arg1":Z
    goto :goto_19

    #@751
    .line 675
    .end local v30    # "_arg0":Landroid/media/IVolumeController;
    .end local v41    # "_arg1":Z
    :sswitch_3a
    const-string/jumbo v4, "android.media.IAudioService"

    #@754
    move-object/from16 v0, p2

    #@756
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@759
    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75c
    move-result v5

    #@75d
    .line 678
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@75f
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    #@762
    move-result v50

    #@763
    .line 679
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@766
    .line 680
    if-eqz v50, :cond_1a

    #@768
    const/4 v4, 0x1

    #@769
    :goto_1a
    move-object/from16 v0, p3

    #@76b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@76e
    .line 681
    const/4 v4, 0x1

    #@76f
    return v4

    #@770
    .line 680
    :cond_1a
    const/4 v4, 0x0

    #@771
    goto :goto_1a

    #@772
    .line 685
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_3b
    const-string/jumbo v4, "android.media.IAudioService"

    #@775
    move-object/from16 v0, p2

    #@777
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77a
    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@77d
    move-result v5

    #@77e
    .line 688
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@780
    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    #@783
    move-result v50

    #@784
    .line 689
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@787
    .line 690
    if-eqz v50, :cond_1b

    #@789
    const/4 v4, 0x1

    #@78a
    :goto_1b
    move-object/from16 v0, p3

    #@78c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@78f
    .line 691
    const/4 v4, 0x1

    #@790
    return v4

    #@791
    .line 690
    :cond_1b
    const/4 v4, 0x0

    #@792
    goto :goto_1b

    #@793
    .line 695
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_3c
    const-string/jumbo v4, "android.media.IAudioService"

    #@796
    move-object/from16 v0, p2

    #@798
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79b
    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@79e
    move-result-object v35

    #@79f
    .line 698
    .restart local v35    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7a1
    move-object/from16 v1, v35

    #@7a3
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    #@7a6
    .line 699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7a9
    .line 700
    const/4 v4, 0x1

    #@7aa
    return v4

    #@7ab
    .line 704
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v4, "android.media.IAudioService"

    #@7ae
    move-object/from16 v0, p2

    #@7b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b3
    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b6
    move-result v4

    #@7b7
    if-eqz v4, :cond_1c

    #@7b9
    const/16 v36, 0x1

    #@7bb
    .line 707
    .restart local v36    # "_arg0":Z
    :goto_1c
    move-object/from16 v0, p0

    #@7bd
    move/from16 v1, v36

    #@7bf
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    #@7c2
    move-result v46

    #@7c3
    .line 708
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c6
    .line 709
    move-object/from16 v0, p3

    #@7c8
    move/from16 v1, v46

    #@7ca
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7cd
    .line 710
    const/4 v4, 0x1

    #@7ce
    return v4

    #@7cf
    .line 706
    .end local v36    # "_arg0":Z
    .end local v46    # "_result":I
    :cond_1c
    const/16 v36, 0x0

    #@7d1
    .restart local v36    # "_arg0":Z
    goto :goto_1c

    #@7d2
    .line 714
    .end local v36    # "_arg0":Z
    :sswitch_3e
    const-string/jumbo v4, "android.media.IAudioService"

    #@7d5
    move-object/from16 v0, p2

    #@7d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7da
    .line 715
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    #@7dd
    move-result v50

    #@7de
    .line 716
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e1
    .line 717
    if-eqz v50, :cond_1d

    #@7e3
    const/4 v4, 0x1

    #@7e4
    :goto_1d
    move-object/from16 v0, p3

    #@7e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7e9
    .line 718
    const/4 v4, 0x1

    #@7ea
    return v4

    #@7eb
    .line 717
    :cond_1d
    const/4 v4, 0x0

    #@7ec
    goto :goto_1d

    #@7ed
    .line 722
    .end local v50    # "_result":Z
    :sswitch_3f
    const-string/jumbo v4, "android.media.IAudioService"

    #@7f0
    move-object/from16 v0, p2

    #@7f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f5
    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f8
    move-result v4

    #@7f9
    if-eqz v4, :cond_1e

    #@7fb
    .line 725
    sget-object v4, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7fd
    move-object/from16 v0, p2

    #@7ff
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@802
    move-result-object v32

    #@803
    check-cast v32, Landroid/media/audiopolicy/AudioPolicyConfig;

    #@805
    .line 731
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@808
    move-result-object v4

    #@809
    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@80c
    move-result-object v38

    #@80d
    .line 733
    .local v38, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@810
    move-result v4

    #@811
    if-eqz v4, :cond_1f

    #@813
    const/16 v43, 0x1

    #@815
    .line 734
    .local v43, "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    #@817
    move-object/from16 v1, v32

    #@819
    move-object/from16 v2, v38

    #@81b
    move/from16 v3, v43

    #@81d
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;

    #@820
    move-result-object v49

    #@821
    .line 735
    .local v49, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@824
    .line 736
    move-object/from16 v0, p3

    #@826
    move-object/from16 v1, v49

    #@828
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@82b
    .line 737
    const/4 v4, 0x1

    #@82c
    return v4

    #@82d
    .line 728
    .end local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v43    # "_arg2":Z
    .end local v49    # "_result":Ljava/lang/String;
    :cond_1e
    const/16 v32, 0x0

    #@82f
    .local v32, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    goto :goto_1e

    #@830
    .line 733
    .end local v32    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .restart local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_1f
    const/16 v43, 0x0

    #@832
    .restart local v43    # "_arg2":Z
    goto :goto_1f

    #@833
    .line 741
    .end local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v43    # "_arg2":Z
    :sswitch_40
    const-string/jumbo v4, "android.media.IAudioService"

    #@836
    move-object/from16 v0, p2

    #@838
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83b
    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@83e
    move-result-object v4

    #@83f
    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@842
    move-result-object v33

    #@843
    .line 744
    .local v33, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    #@845
    move-object/from16 v1, v33

    #@847
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    #@84a
    .line 745
    const/4 v4, 0x1

    #@84b
    return v4

    #@84c
    .line 749
    .end local v33    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :sswitch_41
    const-string/jumbo v4, "android.media.IAudioService"

    #@84f
    move-object/from16 v0, p2

    #@851
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@854
    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@857
    move-result v5

    #@858
    .line 753
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@85b
    move-result-object v4

    #@85c
    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@85f
    move-result-object v38

    #@860
    .line 754
    .restart local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    #@862
    move-object/from16 v1, v38

    #@864
    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    #@867
    move-result v46

    #@868
    .line 755
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86b
    .line 756
    move-object/from16 v0, p3

    #@86d
    move/from16 v1, v46

    #@86f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@872
    .line 757
    const/4 v4, 0x1

    #@873
    return v4

    #@874
    .line 761
    .end local v5    # "_arg0":I
    .end local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v46    # "_result":I
    :sswitch_42
    const-string/jumbo v4, "android.media.IAudioService"

    #@877
    move-object/from16 v0, p2

    #@879
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@87c
    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@87f
    move-result v4

    #@880
    if-eqz v4, :cond_20

    #@882
    .line 764
    sget-object v4, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@884
    move-object/from16 v0, p2

    #@886
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@889
    move-result-object v31

    #@88a
    check-cast v31, Landroid/media/VolumePolicy;

    #@88c
    .line 769
    :goto_20
    move-object/from16 v0, p0

    #@88e
    move-object/from16 v1, v31

    #@890
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    #@893
    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@896
    .line 771
    const/4 v4, 0x1

    #@897
    return v4

    #@898
    .line 767
    :cond_20
    const/16 v31, 0x0

    #@89a
    .local v31, "_arg0":Landroid/media/VolumePolicy;
    goto :goto_20

    #@89b
    .line 41
    nop

    #@89c
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

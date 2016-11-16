.class public abstract Landroid/media/tv/ITvInputManager$Stub;
.super Landroid/os/Binder;
.source "ITvInputManager.java"

# interfaces
.implements Landroid/media/tv/ITvInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputManager"

.field static final TRANSACTION_acquireTvInputHardware:I = 0x25

.field static final TRANSACTION_addBlockedRating:I = 0xc

.field static final TRANSACTION_captureFrame:I = 0x28

.field static final TRANSACTION_createOverlayView:I = 0x18

.field static final TRANSACTION_createSession:I = 0xe

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x12

.field static final TRANSACTION_getAvailableTvStreamConfigList:I = 0x27

.field static final TRANSACTION_getBlockedRatings:I = 0xb

.field static final TRANSACTION_getDvbDeviceList:I = 0x2a

.field static final TRANSACTION_getHardwareList:I = 0x24

.field static final TRANSACTION_getTvContentRatingSystemList:I = 0x5

.field static final TRANSACTION_getTvInputInfo:I = 0x2

.field static final TRANSACTION_getTvInputList:I = 0x1

.field static final TRANSACTION_getTvInputState:I = 0x4

.field static final TRANSACTION_isParentalControlsEnabled:I = 0x8

.field static final TRANSACTION_isRatingBlocked:I = 0xa

.field static final TRANSACTION_isSingleSessionActive:I = 0x29

.field static final TRANSACTION_openDvbDevice:I = 0x2b

.field static final TRANSACTION_registerCallback:I = 0x6

.field static final TRANSACTION_relayoutOverlayView:I = 0x19

.field static final TRANSACTION_releaseSession:I = 0xf

.field static final TRANSACTION_releaseTvInputHardware:I = 0x26

.field static final TRANSACTION_removeBlockedRating:I = 0xd

.field static final TRANSACTION_removeOverlayView:I = 0x1a

.field static final TRANSACTION_selectTrack:I = 0x16

.field static final TRANSACTION_sendAppPrivateCommand:I = 0x17

.field static final TRANSACTION_setCaptionEnabled:I = 0x15

.field static final TRANSACTION_setMainSession:I = 0x10

.field static final TRANSACTION_setParentalControlsEnabled:I = 0x9

.field static final TRANSACTION_setSurface:I = 0x11

.field static final TRANSACTION_setVolume:I = 0x13

.field static final TRANSACTION_startRecording:I = 0x22

.field static final TRANSACTION_stopRecording:I = 0x23

.field static final TRANSACTION_timeShiftEnablePositionTracking:I = 0x21

.field static final TRANSACTION_timeShiftPause:I = 0x1d

.field static final TRANSACTION_timeShiftPlay:I = 0x1c

.field static final TRANSACTION_timeShiftResume:I = 0x1e

.field static final TRANSACTION_timeShiftSeekTo:I = 0x1f

.field static final TRANSACTION_timeShiftSetPlaybackParams:I = 0x20

.field static final TRANSACTION_tune:I = 0x14

.field static final TRANSACTION_unblockContent:I = 0x1b

.field static final TRANSACTION_unregisterCallback:I = 0x7

.field static final TRANSACTION_updateTvInputInfo:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.media.tv.ITvInputManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.media.tv.ITvInputManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/tv/ITvInputManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/media/tv/ITvInputManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 49
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 659
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v16

    #@1e
    .line 54
    .local v16, "_arg0":I
    move-object/from16 v0, p0

    #@20
    move/from16 v1, v16

    #@22
    invoke-virtual {v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputList(I)Ljava/util/List;

    #@25
    move-result-object v45

    #@26
    .line 55
    .local v45, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 56
    move-object/from16 v0, p3

    #@2b
    move-object/from16 v1, v45

    #@2d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@30
    .line 57
    const/4 v4, 0x1

    #@31
    return v4

    #@32
    .line 61
    .end local v16    # "_arg0":I
    .end local v45    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    :sswitch_2
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@35
    move-object/from16 v0, p2

    #@37
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v20

    #@3e
    .line 65
    .local v20, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v12

    #@42
    .line 66
    .local v12, "_arg1":I
    move-object/from16 v0, p0

    #@44
    move-object/from16 v1, v20

    #@46
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;

    #@49
    move-result-object v40

    #@4a
    .line 67
    .local v40, "_result":Landroid/media/tv/TvInputInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d
    .line 68
    if-eqz v40, :cond_0

    #@4f
    .line 69
    const/4 v4, 0x1

    #@50
    move-object/from16 v0, p3

    #@52
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 70
    const/4 v4, 0x1

    #@56
    move-object/from16 v0, v40

    #@58
    move-object/from16 v1, p3

    #@5a
    invoke-virtual {v0, v1, v4}, Landroid/media/tv/TvInputInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5d
    .line 75
    :goto_0
    const/4 v4, 0x1

    #@5e
    return v4

    #@5f
    .line 73
    :cond_0
    const/4 v4, 0x0

    #@60
    move-object/from16 v0, p3

    #@62
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    goto :goto_0

    #@66
    .line 79
    .end local v12    # "_arg1":I
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":Landroid/media/tv/TvInputInfo;
    :sswitch_3
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@69
    move-object/from16 v0, p2

    #@6b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v4

    #@72
    if-eqz v4, :cond_1

    #@74
    .line 82
    sget-object v4, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@76
    move-object/from16 v0, p2

    #@78
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7b
    move-result-object v19

    #@7c
    check-cast v19, Landroid/media/tv/TvInputInfo;

    #@7e
    .line 88
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v12

    #@82
    .line 89
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, v19

    #@86
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V

    #@89
    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c
    .line 91
    const/4 v4, 0x1

    #@8d
    return v4

    #@8e
    .line 85
    .end local v12    # "_arg1":I
    :cond_1
    const/16 v19, 0x0

    #@90
    .local v19, "_arg0":Landroid/media/tv/TvInputInfo;
    goto :goto_1

    #@91
    .line 95
    .end local v19    # "_arg0":Landroid/media/tv/TvInputInfo;
    :sswitch_4
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@94
    move-object/from16 v0, p2

    #@96
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9c
    move-result-object v20

    #@9d
    .line 99
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v12

    #@a1
    .line 100
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@a3
    move-object/from16 v1, v20

    #@a5
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputState(Ljava/lang/String;I)I

    #@a8
    move-result v38

    #@a9
    .line 101
    .local v38, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    .line 102
    move-object/from16 v0, p3

    #@ae
    move/from16 v1, v38

    #@b0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b3
    .line 103
    const/4 v4, 0x1

    #@b4
    return v4

    #@b5
    .line 107
    .end local v12    # "_arg1":I
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v38    # "_result":I
    :sswitch_5
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c0
    move-result v16

    #@c1
    .line 110
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@c3
    move/from16 v1, v16

    #@c5
    invoke-virtual {v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getTvContentRatingSystemList(I)Ljava/util/List;

    #@c8
    move-result-object v43

    #@c9
    .line 111
    .local v43, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRatingSystemInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc
    .line 112
    move-object/from16 v0, p3

    #@ce
    move-object/from16 v1, v43

    #@d0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d3
    .line 113
    const/4 v4, 0x1

    #@d4
    return v4

    #@d5
    .line 117
    .end local v16    # "_arg0":I
    .end local v43    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRatingSystemInfo;>;"
    :sswitch_6
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@d8
    move-object/from16 v0, p2

    #@da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dd
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e0
    move-result-object v4

    #@e1
    invoke-static {v4}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    #@e4
    move-result-object v18

    #@e5
    .line 121
    .local v18, "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e8
    move-result v12

    #@e9
    .line 122
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@eb
    move-object/from16 v1, v18

    #@ed
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    #@f0
    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f3
    .line 124
    const/4 v4, 0x1

    #@f4
    return v4

    #@f5
    .line 128
    .end local v12    # "_arg1":I
    .end local v18    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    :sswitch_7
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@f8
    move-object/from16 v0, p2

    #@fa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fd
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@100
    move-result-object v4

    #@101
    invoke-static {v4}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    #@104
    move-result-object v18

    #@105
    .line 132
    .restart local v18    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@108
    move-result v12

    #@109
    .line 133
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@10b
    move-object/from16 v1, v18

    #@10d
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    #@110
    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@113
    .line 135
    const/4 v4, 0x1

    #@114
    return v4

    #@115
    .line 139
    .end local v12    # "_arg1":I
    .end local v18    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    :sswitch_8
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@118
    move-object/from16 v0, p2

    #@11a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11d
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120
    move-result v16

    #@121
    .line 142
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@123
    move/from16 v1, v16

    #@125
    invoke-virtual {v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->isParentalControlsEnabled(I)Z

    #@128
    move-result v48

    #@129
    .line 143
    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c
    .line 144
    if-eqz v48, :cond_2

    #@12e
    const/4 v4, 0x1

    #@12f
    :goto_2
    move-object/from16 v0, p3

    #@131
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@134
    .line 145
    const/4 v4, 0x1

    #@135
    return v4

    #@136
    .line 144
    :cond_2
    const/4 v4, 0x0

    #@137
    goto :goto_2

    #@138
    .line 149
    .end local v16    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@13b
    move-object/from16 v0, p2

    #@13d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140
    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@143
    move-result v4

    #@144
    if-eqz v4, :cond_3

    #@146
    const/16 v21, 0x1

    #@148
    .line 153
    .local v21, "_arg0":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14b
    move-result v12

    #@14c
    .line 154
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@14e
    move/from16 v1, v21

    #@150
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->setParentalControlsEnabled(ZI)V

    #@153
    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@156
    .line 156
    const/4 v4, 0x1

    #@157
    return v4

    #@158
    .line 151
    .end local v12    # "_arg1":I
    .end local v21    # "_arg0":Z
    :cond_3
    const/16 v21, 0x0

    #@15a
    .restart local v21    # "_arg0":Z
    goto :goto_3

    #@15b
    .line 160
    .end local v21    # "_arg0":Z
    :sswitch_a
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@15e
    move-object/from16 v0, p2

    #@160
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@163
    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@166
    move-result-object v20

    #@167
    .line 164
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16a
    move-result v12

    #@16b
    .line 165
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@16d
    move-object/from16 v1, v20

    #@16f
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->isRatingBlocked(Ljava/lang/String;I)Z

    #@172
    move-result v48

    #@173
    .line 166
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@176
    .line 167
    if-eqz v48, :cond_4

    #@178
    const/4 v4, 0x1

    #@179
    :goto_4
    move-object/from16 v0, p3

    #@17b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@17e
    .line 168
    const/4 v4, 0x1

    #@17f
    return v4

    #@180
    .line 167
    :cond_4
    const/4 v4, 0x0

    #@181
    goto :goto_4

    #@182
    .line 172
    .end local v12    # "_arg1":I
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@185
    move-object/from16 v0, p2

    #@187
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18a
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18d
    move-result v16

    #@18e
    .line 175
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@190
    move/from16 v1, v16

    #@192
    invoke-virtual {v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->getBlockedRatings(I)Ljava/util/List;

    #@195
    move-result-object v47

    #@196
    .line 176
    .local v47, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@199
    .line 177
    move-object/from16 v0, p3

    #@19b
    move-object/from16 v1, v47

    #@19d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1a0
    .line 178
    const/4 v4, 0x1

    #@1a1
    return v4

    #@1a2
    .line 182
    .end local v16    # "_arg0":I
    .end local v47    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_c
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@1a5
    move-object/from16 v0, p2

    #@1a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1aa
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ad
    move-result-object v20

    #@1ae
    .line 186
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b1
    move-result v12

    #@1b2
    .line 187
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@1b4
    move-object/from16 v1, v20

    #@1b6
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->addBlockedRating(Ljava/lang/String;I)V

    #@1b9
    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bc
    .line 189
    const/4 v4, 0x1

    #@1bd
    return v4

    #@1be
    .line 193
    .end local v12    # "_arg1":I
    .end local v20    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@1c1
    move-object/from16 v0, p2

    #@1c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c6
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c9
    move-result-object v20

    #@1ca
    .line 197
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cd
    move-result v12

    #@1ce
    .line 198
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@1d0
    move-object/from16 v1, v20

    #@1d2
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->removeBlockedRating(Ljava/lang/String;I)V

    #@1d5
    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d8
    .line 200
    const/4 v4, 0x1

    #@1d9
    return v4

    #@1da
    .line 204
    .end local v12    # "_arg1":I
    .end local v20    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@1dd
    move-object/from16 v0, p2

    #@1df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e2
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e5
    move-result-object v4

    #@1e6
    invoke-static {v4}, Landroid/media/tv/ITvInputClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputClient;

    #@1e9
    move-result-object v5

    #@1ea
    .line 208
    .local v5, "_arg0":Landroid/media/tv/ITvInputClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ed
    move-result-object v6

    #@1ee
    .line 210
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f1
    move-result v4

    #@1f2
    if-eqz v4, :cond_5

    #@1f4
    const/4 v7, 0x1

    #@1f5
    .line 212
    .local v7, "_arg2":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f8
    move-result v8

    #@1f9
    .line 214
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fc
    move-result v9

    #@1fd
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@1ff
    .line 215
    invoke-virtual/range {v4 .. v9}, Landroid/media/tv/ITvInputManager$Stub;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V

    #@202
    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@205
    .line 217
    const/4 v4, 0x1

    #@206
    return v4

    #@207
    .line 210
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :cond_5
    const/4 v7, 0x0

    #@208
    .restart local v7    # "_arg2":Z
    goto :goto_5

    #@209
    .line 221
    .end local v5    # "_arg0":Landroid/media/tv/ITvInputClient;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Z
    :sswitch_f
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@20c
    move-object/from16 v0, p2

    #@20e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@211
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@214
    move-result-object v11

    #@215
    .line 225
    .local v11, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@218
    move-result v12

    #@219
    .line 226
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@21b
    invoke-virtual {v0, v11, v12}, Landroid/media/tv/ITvInputManager$Stub;->releaseSession(Landroid/os/IBinder;I)V

    #@21e
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@221
    .line 228
    const/4 v4, 0x1

    #@222
    return v4

    #@223
    .line 232
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    :sswitch_10
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@226
    move-object/from16 v0, p2

    #@228
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22b
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22e
    move-result-object v11

    #@22f
    .line 236
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@232
    move-result v12

    #@233
    .line 237
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@235
    invoke-virtual {v0, v11, v12}, Landroid/media/tv/ITvInputManager$Stub;->setMainSession(Landroid/os/IBinder;I)V

    #@238
    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23b
    .line 239
    const/4 v4, 0x1

    #@23c
    return v4

    #@23d
    .line 243
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@240
    move-object/from16 v0, p2

    #@242
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@245
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@248
    move-result-object v11

    #@249
    .line 247
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24c
    move-result v4

    #@24d
    if-eqz v4, :cond_6

    #@24f
    .line 248
    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@251
    move-object/from16 v0, p2

    #@253
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@256
    move-result-object v31

    #@257
    check-cast v31, Landroid/view/Surface;

    #@259
    .line 254
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25c
    move-result v13

    #@25d
    .line 255
    .local v13, "_arg2":I
    move-object/from16 v0, p0

    #@25f
    move-object/from16 v1, v31

    #@261
    invoke-virtual {v0, v11, v1, v13}, Landroid/media/tv/ITvInputManager$Stub;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V

    #@264
    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@267
    .line 257
    const/4 v4, 0x1

    #@268
    return v4

    #@269
    .line 251
    .end local v13    # "_arg2":I
    :cond_6
    const/16 v31, 0x0

    #@26b
    .local v31, "_arg1":Landroid/view/Surface;
    goto :goto_6

    #@26c
    .line 261
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v31    # "_arg1":Landroid/view/Surface;
    :sswitch_12
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@26f
    move-object/from16 v0, p2

    #@271
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@274
    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@277
    move-result-object v11

    #@278
    .line 265
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27b
    move-result v12

    #@27c
    .line 267
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27f
    move-result v13

    #@280
    .line 269
    .restart local v13    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@283
    move-result v8

    #@284
    .line 271
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@287
    move-result v9

    #@288
    .restart local v9    # "_arg4":I
    move-object/from16 v10, p0

    #@28a
    move v14, v8

    #@28b
    move v15, v9

    #@28c
    .line 272
    invoke-virtual/range {v10 .. v15}, Landroid/media/tv/ITvInputManager$Stub;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V

    #@28f
    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@292
    .line 274
    const/4 v4, 0x1

    #@293
    return v4

    #@294
    .line 278
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    :sswitch_13
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@297
    move-object/from16 v0, p2

    #@299
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29c
    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@29f
    move-result-object v11

    #@2a0
    .line 282
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@2a3
    move-result v22

    #@2a4
    .line 284
    .local v22, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a7
    move-result v13

    #@2a8
    .line 285
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@2aa
    move/from16 v1, v22

    #@2ac
    invoke-virtual {v0, v11, v1, v13}, Landroid/media/tv/ITvInputManager$Stub;->setVolume(Landroid/os/IBinder;FI)V

    #@2af
    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b2
    .line 287
    const/4 v4, 0x1

    #@2b3
    return v4

    #@2b4
    .line 291
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg2":I
    .end local v22    # "_arg1":F
    :sswitch_14
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@2b7
    move-object/from16 v0, p2

    #@2b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bc
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2bf
    move-result-object v11

    #@2c0
    .line 295
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c3
    move-result v4

    #@2c4
    if-eqz v4, :cond_7

    #@2c6
    .line 296
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c8
    move-object/from16 v0, p2

    #@2ca
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2cd
    move-result-object v29

    #@2ce
    check-cast v29, Landroid/net/Uri;

    #@2d0
    .line 302
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d3
    move-result v4

    #@2d4
    if-eqz v4, :cond_8

    #@2d6
    .line 303
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d8
    move-object/from16 v0, p2

    #@2da
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2dd
    move-result-object v36

    #@2de
    check-cast v36, Landroid/os/Bundle;

    #@2e0
    .line 309
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e3
    move-result v8

    #@2e4
    .line 310
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@2e6
    move-object/from16 v1, v29

    #@2e8
    move-object/from16 v2, v36

    #@2ea
    invoke-virtual {v0, v11, v1, v2, v8}, Landroid/media/tv/ITvInputManager$Stub;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    #@2ed
    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f0
    .line 312
    const/4 v4, 0x1

    #@2f1
    return v4

    #@2f2
    .line 299
    .end local v8    # "_arg3":I
    :cond_7
    const/16 v29, 0x0

    #@2f4
    .local v29, "_arg1":Landroid/net/Uri;
    goto :goto_7

    #@2f5
    .line 306
    .end local v29    # "_arg1":Landroid/net/Uri;
    :cond_8
    const/16 v36, 0x0

    #@2f7
    .local v36, "_arg2":Landroid/os/Bundle;
    goto :goto_8

    #@2f8
    .line 316
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v36    # "_arg2":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@2fb
    move-object/from16 v0, p2

    #@2fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@300
    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@303
    move-result-object v11

    #@304
    .line 320
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@307
    move-result v4

    #@308
    if-eqz v4, :cond_9

    #@30a
    const/16 v32, 0x1

    #@30c
    .line 322
    .local v32, "_arg1":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30f
    move-result v13

    #@310
    .line 323
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@312
    move/from16 v1, v32

    #@314
    invoke-virtual {v0, v11, v1, v13}, Landroid/media/tv/ITvInputManager$Stub;->setCaptionEnabled(Landroid/os/IBinder;ZI)V

    #@317
    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31a
    .line 325
    const/4 v4, 0x1

    #@31b
    return v4

    #@31c
    .line 320
    .end local v13    # "_arg2":I
    .end local v32    # "_arg1":Z
    :cond_9
    const/16 v32, 0x0

    #@31e
    .restart local v32    # "_arg1":Z
    goto :goto_9

    #@31f
    .line 329
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v32    # "_arg1":Z
    :sswitch_16
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@322
    move-object/from16 v0, p2

    #@324
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@327
    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@32a
    move-result-object v11

    #@32b
    .line 333
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32e
    move-result v12

    #@32f
    .line 335
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@332
    move-result-object v37

    #@333
    .line 337
    .local v37, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@336
    move-result v8

    #@337
    .line 338
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@339
    move-object/from16 v1, v37

    #@33b
    invoke-virtual {v0, v11, v12, v1, v8}, Landroid/media/tv/ITvInputManager$Stub;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V

    #@33e
    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@341
    .line 340
    const/4 v4, 0x1

    #@342
    return v4

    #@343
    .line 344
    .end local v8    # "_arg3":I
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    .end local v37    # "_arg2":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@346
    move-object/from16 v0, p2

    #@348
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34b
    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@34e
    move-result-object v11

    #@34f
    .line 348
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@352
    move-result-object v6

    #@353
    .line 350
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@356
    move-result v4

    #@357
    if-eqz v4, :cond_a

    #@359
    .line 351
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@35b
    move-object/from16 v0, p2

    #@35d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@360
    move-result-object v36

    #@361
    check-cast v36, Landroid/os/Bundle;

    #@363
    .line 357
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@366
    move-result v8

    #@367
    .line 358
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@369
    move-object/from16 v1, v36

    #@36b
    invoke-virtual {v0, v11, v6, v1, v8}, Landroid/media/tv/ITvInputManager$Stub;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    #@36e
    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@371
    .line 360
    const/4 v4, 0x1

    #@372
    return v4

    #@373
    .line 354
    .end local v8    # "_arg3":I
    :cond_a
    const/16 v36, 0x0

    #@375
    .restart local v36    # "_arg2":Landroid/os/Bundle;
    goto :goto_a

    #@376
    .line 364
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v36    # "_arg2":Landroid/os/Bundle;
    :sswitch_18
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@379
    move-object/from16 v0, p2

    #@37b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37e
    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@381
    move-result-object v11

    #@382
    .line 368
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@385
    move-result-object v30

    #@386
    .line 370
    .local v30, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@389
    move-result v4

    #@38a
    if-eqz v4, :cond_b

    #@38c
    .line 371
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38e
    move-object/from16 v0, p2

    #@390
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@393
    move-result-object v33

    #@394
    check-cast v33, Landroid/graphics/Rect;

    #@396
    .line 377
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@399
    move-result v8

    #@39a
    .line 378
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@39c
    move-object/from16 v1, v30

    #@39e
    move-object/from16 v2, v33

    #@3a0
    invoke-virtual {v0, v11, v1, v2, v8}, Landroid/media/tv/ITvInputManager$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    #@3a3
    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a6
    .line 380
    const/4 v4, 0x1

    #@3a7
    return v4

    #@3a8
    .line 374
    .end local v8    # "_arg3":I
    :cond_b
    const/16 v33, 0x0

    #@3aa
    .local v33, "_arg2":Landroid/graphics/Rect;
    goto :goto_b

    #@3ab
    .line 384
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v30    # "_arg1":Landroid/os/IBinder;
    .end local v33    # "_arg2":Landroid/graphics/Rect;
    :sswitch_19
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@3ae
    move-object/from16 v0, p2

    #@3b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b3
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3b6
    move-result-object v11

    #@3b7
    .line 388
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ba
    move-result v4

    #@3bb
    if-eqz v4, :cond_c

    #@3bd
    .line 389
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3bf
    move-object/from16 v0, p2

    #@3c1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c4
    move-result-object v23

    #@3c5
    check-cast v23, Landroid/graphics/Rect;

    #@3c7
    .line 395
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ca
    move-result v13

    #@3cb
    .line 396
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@3cd
    move-object/from16 v1, v23

    #@3cf
    invoke-virtual {v0, v11, v1, v13}, Landroid/media/tv/ITvInputManager$Stub;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    #@3d2
    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d5
    .line 398
    const/4 v4, 0x1

    #@3d6
    return v4

    #@3d7
    .line 392
    .end local v13    # "_arg2":I
    :cond_c
    const/16 v23, 0x0

    #@3d9
    .local v23, "_arg1":Landroid/graphics/Rect;
    goto :goto_c

    #@3da
    .line 402
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v23    # "_arg1":Landroid/graphics/Rect;
    :sswitch_1a
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@3dd
    move-object/from16 v0, p2

    #@3df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e2
    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3e5
    move-result-object v11

    #@3e6
    .line 406
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e9
    move-result v12

    #@3ea
    .line 407
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@3ec
    invoke-virtual {v0, v11, v12}, Landroid/media/tv/ITvInputManager$Stub;->removeOverlayView(Landroid/os/IBinder;I)V

    #@3ef
    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f2
    .line 409
    const/4 v4, 0x1

    #@3f3
    return v4

    #@3f4
    .line 413
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@3f7
    move-object/from16 v0, p2

    #@3f9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3fc
    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3ff
    move-result-object v11

    #@400
    .line 417
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@403
    move-result-object v6

    #@404
    .line 419
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@407
    move-result v13

    #@408
    .line 420
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@40a
    invoke-virtual {v0, v11, v6, v13}, Landroid/media/tv/ITvInputManager$Stub;->unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V

    #@40d
    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@410
    .line 422
    const/4 v4, 0x1

    #@411
    return v4

    #@412
    .line 426
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg2":I
    :sswitch_1c
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@415
    move-object/from16 v0, p2

    #@417
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41a
    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@41d
    move-result-object v11

    #@41e
    .line 430
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@421
    move-result v4

    #@422
    if-eqz v4, :cond_d

    #@424
    .line 431
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@426
    move-object/from16 v0, p2

    #@428
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42b
    move-result-object v29

    #@42c
    check-cast v29, Landroid/net/Uri;

    #@42e
    .line 437
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@431
    move-result v13

    #@432
    .line 438
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@434
    move-object/from16 v1, v29

    #@436
    invoke-virtual {v0, v11, v1, v13}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V

    #@439
    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43c
    .line 440
    const/4 v4, 0x1

    #@43d
    return v4

    #@43e
    .line 434
    .end local v13    # "_arg2":I
    :cond_d
    const/16 v29, 0x0

    #@440
    .restart local v29    # "_arg1":Landroid/net/Uri;
    goto :goto_d

    #@441
    .line 444
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v29    # "_arg1":Landroid/net/Uri;
    :sswitch_1d
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@444
    move-object/from16 v0, p2

    #@446
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@449
    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@44c
    move-result-object v11

    #@44d
    .line 448
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@450
    move-result v12

    #@451
    .line 449
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@453
    invoke-virtual {v0, v11, v12}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftPause(Landroid/os/IBinder;I)V

    #@456
    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@459
    .line 451
    const/4 v4, 0x1

    #@45a
    return v4

    #@45b
    .line 455
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    :sswitch_1e
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@45e
    move-object/from16 v0, p2

    #@460
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@463
    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@466
    move-result-object v11

    #@467
    .line 459
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46a
    move-result v12

    #@46b
    .line 460
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@46d
    invoke-virtual {v0, v11, v12}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftResume(Landroid/os/IBinder;I)V

    #@470
    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@473
    .line 462
    const/4 v4, 0x1

    #@474
    return v4

    #@475
    .line 466
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    :sswitch_1f
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@478
    move-object/from16 v0, p2

    #@47a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47d
    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@480
    move-result-object v11

    #@481
    .line 470
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@484
    move-result-wide v24

    #@485
    .line 472
    .local v24, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@488
    move-result v13

    #@489
    .line 473
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@48b
    move-wide/from16 v1, v24

    #@48d
    invoke-virtual {v0, v11, v1, v2, v13}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSeekTo(Landroid/os/IBinder;JI)V

    #@490
    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@493
    .line 475
    const/4 v4, 0x1

    #@494
    return v4

    #@495
    .line 479
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg2":I
    .end local v24    # "_arg1":J
    :sswitch_20
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@498
    move-object/from16 v0, p2

    #@49a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49d
    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4a0
    move-result-object v11

    #@4a1
    .line 483
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a4
    move-result v4

    #@4a5
    if-eqz v4, :cond_e

    #@4a7
    .line 484
    sget-object v4, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a9
    move-object/from16 v0, p2

    #@4ab
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4ae
    move-result-object v26

    #@4af
    check-cast v26, Landroid/media/PlaybackParams;

    #@4b1
    .line 490
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b4
    move-result v13

    #@4b5
    .line 491
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@4b7
    move-object/from16 v1, v26

    #@4b9
    invoke-virtual {v0, v11, v1, v13}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V

    #@4bc
    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4bf
    .line 493
    const/4 v4, 0x1

    #@4c0
    return v4

    #@4c1
    .line 487
    .end local v13    # "_arg2":I
    :cond_e
    const/16 v26, 0x0

    #@4c3
    .local v26, "_arg1":Landroid/media/PlaybackParams;
    goto :goto_e

    #@4c4
    .line 497
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v26    # "_arg1":Landroid/media/PlaybackParams;
    :sswitch_21
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@4c7
    move-object/from16 v0, p2

    #@4c9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4cc
    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4cf
    move-result-object v11

    #@4d0
    .line 501
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d3
    move-result v4

    #@4d4
    if-eqz v4, :cond_f

    #@4d6
    const/16 v32, 0x1

    #@4d8
    .line 503
    .restart local v32    # "_arg1":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4db
    move-result v13

    #@4dc
    .line 504
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@4de
    move/from16 v1, v32

    #@4e0
    invoke-virtual {v0, v11, v1, v13}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V

    #@4e3
    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e6
    .line 506
    const/4 v4, 0x1

    #@4e7
    return v4

    #@4e8
    .line 501
    .end local v13    # "_arg2":I
    .end local v32    # "_arg1":Z
    :cond_f
    const/16 v32, 0x0

    #@4ea
    .restart local v32    # "_arg1":Z
    goto :goto_f

    #@4eb
    .line 510
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v32    # "_arg1":Z
    :sswitch_22
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@4ee
    move-object/from16 v0, p2

    #@4f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f3
    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4f6
    move-result-object v11

    #@4f7
    .line 514
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4fa
    move-result v4

    #@4fb
    if-eqz v4, :cond_10

    #@4fd
    .line 515
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4ff
    move-object/from16 v0, p2

    #@501
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@504
    move-result-object v29

    #@505
    check-cast v29, Landroid/net/Uri;

    #@507
    .line 521
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50a
    move-result v13

    #@50b
    .line 522
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@50d
    move-object/from16 v1, v29

    #@50f
    invoke-virtual {v0, v11, v1, v13}, Landroid/media/tv/ITvInputManager$Stub;->startRecording(Landroid/os/IBinder;Landroid/net/Uri;I)V

    #@512
    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@515
    .line 524
    const/4 v4, 0x1

    #@516
    return v4

    #@517
    .line 518
    .end local v13    # "_arg2":I
    :cond_10
    const/16 v29, 0x0

    #@519
    .restart local v29    # "_arg1":Landroid/net/Uri;
    goto :goto_10

    #@51a
    .line 528
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v29    # "_arg1":Landroid/net/Uri;
    :sswitch_23
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@51d
    move-object/from16 v0, p2

    #@51f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@522
    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@525
    move-result-object v11

    #@526
    .line 532
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@529
    move-result v12

    #@52a
    .line 533
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@52c
    invoke-virtual {v0, v11, v12}, Landroid/media/tv/ITvInputManager$Stub;->stopRecording(Landroid/os/IBinder;I)V

    #@52f
    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@532
    .line 535
    const/4 v4, 0x1

    #@533
    return v4

    #@534
    .line 539
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    :sswitch_24
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@537
    move-object/from16 v0, p2

    #@539
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53c
    .line 540
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputManager$Stub;->getHardwareList()Ljava/util/List;

    #@53f
    move-result-object v44

    #@540
    .line 541
    .local v44, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@543
    .line 542
    move-object/from16 v0, p3

    #@545
    move-object/from16 v1, v44

    #@547
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@54a
    .line 543
    const/4 v4, 0x1

    #@54b
    return v4

    #@54c
    .line 547
    .end local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    :sswitch_25
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@54f
    move-object/from16 v0, p2

    #@551
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@554
    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@557
    move-result v16

    #@558
    .line 551
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@55b
    move-result-object v4

    #@55c
    invoke-static {v4}, Landroid/media/tv/ITvInputHardwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardwareCallback;

    #@55f
    move-result-object v28

    #@560
    .line 553
    .local v28, "_arg1":Landroid/media/tv/ITvInputHardwareCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@563
    move-result v4

    #@564
    if-eqz v4, :cond_11

    #@566
    .line 554
    sget-object v4, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@568
    move-object/from16 v0, p2

    #@56a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@56d
    move-result-object v34

    #@56e
    check-cast v34, Landroid/media/tv/TvInputInfo;

    #@570
    .line 560
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@573
    move-result v8

    #@574
    .line 561
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@576
    move/from16 v1, v16

    #@578
    move-object/from16 v2, v28

    #@57a
    move-object/from16 v3, v34

    #@57c
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/media/tv/ITvInputManager$Stub;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;

    #@57f
    move-result-object v39

    #@580
    .line 562
    .local v39, "_result":Landroid/media/tv/ITvInputHardware;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@583
    .line 563
    if-eqz v39, :cond_12

    #@585
    invoke-interface/range {v39 .. v39}, Landroid/media/tv/ITvInputHardware;->asBinder()Landroid/os/IBinder;

    #@588
    move-result-object v4

    #@589
    :goto_12
    move-object/from16 v0, p3

    #@58b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@58e
    .line 564
    const/4 v4, 0x1

    #@58f
    return v4

    #@590
    .line 557
    .end local v8    # "_arg3":I
    .end local v39    # "_result":Landroid/media/tv/ITvInputHardware;
    :cond_11
    const/16 v34, 0x0

    #@592
    .local v34, "_arg2":Landroid/media/tv/TvInputInfo;
    goto :goto_11

    #@593
    .line 563
    .end local v34    # "_arg2":Landroid/media/tv/TvInputInfo;
    .restart local v8    # "_arg3":I
    .restart local v39    # "_result":Landroid/media/tv/ITvInputHardware;
    :cond_12
    const/4 v4, 0x0

    #@594
    goto :goto_12

    #@595
    .line 568
    .end local v8    # "_arg3":I
    .end local v16    # "_arg0":I
    .end local v28    # "_arg1":Landroid/media/tv/ITvInputHardwareCallback;
    .end local v39    # "_result":Landroid/media/tv/ITvInputHardware;
    :sswitch_26
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@598
    move-object/from16 v0, p2

    #@59a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59d
    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a0
    move-result v16

    #@5a1
    .line 572
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5a4
    move-result-object v4

    #@5a5
    invoke-static {v4}, Landroid/media/tv/ITvInputHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;

    #@5a8
    move-result-object v27

    #@5a9
    .line 574
    .local v27, "_arg1":Landroid/media/tv/ITvInputHardware;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ac
    move-result v13

    #@5ad
    .line 575
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@5af
    move/from16 v1, v16

    #@5b1
    move-object/from16 v2, v27

    #@5b3
    invoke-virtual {v0, v1, v2, v13}, Landroid/media/tv/ITvInputManager$Stub;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V

    #@5b6
    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b9
    .line 577
    const/4 v4, 0x1

    #@5ba
    return v4

    #@5bb
    .line 581
    .end local v13    # "_arg2":I
    .end local v16    # "_arg0":I
    .end local v27    # "_arg1":Landroid/media/tv/ITvInputHardware;
    :sswitch_27
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@5be
    move-object/from16 v0, p2

    #@5c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c3
    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c6
    move-result-object v20

    #@5c7
    .line 585
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ca
    move-result v12

    #@5cb
    .line 586
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@5cd
    move-object/from16 v1, v20

    #@5cf
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;

    #@5d2
    move-result-object v46

    #@5d3
    .line 587
    .local v46, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d6
    .line 588
    move-object/from16 v0, p3

    #@5d8
    move-object/from16 v1, v46

    #@5da
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@5dd
    .line 589
    const/4 v4, 0x1

    #@5de
    return v4

    #@5df
    .line 593
    .end local v12    # "_arg1":I
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    :sswitch_28
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@5e2
    move-object/from16 v0, p2

    #@5e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e7
    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5ea
    move-result-object v20

    #@5eb
    .line 597
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ee
    move-result v4

    #@5ef
    if-eqz v4, :cond_13

    #@5f1
    .line 598
    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5f3
    move-object/from16 v0, p2

    #@5f5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5f8
    move-result-object v31

    #@5f9
    check-cast v31, Landroid/view/Surface;

    #@5fb
    .line 604
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5fe
    move-result v4

    #@5ff
    if-eqz v4, :cond_14

    #@601
    .line 605
    sget-object v4, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@603
    move-object/from16 v0, p2

    #@605
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@608
    move-result-object v35

    #@609
    check-cast v35, Landroid/media/tv/TvStreamConfig;

    #@60b
    .line 611
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@60e
    move-result v8

    #@60f
    .line 612
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@611
    move-object/from16 v1, v20

    #@613
    move-object/from16 v2, v31

    #@615
    move-object/from16 v3, v35

    #@617
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/media/tv/ITvInputManager$Stub;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z

    #@61a
    move-result v48

    #@61b
    .line 613
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@61e
    .line 614
    if-eqz v48, :cond_15

    #@620
    const/4 v4, 0x1

    #@621
    :goto_15
    move-object/from16 v0, p3

    #@623
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@626
    .line 615
    const/4 v4, 0x1

    #@627
    return v4

    #@628
    .line 601
    .end local v8    # "_arg3":I
    .end local v48    # "_result":Z
    :cond_13
    const/16 v31, 0x0

    #@62a
    .restart local v31    # "_arg1":Landroid/view/Surface;
    goto :goto_13

    #@62b
    .line 608
    .end local v31    # "_arg1":Landroid/view/Surface;
    :cond_14
    const/16 v35, 0x0

    #@62d
    .local v35, "_arg2":Landroid/media/tv/TvStreamConfig;
    goto :goto_14

    #@62e
    .line 614
    .end local v35    # "_arg2":Landroid/media/tv/TvStreamConfig;
    .restart local v8    # "_arg3":I
    .restart local v48    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    #@62f
    goto :goto_15

    #@630
    .line 619
    .end local v8    # "_arg3":I
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@633
    move-object/from16 v0, p2

    #@635
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@638
    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63b
    move-result v16

    #@63c
    .line 622
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@63e
    move/from16 v1, v16

    #@640
    invoke-virtual {v0, v1}, Landroid/media/tv/ITvInputManager$Stub;->isSingleSessionActive(I)Z

    #@643
    move-result v48

    #@644
    .line 623
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@647
    .line 624
    if-eqz v48, :cond_16

    #@649
    const/4 v4, 0x1

    #@64a
    :goto_16
    move-object/from16 v0, p3

    #@64c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@64f
    .line 625
    const/4 v4, 0x1

    #@650
    return v4

    #@651
    .line 624
    :cond_16
    const/4 v4, 0x0

    #@652
    goto :goto_16

    #@653
    .line 629
    .end local v16    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_2a
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@656
    move-object/from16 v0, p2

    #@658
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65b
    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputManager$Stub;->getDvbDeviceList()Ljava/util/List;

    #@65e
    move-result-object v42

    #@65f
    .line 631
    .local v42, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/DvbDeviceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@662
    .line 632
    move-object/from16 v0, p3

    #@664
    move-object/from16 v1, v42

    #@666
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@669
    .line 633
    const/4 v4, 0x1

    #@66a
    return v4

    #@66b
    .line 637
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/DvbDeviceInfo;>;"
    :sswitch_2b
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@66e
    move-object/from16 v0, p2

    #@670
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@673
    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@676
    move-result v4

    #@677
    if-eqz v4, :cond_17

    #@679
    .line 640
    sget-object v4, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@67b
    move-object/from16 v0, p2

    #@67d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@680
    move-result-object v17

    #@681
    check-cast v17, Landroid/media/tv/DvbDeviceInfo;

    #@683
    .line 646
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@686
    move-result v12

    #@687
    .line 647
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    #@689
    move-object/from16 v1, v17

    #@68b
    invoke-virtual {v0, v1, v12}, Landroid/media/tv/ITvInputManager$Stub;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;

    #@68e
    move-result-object v41

    #@68f
    .line 648
    .local v41, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@692
    .line 649
    if-eqz v41, :cond_18

    #@694
    .line 650
    const/4 v4, 0x1

    #@695
    move-object/from16 v0, p3

    #@697
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@69a
    .line 651
    const/4 v4, 0x1

    #@69b
    move-object/from16 v0, v41

    #@69d
    move-object/from16 v1, p3

    #@69f
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@6a2
    .line 656
    :goto_18
    const/4 v4, 0x1

    #@6a3
    return v4

    #@6a4
    .line 643
    .end local v12    # "_arg1":I
    .end local v41    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_17
    const/16 v17, 0x0

    #@6a6
    .local v17, "_arg0":Landroid/media/tv/DvbDeviceInfo;
    goto :goto_17

    #@6a7
    .line 654
    .end local v17    # "_arg0":Landroid/media/tv/DvbDeviceInfo;
    .restart local v12    # "_arg1":I
    .restart local v41    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_18
    const/4 v4, 0x0

    #@6a8
    move-object/from16 v0, p3

    #@6aa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6ad
    goto :goto_18

    #@6ae
    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

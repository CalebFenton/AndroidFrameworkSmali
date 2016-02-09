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

.field static final TRANSACTION_acquireTvInputHardware:I = 0x21

.field static final TRANSACTION_addBlockedRating:I = 0xb

.field static final TRANSACTION_captureFrame:I = 0x24

.field static final TRANSACTION_createOverlayView:I = 0x17

.field static final TRANSACTION_createSession:I = 0xd

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x11

.field static final TRANSACTION_getAvailableTvStreamConfigList:I = 0x23

.field static final TRANSACTION_getBlockedRatings:I = 0xa

.field static final TRANSACTION_getDvbDeviceList:I = 0x26

.field static final TRANSACTION_getHardwareList:I = 0x20

.field static final TRANSACTION_getTvContentRatingSystemList:I = 0x4

.field static final TRANSACTION_getTvInputInfo:I = 0x2

.field static final TRANSACTION_getTvInputList:I = 0x1

.field static final TRANSACTION_getTvInputState:I = 0x3

.field static final TRANSACTION_isParentalControlsEnabled:I = 0x7

.field static final TRANSACTION_isRatingBlocked:I = 0x9

.field static final TRANSACTION_isSingleSessionActive:I = 0x25

.field static final TRANSACTION_openDvbDevice:I = 0x27

.field static final TRANSACTION_registerCallback:I = 0x5

.field static final TRANSACTION_relayoutOverlayView:I = 0x18

.field static final TRANSACTION_releaseSession:I = 0xe

.field static final TRANSACTION_releaseTvInputHardware:I = 0x22

.field static final TRANSACTION_removeBlockedRating:I = 0xc

.field static final TRANSACTION_removeOverlayView:I = 0x19

.field static final TRANSACTION_selectTrack:I = 0x15

.field static final TRANSACTION_sendAppPrivateCommand:I = 0x16

.field static final TRANSACTION_setCaptionEnabled:I = 0x14

.field static final TRANSACTION_setMainSession:I = 0xf

.field static final TRANSACTION_setParentalControlsEnabled:I = 0x8

.field static final TRANSACTION_setSurface:I = 0x10

.field static final TRANSACTION_setVolume:I = 0x12

.field static final TRANSACTION_timeShiftEnablePositionTracking:I = 0x1f

.field static final TRANSACTION_timeShiftPause:I = 0x1b

.field static final TRANSACTION_timeShiftResume:I = 0x1c

.field static final TRANSACTION_timeShiftSeekTo:I = 0x1d

.field static final TRANSACTION_timeShiftSetPlaybackParams:I = 0x1e

.field static final TRANSACTION_tune:I = 0x13

.field static final TRANSACTION_unblockContent:I = 0x1a

.field static final TRANSACTION_unregisterCallback:I = 0x6


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
    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 44
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
    .line 594
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
    move-result v10

    #@1e
    .line 54
    .local v10, "_arg0":I
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v10}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputList(I)Ljava/util/List;

    #@23
    move-result-object v40

    #@24
    .line 55
    .local v40, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 56
    move-object/from16 v0, p3

    #@29
    move-object/from16 v1, v40

    #@2b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@2e
    .line 57
    const/4 v4, 0x1

    #@2f
    return v4

    #@30
    .line 61
    .end local v10    # "_arg0":I
    .end local v40    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    :sswitch_2
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@33
    move-object/from16 v0, p2

    #@35
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b
    move-result-object v14

    #@3c
    .line 65
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v6

    #@40
    .line 66
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    #@42
    invoke-virtual {v0, v14, v6}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;

    #@45
    move-result-object v35

    #@46
    .line 67
    .local v35, "_result":Landroid/media/tv/TvInputInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 68
    if-eqz v35, :cond_0

    #@4b
    .line 69
    const/4 v4, 0x1

    #@4c
    move-object/from16 v0, p3

    #@4e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 70
    const/4 v4, 0x1

    #@52
    move-object/from16 v0, v35

    #@54
    move-object/from16 v1, p3

    #@56
    invoke-virtual {v0, v1, v4}, Landroid/media/tv/TvInputInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@59
    .line 75
    :goto_0
    const/4 v4, 0x1

    #@5a
    return v4

    #@5b
    .line 73
    :cond_0
    const/4 v4, 0x0

    #@5c
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    goto :goto_0

    #@62
    .line 79
    .end local v6    # "_arg1":I
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":Landroid/media/tv/TvInputInfo;
    :sswitch_3
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@65
    move-object/from16 v0, p2

    #@67
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d
    move-result-object v14

    #@6e
    .line 83
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v6

    #@72
    .line 84
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@74
    invoke-virtual {v0, v14, v6}, Landroid/media/tv/ITvInputManager$Stub;->getTvInputState(Ljava/lang/String;I)I

    #@77
    move-result v33

    #@78
    .line 85
    .local v33, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    .line 86
    move-object/from16 v0, p3

    #@7d
    move/from16 v1, v33

    #@7f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@82
    .line 87
    const/4 v4, 0x1

    #@83
    return v4

    #@84
    .line 91
    .end local v6    # "_arg1":I
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":I
    :sswitch_4
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v10

    #@90
    .line 94
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@92
    invoke-virtual {v0, v10}, Landroid/media/tv/ITvInputManager$Stub;->getTvContentRatingSystemList(I)Ljava/util/List;

    #@95
    move-result-object v38

    #@96
    .line 95
    .local v38, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRatingSystemInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@99
    .line 96
    move-object/from16 v0, p3

    #@9b
    move-object/from16 v1, v38

    #@9d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a0
    .line 97
    const/4 v4, 0x1

    #@a1
    return v4

    #@a2
    .line 101
    .end local v10    # "_arg0":I
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvContentRatingSystemInfo;>;"
    :sswitch_5
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@a5
    move-object/from16 v0, p2

    #@a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ad
    move-result-object v4

    #@ae
    invoke-static {v4}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    #@b1
    move-result-object v13

    #@b2
    .line 105
    .local v13, "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v6

    #@b6
    .line 106
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@b8
    invoke-virtual {v0, v13, v6}, Landroid/media/tv/ITvInputManager$Stub;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    #@bb
    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@be
    .line 108
    const/4 v4, 0x1

    #@bf
    return v4

    #@c0
    .line 112
    .end local v6    # "_arg1":I
    .end local v13    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    :sswitch_6
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@c3
    move-object/from16 v0, p2

    #@c5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@cb
    move-result-object v4

    #@cc
    invoke-static {v4}, Landroid/media/tv/ITvInputManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;

    #@cf
    move-result-object v13

    #@d0
    .line 116
    .restart local v13    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d3
    move-result v6

    #@d4
    .line 117
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@d6
    invoke-virtual {v0, v13, v6}, Landroid/media/tv/ITvInputManager$Stub;->unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    #@d9
    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dc
    .line 119
    const/4 v4, 0x1

    #@dd
    return v4

    #@de
    .line 123
    .end local v6    # "_arg1":I
    .end local v13    # "_arg0":Landroid/media/tv/ITvInputManagerCallback;
    :sswitch_7
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@e1
    move-object/from16 v0, p2

    #@e3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e6
    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e9
    move-result v10

    #@ea
    .line 126
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@ec
    invoke-virtual {v0, v10}, Landroid/media/tv/ITvInputManager$Stub;->isParentalControlsEnabled(I)Z

    #@ef
    move-result v43

    #@f0
    .line 127
    .local v43, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f3
    .line 128
    if-eqz v43, :cond_1

    #@f5
    const/4 v4, 0x1

    #@f6
    :goto_1
    move-object/from16 v0, p3

    #@f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@fb
    .line 129
    const/4 v4, 0x1

    #@fc
    return v4

    #@fd
    .line 128
    :cond_1
    const/4 v4, 0x0

    #@fe
    goto :goto_1

    #@ff
    .line 133
    .end local v10    # "_arg0":I
    .end local v43    # "_result":Z
    :sswitch_8
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@102
    move-object/from16 v0, p2

    #@104
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@107
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10a
    move-result v4

    #@10b
    if-eqz v4, :cond_2

    #@10d
    const/4 v15, 0x1

    #@10e
    .line 137
    .local v15, "_arg0":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@111
    move-result v6

    #@112
    .line 138
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@114
    invoke-virtual {v0, v15, v6}, Landroid/media/tv/ITvInputManager$Stub;->setParentalControlsEnabled(ZI)V

    #@117
    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11a
    .line 140
    const/4 v4, 0x1

    #@11b
    return v4

    #@11c
    .line 135
    .end local v6    # "_arg1":I
    .end local v15    # "_arg0":Z
    :cond_2
    const/4 v15, 0x0

    #@11d
    .restart local v15    # "_arg0":Z
    goto :goto_2

    #@11e
    .line 144
    .end local v15    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@121
    move-object/from16 v0, p2

    #@123
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@126
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@129
    move-result-object v14

    #@12a
    .line 148
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v6

    #@12e
    .line 149
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@130
    invoke-virtual {v0, v14, v6}, Landroid/media/tv/ITvInputManager$Stub;->isRatingBlocked(Ljava/lang/String;I)Z

    #@133
    move-result v43

    #@134
    .line 150
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@137
    .line 151
    if-eqz v43, :cond_3

    #@139
    const/4 v4, 0x1

    #@13a
    :goto_3
    move-object/from16 v0, p3

    #@13c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@13f
    .line 152
    const/4 v4, 0x1

    #@140
    return v4

    #@141
    .line 151
    :cond_3
    const/4 v4, 0x0

    #@142
    goto :goto_3

    #@143
    .line 156
    .end local v6    # "_arg1":I
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@146
    move-object/from16 v0, p2

    #@148
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14b
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14e
    move-result v10

    #@14f
    .line 159
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@151
    invoke-virtual {v0, v10}, Landroid/media/tv/ITvInputManager$Stub;->getBlockedRatings(I)Ljava/util/List;

    #@154
    move-result-object v42

    #@155
    .line 160
    .local v42, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@158
    .line 161
    move-object/from16 v0, p3

    #@15a
    move-object/from16 v1, v42

    #@15c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@15f
    .line 162
    const/4 v4, 0x1

    #@160
    return v4

    #@161
    .line 166
    .end local v10    # "_arg0":I
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@164
    move-object/from16 v0, p2

    #@166
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@169
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16c
    move-result-object v14

    #@16d
    .line 170
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@170
    move-result v6

    #@171
    .line 171
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@173
    invoke-virtual {v0, v14, v6}, Landroid/media/tv/ITvInputManager$Stub;->addBlockedRating(Ljava/lang/String;I)V

    #@176
    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@179
    .line 173
    const/4 v4, 0x1

    #@17a
    return v4

    #@17b
    .line 177
    .end local v6    # "_arg1":I
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@17e
    move-object/from16 v0, p2

    #@180
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@183
    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@186
    move-result-object v14

    #@187
    .line 181
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18a
    move-result v6

    #@18b
    .line 182
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@18d
    invoke-virtual {v0, v14, v6}, Landroid/media/tv/ITvInputManager$Stub;->removeBlockedRating(Ljava/lang/String;I)V

    #@190
    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@193
    .line 184
    const/4 v4, 0x1

    #@194
    return v4

    #@195
    .line 188
    .end local v6    # "_arg1":I
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@198
    move-object/from16 v0, p2

    #@19a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a0
    move-result-object v4

    #@1a1
    invoke-static {v4}, Landroid/media/tv/ITvInputClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputClient;

    #@1a4
    move-result-object v12

    #@1a5
    .line 192
    .local v12, "_arg0":Landroid/media/tv/ITvInputClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a8
    move-result-object v26

    #@1a9
    .line 194
    .local v26, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ac
    move-result v7

    #@1ad
    .line 196
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b0
    move-result v8

    #@1b1
    .line 197
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    #@1b3
    move-object/from16 v1, v26

    #@1b5
    invoke-virtual {v0, v12, v1, v7, v8}, Landroid/media/tv/ITvInputManager$Stub;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;II)V

    #@1b8
    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bb
    .line 199
    const/4 v4, 0x1

    #@1bc
    return v4

    #@1bd
    .line 203
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v12    # "_arg0":Landroid/media/tv/ITvInputClient;
    .end local v26    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@1c0
    move-object/from16 v0, p2

    #@1c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c5
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c8
    move-result-object v5

    #@1c9
    .line 207
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cc
    move-result v6

    #@1cd
    .line 208
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1cf
    invoke-virtual {v0, v5, v6}, Landroid/media/tv/ITvInputManager$Stub;->releaseSession(Landroid/os/IBinder;I)V

    #@1d2
    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d5
    .line 210
    const/4 v4, 0x1

    #@1d6
    return v4

    #@1d7
    .line 214
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_f
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@1da
    move-object/from16 v0, p2

    #@1dc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1df
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e2
    move-result-object v5

    #@1e3
    .line 218
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e6
    move-result v6

    #@1e7
    .line 219
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1e9
    invoke-virtual {v0, v5, v6}, Landroid/media/tv/ITvInputManager$Stub;->setMainSession(Landroid/os/IBinder;I)V

    #@1ec
    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ef
    .line 221
    const/4 v4, 0x1

    #@1f0
    return v4

    #@1f1
    .line 225
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_10
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@1f4
    move-object/from16 v0, p2

    #@1f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f9
    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1fc
    move-result-object v5

    #@1fd
    .line 229
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@200
    move-result v4

    #@201
    if-eqz v4, :cond_4

    #@203
    .line 230
    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@205
    move-object/from16 v0, p2

    #@207
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20a
    move-result-object v25

    #@20b
    check-cast v25, Landroid/view/Surface;

    #@20d
    .line 236
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@210
    move-result v7

    #@211
    .line 237
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@213
    move-object/from16 v1, v25

    #@215
    invoke-virtual {v0, v5, v1, v7}, Landroid/media/tv/ITvInputManager$Stub;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V

    #@218
    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21b
    .line 239
    const/4 v4, 0x1

    #@21c
    return v4

    #@21d
    .line 233
    .end local v7    # "_arg2":I
    :cond_4
    const/16 v25, 0x0

    #@21f
    .local v25, "_arg1":Landroid/view/Surface;
    goto :goto_4

    #@220
    .line 243
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v25    # "_arg1":Landroid/view/Surface;
    :sswitch_11
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@223
    move-object/from16 v0, p2

    #@225
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@228
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22b
    move-result-object v5

    #@22c
    .line 247
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22f
    move-result v6

    #@230
    .line 249
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233
    move-result v7

    #@234
    .line 251
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@237
    move-result v8

    #@238
    .line 253
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23b
    move-result v9

    #@23c
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@23e
    .line 254
    invoke-virtual/range {v4 .. v9}, Landroid/media/tv/ITvInputManager$Stub;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V

    #@241
    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@244
    .line 256
    const/4 v4, 0x1

    #@245
    return v4

    #@246
    .line 260
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :sswitch_12
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@249
    move-object/from16 v0, p2

    #@24b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24e
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@251
    move-result-object v5

    #@252
    .line 264
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@255
    move-result v16

    #@256
    .line 266
    .local v16, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@259
    move-result v7

    #@25a
    .line 267
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@25c
    move/from16 v1, v16

    #@25e
    invoke-virtual {v0, v5, v1, v7}, Landroid/media/tv/ITvInputManager$Stub;->setVolume(Landroid/os/IBinder;FI)V

    #@261
    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@264
    .line 269
    const/4 v4, 0x1

    #@265
    return v4

    #@266
    .line 273
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg2":I
    .end local v16    # "_arg1":F
    :sswitch_13
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@269
    move-object/from16 v0, p2

    #@26b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26e
    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@271
    move-result-object v5

    #@272
    .line 277
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@275
    move-result v4

    #@276
    if-eqz v4, :cond_5

    #@278
    .line 278
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27a
    move-object/from16 v0, p2

    #@27c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27f
    move-result-object v23

    #@280
    check-cast v23, Landroid/net/Uri;

    #@282
    .line 284
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@285
    move-result v4

    #@286
    if-eqz v4, :cond_6

    #@288
    .line 285
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28a
    move-object/from16 v0, p2

    #@28c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28f
    move-result-object v31

    #@290
    check-cast v31, Landroid/os/Bundle;

    #@292
    .line 291
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@295
    move-result v8

    #@296
    .line 292
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@298
    move-object/from16 v1, v23

    #@29a
    move-object/from16 v2, v31

    #@29c
    invoke-virtual {v0, v5, v1, v2, v8}, Landroid/media/tv/ITvInputManager$Stub;->tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    #@29f
    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a2
    .line 294
    const/4 v4, 0x1

    #@2a3
    return v4

    #@2a4
    .line 281
    .end local v8    # "_arg3":I
    :cond_5
    const/16 v23, 0x0

    #@2a6
    .local v23, "_arg1":Landroid/net/Uri;
    goto :goto_5

    #@2a7
    .line 288
    .end local v23    # "_arg1":Landroid/net/Uri;
    :cond_6
    const/16 v31, 0x0

    #@2a9
    .local v31, "_arg2":Landroid/os/Bundle;
    goto :goto_6

    #@2aa
    .line 298
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v31    # "_arg2":Landroid/os/Bundle;
    :sswitch_14
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@2ad
    move-object/from16 v0, p2

    #@2af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b2
    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b5
    move-result-object v5

    #@2b6
    .line 302
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b9
    move-result v4

    #@2ba
    if-eqz v4, :cond_7

    #@2bc
    const/16 v27, 0x1

    #@2be
    .line 304
    .local v27, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c1
    move-result v7

    #@2c2
    .line 305
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@2c4
    move/from16 v1, v27

    #@2c6
    invoke-virtual {v0, v5, v1, v7}, Landroid/media/tv/ITvInputManager$Stub;->setCaptionEnabled(Landroid/os/IBinder;ZI)V

    #@2c9
    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cc
    .line 307
    const/4 v4, 0x1

    #@2cd
    return v4

    #@2ce
    .line 302
    .end local v7    # "_arg2":I
    .end local v27    # "_arg1":Z
    :cond_7
    const/16 v27, 0x0

    #@2d0
    .restart local v27    # "_arg1":Z
    goto :goto_7

    #@2d1
    .line 311
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v27    # "_arg1":Z
    :sswitch_15
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@2d4
    move-object/from16 v0, p2

    #@2d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d9
    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2dc
    move-result-object v5

    #@2dd
    .line 315
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e0
    move-result v6

    #@2e1
    .line 317
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e4
    move-result-object v32

    #@2e5
    .line 319
    .local v32, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e8
    move-result v8

    #@2e9
    .line 320
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@2eb
    move-object/from16 v1, v32

    #@2ed
    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/media/tv/ITvInputManager$Stub;->selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V

    #@2f0
    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f3
    .line 322
    const/4 v4, 0x1

    #@2f4
    return v4

    #@2f5
    .line 326
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v32    # "_arg2":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@2f8
    move-object/from16 v0, p2

    #@2fa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fd
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@300
    move-result-object v5

    #@301
    .line 330
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@304
    move-result-object v26

    #@305
    .line 332
    .restart local v26    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@308
    move-result v4

    #@309
    if-eqz v4, :cond_8

    #@30b
    .line 333
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30d
    move-object/from16 v0, p2

    #@30f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@312
    move-result-object v31

    #@313
    check-cast v31, Landroid/os/Bundle;

    #@315
    .line 339
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@318
    move-result v8

    #@319
    .line 340
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@31b
    move-object/from16 v1, v26

    #@31d
    move-object/from16 v2, v31

    #@31f
    invoke-virtual {v0, v5, v1, v2, v8}, Landroid/media/tv/ITvInputManager$Stub;->sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    #@322
    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@325
    .line 342
    const/4 v4, 0x1

    #@326
    return v4

    #@327
    .line 336
    .end local v8    # "_arg3":I
    :cond_8
    const/16 v31, 0x0

    #@329
    .restart local v31    # "_arg2":Landroid/os/Bundle;
    goto :goto_8

    #@32a
    .line 346
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v26    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Landroid/os/Bundle;
    :sswitch_17
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@32d
    move-object/from16 v0, p2

    #@32f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@332
    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@335
    move-result-object v5

    #@336
    .line 350
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@339
    move-result-object v24

    #@33a
    .line 352
    .local v24, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33d
    move-result v4

    #@33e
    if-eqz v4, :cond_9

    #@340
    .line 353
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@342
    move-object/from16 v0, p2

    #@344
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@347
    move-result-object v28

    #@348
    check-cast v28, Landroid/graphics/Rect;

    #@34a
    .line 359
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@34d
    move-result v8

    #@34e
    .line 360
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@350
    move-object/from16 v1, v24

    #@352
    move-object/from16 v2, v28

    #@354
    invoke-virtual {v0, v5, v1, v2, v8}, Landroid/media/tv/ITvInputManager$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    #@357
    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35a
    .line 362
    const/4 v4, 0x1

    #@35b
    return v4

    #@35c
    .line 356
    .end local v8    # "_arg3":I
    :cond_9
    const/16 v28, 0x0

    #@35e
    .local v28, "_arg2":Landroid/graphics/Rect;
    goto :goto_9

    #@35f
    .line 366
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v24    # "_arg1":Landroid/os/IBinder;
    .end local v28    # "_arg2":Landroid/graphics/Rect;
    :sswitch_18
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@362
    move-object/from16 v0, p2

    #@364
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@367
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@36a
    move-result-object v5

    #@36b
    .line 370
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36e
    move-result v4

    #@36f
    if-eqz v4, :cond_a

    #@371
    .line 371
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@373
    move-object/from16 v0, p2

    #@375
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@378
    move-result-object v17

    #@379
    check-cast v17, Landroid/graphics/Rect;

    #@37b
    .line 377
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37e
    move-result v7

    #@37f
    .line 378
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@381
    move-object/from16 v1, v17

    #@383
    invoke-virtual {v0, v5, v1, v7}, Landroid/media/tv/ITvInputManager$Stub;->relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    #@386
    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@389
    .line 380
    const/4 v4, 0x1

    #@38a
    return v4

    #@38b
    .line 374
    .end local v7    # "_arg2":I
    :cond_a
    const/16 v17, 0x0

    #@38d
    .local v17, "_arg1":Landroid/graphics/Rect;
    goto :goto_a

    #@38e
    .line 384
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/graphics/Rect;
    :sswitch_19
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@391
    move-object/from16 v0, p2

    #@393
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@396
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@399
    move-result-object v5

    #@39a
    .line 388
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39d
    move-result v6

    #@39e
    .line 389
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@3a0
    invoke-virtual {v0, v5, v6}, Landroid/media/tv/ITvInputManager$Stub;->removeOverlayView(Landroid/os/IBinder;I)V

    #@3a3
    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a6
    .line 391
    const/4 v4, 0x1

    #@3a7
    return v4

    #@3a8
    .line 395
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_1a
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@3ab
    move-object/from16 v0, p2

    #@3ad
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b0
    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3b3
    move-result-object v5

    #@3b4
    .line 399
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b7
    move-result-object v26

    #@3b8
    .line 401
    .restart local v26    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bb
    move-result v7

    #@3bc
    .line 402
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@3be
    move-object/from16 v1, v26

    #@3c0
    invoke-virtual {v0, v5, v1, v7}, Landroid/media/tv/ITvInputManager$Stub;->unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V

    #@3c3
    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c6
    .line 404
    const/4 v4, 0x1

    #@3c7
    return v4

    #@3c8
    .line 408
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg2":I
    .end local v26    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@3cb
    move-object/from16 v0, p2

    #@3cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d0
    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3d3
    move-result-object v5

    #@3d4
    .line 412
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d7
    move-result v6

    #@3d8
    .line 413
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@3da
    invoke-virtual {v0, v5, v6}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftPause(Landroid/os/IBinder;I)V

    #@3dd
    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e0
    .line 415
    const/4 v4, 0x1

    #@3e1
    return v4

    #@3e2
    .line 419
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@3e5
    move-object/from16 v0, p2

    #@3e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ea
    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3ed
    move-result-object v5

    #@3ee
    .line 423
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f1
    move-result v6

    #@3f2
    .line 424
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@3f4
    invoke-virtual {v0, v5, v6}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftResume(Landroid/os/IBinder;I)V

    #@3f7
    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fa
    .line 426
    const/4 v4, 0x1

    #@3fb
    return v4

    #@3fc
    .line 430
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_1d
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@3ff
    move-object/from16 v0, p2

    #@401
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@404
    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@407
    move-result-object v5

    #@408
    .line 434
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@40b
    move-result-wide v18

    #@40c
    .line 436
    .local v18, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40f
    move-result v7

    #@410
    .line 437
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@412
    move-wide/from16 v1, v18

    #@414
    invoke-virtual {v0, v5, v1, v2, v7}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSeekTo(Landroid/os/IBinder;JI)V

    #@417
    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41a
    .line 439
    const/4 v4, 0x1

    #@41b
    return v4

    #@41c
    .line 443
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg2":I
    .end local v18    # "_arg1":J
    :sswitch_1e
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@41f
    move-object/from16 v0, p2

    #@421
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@424
    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@427
    move-result-object v5

    #@428
    .line 447
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42b
    move-result v4

    #@42c
    if-eqz v4, :cond_b

    #@42e
    .line 448
    sget-object v4, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@430
    move-object/from16 v0, p2

    #@432
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@435
    move-result-object v20

    #@436
    check-cast v20, Landroid/media/PlaybackParams;

    #@438
    .line 454
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43b
    move-result v7

    #@43c
    .line 455
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@43e
    move-object/from16 v1, v20

    #@440
    invoke-virtual {v0, v5, v1, v7}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V

    #@443
    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@446
    .line 457
    const/4 v4, 0x1

    #@447
    return v4

    #@448
    .line 451
    .end local v7    # "_arg2":I
    :cond_b
    const/16 v20, 0x0

    #@44a
    .local v20, "_arg1":Landroid/media/PlaybackParams;
    goto :goto_b

    #@44b
    .line 461
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":Landroid/media/PlaybackParams;
    :sswitch_1f
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@44e
    move-object/from16 v0, p2

    #@450
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@453
    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@456
    move-result-object v5

    #@457
    .line 465
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45a
    move-result v4

    #@45b
    if-eqz v4, :cond_c

    #@45d
    const/16 v27, 0x1

    #@45f
    .line 467
    .restart local v27    # "_arg1":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@462
    move-result v7

    #@463
    .line 468
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@465
    move/from16 v1, v27

    #@467
    invoke-virtual {v0, v5, v1, v7}, Landroid/media/tv/ITvInputManager$Stub;->timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V

    #@46a
    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@46d
    .line 470
    const/4 v4, 0x1

    #@46e
    return v4

    #@46f
    .line 465
    .end local v7    # "_arg2":I
    .end local v27    # "_arg1":Z
    :cond_c
    const/16 v27, 0x0

    #@471
    .restart local v27    # "_arg1":Z
    goto :goto_c

    #@472
    .line 474
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v27    # "_arg1":Z
    :sswitch_20
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@475
    move-object/from16 v0, p2

    #@477
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47a
    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputManager$Stub;->getHardwareList()Ljava/util/List;

    #@47d
    move-result-object v39

    #@47e
    .line 476
    .local v39, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@481
    .line 477
    move-object/from16 v0, p3

    #@483
    move-object/from16 v1, v39

    #@485
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@488
    .line 478
    const/4 v4, 0x1

    #@489
    return v4

    #@48a
    .line 482
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputHardwareInfo;>;"
    :sswitch_21
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@48d
    move-object/from16 v0, p2

    #@48f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@492
    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@495
    move-result v10

    #@496
    .line 486
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@499
    move-result-object v4

    #@49a
    invoke-static {v4}, Landroid/media/tv/ITvInputHardwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardwareCallback;

    #@49d
    move-result-object v22

    #@49e
    .line 488
    .local v22, "_arg1":Landroid/media/tv/ITvInputHardwareCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a1
    move-result v4

    #@4a2
    if-eqz v4, :cond_d

    #@4a4
    .line 489
    sget-object v4, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a6
    move-object/from16 v0, p2

    #@4a8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4ab
    move-result-object v29

    #@4ac
    check-cast v29, Landroid/media/tv/TvInputInfo;

    #@4ae
    .line 495
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b1
    move-result v8

    #@4b2
    .line 496
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@4b4
    move-object/from16 v1, v22

    #@4b6
    move-object/from16 v2, v29

    #@4b8
    invoke-virtual {v0, v10, v1, v2, v8}, Landroid/media/tv/ITvInputManager$Stub;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;

    #@4bb
    move-result-object v34

    #@4bc
    .line 497
    .local v34, "_result":Landroid/media/tv/ITvInputHardware;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4bf
    .line 498
    if-eqz v34, :cond_e

    #@4c1
    invoke-interface/range {v34 .. v34}, Landroid/media/tv/ITvInputHardware;->asBinder()Landroid/os/IBinder;

    #@4c4
    move-result-object v4

    #@4c5
    :goto_e
    move-object/from16 v0, p3

    #@4c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@4ca
    .line 499
    const/4 v4, 0x1

    #@4cb
    return v4

    #@4cc
    .line 492
    .end local v8    # "_arg3":I
    .end local v34    # "_result":Landroid/media/tv/ITvInputHardware;
    :cond_d
    const/16 v29, 0x0

    #@4ce
    .local v29, "_arg2":Landroid/media/tv/TvInputInfo;
    goto :goto_d

    #@4cf
    .line 498
    .end local v29    # "_arg2":Landroid/media/tv/TvInputInfo;
    .restart local v8    # "_arg3":I
    .restart local v34    # "_result":Landroid/media/tv/ITvInputHardware;
    :cond_e
    const/4 v4, 0x0

    #@4d0
    goto :goto_e

    #@4d1
    .line 503
    .end local v8    # "_arg3":I
    .end local v10    # "_arg0":I
    .end local v22    # "_arg1":Landroid/media/tv/ITvInputHardwareCallback;
    .end local v34    # "_result":Landroid/media/tv/ITvInputHardware;
    :sswitch_22
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@4d4
    move-object/from16 v0, p2

    #@4d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d9
    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4dc
    move-result v10

    #@4dd
    .line 507
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4e0
    move-result-object v4

    #@4e1
    invoke-static {v4}, Landroid/media/tv/ITvInputHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;

    #@4e4
    move-result-object v21

    #@4e5
    .line 509
    .local v21, "_arg1":Landroid/media/tv/ITvInputHardware;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e8
    move-result v7

    #@4e9
    .line 510
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@4eb
    move-object/from16 v1, v21

    #@4ed
    invoke-virtual {v0, v10, v1, v7}, Landroid/media/tv/ITvInputManager$Stub;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V

    #@4f0
    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f3
    .line 512
    const/4 v4, 0x1

    #@4f4
    return v4

    #@4f5
    .line 516
    .end local v7    # "_arg2":I
    .end local v10    # "_arg0":I
    .end local v21    # "_arg1":Landroid/media/tv/ITvInputHardware;
    :sswitch_23
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@4f8
    move-object/from16 v0, p2

    #@4fa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4fd
    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@500
    move-result-object v14

    #@501
    .line 520
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@504
    move-result v6

    #@505
    .line 521
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@507
    invoke-virtual {v0, v14, v6}, Landroid/media/tv/ITvInputManager$Stub;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;

    #@50a
    move-result-object v41

    #@50b
    .line 522
    .local v41, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50e
    .line 523
    move-object/from16 v0, p3

    #@510
    move-object/from16 v1, v41

    #@512
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@515
    .line 524
    const/4 v4, 0x1

    #@516
    return v4

    #@517
    .line 528
    .end local v6    # "_arg1":I
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    :sswitch_24
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@51a
    move-object/from16 v0, p2

    #@51c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51f
    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@522
    move-result-object v14

    #@523
    .line 532
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@526
    move-result v4

    #@527
    if-eqz v4, :cond_f

    #@529
    .line 533
    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@52b
    move-object/from16 v0, p2

    #@52d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@530
    move-result-object v25

    #@531
    check-cast v25, Landroid/view/Surface;

    #@533
    .line 539
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@536
    move-result v4

    #@537
    if-eqz v4, :cond_10

    #@539
    .line 540
    sget-object v4, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@53b
    move-object/from16 v0, p2

    #@53d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@540
    move-result-object v30

    #@541
    check-cast v30, Landroid/media/tv/TvStreamConfig;

    #@543
    .line 546
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@546
    move-result v8

    #@547
    .line 547
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@549
    move-object/from16 v1, v25

    #@54b
    move-object/from16 v2, v30

    #@54d
    invoke-virtual {v0, v14, v1, v2, v8}, Landroid/media/tv/ITvInputManager$Stub;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z

    #@550
    move-result v43

    #@551
    .line 548
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@554
    .line 549
    if-eqz v43, :cond_11

    #@556
    const/4 v4, 0x1

    #@557
    :goto_11
    move-object/from16 v0, p3

    #@559
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@55c
    .line 550
    const/4 v4, 0x1

    #@55d
    return v4

    #@55e
    .line 536
    .end local v8    # "_arg3":I
    .end local v43    # "_result":Z
    :cond_f
    const/16 v25, 0x0

    #@560
    .restart local v25    # "_arg1":Landroid/view/Surface;
    goto :goto_f

    #@561
    .line 543
    .end local v25    # "_arg1":Landroid/view/Surface;
    :cond_10
    const/16 v30, 0x0

    #@563
    .local v30, "_arg2":Landroid/media/tv/TvStreamConfig;
    goto :goto_10

    #@564
    .line 549
    .end local v30    # "_arg2":Landroid/media/tv/TvStreamConfig;
    .restart local v8    # "_arg3":I
    .restart local v43    # "_result":Z
    :cond_11
    const/4 v4, 0x0

    #@565
    goto :goto_11

    #@566
    .line 554
    .end local v8    # "_arg3":I
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_25
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@569
    move-object/from16 v0, p2

    #@56b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56e
    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@571
    move-result v10

    #@572
    .line 557
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    #@574
    invoke-virtual {v0, v10}, Landroid/media/tv/ITvInputManager$Stub;->isSingleSessionActive(I)Z

    #@577
    move-result v43

    #@578
    .line 558
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@57b
    .line 559
    if-eqz v43, :cond_12

    #@57d
    const/4 v4, 0x1

    #@57e
    :goto_12
    move-object/from16 v0, p3

    #@580
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@583
    .line 560
    const/4 v4, 0x1

    #@584
    return v4

    #@585
    .line 559
    :cond_12
    const/4 v4, 0x0

    #@586
    goto :goto_12

    #@587
    .line 564
    .end local v10    # "_arg0":I
    .end local v43    # "_result":Z
    :sswitch_26
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@58a
    move-object/from16 v0, p2

    #@58c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58f
    .line 565
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputManager$Stub;->getDvbDeviceList()Ljava/util/List;

    #@592
    move-result-object v37

    #@593
    .line 566
    .local v37, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/DvbDeviceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@596
    .line 567
    move-object/from16 v0, p3

    #@598
    move-object/from16 v1, v37

    #@59a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@59d
    .line 568
    const/4 v4, 0x1

    #@59e
    return v4

    #@59f
    .line 572
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/DvbDeviceInfo;>;"
    :sswitch_27
    const-string/jumbo v4, "android.media.tv.ITvInputManager"

    #@5a2
    move-object/from16 v0, p2

    #@5a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a7
    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5aa
    move-result v4

    #@5ab
    if-eqz v4, :cond_13

    #@5ad
    .line 575
    sget-object v4, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5af
    move-object/from16 v0, p2

    #@5b1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5b4
    move-result-object v11

    #@5b5
    check-cast v11, Landroid/media/tv/DvbDeviceInfo;

    #@5b7
    .line 581
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ba
    move-result v6

    #@5bb
    .line 582
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@5bd
    invoke-virtual {v0, v11, v6}, Landroid/media/tv/ITvInputManager$Stub;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;

    #@5c0
    move-result-object v36

    #@5c1
    .line 583
    .local v36, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c4
    .line 584
    if-eqz v36, :cond_14

    #@5c6
    .line 585
    const/4 v4, 0x1

    #@5c7
    move-object/from16 v0, p3

    #@5c9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5cc
    .line 586
    const/4 v4, 0x1

    #@5cd
    move-object/from16 v0, v36

    #@5cf
    move-object/from16 v1, p3

    #@5d1
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@5d4
    .line 591
    :goto_14
    const/4 v4, 0x1

    #@5d5
    return v4

    #@5d6
    .line 578
    .end local v6    # "_arg1":I
    .end local v36    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_13
    const/4 v11, 0x0

    #@5d7
    .local v11, "_arg0":Landroid/media/tv/DvbDeviceInfo;
    goto :goto_13

    #@5d8
    .line 589
    .end local v11    # "_arg0":Landroid/media/tv/DvbDeviceInfo;
    .restart local v6    # "_arg1":I
    .restart local v36    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_14
    const/4 v4, 0x0

    #@5d9
    move-object/from16 v0, p3

    #@5db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5de
    goto :goto_14

    #@5df
    .line 42
    nop

    #@5e0
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

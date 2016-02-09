.class public abstract Landroid/support/v4/media/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaSession"

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x16

.field static final TRANSACTION_getExtras:I = 0x1f

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMetadata:I = 0x1b

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x1c

.field static final TRANSACTION_getQueue:I = 0x1d

.field static final TRANSACTION_getQueueTitle:I = 0x1e

.field static final TRANSACTION_getRatingType:I = 0x20

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x14

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_playFromMediaId:I = 0xe

.field static final TRANSACTION_playFromSearch:I = 0xf

.field static final TRANSACTION_playFromUri:I = 0x10

.field static final TRANSACTION_previous:I = 0x15

.field static final TRANSACTION_rate:I = 0x19

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_rewind:I = 0x17

.field static final TRANSACTION_seekTo:I = 0x18

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1a

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x11

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.support.v4.media.session.IMediaSession"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;
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
    const-string/jumbo v1, "android.support.v4.media.session.IMediaSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/support/v4/media/session/IMediaSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/support/v4/media/session/IMediaSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 29
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
    .line 414
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v28

    #@7
    return v28

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v28

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 47
    const/16 v28, 0x1

    #@14
    return v28

    #@15
    .line 51
    :sswitch_1
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v28

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v11

    #@23
    .line 55
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v28

    #@27
    if-eqz v28, :cond_0

    #@29
    .line 56
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    move-object/from16 v0, v28

    #@2d
    move-object/from16 v1, p2

    #@2f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v13

    #@33
    check-cast v13, Landroid/os/Bundle;

    #@35
    .line 62
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v28

    #@39
    if-eqz v28, :cond_1

    #@3b
    .line 63
    sget-object v28, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d
    move-object/from16 v0, v28

    #@3f
    move-object/from16 v1, p2

    #@41
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44
    move-result-object v14

    #@45
    check-cast v14, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    #@47
    .line 68
    :goto_1
    move-object/from16 v0, p0

    #@49
    invoke-virtual {v0, v11, v13, v14}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V

    #@4c
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 70
    const/16 v28, 0x1

    #@51
    return v28

    #@52
    .line 59
    :cond_0
    const/4 v13, 0x0

    #@53
    .local v13, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@54
    .line 66
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :cond_1
    const/4 v14, 0x0

    #@55
    .local v14, "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    goto :goto_1

    #@56
    .line 74
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    :sswitch_2
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@59
    move-object/from16 v0, p2

    #@5b
    move-object/from16 v1, v28

    #@5d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v28

    #@64
    if-eqz v28, :cond_2

    #@66
    .line 77
    sget-object v28, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@68
    move-object/from16 v0, v28

    #@6a
    move-object/from16 v1, p2

    #@6c
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f
    move-result-object v10

    #@70
    check-cast v10, Landroid/view/KeyEvent;

    #@72
    .line 82
    :goto_2
    move-object/from16 v0, p0

    #@74
    invoke-virtual {v0, v10}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    #@77
    move-result v27

    #@78
    .line 83
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    .line 84
    if-eqz v27, :cond_3

    #@7d
    const/16 v28, 0x1

    #@7f
    :goto_3
    move-object/from16 v0, p3

    #@81
    move/from16 v1, v28

    #@83
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@86
    .line 85
    const/16 v28, 0x1

    #@88
    return v28

    #@89
    .line 80
    .end local v27    # "_result":Z
    :cond_2
    const/4 v10, 0x0

    #@8a
    .local v10, "_arg0":Landroid/view/KeyEvent;
    goto :goto_2

    #@8b
    .line 84
    .end local v10    # "_arg0":Landroid/view/KeyEvent;
    .restart local v27    # "_result":Z
    :cond_3
    const/16 v28, 0x0

    #@8d
    goto :goto_3

    #@8e
    .line 89
    .end local v27    # "_result":Z
    :sswitch_3
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@91
    move-object/from16 v0, p2

    #@93
    move-object/from16 v1, v28

    #@95
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9b
    move-result-object v28

    #@9c
    invoke-static/range {v28 .. v28}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;

    #@9f
    move-result-object v9

    #@a0
    .line 92
    .local v9, "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v9}, Landroid/support/v4/media/session/IMediaSession$Stub;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    #@a5
    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 94
    const/16 v28, 0x1

    #@aa
    return v28

    #@ab
    .line 98
    .end local v9    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    :sswitch_4
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@ae
    move-object/from16 v0, p2

    #@b0
    move-object/from16 v1, v28

    #@b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b8
    move-result-object v28

    #@b9
    invoke-static/range {v28 .. v28}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;

    #@bc
    move-result-object v9

    #@bd
    .line 101
    .restart local v9    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    move-object/from16 v0, p0

    #@bf
    invoke-virtual {v0, v9}, Landroid/support/v4/media/session/IMediaSession$Stub;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    #@c2
    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c5
    .line 103
    const/16 v28, 0x1

    #@c7
    return v28

    #@c8
    .line 107
    .end local v9    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    :sswitch_5
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@cb
    move-object/from16 v0, p2

    #@cd
    move-object/from16 v1, v28

    #@cf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isTransportControlEnabled()Z

    #@d5
    move-result v27

    #@d6
    .line 109
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d9
    .line 110
    if-eqz v27, :cond_4

    #@db
    const/16 v28, 0x1

    #@dd
    :goto_4
    move-object/from16 v0, p3

    #@df
    move/from16 v1, v28

    #@e1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e4
    .line 111
    const/16 v28, 0x1

    #@e6
    return v28

    #@e7
    .line 110
    :cond_4
    const/16 v28, 0x0

    #@e9
    goto :goto_4

    #@ea
    .line 115
    .end local v27    # "_result":Z
    :sswitch_6
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@ed
    move-object/from16 v0, p2

    #@ef
    move-object/from16 v1, v28

    #@f1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f4
    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPackageName()Ljava/lang/String;

    #@f7
    move-result-object v25

    #@f8
    .line 117
    .local v25, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fb
    .line 118
    move-object/from16 v0, p3

    #@fd
    move-object/from16 v1, v25

    #@ff
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@102
    .line 119
    const/16 v28, 0x1

    #@104
    return v28

    #@105
    .line 123
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@108
    move-object/from16 v0, p2

    #@10a
    move-object/from16 v1, v28

    #@10c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10f
    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getTag()Ljava/lang/String;

    #@112
    move-result-object v25

    #@113
    .line 125
    .restart local v25    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@116
    .line 126
    move-object/from16 v0, p3

    #@118
    move-object/from16 v1, v25

    #@11a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11d
    .line 127
    const/16 v28, 0x1

    #@11f
    return v28

    #@120
    .line 131
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@123
    move-object/from16 v0, p2

    #@125
    move-object/from16 v1, v28

    #@127
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a
    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    #@12d
    move-result-object v17

    #@12e
    .line 133
    .local v17, "_result":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@131
    .line 134
    if-eqz v17, :cond_5

    #@133
    .line 135
    const/16 v28, 0x1

    #@135
    move-object/from16 v0, p3

    #@137
    move/from16 v1, v28

    #@139
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13c
    .line 136
    const/16 v28, 0x1

    #@13e
    move-object/from16 v0, v17

    #@140
    move-object/from16 v1, p3

    #@142
    move/from16 v2, v28

    #@144
    invoke-virtual {v0, v1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@147
    .line 141
    :goto_5
    const/16 v28, 0x1

    #@149
    return v28

    #@14a
    .line 139
    :cond_5
    const/16 v28, 0x0

    #@14c
    move-object/from16 v0, p3

    #@14e
    move/from16 v1, v28

    #@150
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@153
    goto :goto_5

    #@154
    .line 145
    .end local v17    # "_result":Landroid/app/PendingIntent;
    :sswitch_9
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@157
    move-object/from16 v0, p2

    #@159
    move-object/from16 v1, v28

    #@15b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e
    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getFlags()J

    #@161
    move-result-wide v18

    #@162
    .line 147
    .local v18, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@165
    .line 148
    move-object/from16 v0, p3

    #@167
    move-wide/from16 v1, v18

    #@169
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@16c
    .line 149
    const/16 v28, 0x1

    #@16e
    return v28

    #@16f
    .line 153
    .end local v18    # "_result":J
    :sswitch_a
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@172
    move-object/from16 v0, p2

    #@174
    move-object/from16 v1, v28

    #@176
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    #@17c
    move-result-object v22

    #@17d
    .line 155
    .local v22, "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@180
    .line 156
    if-eqz v22, :cond_6

    #@182
    .line 157
    const/16 v28, 0x1

    #@184
    move-object/from16 v0, p3

    #@186
    move/from16 v1, v28

    #@188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18b
    .line 158
    const/16 v28, 0x1

    #@18d
    move-object/from16 v0, v22

    #@18f
    move-object/from16 v1, p3

    #@191
    move/from16 v2, v28

    #@193
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@196
    .line 163
    :goto_6
    const/16 v28, 0x1

    #@198
    return v28

    #@199
    .line 161
    :cond_6
    const/16 v28, 0x0

    #@19b
    move-object/from16 v0, p3

    #@19d
    move/from16 v1, v28

    #@19f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a2
    goto :goto_6

    #@1a3
    .line 167
    .end local v22    # "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :sswitch_b
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@1a6
    move-object/from16 v0, p2

    #@1a8
    move-object/from16 v1, v28

    #@1aa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ad
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b0
    move-result v4

    #@1b1
    .line 171
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b4
    move-result v12

    #@1b5
    .line 173
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b8
    move-result-object v15

    #@1b9
    .line 174
    .local v15, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1bb
    invoke-virtual {v0, v4, v12, v15}, Landroid/support/v4/media/session/IMediaSession$Stub;->adjustVolume(IILjava/lang/String;)V

    #@1be
    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c1
    .line 176
    const/16 v28, 0x1

    #@1c3
    return v28

    #@1c4
    .line 180
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@1c7
    move-object/from16 v0, p2

    #@1c9
    move-object/from16 v1, v28

    #@1cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d1
    move-result v4

    #@1d2
    .line 184
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d5
    move-result v12

    #@1d6
    .line 186
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d9
    move-result-object v15

    #@1da
    .line 187
    .restart local v15    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1dc
    invoke-virtual {v0, v4, v12, v15}, Landroid/support/v4/media/session/IMediaSession$Stub;->setVolumeTo(IILjava/lang/String;)V

    #@1df
    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e2
    .line 189
    const/16 v28, 0x1

    #@1e4
    return v28

    #@1e5
    .line 193
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@1e8
    move-object/from16 v0, p2

    #@1ea
    move-object/from16 v1, v28

    #@1ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ef
    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->play()V

    #@1f2
    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f5
    .line 196
    const/16 v28, 0x1

    #@1f7
    return v28

    #@1f8
    .line 200
    :sswitch_e
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@1fb
    move-object/from16 v0, p2

    #@1fd
    move-object/from16 v1, v28

    #@1ff
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@202
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@205
    move-result-object v11

    #@206
    .line 204
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@209
    move-result v28

    #@20a
    if-eqz v28, :cond_7

    #@20c
    .line 205
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20e
    move-object/from16 v0, v28

    #@210
    move-object/from16 v1, p2

    #@212
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@215
    move-result-object v13

    #@216
    check-cast v13, Landroid/os/Bundle;

    #@218
    .line 210
    :goto_7
    move-object/from16 v0, p0

    #@21a
    invoke-virtual {v0, v11, v13}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@21d
    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@220
    .line 212
    const/16 v28, 0x1

    #@222
    return v28

    #@223
    .line 208
    :cond_7
    const/4 v13, 0x0

    #@224
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_7

    #@225
    .line 216
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_f
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@228
    move-object/from16 v0, p2

    #@22a
    move-object/from16 v1, v28

    #@22c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22f
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@232
    move-result-object v11

    #@233
    .line 220
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@236
    move-result v28

    #@237
    if-eqz v28, :cond_8

    #@239
    .line 221
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23b
    move-object/from16 v0, v28

    #@23d
    move-object/from16 v1, p2

    #@23f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@242
    move-result-object v13

    #@243
    check-cast v13, Landroid/os/Bundle;

    #@245
    .line 226
    :goto_8
    move-object/from16 v0, p0

    #@247
    invoke-virtual {v0, v11, v13}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@24a
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24d
    .line 228
    const/16 v28, 0x1

    #@24f
    return v28

    #@250
    .line 224
    :cond_8
    const/4 v13, 0x0

    #@251
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_8

    #@252
    .line 232
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_10
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@255
    move-object/from16 v0, p2

    #@257
    move-object/from16 v1, v28

    #@259
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25c
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25f
    move-result v28

    #@260
    if-eqz v28, :cond_9

    #@262
    .line 235
    sget-object v28, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@264
    move-object/from16 v0, v28

    #@266
    move-object/from16 v1, p2

    #@268
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26b
    move-result-object v5

    #@26c
    check-cast v5, Landroid/net/Uri;

    #@26e
    .line 241
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@271
    move-result v28

    #@272
    if-eqz v28, :cond_a

    #@274
    .line 242
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@276
    move-object/from16 v0, v28

    #@278
    move-object/from16 v1, p2

    #@27a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27d
    move-result-object v13

    #@27e
    check-cast v13, Landroid/os/Bundle;

    #@280
    .line 247
    :goto_a
    move-object/from16 v0, p0

    #@282
    invoke-virtual {v0, v5, v13}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@285
    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@288
    .line 249
    const/16 v28, 0x1

    #@28a
    return v28

    #@28b
    .line 238
    :cond_9
    const/4 v5, 0x0

    #@28c
    .local v5, "_arg0":Landroid/net/Uri;
    goto :goto_9

    #@28d
    .line 245
    .end local v5    # "_arg0":Landroid/net/Uri;
    :cond_a
    const/4 v13, 0x0

    #@28e
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_a

    #@28f
    .line 253
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_11
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@292
    move-object/from16 v0, p2

    #@294
    move-object/from16 v1, v28

    #@296
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@299
    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@29c
    move-result-wide v6

    #@29d
    .line 256
    .local v6, "_arg0":J
    move-object/from16 v0, p0

    #@29f
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/media/session/IMediaSession$Stub;->skipToQueueItem(J)V

    #@2a2
    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a5
    .line 258
    const/16 v28, 0x1

    #@2a7
    return v28

    #@2a8
    .line 262
    .end local v6    # "_arg0":J
    :sswitch_12
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@2ab
    move-object/from16 v0, p2

    #@2ad
    move-object/from16 v1, v28

    #@2af
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b2
    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->pause()V

    #@2b5
    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b8
    .line 265
    const/16 v28, 0x1

    #@2ba
    return v28

    #@2bb
    .line 269
    :sswitch_13
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@2be
    move-object/from16 v0, p2

    #@2c0
    move-object/from16 v1, v28

    #@2c2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c5
    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->stop()V

    #@2c8
    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2cb
    .line 272
    const/16 v28, 0x1

    #@2cd
    return v28

    #@2ce
    .line 276
    :sswitch_14
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@2d1
    move-object/from16 v0, p2

    #@2d3
    move-object/from16 v1, v28

    #@2d5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d8
    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->next()V

    #@2db
    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2de
    .line 279
    const/16 v28, 0x1

    #@2e0
    return v28

    #@2e1
    .line 283
    :sswitch_15
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@2e4
    move-object/from16 v0, p2

    #@2e6
    move-object/from16 v1, v28

    #@2e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2eb
    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->previous()V

    #@2ee
    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f1
    .line 286
    const/16 v28, 0x1

    #@2f3
    return v28

    #@2f4
    .line 290
    :sswitch_16
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@2f7
    move-object/from16 v0, p2

    #@2f9
    move-object/from16 v1, v28

    #@2fb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fe
    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->fastForward()V

    #@301
    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@304
    .line 293
    const/16 v28, 0x1

    #@306
    return v28

    #@307
    .line 297
    :sswitch_17
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@30a
    move-object/from16 v0, p2

    #@30c
    move-object/from16 v1, v28

    #@30e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@311
    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->rewind()V

    #@314
    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@317
    .line 300
    const/16 v28, 0x1

    #@319
    return v28

    #@31a
    .line 304
    :sswitch_18
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@31d
    move-object/from16 v0, p2

    #@31f
    move-object/from16 v1, v28

    #@321
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@324
    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@327
    move-result-wide v6

    #@328
    .line 307
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    #@32a
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/media/session/IMediaSession$Stub;->seekTo(J)V

    #@32d
    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@330
    .line 309
    const/16 v28, 0x1

    #@332
    return v28

    #@333
    .line 313
    .end local v6    # "_arg0":J
    :sswitch_19
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@336
    move-object/from16 v0, p2

    #@338
    move-object/from16 v1, v28

    #@33a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33d
    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@340
    move-result v28

    #@341
    if-eqz v28, :cond_b

    #@343
    .line 316
    sget-object v28, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@345
    move-object/from16 v0, v28

    #@347
    move-object/from16 v1, p2

    #@349
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34c
    move-result-object v8

    #@34d
    check-cast v8, Landroid/support/v4/media/RatingCompat;

    #@34f
    .line 321
    :goto_b
    move-object/from16 v0, p0

    #@351
    invoke-virtual {v0, v8}, Landroid/support/v4/media/session/IMediaSession$Stub;->rate(Landroid/support/v4/media/RatingCompat;)V

    #@354
    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@357
    .line 323
    const/16 v28, 0x1

    #@359
    return v28

    #@35a
    .line 319
    :cond_b
    const/4 v8, 0x0

    #@35b
    .local v8, "_arg0":Landroid/support/v4/media/RatingCompat;
    goto :goto_b

    #@35c
    .line 327
    .end local v8    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :sswitch_1a
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@35f
    move-object/from16 v0, p2

    #@361
    move-object/from16 v1, v28

    #@363
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@366
    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@369
    move-result-object v11

    #@36a
    .line 331
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36d
    move-result v28

    #@36e
    if-eqz v28, :cond_c

    #@370
    .line 332
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@372
    move-object/from16 v0, v28

    #@374
    move-object/from16 v1, p2

    #@376
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@379
    move-result-object v13

    #@37a
    check-cast v13, Landroid/os/Bundle;

    #@37c
    .line 337
    :goto_c
    move-object/from16 v0, p0

    #@37e
    invoke-virtual {v0, v11, v13}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    #@381
    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@384
    .line 339
    const/16 v28, 0x1

    #@386
    return v28

    #@387
    .line 335
    :cond_c
    const/4 v13, 0x0

    #@388
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_c

    #@389
    .line 343
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_1b
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@38c
    move-object/from16 v0, p2

    #@38e
    move-object/from16 v1, v28

    #@390
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@393
    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    #@396
    move-result-object v21

    #@397
    .line 345
    .local v21, "_result":Landroid/support/v4/media/MediaMetadataCompat;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39a
    .line 346
    if-eqz v21, :cond_d

    #@39c
    .line 347
    const/16 v28, 0x1

    #@39e
    move-object/from16 v0, p3

    #@3a0
    move/from16 v1, v28

    #@3a2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3a5
    .line 348
    const/16 v28, 0x1

    #@3a7
    move-object/from16 v0, v21

    #@3a9
    move-object/from16 v1, p3

    #@3ab
    move/from16 v2, v28

    #@3ad
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V

    #@3b0
    .line 353
    :goto_d
    const/16 v28, 0x1

    #@3b2
    return v28

    #@3b3
    .line 351
    :cond_d
    const/16 v28, 0x0

    #@3b5
    move-object/from16 v0, p3

    #@3b7
    move/from16 v1, v28

    #@3b9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3bc
    goto :goto_d

    #@3bd
    .line 357
    .end local v21    # "_result":Landroid/support/v4/media/MediaMetadataCompat;
    :sswitch_1c
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@3c0
    move-object/from16 v0, p2

    #@3c2
    move-object/from16 v1, v28

    #@3c4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c7
    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    #@3ca
    move-result-object v23

    #@3cb
    .line 359
    .local v23, "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ce
    .line 360
    if-eqz v23, :cond_e

    #@3d0
    .line 361
    const/16 v28, 0x1

    #@3d2
    move-object/from16 v0, p3

    #@3d4
    move/from16 v1, v28

    #@3d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3d9
    .line 362
    const/16 v28, 0x1

    #@3db
    move-object/from16 v0, v23

    #@3dd
    move-object/from16 v1, p3

    #@3df
    move/from16 v2, v28

    #@3e1
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V

    #@3e4
    .line 367
    :goto_e
    const/16 v28, 0x1

    #@3e6
    return v28

    #@3e7
    .line 365
    :cond_e
    const/16 v28, 0x0

    #@3e9
    move-object/from16 v0, p3

    #@3eb
    move/from16 v1, v28

    #@3ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3f0
    goto :goto_e

    #@3f1
    .line 371
    .end local v23    # "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    :sswitch_1d
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@3f4
    move-object/from16 v0, p2

    #@3f6
    move-object/from16 v1, v28

    #@3f8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3fb
    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueue()Ljava/util/List;

    #@3fe
    move-result-object v26

    #@3ff
    .line 373
    .local v26, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@402
    .line 374
    move-object/from16 v0, p3

    #@404
    move-object/from16 v1, v26

    #@406
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@409
    .line 375
    const/16 v28, 0x1

    #@40b
    return v28

    #@40c
    .line 379
    .end local v26    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :sswitch_1e
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@40f
    move-object/from16 v0, p2

    #@411
    move-object/from16 v1, v28

    #@413
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@416
    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    #@419
    move-result-object v24

    #@41a
    .line 381
    .local v24, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41d
    .line 382
    if-eqz v24, :cond_f

    #@41f
    .line 383
    const/16 v28, 0x1

    #@421
    move-object/from16 v0, p3

    #@423
    move/from16 v1, v28

    #@425
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@428
    .line 384
    const/16 v28, 0x1

    #@42a
    move-object/from16 v0, v24

    #@42c
    move-object/from16 v1, p3

    #@42e
    move/from16 v2, v28

    #@430
    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@433
    .line 389
    :goto_f
    const/16 v28, 0x1

    #@435
    return v28

    #@436
    .line 387
    :cond_f
    const/16 v28, 0x0

    #@438
    move-object/from16 v0, p3

    #@43a
    move/from16 v1, v28

    #@43c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@43f
    goto :goto_f

    #@440
    .line 393
    .end local v24    # "_result":Ljava/lang/CharSequence;
    :sswitch_1f
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@443
    move-object/from16 v0, p2

    #@445
    move-object/from16 v1, v28

    #@447
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44a
    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getExtras()Landroid/os/Bundle;

    #@44d
    move-result-object v20

    #@44e
    .line 395
    .local v20, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@451
    .line 396
    if-eqz v20, :cond_10

    #@453
    .line 397
    const/16 v28, 0x1

    #@455
    move-object/from16 v0, p3

    #@457
    move/from16 v1, v28

    #@459
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@45c
    .line 398
    const/16 v28, 0x1

    #@45e
    move-object/from16 v0, v20

    #@460
    move-object/from16 v1, p3

    #@462
    move/from16 v2, v28

    #@464
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@467
    .line 403
    :goto_10
    const/16 v28, 0x1

    #@469
    return v28

    #@46a
    .line 401
    :cond_10
    const/16 v28, 0x0

    #@46c
    move-object/from16 v0, p3

    #@46e
    move/from16 v1, v28

    #@470
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@473
    goto :goto_10

    #@474
    .line 407
    .end local v20    # "_result":Landroid/os/Bundle;
    :sswitch_20
    const-string/jumbo v28, "android.support.v4.media.session.IMediaSession"

    #@477
    move-object/from16 v0, p2

    #@479
    move-object/from16 v1, v28

    #@47b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47e
    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getRatingType()I

    #@481
    move-result v16

    #@482
    .line 409
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@485
    .line 410
    move-object/from16 v0, p3

    #@487
    move/from16 v1, v16

    #@489
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@48c
    .line 411
    const/16 v28, 0x1

    #@48e
    return v28

    #@48f
    .line 42
    nop

    #@490
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

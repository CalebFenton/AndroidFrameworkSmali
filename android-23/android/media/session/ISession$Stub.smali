.class public abstract Landroid/media/session/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/media/session/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISession"

.field static final TRANSACTION_destroy:I = 0x7

.field static final TRANSACTION_getController:I = 0x2

.field static final TRANSACTION_sendEvent:I = 0x1

.field static final TRANSACTION_setActive:I = 0x4

.field static final TRANSACTION_setCurrentVolume:I = 0x10

.field static final TRANSACTION_setExtras:I = 0xc

.field static final TRANSACTION_setFlags:I = 0x3

.field static final TRANSACTION_setLaunchPendingIntent:I = 0x6

.field static final TRANSACTION_setMediaButtonReceiver:I = 0x5

.field static final TRANSACTION_setMetadata:I = 0x8

.field static final TRANSACTION_setPlaybackState:I = 0x9

.field static final TRANSACTION_setPlaybackToLocal:I = 0xe

.field static final TRANSACTION_setPlaybackToRemote:I = 0xf

.field static final TRANSACTION_setQueue:I = 0xa

.field static final TRANSACTION_setQueueTitle:I = 0xb

.field static final TRANSACTION_setRatingType:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.media.session.ISession"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISession;
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
    const-string/jumbo v1, "android.media.session.ISession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/session/ISession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/media/session/ISession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ISession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/session/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 15
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
    .line 240
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v14

    #@7
    return v14

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v14, "android.media.session.ISession"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v14, 0x1

    #@11
    return v14

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v14, "android.media.session.ISession"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v9

    #@1e
    .line 55
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v14

    #@22
    if-eqz v14, :cond_0

    #@24
    .line 56
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v12

    #@2c
    check-cast v12, Landroid/os/Bundle;

    #@2e
    .line 61
    :goto_0
    invoke-virtual {p0, v9, v12}, Landroid/media/session/ISession$Stub;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@31
    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34
    .line 63
    const/4 v14, 0x1

    #@35
    return v14

    #@36
    .line 59
    :cond_0
    const/4 v12, 0x0

    #@37
    .local v12, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@38
    .line 67
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v14, "android.media.session.ISession"

    #@3b
    move-object/from16 v0, p2

    #@3d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 68
    invoke-virtual {p0}, Landroid/media/session/ISession$Stub;->getController()Landroid/media/session/ISessionController;

    #@43
    move-result-object v13

    #@44
    .line 69
    .local v13, "_result":Landroid/media/session/ISessionController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@47
    .line 70
    if-eqz v13, :cond_1

    #@49
    invoke-interface {v13}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    #@4c
    move-result-object v14

    #@4d
    :goto_1
    move-object/from16 v0, p3

    #@4f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@52
    .line 71
    const/4 v14, 0x1

    #@53
    return v14

    #@54
    .line 70
    :cond_1
    const/4 v14, 0x0

    #@55
    goto :goto_1

    #@56
    .line 75
    .end local v13    # "_result":Landroid/media/session/ISessionController;
    :sswitch_3
    const-string/jumbo v14, "android.media.session.ISession"

    #@59
    move-object/from16 v0, p2

    #@5b
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v1

    #@62
    .line 78
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/session/ISession$Stub;->setFlags(I)V

    #@65
    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    .line 80
    const/4 v14, 0x1

    #@69
    return v14

    #@6a
    .line 84
    .end local v1    # "_arg0":I
    :sswitch_4
    const-string/jumbo v14, "android.media.session.ISession"

    #@6d
    move-object/from16 v0, p2

    #@6f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v14

    #@76
    if-eqz v14, :cond_2

    #@78
    const/4 v10, 0x1

    #@79
    .line 87
    .local v10, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v10}, Landroid/media/session/ISession$Stub;->setActive(Z)V

    #@7c
    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f
    .line 89
    const/4 v14, 0x1

    #@80
    return v14

    #@81
    .line 86
    .end local v10    # "_arg0":Z
    :cond_2
    const/4 v10, 0x0

    #@82
    .restart local v10    # "_arg0":Z
    goto :goto_2

    #@83
    .line 93
    .end local v10    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v14, "android.media.session.ISession"

    #@86
    move-object/from16 v0, p2

    #@88
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b
    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e
    move-result v14

    #@8f
    if-eqz v14, :cond_3

    #@91
    .line 96
    sget-object v14, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@93
    move-object/from16 v0, p2

    #@95
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@98
    move-result-object v2

    #@99
    check-cast v2, Landroid/app/PendingIntent;

    #@9b
    .line 101
    :goto_3
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    #@9e
    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    .line 103
    const/4 v14, 0x1

    #@a2
    return v14

    #@a3
    .line 99
    :cond_3
    const/4 v2, 0x0

    #@a4
    .local v2, "_arg0":Landroid/app/PendingIntent;
    goto :goto_3

    #@a5
    .line 107
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_6
    const-string/jumbo v14, "android.media.session.ISession"

    #@a8
    move-object/from16 v0, p2

    #@aa
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b0
    move-result v14

    #@b1
    if-eqz v14, :cond_4

    #@b3
    .line 110
    sget-object v14, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b5
    move-object/from16 v0, p2

    #@b7
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ba
    move-result-object v2

    #@bb
    check-cast v2, Landroid/app/PendingIntent;

    #@bd
    .line 115
    :goto_4
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V

    #@c0
    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c3
    .line 117
    const/4 v14, 0x1

    #@c4
    return v14

    #@c5
    .line 113
    :cond_4
    const/4 v2, 0x0

    #@c6
    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_4

    #@c7
    .line 121
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_7
    const-string/jumbo v14, "android.media.session.ISession"

    #@ca
    move-object/from16 v0, p2

    #@cc
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cf
    .line 122
    invoke-virtual {p0}, Landroid/media/session/ISession$Stub;->destroy()V

    #@d2
    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d5
    .line 124
    const/4 v14, 0x1

    #@d6
    return v14

    #@d7
    .line 128
    :sswitch_8
    const-string/jumbo v14, "android.media.session.ISession"

    #@da
    move-object/from16 v0, p2

    #@dc
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@df
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e2
    move-result v14

    #@e3
    if-eqz v14, :cond_5

    #@e5
    .line 131
    sget-object v14, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e7
    move-object/from16 v0, p2

    #@e9
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ec
    move-result-object v5

    #@ed
    check-cast v5, Landroid/media/MediaMetadata;

    #@ef
    .line 136
    :goto_5
    invoke-virtual {p0, v5}, Landroid/media/session/ISession$Stub;->setMetadata(Landroid/media/MediaMetadata;)V

    #@f2
    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f5
    .line 138
    const/4 v14, 0x1

    #@f6
    return v14

    #@f7
    .line 134
    :cond_5
    const/4 v5, 0x0

    #@f8
    .local v5, "_arg0":Landroid/media/MediaMetadata;
    goto :goto_5

    #@f9
    .line 142
    .end local v5    # "_arg0":Landroid/media/MediaMetadata;
    :sswitch_9
    const-string/jumbo v14, "android.media.session.ISession"

    #@fc
    move-object/from16 v0, p2

    #@fe
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@101
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@104
    move-result v14

    #@105
    if-eqz v14, :cond_6

    #@107
    .line 145
    sget-object v14, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@109
    move-object/from16 v0, p2

    #@10b
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10e
    move-result-object v6

    #@10f
    check-cast v6, Landroid/media/session/PlaybackState;

    #@111
    .line 150
    :goto_6
    invoke-virtual {p0, v6}, Landroid/media/session/ISession$Stub;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    #@114
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 152
    const/4 v14, 0x1

    #@118
    return v14

    #@119
    .line 148
    :cond_6
    const/4 v6, 0x0

    #@11a
    .local v6, "_arg0":Landroid/media/session/PlaybackState;
    goto :goto_6

    #@11b
    .line 156
    .end local v6    # "_arg0":Landroid/media/session/PlaybackState;
    :sswitch_a
    const-string/jumbo v14, "android.media.session.ISession"

    #@11e
    move-object/from16 v0, p2

    #@120
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@123
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@126
    move-result v14

    #@127
    if-eqz v14, :cond_7

    #@129
    .line 159
    sget-object v14, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@12b
    move-object/from16 v0, p2

    #@12d
    invoke-interface {v14, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@130
    move-result-object v3

    #@131
    check-cast v3, Landroid/content/pm/ParceledListSlice;

    #@133
    .line 164
    :goto_7
    invoke-virtual {p0, v3}, Landroid/media/session/ISession$Stub;->setQueue(Landroid/content/pm/ParceledListSlice;)V

    #@136
    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@139
    .line 166
    const/4 v14, 0x1

    #@13a
    return v14

    #@13b
    .line 162
    :cond_7
    const/4 v3, 0x0

    #@13c
    .local v3, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_7

    #@13d
    .line 170
    .end local v3    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_b
    const-string/jumbo v14, "android.media.session.ISession"

    #@140
    move-object/from16 v0, p2

    #@142
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@145
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@148
    move-result v14

    #@149
    if-eqz v14, :cond_8

    #@14b
    .line 173
    sget-object v14, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@14d
    move-object/from16 v0, p2

    #@14f
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@152
    move-result-object v8

    #@153
    check-cast v8, Ljava/lang/CharSequence;

    #@155
    .line 178
    :goto_8
    invoke-virtual {p0, v8}, Landroid/media/session/ISession$Stub;->setQueueTitle(Ljava/lang/CharSequence;)V

    #@158
    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15b
    .line 180
    const/4 v14, 0x1

    #@15c
    return v14

    #@15d
    .line 176
    :cond_8
    const/4 v8, 0x0

    #@15e
    .local v8, "_arg0":Ljava/lang/CharSequence;
    goto :goto_8

    #@15f
    .line 184
    .end local v8    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_c
    const-string/jumbo v14, "android.media.session.ISession"

    #@162
    move-object/from16 v0, p2

    #@164
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@167
    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16a
    move-result v14

    #@16b
    if-eqz v14, :cond_9

    #@16d
    .line 187
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16f
    move-object/from16 v0, p2

    #@171
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@174
    move-result-object v7

    #@175
    check-cast v7, Landroid/os/Bundle;

    #@177
    .line 192
    :goto_9
    invoke-virtual {p0, v7}, Landroid/media/session/ISession$Stub;->setExtras(Landroid/os/Bundle;)V

    #@17a
    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d
    .line 194
    const/4 v14, 0x1

    #@17e
    return v14

    #@17f
    .line 190
    :cond_9
    const/4 v7, 0x0

    #@180
    .local v7, "_arg0":Landroid/os/Bundle;
    goto :goto_9

    #@181
    .line 198
    .end local v7    # "_arg0":Landroid/os/Bundle;
    :sswitch_d
    const-string/jumbo v14, "android.media.session.ISession"

    #@184
    move-object/from16 v0, p2

    #@186
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@189
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18c
    move-result v1

    #@18d
    .line 201
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/session/ISession$Stub;->setRatingType(I)V

    #@190
    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@193
    .line 203
    const/4 v14, 0x1

    #@194
    return v14

    #@195
    .line 207
    .end local v1    # "_arg0":I
    :sswitch_e
    const-string/jumbo v14, "android.media.session.ISession"

    #@198
    move-object/from16 v0, p2

    #@19a
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d
    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a0
    move-result v14

    #@1a1
    if-eqz v14, :cond_a

    #@1a3
    .line 210
    sget-object v14, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a5
    move-object/from16 v0, p2

    #@1a7
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1aa
    move-result-object v4

    #@1ab
    check-cast v4, Landroid/media/AudioAttributes;

    #@1ad
    .line 215
    :goto_a
    invoke-virtual {p0, v4}, Landroid/media/session/ISession$Stub;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    #@1b0
    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b3
    .line 217
    const/4 v14, 0x1

    #@1b4
    return v14

    #@1b5
    .line 213
    :cond_a
    const/4 v4, 0x0

    #@1b6
    .local v4, "_arg0":Landroid/media/AudioAttributes;
    goto :goto_a

    #@1b7
    .line 221
    .end local v4    # "_arg0":Landroid/media/AudioAttributes;
    :sswitch_f
    const-string/jumbo v14, "android.media.session.ISession"

    #@1ba
    move-object/from16 v0, p2

    #@1bc
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bf
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c2
    move-result v1

    #@1c3
    .line 225
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v11

    #@1c7
    .line 226
    .local v11, "_arg1":I
    invoke-virtual {p0, v1, v11}, Landroid/media/session/ISession$Stub;->setPlaybackToRemote(II)V

    #@1ca
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cd
    .line 228
    const/4 v14, 0x1

    #@1ce
    return v14

    #@1cf
    .line 232
    .end local v1    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_10
    const-string/jumbo v14, "android.media.session.ISession"

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d7
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1da
    move-result v1

    #@1db
    .line 235
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/session/ISession$Stub;->setCurrentVolume(I)V

    #@1de
    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e1
    .line 237
    const/4 v14, 0x1

    #@1e2
    return v14

    #@1e3
    .line 42
    nop

    #@1e4
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

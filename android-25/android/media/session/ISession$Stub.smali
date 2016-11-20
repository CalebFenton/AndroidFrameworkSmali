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

.field static final TRANSACTION_getCallingPackage:I = 0x11

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
    .locals 16
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
    .line 248
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v15

    #@7
    return v15

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v15, "android.media.session.ISession"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v15, 0x1

    #@11
    return v15

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v15, "android.media.session.ISession"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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
    move-result v15

    #@22
    if-eqz v15, :cond_0

    #@24
    .line 56
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v12

    #@2c
    check-cast v12, Landroid/os/Bundle;

    #@2e
    .line 61
    :goto_0
    move-object/from16 v0, p0

    #@30
    invoke-virtual {v0, v9, v12}, Landroid/media/session/ISession$Stub;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@33
    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@36
    .line 63
    const/4 v15, 0x1

    #@37
    return v15

    #@38
    .line 59
    :cond_0
    const/4 v12, 0x0

    #@39
    .local v12, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@3a
    .line 67
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v15, "android.media.session.ISession"

    #@3d
    move-object/from16 v0, p2

    #@3f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISession$Stub;->getController()Landroid/media/session/ISessionController;

    #@45
    move-result-object v13

    #@46
    .line 69
    .local v13, "_result":Landroid/media/session/ISessionController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 70
    if-eqz v13, :cond_1

    #@4b
    invoke-interface {v13}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    #@4e
    move-result-object v15

    #@4f
    :goto_1
    move-object/from16 v0, p3

    #@51
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@54
    .line 71
    const/4 v15, 0x1

    #@55
    return v15

    #@56
    .line 70
    :cond_1
    const/4 v15, 0x0

    #@57
    goto :goto_1

    #@58
    .line 75
    .end local v13    # "_result":Landroid/media/session/ISessionController;
    :sswitch_3
    const-string/jumbo v15, "android.media.session.ISession"

    #@5b
    move-object/from16 v0, p2

    #@5d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v1

    #@64
    .line 78
    .local v1, "_arg0":I
    move-object/from16 v0, p0

    #@66
    invoke-virtual {v0, v1}, Landroid/media/session/ISession$Stub;->setFlags(I)V

    #@69
    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c
    .line 80
    const/4 v15, 0x1

    #@6d
    return v15

    #@6e
    .line 84
    .end local v1    # "_arg0":I
    :sswitch_4
    const-string/jumbo v15, "android.media.session.ISession"

    #@71
    move-object/from16 v0, p2

    #@73
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v15

    #@7a
    if-eqz v15, :cond_2

    #@7c
    const/4 v10, 0x1

    #@7d
    .line 87
    .local v10, "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    #@7f
    invoke-virtual {v0, v10}, Landroid/media/session/ISession$Stub;->setActive(Z)V

    #@82
    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85
    .line 89
    const/4 v15, 0x1

    #@86
    return v15

    #@87
    .line 86
    .end local v10    # "_arg0":Z
    :cond_2
    const/4 v10, 0x0

    #@88
    goto :goto_2

    #@89
    .line 93
    :sswitch_5
    const-string/jumbo v15, "android.media.session.ISession"

    #@8c
    move-object/from16 v0, p2

    #@8e
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91
    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v15

    #@95
    if-eqz v15, :cond_3

    #@97
    .line 96
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@99
    move-object/from16 v0, p2

    #@9b
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9e
    move-result-object v2

    #@9f
    check-cast v2, Landroid/app/PendingIntent;

    #@a1
    .line 101
    :goto_3
    move-object/from16 v0, p0

    #@a3
    invoke-virtual {v0, v2}, Landroid/media/session/ISession$Stub;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    #@a6
    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a9
    .line 103
    const/4 v15, 0x1

    #@aa
    return v15

    #@ab
    .line 99
    :cond_3
    const/4 v2, 0x0

    #@ac
    .local v2, "_arg0":Landroid/app/PendingIntent;
    goto :goto_3

    #@ad
    .line 107
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_6
    const-string/jumbo v15, "android.media.session.ISession"

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b8
    move-result v15

    #@b9
    if-eqz v15, :cond_4

    #@bb
    .line 110
    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c2
    move-result-object v2

    #@c3
    check-cast v2, Landroid/app/PendingIntent;

    #@c5
    .line 115
    :goto_4
    move-object/from16 v0, p0

    #@c7
    invoke-virtual {v0, v2}, Landroid/media/session/ISession$Stub;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V

    #@ca
    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd
    .line 117
    const/4 v15, 0x1

    #@ce
    return v15

    #@cf
    .line 113
    :cond_4
    const/4 v2, 0x0

    #@d0
    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_4

    #@d1
    .line 121
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_7
    const-string/jumbo v15, "android.media.session.ISession"

    #@d4
    move-object/from16 v0, p2

    #@d6
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISession$Stub;->destroy()V

    #@dc
    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    .line 124
    const/4 v15, 0x1

    #@e0
    return v15

    #@e1
    .line 128
    :sswitch_8
    const-string/jumbo v15, "android.media.session.ISession"

    #@e4
    move-object/from16 v0, p2

    #@e6
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e9
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v15

    #@ed
    if-eqz v15, :cond_5

    #@ef
    .line 131
    sget-object v15, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f6
    move-result-object v5

    #@f7
    check-cast v5, Landroid/media/MediaMetadata;

    #@f9
    .line 136
    :goto_5
    move-object/from16 v0, p0

    #@fb
    invoke-virtual {v0, v5}, Landroid/media/session/ISession$Stub;->setMetadata(Landroid/media/MediaMetadata;)V

    #@fe
    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@101
    .line 138
    const/4 v15, 0x1

    #@102
    return v15

    #@103
    .line 134
    :cond_5
    const/4 v5, 0x0

    #@104
    .local v5, "_arg0":Landroid/media/MediaMetadata;
    goto :goto_5

    #@105
    .line 142
    .end local v5    # "_arg0":Landroid/media/MediaMetadata;
    :sswitch_9
    const-string/jumbo v15, "android.media.session.ISession"

    #@108
    move-object/from16 v0, p2

    #@10a
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10d
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@110
    move-result v15

    #@111
    if-eqz v15, :cond_6

    #@113
    .line 145
    sget-object v15, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@115
    move-object/from16 v0, p2

    #@117
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11a
    move-result-object v6

    #@11b
    check-cast v6, Landroid/media/session/PlaybackState;

    #@11d
    .line 150
    :goto_6
    move-object/from16 v0, p0

    #@11f
    invoke-virtual {v0, v6}, Landroid/media/session/ISession$Stub;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    #@122
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@125
    .line 152
    const/4 v15, 0x1

    #@126
    return v15

    #@127
    .line 148
    :cond_6
    const/4 v6, 0x0

    #@128
    .local v6, "_arg0":Landroid/media/session/PlaybackState;
    goto :goto_6

    #@129
    .line 156
    .end local v6    # "_arg0":Landroid/media/session/PlaybackState;
    :sswitch_a
    const-string/jumbo v15, "android.media.session.ISession"

    #@12c
    move-object/from16 v0, p2

    #@12e
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@131
    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@134
    move-result v15

    #@135
    if-eqz v15, :cond_7

    #@137
    .line 159
    sget-object v15, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@139
    move-object/from16 v0, p2

    #@13b
    invoke-interface {v15, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13e
    move-result-object v3

    #@13f
    check-cast v3, Landroid/content/pm/ParceledListSlice;

    #@141
    .line 164
    :goto_7
    move-object/from16 v0, p0

    #@143
    invoke-virtual {v0, v3}, Landroid/media/session/ISession$Stub;->setQueue(Landroid/content/pm/ParceledListSlice;)V

    #@146
    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@149
    .line 166
    const/4 v15, 0x1

    #@14a
    return v15

    #@14b
    .line 162
    :cond_7
    const/4 v3, 0x0

    #@14c
    .local v3, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_7

    #@14d
    .line 170
    .end local v3    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_b
    const-string/jumbo v15, "android.media.session.ISession"

    #@150
    move-object/from16 v0, p2

    #@152
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@155
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@158
    move-result v15

    #@159
    if-eqz v15, :cond_8

    #@15b
    .line 173
    sget-object v15, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@15d
    move-object/from16 v0, p2

    #@15f
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@162
    move-result-object v8

    #@163
    check-cast v8, Ljava/lang/CharSequence;

    #@165
    .line 178
    :goto_8
    move-object/from16 v0, p0

    #@167
    invoke-virtual {v0, v8}, Landroid/media/session/ISession$Stub;->setQueueTitle(Ljava/lang/CharSequence;)V

    #@16a
    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16d
    .line 180
    const/4 v15, 0x1

    #@16e
    return v15

    #@16f
    .line 176
    :cond_8
    const/4 v8, 0x0

    #@170
    .local v8, "_arg0":Ljava/lang/CharSequence;
    goto :goto_8

    #@171
    .line 184
    .end local v8    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_c
    const-string/jumbo v15, "android.media.session.ISession"

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17c
    move-result v15

    #@17d
    if-eqz v15, :cond_9

    #@17f
    .line 187
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@181
    move-object/from16 v0, p2

    #@183
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@186
    move-result-object v7

    #@187
    check-cast v7, Landroid/os/Bundle;

    #@189
    .line 192
    :goto_9
    move-object/from16 v0, p0

    #@18b
    invoke-virtual {v0, v7}, Landroid/media/session/ISession$Stub;->setExtras(Landroid/os/Bundle;)V

    #@18e
    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@191
    .line 194
    const/4 v15, 0x1

    #@192
    return v15

    #@193
    .line 190
    :cond_9
    const/4 v7, 0x0

    #@194
    .local v7, "_arg0":Landroid/os/Bundle;
    goto :goto_9

    #@195
    .line 198
    .end local v7    # "_arg0":Landroid/os/Bundle;
    :sswitch_d
    const-string/jumbo v15, "android.media.session.ISession"

    #@198
    move-object/from16 v0, p2

    #@19a
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a0
    move-result v1

    #@1a1
    .line 201
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    #@1a3
    invoke-virtual {v0, v1}, Landroid/media/session/ISession$Stub;->setRatingType(I)V

    #@1a6
    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a9
    .line 203
    const/4 v15, 0x1

    #@1aa
    return v15

    #@1ab
    .line 207
    .end local v1    # "_arg0":I
    :sswitch_e
    const-string/jumbo v15, "android.media.session.ISession"

    #@1ae
    move-object/from16 v0, p2

    #@1b0
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b3
    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b6
    move-result v15

    #@1b7
    if-eqz v15, :cond_a

    #@1b9
    .line 210
    sget-object v15, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1bb
    move-object/from16 v0, p2

    #@1bd
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c0
    move-result-object v4

    #@1c1
    check-cast v4, Landroid/media/AudioAttributes;

    #@1c3
    .line 215
    :goto_a
    move-object/from16 v0, p0

    #@1c5
    invoke-virtual {v0, v4}, Landroid/media/session/ISession$Stub;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    #@1c8
    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cb
    .line 217
    const/4 v15, 0x1

    #@1cc
    return v15

    #@1cd
    .line 213
    :cond_a
    const/4 v4, 0x0

    #@1ce
    .local v4, "_arg0":Landroid/media/AudioAttributes;
    goto :goto_a

    #@1cf
    .line 221
    .end local v4    # "_arg0":Landroid/media/AudioAttributes;
    :sswitch_f
    const-string/jumbo v15, "android.media.session.ISession"

    #@1d2
    move-object/from16 v0, p2

    #@1d4
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d7
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1da
    move-result v1

    #@1db
    .line 225
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1de
    move-result v11

    #@1df
    .line 226
    .local v11, "_arg1":I
    move-object/from16 v0, p0

    #@1e1
    invoke-virtual {v0, v1, v11}, Landroid/media/session/ISession$Stub;->setPlaybackToRemote(II)V

    #@1e4
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e7
    .line 228
    const/4 v15, 0x1

    #@1e8
    return v15

    #@1e9
    .line 232
    .end local v1    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_10
    const-string/jumbo v15, "android.media.session.ISession"

    #@1ec
    move-object/from16 v0, p2

    #@1ee
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f1
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f4
    move-result v1

    #@1f5
    .line 235
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    #@1f7
    invoke-virtual {v0, v1}, Landroid/media/session/ISession$Stub;->setCurrentVolume(I)V

    #@1fa
    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fd
    .line 237
    const/4 v15, 0x1

    #@1fe
    return v15

    #@1ff
    .line 241
    .end local v1    # "_arg0":I
    :sswitch_11
    const-string/jumbo v15, "android.media.session.ISession"

    #@202
    move-object/from16 v0, p2

    #@204
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@207
    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISession$Stub;->getCallingPackage()Ljava/lang/String;

    #@20a
    move-result-object v14

    #@20b
    .line 243
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20e
    .line 244
    move-object/from16 v0, p3

    #@210
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@213
    .line 245
    const/4 v15, 0x1

    #@214
    return v15

    #@215
    .line 42
    nop

    #@216
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

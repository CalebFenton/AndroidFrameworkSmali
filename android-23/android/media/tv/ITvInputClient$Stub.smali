.class public abstract Landroid/media/tv/ITvInputClient$Stub;
.super Landroid/os/Binder;
.source "ITvInputClient.java"

# interfaces
.implements Landroid/media/tv/ITvInputClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputClient"

.field static final TRANSACTION_onChannelRetuned:I = 0x4

.field static final TRANSACTION_onContentAllowed:I = 0x9

.field static final TRANSACTION_onContentBlocked:I = 0xa

.field static final TRANSACTION_onLayoutSurface:I = 0xb

.field static final TRANSACTION_onSessionCreated:I = 0x1

.field static final TRANSACTION_onSessionEvent:I = 0x3

.field static final TRANSACTION_onSessionReleased:I = 0x2

.field static final TRANSACTION_onTimeShiftCurrentPositionChanged:I = 0xe

.field static final TRANSACTION_onTimeShiftStartPositionChanged:I = 0xd

.field static final TRANSACTION_onTimeShiftStatusChanged:I = 0xc

.field static final TRANSACTION_onTrackSelected:I = 0x6

.field static final TRANSACTION_onTracksChanged:I = 0x5

.field static final TRANSACTION_onVideoAvailable:I = 0x7

.field static final TRANSACTION_onVideoUnavailable:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.media.tv.ITvInputClient"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.media.tv.ITvInputClient"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/tv/ITvInputClient;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/media/tv/ITvInputClient;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputClient$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 214
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v11

    #@1e
    .line 56
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@21
    move-result-object v14

    #@22
    .line 58
    .local v14, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 59
    sget-object v2, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    move-object/from16 v0, p2

    #@2c
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v16

    #@30
    check-cast v16, Landroid/view/InputChannel;

    #@32
    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v6

    #@36
    .line 66
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    #@38
    move-object/from16 v1, v16

    #@3a
    invoke-virtual {v0, v11, v14, v1, v6}, Landroid/media/tv/ITvInputClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    #@3d
    .line 67
    const/4 v2, 0x1

    #@3e
    return v2

    #@3f
    .line 62
    .end local v6    # "_arg3":I
    :cond_0
    const/16 v16, 0x0

    #@41
    .local v16, "_arg2":Landroid/view/InputChannel;
    goto :goto_0

    #@42
    .line 71
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Landroid/os/IBinder;
    .end local v16    # "_arg2":Landroid/view/InputChannel;
    :sswitch_2
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v3

    #@4e
    .line 74
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    #@50
    invoke-virtual {v0, v3}, Landroid/media/tv/ITvInputClient$Stub;->onSessionReleased(I)V

    #@53
    .line 75
    const/4 v2, 0x1

    #@54
    return v2

    #@55
    .line 79
    .end local v3    # "_arg0":I
    :sswitch_3
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@58
    move-object/from16 v0, p2

    #@5a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@60
    move-result-object v11

    #@61
    .line 83
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_1

    #@67
    .line 84
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@69
    move-object/from16 v0, p2

    #@6b
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6e
    move-result-object v13

    #@6f
    check-cast v13, Landroid/os/Bundle;

    #@71
    .line 90
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74
    move-result v5

    #@75
    .line 91
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    #@77
    invoke-virtual {v0, v11, v13, v5}, Landroid/media/tv/ITvInputClient$Stub;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V

    #@7a
    .line 92
    const/4 v2, 0x1

    #@7b
    return v2

    #@7c
    .line 87
    .end local v5    # "_arg2":I
    :cond_1
    const/4 v13, 0x0

    #@7d
    .local v13, "_arg1":Landroid/os/Bundle;
    goto :goto_1

    #@7e
    .line 96
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@81
    move-object/from16 v0, p2

    #@83
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v2

    #@8a
    if-eqz v2, :cond_2

    #@8c
    .line 99
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@93
    move-result-object v10

    #@94
    check-cast v10, Landroid/net/Uri;

    #@96
    .line 105
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@99
    move-result v4

    #@9a
    .line 106
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    #@9c
    invoke-virtual {v0, v10, v4}, Landroid/media/tv/ITvInputClient$Stub;->onChannelRetuned(Landroid/net/Uri;I)V

    #@9f
    .line 107
    const/4 v2, 0x1

    #@a0
    return v2

    #@a1
    .line 102
    .end local v4    # "_arg1":I
    :cond_2
    const/4 v10, 0x0

    #@a2
    .local v10, "_arg0":Landroid/net/Uri;
    goto :goto_2

    #@a3
    .line 111
    .end local v10    # "_arg0":Landroid/net/Uri;
    :sswitch_5
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@a6
    move-object/from16 v0, p2

    #@a8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab
    .line 113
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@b2
    move-result-object v12

    #@b3
    .line 115
    .local v12, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v4

    #@b7
    .line 116
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@b9
    invoke-virtual {v0, v12, v4}, Landroid/media/tv/ITvInputClient$Stub;->onTracksChanged(Ljava/util/List;I)V

    #@bc
    .line 117
    const/4 v2, 0x1

    #@bd
    return v2

    #@be
    .line 121
    .end local v4    # "_arg1":I
    .end local v12    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :sswitch_6
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@c1
    move-object/from16 v0, p2

    #@c3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c6
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c9
    move-result v3

    #@ca
    .line 125
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cd
    move-result-object v15

    #@ce
    .line 127
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d1
    move-result v5

    #@d2
    .line 128
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    #@d4
    invoke-virtual {v0, v3, v15, v5}, Landroid/media/tv/ITvInputClient$Stub;->onTrackSelected(ILjava/lang/String;I)V

    #@d7
    .line 129
    const/4 v2, 0x1

    #@d8
    return v2

    #@d9
    .line 133
    .end local v3    # "_arg0":I
    .end local v5    # "_arg2":I
    .end local v15    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@dc
    move-object/from16 v0, p2

    #@de
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e4
    move-result v3

    #@e5
    .line 136
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v0, v3}, Landroid/media/tv/ITvInputClient$Stub;->onVideoAvailable(I)V

    #@ea
    .line 137
    const/4 v2, 0x1

    #@eb
    return v2

    #@ec
    .line 141
    .end local v3    # "_arg0":I
    :sswitch_8
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@ef
    move-object/from16 v0, p2

    #@f1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f4
    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v3

    #@f8
    .line 145
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fb
    move-result v4

    #@fc
    .line 146
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@fe
    invoke-virtual {v0, v3, v4}, Landroid/media/tv/ITvInputClient$Stub;->onVideoUnavailable(II)V

    #@101
    .line 147
    const/4 v2, 0x1

    #@102
    return v2

    #@103
    .line 151
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_9
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@106
    move-object/from16 v0, p2

    #@108
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10b
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10e
    move-result v3

    #@10f
    .line 154
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    #@111
    invoke-virtual {v0, v3}, Landroid/media/tv/ITvInputClient$Stub;->onContentAllowed(I)V

    #@114
    .line 155
    const/4 v2, 0x1

    #@115
    return v2

    #@116
    .line 159
    .end local v3    # "_arg0":I
    :sswitch_a
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@119
    move-object/from16 v0, p2

    #@11b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11e
    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@121
    move-result-object v11

    #@122
    .line 163
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@125
    move-result v4

    #@126
    .line 164
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@128
    invoke-virtual {v0, v11, v4}, Landroid/media/tv/ITvInputClient$Stub;->onContentBlocked(Ljava/lang/String;I)V

    #@12b
    .line 165
    const/4 v2, 0x1

    #@12c
    return v2

    #@12d
    .line 169
    .end local v4    # "_arg1":I
    .end local v11    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@130
    move-object/from16 v0, p2

    #@132
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@138
    move-result v3

    #@139
    .line 173
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v4

    #@13d
    .line 175
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@140
    move-result v5

    #@141
    .line 177
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144
    move-result v6

    #@145
    .line 179
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@148
    move-result v7

    #@149
    .local v7, "_arg4":I
    move-object/from16 v2, p0

    #@14b
    .line 180
    invoke-virtual/range {v2 .. v7}, Landroid/media/tv/ITvInputClient$Stub;->onLayoutSurface(IIIII)V

    #@14e
    .line 181
    const/4 v2, 0x1

    #@14f
    return v2

    #@150
    .line 185
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    :sswitch_c
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@153
    move-object/from16 v0, p2

    #@155
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@158
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15b
    move-result v3

    #@15c
    .line 189
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f
    move-result v4

    #@160
    .line 190
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@162
    invoke-virtual {v0, v3, v4}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftStatusChanged(II)V

    #@165
    .line 191
    const/4 v2, 0x1

    #@166
    return v2

    #@167
    .line 195
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_d
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@16a
    move-object/from16 v0, p2

    #@16c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16f
    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@172
    move-result-wide v8

    #@173
    .line 199
    .local v8, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@176
    move-result v4

    #@177
    .line 200
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@179
    invoke-virtual {v0, v8, v9, v4}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftStartPositionChanged(JI)V

    #@17c
    .line 201
    const/4 v2, 0x1

    #@17d
    return v2

    #@17e
    .line 205
    .end local v4    # "_arg1":I
    .end local v8    # "_arg0":J
    :sswitch_e
    const-string/jumbo v2, "android.media.tv.ITvInputClient"

    #@181
    move-object/from16 v0, p2

    #@183
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@186
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@189
    move-result-wide v8

    #@18a
    .line 209
    .restart local v8    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18d
    move-result v4

    #@18e
    .line 210
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@190
    invoke-virtual {v0, v8, v9, v4}, Landroid/media/tv/ITvInputClient$Stub;->onTimeShiftCurrentPositionChanged(JI)V

    #@193
    .line 211
    const/4 v2, 0x1

    #@194
    return v2

    #@195
    .line 43
    nop

    #@196
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

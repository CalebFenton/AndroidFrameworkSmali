.class public abstract Landroid/media/tv/ITvInputSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInputSessionCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSessionCallback"

.field static final TRANSACTION_onChannelRetuned:I = 0x3

.field static final TRANSACTION_onContentAllowed:I = 0x8

.field static final TRANSACTION_onContentBlocked:I = 0x9

.field static final TRANSACTION_onLayoutSurface:I = 0xa

.field static final TRANSACTION_onSessionCreated:I = 0x1

.field static final TRANSACTION_onSessionEvent:I = 0x2

.field static final TRANSACTION_onTimeShiftCurrentPositionChanged:I = 0xd

.field static final TRANSACTION_onTimeShiftStartPositionChanged:I = 0xc

.field static final TRANSACTION_onTimeShiftStatusChanged:I = 0xb

.field static final TRANSACTION_onTrackSelected:I = 0x5

.field static final TRANSACTION_onTracksChanged:I = 0x4

.field static final TRANSACTION_onVideoAvailable:I = 0x6

.field static final TRANSACTION_onVideoUnavailable:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.media.tv.ITvInputSessionCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;
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
    const-string/jumbo v1, "android.media.tv.ITvInputSessionCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/tv/ITvInputSessionCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/media/tv/ITvInputSessionCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 173
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v15

    #@7
    return v15

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v15, 0x1

    #@11
    return v15

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v15

    #@1e
    invoke-static {v15}, Landroid/media/tv/ITvInputSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;

    #@21
    move-result-object v3

    #@22
    .line 56
    .local v3, "_arg0":Landroid/media/tv/ITvInputSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@25
    move-result-object v11

    #@26
    .line 57
    .local v11, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@28
    invoke-virtual {v0, v3, v11}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V

    #@2b
    .line 58
    const/4 v15, 0x1

    #@2c
    return v15

    #@2d
    .line 62
    .end local v3    # "_arg0":Landroid/media/tv/ITvInputSession;
    .end local v11    # "_arg1":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    .line 66
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v15

    #@3d
    if-eqz v15, :cond_0

    #@3f
    .line 67
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@46
    move-result-object v10

    #@47
    check-cast v10, Landroid/os/Bundle;

    #@49
    .line 72
    :goto_0
    move-object/from16 v0, p0

    #@4b
    invoke-virtual {v0, v7, v10}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@4e
    .line 73
    const/4 v15, 0x1

    #@4f
    return v15

    #@50
    .line 70
    :cond_0
    const/4 v10, 0x0

    #@51
    .local v10, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@52
    .line 77
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@55
    move-object/from16 v0, p2

    #@57
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v15

    #@5e
    if-eqz v15, :cond_1

    #@60
    .line 80
    sget-object v15, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62
    move-object/from16 v0, p2

    #@64
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@67
    move-result-object v6

    #@68
    check-cast v6, Landroid/net/Uri;

    #@6a
    .line 85
    :goto_1
    move-object/from16 v0, p0

    #@6c
    invoke-virtual {v0, v6}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onChannelRetuned(Landroid/net/Uri;)V

    #@6f
    .line 86
    const/4 v15, 0x1

    #@70
    return v15

    #@71
    .line 83
    :cond_1
    const/4 v6, 0x0

    #@72
    .local v6, "_arg0":Landroid/net/Uri;
    goto :goto_1

    #@73
    .line 90
    .end local v6    # "_arg0":Landroid/net/Uri;
    :sswitch_4
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@76
    move-object/from16 v0, p2

    #@78
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b
    .line 92
    sget-object v15, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7d
    move-object/from16 v0, p2

    #@7f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@82
    move-result-object v8

    #@83
    .line 93
    .local v8, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    move-object/from16 v0, p0

    #@85
    invoke-virtual {v0, v8}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTracksChanged(Ljava/util/List;)V

    #@88
    .line 94
    const/4 v15, 0x1

    #@89
    return v15

    #@8a
    .line 98
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    :sswitch_5
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@8d
    move-object/from16 v0, p2

    #@8f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v2

    #@96
    .line 102
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@99
    move-result-object v12

    #@9a
    .line 103
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9c
    invoke-virtual {v0, v2, v12}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTrackSelected(ILjava/lang/String;)V

    #@9f
    .line 104
    const/4 v15, 0x1

    #@a0
    return v15

    #@a1
    .line 108
    .end local v2    # "_arg0":I
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@a4
    move-object/from16 v0, p2

    #@a6
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a9
    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoAvailable()V

    #@ac
    .line 110
    const/4 v15, 0x1

    #@ad
    return v15

    #@ae
    .line 114
    :sswitch_7
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@b1
    move-object/from16 v0, p2

    #@b3
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v2

    #@ba
    .line 117
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@bc
    invoke-virtual {v0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onVideoUnavailable(I)V

    #@bf
    .line 118
    const/4 v15, 0x1

    #@c0
    return v15

    #@c1
    .line 122
    .end local v2    # "_arg0":I
    :sswitch_8
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@c4
    move-object/from16 v0, p2

    #@c6
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c9
    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onContentAllowed()V

    #@cc
    .line 124
    const/4 v15, 0x1

    #@cd
    return v15

    #@ce
    .line 128
    :sswitch_9
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d9
    move-result-object v7

    #@da
    .line 131
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@dc
    invoke-virtual {v0, v7}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onContentBlocked(Ljava/lang/String;)V

    #@df
    .line 132
    const/4 v15, 0x1

    #@e0
    return v15

    #@e1
    .line 136
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@e4
    move-object/from16 v0, p2

    #@e6
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e9
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v2

    #@ed
    .line 140
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f0
    move-result v9

    #@f1
    .line 142
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f4
    move-result v13

    #@f5
    .line 144
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f8
    move-result v14

    #@f9
    .line 145
    .local v14, "_arg3":I
    move-object/from16 v0, p0

    #@fb
    invoke-virtual {v0, v2, v9, v13, v14}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onLayoutSurface(IIII)V

    #@fe
    .line 146
    const/4 v15, 0x1

    #@ff
    return v15

    #@100
    .line 150
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    :sswitch_b
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@103
    move-object/from16 v0, p2

    #@105
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@108
    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10b
    move-result v2

    #@10c
    .line 153
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@10e
    invoke-virtual {v0, v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftStatusChanged(I)V

    #@111
    .line 154
    const/4 v15, 0x1

    #@112
    return v15

    #@113
    .line 158
    .end local v2    # "_arg0":I
    :sswitch_c
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@116
    move-object/from16 v0, p2

    #@118
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11b
    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@11e
    move-result-wide v4

    #@11f
    .line 161
    .local v4, "_arg0":J
    move-object/from16 v0, p0

    #@121
    invoke-virtual {v0, v4, v5}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftStartPositionChanged(J)V

    #@124
    .line 162
    const/4 v15, 0x1

    #@125
    return v15

    #@126
    .line 166
    .end local v4    # "_arg0":J
    :sswitch_d
    const-string/jumbo v15, "android.media.tv.ITvInputSessionCallback"

    #@129
    move-object/from16 v0, p2

    #@12b
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12e
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@131
    move-result-wide v4

    #@132
    .line 169
    .restart local v4    # "_arg0":J
    move-object/from16 v0, p0

    #@134
    invoke-virtual {v0, v4, v5}, Landroid/media/tv/ITvInputSessionCallback$Stub;->onTimeShiftCurrentPositionChanged(J)V

    #@137
    .line 170
    const/4 v15, 0x1

    #@138
    return v15

    #@139
    .line 43
    nop

    #@13a
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;
.source "ITvInputSession.java"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final TRANSACTION_appPrivateCommand:I = 0x9

.field static final TRANSACTION_createOverlayView:I = 0xa

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final TRANSACTION_relayoutOverlayView:I = 0xb

.field static final TRANSACTION_release:I = 0x1

.field static final TRANSACTION_removeOverlayView:I = 0xc

.field static final TRANSACTION_selectTrack:I = 0x8

.field static final TRANSACTION_setCaptionEnabled:I = 0x7

.field static final TRANSACTION_setMain:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x3

.field static final TRANSACTION_setVolume:I = 0x5

.field static final TRANSACTION_timeShiftEnablePositionTracking:I = 0x12

.field static final TRANSACTION_timeShiftPause:I = 0xe

.field static final TRANSACTION_timeShiftResume:I = 0xf

.field static final TRANSACTION_timeShiftSeekTo:I = 0x10

.field static final TRANSACTION_timeShiftSetPlaybackParams:I = 0x11

.field static final TRANSACTION_tune:I = 0x6

.field static final TRANSACTION_unblockContent:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.media.tv.ITvInputSession"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
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
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/media/tv/ITvInputSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 19
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
    .line 233
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v18

    #@7
    return v18

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v18

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 47
    const/16 v18, 0x1

    #@14
    return v18

    #@15
    .line 51
    :sswitch_1
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v18

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    #@22
    .line 53
    const/16 v18, 0x1

    #@24
    return v18

    #@25
    .line 57
    :sswitch_2
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@28
    move-object/from16 v0, p2

    #@2a
    move-object/from16 v1, v18

    #@2c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f
    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v18

    #@33
    if-eqz v18, :cond_0

    #@35
    const/4 v12, 0x1

    #@36
    .line 60
    .local v12, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    #@38
    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    #@3b
    .line 61
    const/16 v18, 0x1

    #@3d
    return v18

    #@3e
    .line 59
    .end local v12    # "_arg0":Z
    :cond_0
    const/4 v12, 0x0

    #@3f
    .restart local v12    # "_arg0":Z
    goto :goto_0

    #@40
    .line 65
    .end local v12    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@43
    move-object/from16 v0, p2

    #@45
    move-object/from16 v1, v18

    #@47
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v18

    #@4e
    if-eqz v18, :cond_1

    #@50
    .line 68
    sget-object v18, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@52
    move-object/from16 v0, v18

    #@54
    move-object/from16 v1, p2

    #@56
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@59
    move-result-object v10

    #@5a
    check-cast v10, Landroid/view/Surface;

    #@5c
    .line 73
    :goto_1
    move-object/from16 v0, p0

    #@5e
    invoke-virtual {v0, v10}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    #@61
    .line 74
    const/16 v18, 0x1

    #@63
    return v18

    #@64
    .line 71
    :cond_1
    const/4 v10, 0x0

    #@65
    .local v10, "_arg0":Landroid/view/Surface;
    goto :goto_1

    #@66
    .line 78
    .end local v10    # "_arg0":Landroid/view/Surface;
    :sswitch_4
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@69
    move-object/from16 v0, p2

    #@6b
    move-object/from16 v1, v18

    #@6d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73
    move-result v3

    #@74
    .line 82
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v13

    #@78
    .line 84
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v17

    #@7c
    .line 85
    .local v17, "_arg2":I
    move-object/from16 v0, p0

    #@7e
    move/from16 v1, v17

    #@80
    invoke-virtual {v0, v3, v13, v1}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    #@83
    .line 86
    const/16 v18, 0x1

    #@85
    return v18

    #@86
    .line 90
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v17    # "_arg2":I
    :sswitch_5
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@89
    move-object/from16 v0, p2

    #@8b
    move-object/from16 v1, v18

    #@8d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@93
    move-result v2

    #@94
    .line 93
    .local v2, "_arg0":F
    move-object/from16 v0, p0

    #@96
    invoke-virtual {v0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    #@99
    .line 94
    const/16 v18, 0x1

    #@9b
    return v18

    #@9c
    .line 98
    .end local v2    # "_arg0":F
    :sswitch_6
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@9f
    move-object/from16 v0, p2

    #@a1
    move-object/from16 v1, v18

    #@a3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v18

    #@aa
    if-eqz v18, :cond_2

    #@ac
    .line 101
    sget-object v18, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae
    move-object/from16 v0, v18

    #@b0
    move-object/from16 v1, p2

    #@b2
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b5
    move-result-object v8

    #@b6
    check-cast v8, Landroid/net/Uri;

    #@b8
    .line 107
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v18

    #@bc
    if-eqz v18, :cond_3

    #@be
    .line 108
    sget-object v18, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c0
    move-object/from16 v0, v18

    #@c2
    move-object/from16 v1, p2

    #@c4
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c7
    move-result-object v15

    #@c8
    check-cast v15, Landroid/os/Bundle;

    #@ca
    .line 113
    :goto_3
    move-object/from16 v0, p0

    #@cc
    invoke-virtual {v0, v8, v15}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@cf
    .line 114
    const/16 v18, 0x1

    #@d1
    return v18

    #@d2
    .line 104
    :cond_2
    const/4 v8, 0x0

    #@d3
    .local v8, "_arg0":Landroid/net/Uri;
    goto :goto_2

    #@d4
    .line 111
    .end local v8    # "_arg0":Landroid/net/Uri;
    :cond_3
    const/4 v15, 0x0

    #@d5
    .local v15, "_arg1":Landroid/os/Bundle;
    goto :goto_3

    #@d6
    .line 118
    .end local v15    # "_arg1":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@d9
    move-object/from16 v0, p2

    #@db
    move-object/from16 v1, v18

    #@dd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e3
    move-result v18

    #@e4
    if-eqz v18, :cond_4

    #@e6
    const/4 v12, 0x1

    #@e7
    .line 121
    .restart local v12    # "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    #@e9
    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    #@ec
    .line 122
    const/16 v18, 0x1

    #@ee
    return v18

    #@ef
    .line 120
    .end local v12    # "_arg0":Z
    :cond_4
    const/4 v12, 0x0

    #@f0
    .restart local v12    # "_arg0":Z
    goto :goto_4

    #@f1
    .line 126
    .end local v12    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@f4
    move-object/from16 v0, p2

    #@f6
    move-object/from16 v1, v18

    #@f8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fb
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v3

    #@ff
    .line 130
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@102
    move-result-object v16

    #@103
    .line 131
    .local v16, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@105
    move-object/from16 v1, v16

    #@107
    invoke-virtual {v0, v3, v1}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    #@10a
    .line 132
    const/16 v18, 0x1

    #@10c
    return v18

    #@10d
    .line 136
    .end local v3    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@110
    move-object/from16 v0, p2

    #@112
    move-object/from16 v1, v18

    #@114
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@117
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11a
    move-result-object v11

    #@11b
    .line 140
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11e
    move-result v18

    #@11f
    if-eqz v18, :cond_5

    #@121
    .line 141
    sget-object v18, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@123
    move-object/from16 v0, v18

    #@125
    move-object/from16 v1, p2

    #@127
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12a
    move-result-object v15

    #@12b
    check-cast v15, Landroid/os/Bundle;

    #@12d
    .line 146
    :goto_5
    move-object/from16 v0, p0

    #@12f
    invoke-virtual {v0, v11, v15}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@132
    .line 147
    const/16 v18, 0x1

    #@134
    return v18

    #@135
    .line 144
    :cond_5
    const/4 v15, 0x0

    #@136
    .restart local v15    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    #@137
    .line 151
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Landroid/os/Bundle;
    :sswitch_a
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@13a
    move-object/from16 v0, p2

    #@13c
    move-object/from16 v1, v18

    #@13e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@141
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@144
    move-result-object v9

    #@145
    .line 155
    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@148
    move-result v18

    #@149
    if-eqz v18, :cond_6

    #@14b
    .line 156
    sget-object v18, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14d
    move-object/from16 v0, v18

    #@14f
    move-object/from16 v1, p2

    #@151
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@154
    move-result-object v14

    #@155
    check-cast v14, Landroid/graphics/Rect;

    #@157
    .line 161
    :goto_6
    move-object/from16 v0, p0

    #@159
    invoke-virtual {v0, v9, v14}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    #@15c
    .line 162
    const/16 v18, 0x1

    #@15e
    return v18

    #@15f
    .line 159
    :cond_6
    const/4 v14, 0x0

    #@160
    .local v14, "_arg1":Landroid/graphics/Rect;
    goto :goto_6

    #@161
    .line 166
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Landroid/graphics/Rect;
    :sswitch_b
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@164
    move-object/from16 v0, p2

    #@166
    move-object/from16 v1, v18

    #@168
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16b
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16e
    move-result v18

    #@16f
    if-eqz v18, :cond_7

    #@171
    .line 169
    sget-object v18, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@173
    move-object/from16 v0, v18

    #@175
    move-object/from16 v1, p2

    #@177
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17a
    move-result-object v6

    #@17b
    check-cast v6, Landroid/graphics/Rect;

    #@17d
    .line 174
    :goto_7
    move-object/from16 v0, p0

    #@17f
    invoke-virtual {v0, v6}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    #@182
    .line 175
    const/16 v18, 0x1

    #@184
    return v18

    #@185
    .line 172
    :cond_7
    const/4 v6, 0x0

    #@186
    .local v6, "_arg0":Landroid/graphics/Rect;
    goto :goto_7

    #@187
    .line 179
    .end local v6    # "_arg0":Landroid/graphics/Rect;
    :sswitch_c
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@18a
    move-object/from16 v0, p2

    #@18c
    move-object/from16 v1, v18

    #@18e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@191
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    #@194
    .line 181
    const/16 v18, 0x1

    #@196
    return v18

    #@197
    .line 185
    :sswitch_d
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@19a
    move-object/from16 v0, p2

    #@19c
    move-object/from16 v1, v18

    #@19e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a1
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a4
    move-result-object v11

    #@1a5
    .line 188
    .restart local v11    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a7
    invoke-virtual {v0, v11}, Landroid/media/tv/ITvInputSession$Stub;->unblockContent(Ljava/lang/String;)V

    #@1aa
    .line 189
    const/16 v18, 0x1

    #@1ac
    return v18

    #@1ad
    .line 193
    .end local v11    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@1b0
    move-object/from16 v0, p2

    #@1b2
    move-object/from16 v1, v18

    #@1b4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b7
    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPause()V

    #@1ba
    .line 195
    const/16 v18, 0x1

    #@1bc
    return v18

    #@1bd
    .line 199
    :sswitch_f
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@1c0
    move-object/from16 v0, p2

    #@1c2
    move-object/from16 v1, v18

    #@1c4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c7
    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftResume()V

    #@1ca
    .line 201
    const/16 v18, 0x1

    #@1cc
    return v18

    #@1cd
    .line 205
    :sswitch_10
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@1d0
    move-object/from16 v0, p2

    #@1d2
    move-object/from16 v1, v18

    #@1d4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d7
    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1da
    move-result-wide v4

    #@1db
    .line 208
    .local v4, "_arg0":J
    move-object/from16 v0, p0

    #@1dd
    invoke-virtual {v0, v4, v5}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSeekTo(J)V

    #@1e0
    .line 209
    const/16 v18, 0x1

    #@1e2
    return v18

    #@1e3
    .line 213
    .end local v4    # "_arg0":J
    :sswitch_11
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@1e6
    move-object/from16 v0, p2

    #@1e8
    move-object/from16 v1, v18

    #@1ea
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ed
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f0
    move-result v18

    #@1f1
    if-eqz v18, :cond_8

    #@1f3
    .line 216
    sget-object v18, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f5
    move-object/from16 v0, v18

    #@1f7
    move-object/from16 v1, p2

    #@1f9
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fc
    move-result-object v7

    #@1fd
    check-cast v7, Landroid/media/PlaybackParams;

    #@1ff
    .line 221
    :goto_8
    move-object/from16 v0, p0

    #@201
    invoke-virtual {v0, v7}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    #@204
    .line 222
    const/16 v18, 0x1

    #@206
    return v18

    #@207
    .line 219
    :cond_8
    const/4 v7, 0x0

    #@208
    .local v7, "_arg0":Landroid/media/PlaybackParams;
    goto :goto_8

    #@209
    .line 226
    .end local v7    # "_arg0":Landroid/media/PlaybackParams;
    :sswitch_12
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    #@20c
    move-object/from16 v0, p2

    #@20e
    move-object/from16 v1, v18

    #@210
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@213
    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@216
    move-result v18

    #@217
    if-eqz v18, :cond_9

    #@219
    const/4 v12, 0x1

    #@21a
    .line 229
    .restart local v12    # "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    #@21c
    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftEnablePositionTracking(Z)V

    #@21f
    .line 230
    const/16 v18, 0x1

    #@221
    return v18

    #@222
    .line 228
    .end local v12    # "_arg0":Z
    :cond_9
    const/4 v12, 0x0

    #@223
    .restart local v12    # "_arg0":Z
    goto :goto_9

    #@224
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Landroid/media/IRemoteControlDisplay$Stub;
.super Landroid/os/Binder;
.source "IRemoteControlDisplay.java"

# interfaces
.implements Landroid/media/IRemoteControlDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteControlDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteControlDisplay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteControlDisplay"

.field static final TRANSACTION_setAllMetadata:I = 0x7

.field static final TRANSACTION_setArtwork:I = 0x6

.field static final TRANSACTION_setCurrentClientId:I = 0x1

.field static final TRANSACTION_setEnabled:I = 0x2

.field static final TRANSACTION_setMetadata:I = 0x5

.field static final TRANSACTION_setPlaybackState:I = 0x3

.field static final TRANSACTION_setTransportControlInfo:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.media.IRemoteControlDisplay"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/IRemoteControlDisplay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "android.media.IRemoteControlDisplay"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/IRemoteControlDisplay;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/media/IRemoteControlDisplay;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IRemoteControlDisplay$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/IRemoteControlDisplay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 157
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v3, "android.media.IRemoteControlDisplay"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 53
    :sswitch_1
    const-string/jumbo v3, "android.media.IRemoteControlDisplay"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    .line 57
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 58
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v11

    #@2c
    check-cast v11, Landroid/app/PendingIntent;

    #@2e
    .line 64
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_1

    #@34
    const/16 v16, 0x1

    #@36
    .line 65
    .local v16, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    #@38
    move/from16 v1, v16

    #@3a
    invoke-virtual {v0, v4, v11, v1}, Landroid/media/IRemoteControlDisplay$Stub;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V

    #@3d
    .line 66
    const/4 v3, 0x1

    #@3e
    return v3

    #@3f
    .line 61
    .end local v16    # "_arg2":Z
    :cond_0
    const/4 v11, 0x0

    #@40
    .local v11, "_arg1":Landroid/app/PendingIntent;
    goto :goto_0

    #@41
    .line 64
    .end local v11    # "_arg1":Landroid/app/PendingIntent;
    :cond_1
    const/16 v16, 0x0

    #@43
    .restart local v16    # "_arg2":Z
    goto :goto_1

    #@44
    .line 70
    .end local v4    # "_arg0":I
    .end local v16    # "_arg2":Z
    :sswitch_2
    const-string/jumbo v3, "android.media.IRemoteControlDisplay"

    #@47
    move-object/from16 v0, p2

    #@49
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_2

    #@52
    const/4 v2, 0x1

    #@53
    .line 73
    .local v2, "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    #@55
    invoke-virtual {v0, v2}, Landroid/media/IRemoteControlDisplay$Stub;->setEnabled(Z)V

    #@58
    .line 74
    const/4 v3, 0x1

    #@59
    return v3

    #@5a
    .line 72
    .end local v2    # "_arg0":Z
    :cond_2
    const/4 v2, 0x0

    #@5b
    .restart local v2    # "_arg0":Z
    goto :goto_2

    #@5c
    .line 78
    .end local v2    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v3, "android.media.IRemoteControlDisplay"

    #@5f
    move-object/from16 v0, p2

    #@61
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v4

    #@68
    .line 82
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v5

    #@6c
    .line 84
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@6f
    move-result-wide v6

    #@70
    .line 86
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@73
    move-result-wide v8

    #@74
    .line 88
    .local v8, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@77
    move-result v10

    #@78
    .local v10, "_arg4":F
    move-object/from16 v3, p0

    #@7a
    .line 89
    invoke-virtual/range {v3 .. v10}, Landroid/media/IRemoteControlDisplay$Stub;->setPlaybackState(IIJJF)V

    #@7d
    .line 90
    const/4 v3, 0x1

    #@7e
    return v3

    #@7f
    .line 94
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":J
    .end local v10    # "_arg4":F
    :sswitch_4
    const-string/jumbo v3, "android.media.IRemoteControlDisplay"

    #@82
    move-object/from16 v0, p2

    #@84
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@87
    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a
    move-result v4

    #@8b
    .line 98
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e
    move-result v5

    #@8f
    .line 100
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v14

    #@93
    .line 101
    .local v14, "_arg2":I
    move-object/from16 v0, p0

    #@95
    invoke-virtual {v0, v4, v5, v14}, Landroid/media/IRemoteControlDisplay$Stub;->setTransportControlInfo(III)V

    #@98
    .line 102
    const/4 v3, 0x1

    #@99
    return v3

    #@9a
    .line 106
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v14    # "_arg2":I
    :sswitch_5
    const-string/jumbo v3, "android.media.IRemoteControlDisplay"

    #@9d
    move-object/from16 v0, p2

    #@9f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v4

    #@a6
    .line 110
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v3

    #@aa
    if-eqz v3, :cond_3

    #@ac
    .line 111
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae
    move-object/from16 v0, p2

    #@b0
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b3
    move-result-object v13

    #@b4
    check-cast v13, Landroid/os/Bundle;

    #@b6
    .line 116
    :goto_3
    move-object/from16 v0, p0

    #@b8
    invoke-virtual {v0, v4, v13}, Landroid/media/IRemoteControlDisplay$Stub;->setMetadata(ILandroid/os/Bundle;)V

    #@bb
    .line 117
    const/4 v3, 0x1

    #@bc
    return v3

    #@bd
    .line 114
    :cond_3
    const/4 v13, 0x0

    #@be
    .local v13, "_arg1":Landroid/os/Bundle;
    goto :goto_3

    #@bf
    .line 121
    .end local v4    # "_arg0":I
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v3, "android.media.IRemoteControlDisplay"

    #@c2
    move-object/from16 v0, p2

    #@c4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ca
    move-result v4

    #@cb
    .line 125
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ce
    move-result v3

    #@cf
    if-eqz v3, :cond_4

    #@d1
    .line 126
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d3
    move-object/from16 v0, p2

    #@d5
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d8
    move-result-object v12

    #@d9
    check-cast v12, Landroid/graphics/Bitmap;

    #@db
    .line 131
    :goto_4
    move-object/from16 v0, p0

    #@dd
    invoke-virtual {v0, v4, v12}, Landroid/media/IRemoteControlDisplay$Stub;->setArtwork(ILandroid/graphics/Bitmap;)V

    #@e0
    .line 132
    const/4 v3, 0x1

    #@e1
    return v3

    #@e2
    .line 129
    :cond_4
    const/4 v12, 0x0

    #@e3
    .local v12, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_4

    #@e4
    .line 136
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_7
    const-string/jumbo v3, "android.media.IRemoteControlDisplay"

    #@e7
    move-object/from16 v0, p2

    #@e9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v4

    #@f0
    .line 140
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f3
    move-result v3

    #@f4
    if-eqz v3, :cond_5

    #@f6
    .line 141
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f8
    move-object/from16 v0, p2

    #@fa
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fd
    move-result-object v13

    #@fe
    check-cast v13, Landroid/os/Bundle;

    #@100
    .line 147
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@103
    move-result v3

    #@104
    if-eqz v3, :cond_6

    #@106
    .line 148
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@108
    move-object/from16 v0, p2

    #@10a
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10d
    move-result-object v15

    #@10e
    check-cast v15, Landroid/graphics/Bitmap;

    #@110
    .line 153
    :goto_6
    move-object/from16 v0, p0

    #@112
    invoke-virtual {v0, v4, v13, v15}, Landroid/media/IRemoteControlDisplay$Stub;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    #@115
    .line 154
    const/4 v3, 0x1

    #@116
    return v3

    #@117
    .line 144
    :cond_5
    const/4 v13, 0x0

    #@118
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    #@119
    .line 151
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :cond_6
    const/4 v15, 0x0

    #@11a
    .local v15, "_arg2":Landroid/graphics/Bitmap;
    goto :goto_6

    #@11b
    .line 44
    nop

    #@11c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Landroid/media/IRingtonePlayer$Stub;
.super Landroid/os/Binder;
.source "IRingtonePlayer.java"

# interfaces
.implements Landroid/media/IRingtonePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRingtonePlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRingtonePlayer"

.field static final TRANSACTION_getTitle:I = 0x7

.field static final TRANSACTION_isPlaying:I = 0x3

.field static final TRANSACTION_play:I = 0x1

.field static final TRANSACTION_playAsync:I = 0x5

.field static final TRANSACTION_setPlaybackProperties:I = 0x4

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_stopAsync:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.media.IRingtonePlayer"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/IRingtonePlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;
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
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/IRingtonePlayer;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/media/IRingtonePlayer;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IRingtonePlayer$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/IRingtonePlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 14
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
    .line 160
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 50
    :sswitch_1
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    .line 54
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 55
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Landroid/net/Uri;

    #@2e
    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 62
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36
    move-object/from16 v0, p2

    #@38
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Landroid/media/AudioAttributes;

    #@3e
    .line 68
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@41
    move-result v5

    #@42
    .line 70
    .local v5, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_2

    #@48
    const/4 v6, 0x1

    #@49
    .local v6, "_arg4":Z
    :goto_2
    move-object v1, p0

    #@4a
    .line 71
    invoke-virtual/range {v1 .. v6}, Landroid/media/IRingtonePlayer$Stub;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V

    #@4d
    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50
    .line 73
    const/4 v1, 0x1

    #@51
    return v1

    #@52
    .line 58
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":Z
    :cond_0
    const/4 v3, 0x0

    #@53
    .local v3, "_arg1":Landroid/net/Uri;
    goto :goto_0

    #@54
    .line 65
    .end local v3    # "_arg1":Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x0

    #@55
    .local v4, "_arg2":Landroid/media/AudioAttributes;
    goto :goto_1

    #@56
    .line 70
    .end local v4    # "_arg2":Landroid/media/AudioAttributes;
    .restart local v5    # "_arg3":F
    :cond_2
    const/4 v6, 0x0

    #@57
    .restart local v6    # "_arg4":Z
    goto :goto_2

    #@58
    .line 77
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":Z
    :sswitch_2
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    #@5b
    move-object/from16 v0, p2

    #@5d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@63
    move-result-object v2

    #@64
    .line 80
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/media/IRingtonePlayer$Stub;->stop(Landroid/os/IBinder;)V

    #@67
    .line 81
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    .line 82
    const/4 v1, 0x1

    #@6b
    return v1

    #@6c
    .line 86
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_3
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    #@6f
    move-object/from16 v0, p2

    #@71
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@77
    move-result-object v2

    #@78
    .line 89
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/media/IRingtonePlayer$Stub;->isPlaying(Landroid/os/IBinder;)Z

    #@7b
    move-result v13

    #@7c
    .line 90
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f
    .line 91
    if-eqz v13, :cond_3

    #@81
    const/4 v1, 0x1

    #@82
    :goto_3
    move-object/from16 v0, p3

    #@84
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@87
    .line 92
    const/4 v1, 0x1

    #@88
    return v1

    #@89
    .line 91
    :cond_3
    const/4 v1, 0x0

    #@8a
    goto :goto_3

    #@8b
    .line 96
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_result":Z
    :sswitch_4
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@93
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@96
    move-result-object v2

    #@97
    .line 100
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@9a
    move-result v8

    #@9b
    .line 102
    .local v8, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v1

    #@9f
    if-eqz v1, :cond_4

    #@a1
    const/4 v10, 0x1

    #@a2
    .line 103
    .local v10, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v2, v8, v10}, Landroid/media/IRingtonePlayer$Stub;->setPlaybackProperties(Landroid/os/IBinder;FZ)V

    #@a5
    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 105
    const/4 v1, 0x1

    #@a9
    return v1

    #@aa
    .line 102
    .end local v10    # "_arg2":Z
    :cond_4
    const/4 v10, 0x0

    #@ab
    .restart local v10    # "_arg2":Z
    goto :goto_4

    #@ac
    .line 109
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":F
    .end local v10    # "_arg2":Z
    :sswitch_5
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    #@af
    move-object/from16 v0, p2

    #@b1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4
    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v1

    #@b8
    if-eqz v1, :cond_5

    #@ba
    .line 112
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bc
    move-object/from16 v0, p2

    #@be
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c1
    move-result-object v7

    #@c2
    check-cast v7, Landroid/net/Uri;

    #@c4
    .line 118
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v1

    #@c8
    if-eqz v1, :cond_6

    #@ca
    .line 119
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cc
    move-object/from16 v0, p2

    #@ce
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d1
    move-result-object v9

    #@d2
    check-cast v9, Landroid/os/UserHandle;

    #@d4
    .line 125
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d7
    move-result v1

    #@d8
    if-eqz v1, :cond_7

    #@da
    const/4 v10, 0x1

    #@db
    .line 127
    .restart local v10    # "_arg2":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@de
    move-result v1

    #@df
    if-eqz v1, :cond_8

    #@e1
    .line 128
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e3
    move-object/from16 v0, p2

    #@e5
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e8
    move-result-object v11

    #@e9
    check-cast v11, Landroid/media/AudioAttributes;

    #@eb
    .line 133
    :goto_8
    invoke-virtual {p0, v7, v9, v10, v11}, Landroid/media/IRingtonePlayer$Stub;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    #@ee
    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1
    .line 135
    const/4 v1, 0x1

    #@f2
    return v1

    #@f3
    .line 115
    .end local v10    # "_arg2":Z
    :cond_5
    const/4 v7, 0x0

    #@f4
    .local v7, "_arg0":Landroid/net/Uri;
    goto :goto_5

    #@f5
    .line 122
    .end local v7    # "_arg0":Landroid/net/Uri;
    :cond_6
    const/4 v9, 0x0

    #@f6
    .local v9, "_arg1":Landroid/os/UserHandle;
    goto :goto_6

    #@f7
    .line 125
    .end local v9    # "_arg1":Landroid/os/UserHandle;
    :cond_7
    const/4 v10, 0x0

    #@f8
    .restart local v10    # "_arg2":Z
    goto :goto_7

    #@f9
    .line 131
    :cond_8
    const/4 v11, 0x0

    #@fa
    .local v11, "_arg3":Landroid/media/AudioAttributes;
    goto :goto_8

    #@fb
    .line 139
    .end local v10    # "_arg2":Z
    .end local v11    # "_arg3":Landroid/media/AudioAttributes;
    :sswitch_6
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    #@fe
    move-object/from16 v0, p2

    #@100
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@103
    .line 140
    invoke-virtual {p0}, Landroid/media/IRingtonePlayer$Stub;->stopAsync()V

    #@106
    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@109
    .line 142
    const/4 v1, 0x1

    #@10a
    return v1

    #@10b
    .line 146
    :sswitch_7
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    #@10e
    move-object/from16 v0, p2

    #@110
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@113
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@116
    move-result v1

    #@117
    if-eqz v1, :cond_9

    #@119
    .line 149
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11b
    move-object/from16 v0, p2

    #@11d
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@120
    move-result-object v7

    #@121
    check-cast v7, Landroid/net/Uri;

    #@123
    .line 154
    :goto_9
    invoke-virtual {p0, v7}, Landroid/media/IRingtonePlayer$Stub;->getTitle(Landroid/net/Uri;)Ljava/lang/String;

    #@126
    move-result-object v12

    #@127
    .line 155
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12a
    .line 156
    move-object/from16 v0, p3

    #@12c
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12f
    .line 157
    const/4 v1, 0x1

    #@130
    return v1

    #@131
    .line 152
    .end local v12    # "_result":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    #@132
    .restart local v7    # "_arg0":Landroid/net/Uri;
    goto :goto_9

    #@133
    .line 41
    nop

    #@134
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

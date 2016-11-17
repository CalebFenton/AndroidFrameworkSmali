.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetd"

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_getResolverInfo:I = 0x7

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0x4

.field static final TRANSACTION_setResolverConfiguration:I = 0x6

.field static final TRANSACTION_socketDestroy:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.net.INetd"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/INetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.net.INetd"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/INetd;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/net/INetd;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetd$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 161
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v1

    #@7
    return v1

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v1, "android.net.INetd"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v1, "android.net.INetd"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    #@1d
    move-result v18

    #@1e
    .line 50
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 51
    if-eqz v18, :cond_0

    #@23
    const/4 v1, 0x1

    #@24
    :goto_0
    move-object/from16 v0, p3

    #@26
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 52
    const/4 v1, 0x1

    #@2a
    return v1

    #@2b
    .line 51
    :cond_0
    const/4 v1, 0x0

    #@2c
    goto :goto_0

    #@2d
    .line 56
    .end local v18    # "_result":Z
    :sswitch_2
    const-string/jumbo v1, "android.net.INetd"

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    .line 60
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_1

    #@3f
    const/4 v10, 0x1

    #@40
    .line 62
    .local v10, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@43
    move-result-object v14

    #@44
    .line 63
    .local v14, "_arg2":[I
    move-object/from16 v0, p0

    #@46
    invoke-virtual {v0, v7, v10, v14}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    #@49
    move-result v18

    #@4a
    .line 64
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d
    .line 65
    if-eqz v18, :cond_2

    #@4f
    const/4 v1, 0x1

    #@50
    :goto_2
    move-object/from16 v0, p3

    #@52
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 66
    const/4 v1, 0x1

    #@56
    return v1

    #@57
    .line 60
    .end local v10    # "_arg1":Z
    .end local v14    # "_arg2":[I
    .end local v18    # "_result":Z
    :cond_1
    const/4 v10, 0x0

    #@58
    .restart local v10    # "_arg1":Z
    goto :goto_1

    #@59
    .line 65
    .restart local v14    # "_arg2":[I
    .restart local v18    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    #@5a
    goto :goto_2

    #@5b
    .line 70
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Z
    .end local v14    # "_arg2":[I
    .end local v18    # "_result":Z
    :sswitch_3
    const-string/jumbo v1, "android.net.INetd"

    #@5e
    move-object/from16 v0, p2

    #@60
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v1

    #@67
    if-eqz v1, :cond_3

    #@69
    const/4 v8, 0x1

    #@6a
    .line 73
    .local v8, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    #@6c
    invoke-virtual {v0, v8}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    #@6f
    move-result v18

    #@70
    .line 74
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@73
    .line 75
    if-eqz v18, :cond_4

    #@75
    const/4 v1, 0x1

    #@76
    :goto_4
    move-object/from16 v0, p3

    #@78
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    .line 76
    const/4 v1, 0x1

    #@7c
    return v1

    #@7d
    .line 72
    .end local v8    # "_arg0":Z
    .end local v18    # "_result":Z
    :cond_3
    const/4 v8, 0x0

    #@7e
    goto :goto_3

    #@7f
    .line 75
    .restart local v8    # "_arg0":Z
    .restart local v18    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    #@80
    goto :goto_4

    #@81
    .line 80
    .end local v8    # "_arg0":Z
    .end local v18    # "_result":Z
    :sswitch_4
    const-string/jumbo v1, "android.net.INetd"

    #@84
    move-object/from16 v0, p2

    #@86
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_5

    #@8f
    const/4 v8, 0x1

    #@90
    .line 84
    .local v8, "_arg0":Z
    :goto_5
    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@92
    move-object/from16 v0, p2

    #@94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@97
    move-result-object v12

    #@98
    check-cast v12, [Landroid/net/UidRange;

    #@9a
    .line 85
    .local v12, "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    #@9c
    invoke-virtual {v0, v8, v12}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V

    #@9f
    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a2
    .line 87
    const/4 v1, 0x1

    #@a3
    return v1

    #@a4
    .line 82
    .end local v8    # "_arg0":Z
    .end local v12    # "_arg1":[Landroid/net/UidRange;
    :cond_5
    const/4 v8, 0x0

    #@a5
    .restart local v8    # "_arg0":Z
    goto :goto_5

    #@a6
    .line 91
    .end local v8    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v1, "android.net.INetd"

    #@a9
    move-object/from16 v0, p2

    #@ab
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    .line 93
    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@b5
    move-result-object v9

    #@b6
    check-cast v9, [Landroid/net/UidRange;

    #@b8
    .line 95
    .local v9, "_arg0":[Landroid/net/UidRange;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@bb
    move-result-object v11

    #@bc
    .line 96
    .local v11, "_arg1":[I
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v9, v11}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRange;[I)V

    #@c1
    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4
    .line 98
    const/4 v1, 0x1

    #@c5
    return v1

    #@c6
    .line 102
    .end local v9    # "_arg0":[Landroid/net/UidRange;
    .end local v11    # "_arg1":[I
    :sswitch_6
    const-string/jumbo v1, "android.net.INetd"

    #@c9
    move-object/from16 v0, p2

    #@cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce
    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d1
    move-result v2

    #@d2
    .line 106
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@d5
    move-result-object v3

    #@d6
    .line 108
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@d9
    move-result-object v4

    #@da
    .line 110
    .local v4, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@dd
    move-result-object v5

    #@de
    .line 111
    .local v5, "_arg3":[I
    move-object/from16 v0, p0

    #@e0
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/net/INetd$Stub;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V

    #@e3
    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e6
    .line 113
    const/4 v1, 0x1

    #@e7
    return v1

    #@e8
    .line 117
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":[Ljava/lang/String;
    .end local v5    # "_arg3":[I
    :sswitch_7
    const-string/jumbo v1, "android.net.INetd"

    #@eb
    move-object/from16 v0, p2

    #@ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f0
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f3
    move-result v2

    #@f4
    .line 121
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v13

    #@f8
    .line 122
    .local v13, "_arg1_length":I
    if-gez v13, :cond_6

    #@fa
    .line 123
    const/4 v3, 0x0

    #@fb
    .line 129
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fe
    move-result v15

    #@ff
    .line 130
    .local v15, "_arg2_length":I
    if-gez v15, :cond_7

    #@101
    .line 131
    const/4 v4, 0x0

    #@102
    .line 137
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v16

    #@106
    .line 138
    .local v16, "_arg3_length":I
    if-gez v16, :cond_8

    #@108
    .line 139
    const/4 v5, 0x0

    #@109
    .line 145
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10c
    move-result v17

    #@10d
    .line 146
    .local v17, "_arg4_length":I
    if-gez v17, :cond_9

    #@10f
    .line 147
    const/4 v6, 0x0

    #@110
    :goto_9
    move-object/from16 v1, p0

    #@112
    .line 152
    invoke-virtual/range {v1 .. v6}, Landroid/net/INetd$Stub;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V

    #@115
    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@118
    .line 154
    move-object/from16 v0, p3

    #@11a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@11d
    .line 155
    move-object/from16 v0, p3

    #@11f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@122
    .line 156
    move-object/from16 v0, p3

    #@124
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    #@127
    .line 157
    move-object/from16 v0, p3

    #@129
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    #@12c
    .line 158
    const/4 v1, 0x1

    #@12d
    return v1

    #@12e
    .line 126
    .end local v15    # "_arg2_length":I
    .end local v16    # "_arg3_length":I
    .end local v17    # "_arg4_length":I
    :cond_6
    new-array v3, v13, [Ljava/lang/String;

    #@130
    .restart local v3    # "_arg1":[Ljava/lang/String;
    goto :goto_6

    #@131
    .line 134
    .end local v3    # "_arg1":[Ljava/lang/String;
    .restart local v15    # "_arg2_length":I
    :cond_7
    new-array v4, v15, [Ljava/lang/String;

    #@133
    .restart local v4    # "_arg2":[Ljava/lang/String;
    goto :goto_7

    #@134
    .line 142
    .end local v4    # "_arg2":[Ljava/lang/String;
    .restart local v16    # "_arg3_length":I
    :cond_8
    move/from16 v0, v16

    #@136
    new-array v5, v0, [I

    #@138
    .restart local v5    # "_arg3":[I
    goto :goto_8

    #@139
    .line 150
    .end local v5    # "_arg3":[I
    .restart local v17    # "_arg4_length":I
    :cond_9
    move/from16 v0, v17

    #@13b
    new-array v6, v0, [I

    #@13d
    .local v6, "_arg4":[I
    goto :goto_9

    #@13e
    .line 39
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

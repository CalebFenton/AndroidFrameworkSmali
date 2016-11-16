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

.field static final TRANSACTION_interfaceAddAddress:I = 0x9

.field static final TRANSACTION_interfaceDelAddress:I = 0xa

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0x4

.field static final TRANSACTION_setProcSysNet:I = 0xb

.field static final TRANSACTION_setResolverConfiguration:I = 0x6

.field static final TRANSACTION_socketDestroy:I = 0x5

.field static final TRANSACTION_tetherApplyDnsInterfaces:I = 0x8


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
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 212
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v3, "android.net.INetd"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v3, "android.net.INetd"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    #@1d
    move-result v28

    #@1e
    .line 50
    .local v28, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 51
    if-eqz v28, :cond_0

    #@23
    const/4 v3, 0x1

    #@24
    :goto_0
    move-object/from16 v0, p3

    #@26
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 52
    const/4 v3, 0x1

    #@2a
    return v3

    #@2b
    .line 51
    :cond_0
    const/4 v3, 0x0

    #@2c
    goto :goto_0

    #@2d
    .line 56
    .end local v28    # "_result":Z
    :sswitch_2
    const-string/jumbo v3, "android.net.INetd"

    #@30
    move-object/from16 v0, p2

    #@32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38
    move-result-object v15

    #@39
    .line 60
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_1

    #@3f
    const/16 v19, 0x1

    #@41
    .line 62
    .local v19, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@44
    move-result-object v24

    #@45
    .line 63
    .local v24, "_arg2":[I
    move-object/from16 v0, p0

    #@47
    move/from16 v1, v19

    #@49
    move-object/from16 v2, v24

    #@4b
    invoke-virtual {v0, v15, v1, v2}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    #@4e
    move-result v28

    #@4f
    .line 64
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    .line 65
    if-eqz v28, :cond_2

    #@54
    const/4 v3, 0x1

    #@55
    :goto_2
    move-object/from16 v0, p3

    #@57
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 66
    const/4 v3, 0x1

    #@5b
    return v3

    #@5c
    .line 60
    .end local v19    # "_arg1":Z
    .end local v24    # "_arg2":[I
    .end local v28    # "_result":Z
    :cond_1
    const/16 v19, 0x0

    #@5e
    .restart local v19    # "_arg1":Z
    goto :goto_1

    #@5f
    .line 65
    .restart local v24    # "_arg2":[I
    .restart local v28    # "_result":Z
    :cond_2
    const/4 v3, 0x0

    #@60
    goto :goto_2

    #@61
    .line 70
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Z
    .end local v24    # "_arg2":[I
    .end local v28    # "_result":Z
    :sswitch_3
    const-string/jumbo v3, "android.net.INetd"

    #@64
    move-object/from16 v0, p2

    #@66
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v3

    #@6d
    if-eqz v3, :cond_3

    #@6f
    const/16 v16, 0x1

    #@71
    .line 73
    .local v16, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    #@73
    move/from16 v1, v16

    #@75
    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    #@78
    move-result v28

    #@79
    .line 74
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c
    .line 75
    if-eqz v28, :cond_4

    #@7e
    const/4 v3, 0x1

    #@7f
    :goto_4
    move-object/from16 v0, p3

    #@81
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@84
    .line 76
    const/4 v3, 0x1

    #@85
    return v3

    #@86
    .line 72
    .end local v16    # "_arg0":Z
    .end local v28    # "_result":Z
    :cond_3
    const/16 v16, 0x0

    #@88
    goto :goto_3

    #@89
    .line 75
    .restart local v16    # "_arg0":Z
    .restart local v28    # "_result":Z
    :cond_4
    const/4 v3, 0x0

    #@8a
    goto :goto_4

    #@8b
    .line 80
    .end local v16    # "_arg0":Z
    .end local v28    # "_result":Z
    :sswitch_4
    const-string/jumbo v3, "android.net.INetd"

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@93
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@96
    move-result v3

    #@97
    if-eqz v3, :cond_5

    #@99
    const/16 v16, 0x1

    #@9b
    .line 84
    .local v16, "_arg0":Z
    :goto_5
    sget-object v3, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9d
    move-object/from16 v0, p2

    #@9f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@a2
    move-result-object v21

    #@a3
    check-cast v21, [Landroid/net/UidRange;

    #@a5
    .line 85
    .local v21, "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    #@a7
    move/from16 v1, v16

    #@a9
    move-object/from16 v2, v21

    #@ab
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V

    #@ae
    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b1
    .line 87
    const/4 v3, 0x1

    #@b2
    return v3

    #@b3
    .line 82
    .end local v16    # "_arg0":Z
    .end local v21    # "_arg1":[Landroid/net/UidRange;
    :cond_5
    const/16 v16, 0x0

    #@b5
    .restart local v16    # "_arg0":Z
    goto :goto_5

    #@b6
    .line 91
    .end local v16    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v3, "android.net.INetd"

    #@b9
    move-object/from16 v0, p2

    #@bb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    .line 93
    sget-object v3, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c0
    move-object/from16 v0, p2

    #@c2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@c5
    move-result-object v17

    #@c6
    check-cast v17, [Landroid/net/UidRange;

    #@c8
    .line 95
    .local v17, "_arg0":[Landroid/net/UidRange;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@cb
    move-result-object v20

    #@cc
    .line 96
    .local v20, "_arg1":[I
    move-object/from16 v0, p0

    #@ce
    move-object/from16 v1, v17

    #@d0
    move-object/from16 v2, v20

    #@d2
    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRange;[I)V

    #@d5
    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d8
    .line 98
    const/4 v3, 0x1

    #@d9
    return v3

    #@da
    .line 102
    .end local v17    # "_arg0":[Landroid/net/UidRange;
    .end local v20    # "_arg1":[I
    :sswitch_6
    const-string/jumbo v3, "android.net.INetd"

    #@dd
    move-object/from16 v0, p2

    #@df
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v4

    #@e6
    .line 106
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@e9
    move-result-object v5

    #@ea
    .line 108
    .local v5, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@ed
    move-result-object v6

    #@ee
    .line 110
    .local v6, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@f1
    move-result-object v7

    #@f2
    .line 111
    .local v7, "_arg3":[I
    move-object/from16 v0, p0

    #@f4
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/net/INetd$Stub;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V

    #@f7
    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fa
    .line 113
    const/4 v3, 0x1

    #@fb
    return v3

    #@fc
    .line 117
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":[Ljava/lang/String;
    .end local v6    # "_arg2":[Ljava/lang/String;
    .end local v7    # "_arg3":[I
    :sswitch_7
    const-string/jumbo v3, "android.net.INetd"

    #@ff
    move-object/from16 v0, p2

    #@101
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@104
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@107
    move-result v4

    #@108
    .line 121
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10b
    move-result v22

    #@10c
    .line 122
    .local v22, "_arg1_length":I
    if-gez v22, :cond_6

    #@10e
    .line 123
    const/4 v5, 0x0

    #@10f
    .line 129
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@112
    move-result v25

    #@113
    .line 130
    .local v25, "_arg2_length":I
    if-gez v25, :cond_7

    #@115
    .line 131
    const/4 v6, 0x0

    #@116
    .line 137
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@119
    move-result v26

    #@11a
    .line 138
    .local v26, "_arg3_length":I
    if-gez v26, :cond_8

    #@11c
    .line 139
    const/4 v7, 0x0

    #@11d
    .line 145
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120
    move-result v27

    #@121
    .line 146
    .local v27, "_arg4_length":I
    if-gez v27, :cond_9

    #@123
    .line 147
    const/4 v8, 0x0

    #@124
    :goto_9
    move-object/from16 v3, p0

    #@126
    .line 152
    invoke-virtual/range {v3 .. v8}, Landroid/net/INetd$Stub;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V

    #@129
    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c
    .line 154
    move-object/from16 v0, p3

    #@12e
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@131
    .line 155
    move-object/from16 v0, p3

    #@133
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@136
    .line 156
    move-object/from16 v0, p3

    #@138
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    #@13b
    .line 157
    move-object/from16 v0, p3

    #@13d
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    #@140
    .line 158
    const/4 v3, 0x1

    #@141
    return v3

    #@142
    .line 126
    .end local v25    # "_arg2_length":I
    .end local v26    # "_arg3_length":I
    .end local v27    # "_arg4_length":I
    :cond_6
    move/from16 v0, v22

    #@144
    new-array v5, v0, [Ljava/lang/String;

    #@146
    .restart local v5    # "_arg1":[Ljava/lang/String;
    goto :goto_6

    #@147
    .line 134
    .end local v5    # "_arg1":[Ljava/lang/String;
    .restart local v25    # "_arg2_length":I
    :cond_7
    move/from16 v0, v25

    #@149
    new-array v6, v0, [Ljava/lang/String;

    #@14b
    .restart local v6    # "_arg2":[Ljava/lang/String;
    goto :goto_7

    #@14c
    .line 142
    .end local v6    # "_arg2":[Ljava/lang/String;
    .restart local v26    # "_arg3_length":I
    :cond_8
    move/from16 v0, v26

    #@14e
    new-array v7, v0, [I

    #@150
    .restart local v7    # "_arg3":[I
    goto :goto_8

    #@151
    .line 150
    .end local v7    # "_arg3":[I
    .restart local v27    # "_arg4_length":I
    :cond_9
    move/from16 v0, v27

    #@153
    new-array v8, v0, [I

    #@155
    .local v8, "_arg4":[I
    goto :goto_9

    #@156
    .line 162
    .end local v4    # "_arg0":I
    .end local v8    # "_arg4":[I
    .end local v22    # "_arg1_length":I
    .end local v25    # "_arg2_length":I
    .end local v26    # "_arg3_length":I
    .end local v27    # "_arg4_length":I
    :sswitch_8
    const-string/jumbo v3, "android.net.INetd"

    #@159
    move-object/from16 v0, p2

    #@15b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e
    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherApplyDnsInterfaces()Z

    #@161
    move-result v28

    #@162
    .line 164
    .restart local v28    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@165
    .line 165
    if-eqz v28, :cond_a

    #@167
    const/4 v3, 0x1

    #@168
    :goto_a
    move-object/from16 v0, p3

    #@16a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@16d
    .line 166
    const/4 v3, 0x1

    #@16e
    return v3

    #@16f
    .line 165
    :cond_a
    const/4 v3, 0x0

    #@170
    goto :goto_a

    #@171
    .line 170
    .end local v28    # "_result":Z
    :sswitch_9
    const-string/jumbo v3, "android.net.INetd"

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17c
    move-result-object v15

    #@17d
    .line 174
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@180
    move-result-object v18

    #@181
    .line 176
    .local v18, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@184
    move-result v23

    #@185
    .line 177
    .local v23, "_arg2":I
    move-object/from16 v0, p0

    #@187
    move-object/from16 v1, v18

    #@189
    move/from16 v2, v23

    #@18b
    invoke-virtual {v0, v15, v1, v2}, Landroid/net/INetd$Stub;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    #@18e
    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@191
    .line 179
    const/4 v3, 0x1

    #@192
    return v3

    #@193
    .line 183
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v23    # "_arg2":I
    :sswitch_a
    const-string/jumbo v3, "android.net.INetd"

    #@196
    move-object/from16 v0, p2

    #@198
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19b
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19e
    move-result-object v15

    #@19f
    .line 187
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a2
    move-result-object v18

    #@1a3
    .line 189
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6
    move-result v23

    #@1a7
    .line 190
    .restart local v23    # "_arg2":I
    move-object/from16 v0, p0

    #@1a9
    move-object/from16 v1, v18

    #@1ab
    move/from16 v2, v23

    #@1ad
    invoke-virtual {v0, v15, v1, v2}, Landroid/net/INetd$Stub;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    #@1b0
    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b3
    .line 192
    const/4 v3, 0x1

    #@1b4
    return v3

    #@1b5
    .line 196
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v23    # "_arg2":I
    :sswitch_b
    const-string/jumbo v3, "android.net.INetd"

    #@1b8
    move-object/from16 v0, p2

    #@1ba
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bd
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c0
    move-result v4

    #@1c1
    .line 200
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c4
    move-result v11

    #@1c5
    .line 202
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c8
    move-result-object v12

    #@1c9
    .line 204
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1cc
    move-result-object v13

    #@1cd
    .line 206
    .local v13, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d0
    move-result-object v14

    #@1d1
    .local v14, "_arg4":Ljava/lang/String;
    move-object/from16 v9, p0

    #@1d3
    move v10, v4

    #@1d4
    .line 207
    invoke-virtual/range {v9 .. v14}, Landroid/net/INetd$Stub;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d7
    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1da
    .line 209
    const/4 v3, 0x1

    #@1db
    return v3

    #@1dc
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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

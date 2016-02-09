.class public abstract Landroid/security/IKeyChainService$Stub;
.super Landroid/os/Binder;
.source "IKeyChainService.java"

# interfaces
.implements Landroid/security/IKeyChainService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeyChainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeyChainService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IKeyChainService"

.field static final TRANSACTION_containsCaAlias:I = 0x9

.field static final TRANSACTION_deleteCaCertificate:I = 0x5

.field static final TRANSACTION_getCaCertificateChainAliases:I = 0xb

.field static final TRANSACTION_getCertificate:I = 0x2

.field static final TRANSACTION_getEncodedCaCertificate:I = 0xa

.field static final TRANSACTION_getSystemCaAliases:I = 0x8

.field static final TRANSACTION_getUserCaAliases:I = 0x7

.field static final TRANSACTION_hasGrant:I = 0xd

.field static final TRANSACTION_installCaCertificate:I = 0x3

.field static final TRANSACTION_installKeyPair:I = 0x4

.field static final TRANSACTION_requestPrivateKey:I = 0x1

.field static final TRANSACTION_reset:I = 0x6

.field static final TRANSACTION_setGrant:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.security.IKeyChainService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/security/IKeyChainService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;
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
    const-string/jumbo v1, "android.security.IKeyChainService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/security/IKeyChainService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/security/IKeyChainService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/security/IKeyChainService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/security/IKeyChainService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 200
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v14

    #@7
    return v14

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    const/4 v14, 0x1

    #@11
    return v14

    #@12
    .line 53
    :sswitch_1
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 56
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v10

    #@22
    .line 57
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 58
    move-object/from16 v0, p3

    #@27
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 59
    const/4 v14, 0x1

    #@2b
    return v14

    #@2c
    .line 63
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@2f
    move-object/from16 v0, p2

    #@31
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 66
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->getCertificate(Ljava/lang/String;)[B

    #@3b
    move-result-object v13

    #@3c
    .line 67
    .local v13, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f
    .line 68
    move-object/from16 v0, p3

    #@41
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    #@44
    .line 69
    const/4 v14, 0x1

    #@45
    return v14

    #@46
    .line 73
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":[B
    :sswitch_3
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@49
    move-object/from16 v0, p2

    #@4b
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@51
    move-result-object v3

    #@52
    .line 76
    .local v3, "_arg0":[B
    invoke-virtual {p0, v3}, Landroid/security/IKeyChainService$Stub;->installCaCertificate([B)V

    #@55
    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@58
    .line 78
    const/4 v14, 0x1

    #@59
    return v14

    #@5a
    .line 82
    .end local v3    # "_arg0":[B
    :sswitch_4
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@5d
    move-object/from16 v0, p2

    #@5f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62
    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@65
    move-result-object v3

    #@66
    .line 86
    .restart local v3    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@69
    move-result-object v6

    #@6a
    .line 88
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    .line 89
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v6, v7}, Landroid/security/IKeyChainService$Stub;->installKeyPair([B[BLjava/lang/String;)Z

    #@71
    move-result v12

    #@72
    .line 90
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 91
    if-eqz v12, :cond_0

    #@77
    const/4 v14, 0x1

    #@78
    :goto_0
    move-object/from16 v0, p3

    #@7a
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    .line 92
    const/4 v14, 0x1

    #@7e
    return v14

    #@7f
    .line 91
    :cond_0
    const/4 v14, 0x0

    #@80
    goto :goto_0

    #@81
    .line 96
    .end local v3    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_5
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@84
    move-object/from16 v0, p2

    #@86
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8c
    move-result-object v2

    #@8d
    .line 99
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->deleteCaCertificate(Ljava/lang/String;)Z

    #@90
    move-result v12

    #@91
    .line 100
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@94
    .line 101
    if-eqz v12, :cond_1

    #@96
    const/4 v14, 0x1

    #@97
    :goto_1
    move-object/from16 v0, p3

    #@99
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@9c
    .line 102
    const/4 v14, 0x1

    #@9d
    return v14

    #@9e
    .line 101
    :cond_1
    const/4 v14, 0x0

    #@9f
    goto :goto_1

    #@a0
    .line 106
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_6
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@a3
    move-object/from16 v0, p2

    #@a5
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a8
    .line 107
    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->reset()Z

    #@ab
    move-result v12

    #@ac
    .line 108
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@af
    .line 109
    if-eqz v12, :cond_2

    #@b1
    const/4 v14, 0x1

    #@b2
    :goto_2
    move-object/from16 v0, p3

    #@b4
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@b7
    .line 110
    const/4 v14, 0x1

    #@b8
    return v14

    #@b9
    .line 109
    :cond_2
    const/4 v14, 0x0

    #@ba
    goto :goto_2

    #@bb
    .line 114
    .end local v12    # "_result":Z
    :sswitch_7
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@be
    move-object/from16 v0, p2

    #@c0
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c3
    .line 115
    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    #@c6
    move-result-object v9

    #@c7
    .line 116
    .local v9, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ca
    .line 117
    if-eqz v9, :cond_3

    #@cc
    .line 118
    const/4 v14, 0x1

    #@cd
    move-object/from16 v0, p3

    #@cf
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@d2
    .line 119
    const/4 v14, 0x1

    #@d3
    move-object/from16 v0, p3

    #@d5
    invoke-virtual {v9, v0, v14}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@d8
    .line 124
    :goto_3
    const/4 v14, 0x1

    #@d9
    return v14

    #@da
    .line 122
    :cond_3
    const/4 v14, 0x0

    #@db
    move-object/from16 v0, p3

    #@dd
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@e0
    goto :goto_3

    #@e1
    .line 128
    .end local v9    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_8
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@e4
    move-object/from16 v0, p2

    #@e6
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e9
    .line 129
    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    #@ec
    move-result-object v9

    #@ed
    .line 130
    .restart local v9    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f0
    .line 131
    if-eqz v9, :cond_4

    #@f2
    .line 132
    const/4 v14, 0x1

    #@f3
    move-object/from16 v0, p3

    #@f5
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@f8
    .line 133
    const/4 v14, 0x1

    #@f9
    move-object/from16 v0, p3

    #@fb
    invoke-virtual {v9, v0, v14}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@fe
    .line 138
    :goto_4
    const/4 v14, 0x1

    #@ff
    return v14

    #@100
    .line 136
    :cond_4
    const/4 v14, 0x0

    #@101
    move-object/from16 v0, p3

    #@103
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@106
    goto :goto_4

    #@107
    .line 142
    .end local v9    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_9
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@10a
    move-object/from16 v0, p2

    #@10c
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10f
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@112
    move-result-object v2

    #@113
    .line 145
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->containsCaAlias(Ljava/lang/String;)Z

    #@116
    move-result v12

    #@117
    .line 146
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11a
    .line 147
    if-eqz v12, :cond_5

    #@11c
    const/4 v14, 0x1

    #@11d
    :goto_5
    move-object/from16 v0, p3

    #@11f
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@122
    .line 148
    const/4 v14, 0x1

    #@123
    return v14

    #@124
    .line 147
    :cond_5
    const/4 v14, 0x0

    #@125
    goto :goto_5

    #@126
    .line 152
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_a
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@129
    move-object/from16 v0, p2

    #@12b
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12e
    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@131
    move-result-object v2

    #@132
    .line 156
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@135
    move-result v14

    #@136
    if-eqz v14, :cond_6

    #@138
    const/4 v5, 0x1

    #@139
    .line 157
    .local v5, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v2, v5}, Landroid/security/IKeyChainService$Stub;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    #@13c
    move-result-object v13

    #@13d
    .line 158
    .restart local v13    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@140
    .line 159
    move-object/from16 v0, p3

    #@142
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    #@145
    .line 160
    const/4 v14, 0x1

    #@146
    return v14

    #@147
    .line 156
    .end local v5    # "_arg1":Z
    .end local v13    # "_result":[B
    :cond_6
    const/4 v5, 0x0

    #@148
    .restart local v5    # "_arg1":Z
    goto :goto_6

    #@149
    .line 164
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Z
    :sswitch_b
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@14c
    move-object/from16 v0, p2

    #@14e
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@151
    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@154
    move-result-object v2

    #@155
    .line 168
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@158
    move-result v14

    #@159
    if-eqz v14, :cond_7

    #@15b
    const/4 v5, 0x1

    #@15c
    .line 169
    .restart local v5    # "_arg1":Z
    :goto_7
    invoke-virtual {p0, v2, v5}, Landroid/security/IKeyChainService$Stub;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    #@15f
    move-result-object v11

    #@160
    .line 170
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@163
    .line 171
    move-object/from16 v0, p3

    #@165
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@168
    .line 172
    const/4 v14, 0x1

    #@169
    return v14

    #@16a
    .line 168
    .end local v5    # "_arg1":Z
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const/4 v5, 0x0

    #@16b
    .restart local v5    # "_arg1":Z
    goto :goto_7

    #@16c
    .line 176
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Z
    :sswitch_c
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@16f
    move-object/from16 v0, p2

    #@171
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@174
    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@177
    move-result v1

    #@178
    .line 180
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17b
    move-result-object v4

    #@17c
    .line 182
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17f
    move-result v14

    #@180
    if-eqz v14, :cond_8

    #@182
    const/4 v8, 0x1

    #@183
    .line 183
    .local v8, "_arg2":Z
    :goto_8
    invoke-virtual {p0, v1, v4, v8}, Landroid/security/IKeyChainService$Stub;->setGrant(ILjava/lang/String;Z)V

    #@186
    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@189
    .line 185
    const/4 v14, 0x1

    #@18a
    return v14

    #@18b
    .line 182
    .end local v8    # "_arg2":Z
    :cond_8
    const/4 v8, 0x0

    #@18c
    .restart local v8    # "_arg2":Z
    goto :goto_8

    #@18d
    .line 189
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Z
    :sswitch_d
    const-string/jumbo v14, "android.security.IKeyChainService"

    #@190
    move-object/from16 v0, p2

    #@192
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@195
    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@198
    move-result v1

    #@199
    .line 193
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19c
    move-result-object v4

    #@19d
    .line 194
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/security/IKeyChainService$Stub;->hasGrant(ILjava/lang/String;)Z

    #@1a0
    move-result v12

    #@1a1
    .line 195
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a4
    .line 196
    if-eqz v12, :cond_9

    #@1a6
    const/4 v14, 0x1

    #@1a7
    :goto_9
    move-object/from16 v0, p3

    #@1a9
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    #@1ac
    .line 197
    const/4 v14, 0x1

    #@1ad
    return v14

    #@1ae
    .line 196
    :cond_9
    const/4 v14, 0x0

    #@1af
    goto :goto_9

    #@1b0
    .line 44
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

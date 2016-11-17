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

.field static final TRANSACTION_containsCaAlias:I = 0xb

.field static final TRANSACTION_deleteCaCertificate:I = 0x7

.field static final TRANSACTION_getCaCertificateChainAliases:I = 0xd

.field static final TRANSACTION_getCaCertificates:I = 0x3

.field static final TRANSACTION_getCertificate:I = 0x2

.field static final TRANSACTION_getEncodedCaCertificate:I = 0xc

.field static final TRANSACTION_getSystemCaAliases:I = 0xa

.field static final TRANSACTION_getUserCaAliases:I = 0x9

.field static final TRANSACTION_hasGrant:I = 0xf

.field static final TRANSACTION_installCaCertificate:I = 0x4

.field static final TRANSACTION_installKeyPair:I = 0x5

.field static final TRANSACTION_removeKeyPair:I = 0x6

.field static final TRANSACTION_requestPrivateKey:I = 0x1

.field static final TRANSACTION_reset:I = 0x8

.field static final TRANSACTION_setGrant:I = 0xe


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
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 222
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v15

    #@7
    return v15

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    const/4 v15, 0x1

    #@11
    return v15

    #@12
    .line 53
    :sswitch_1
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 56
    .local v2, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v11

    #@24
    .line 57
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 58
    move-object/from16 v0, p3

    #@29
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2c
    .line 59
    const/4 v15, 0x1

    #@2d
    return v15

    #@2e
    .line 63
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 66
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3c
    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->getCertificate(Ljava/lang/String;)[B

    #@3f
    move-result-object v14

    #@40
    .line 67
    .local v14, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43
    .line 68
    move-object/from16 v0, p3

    #@45
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    #@48
    .line 69
    const/4 v15, 0x1

    #@49
    return v15

    #@4a
    .line 73
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":[B
    :sswitch_3
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 76
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@58
    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->getCaCertificates(Ljava/lang/String;)[B

    #@5b
    move-result-object v14

    #@5c
    .line 77
    .restart local v14    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f
    .line 78
    move-object/from16 v0, p3

    #@61
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    #@64
    .line 79
    const/4 v15, 0x1

    #@65
    return v15

    #@66
    .line 83
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":[B
    :sswitch_4
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@69
    move-object/from16 v0, p2

    #@6b
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@71
    move-result-object v3

    #@72
    .line 86
    .local v3, "_arg0":[B
    move-object/from16 v0, p0

    #@74
    invoke-virtual {v0, v3}, Landroid/security/IKeyChainService$Stub;->installCaCertificate([B)V

    #@77
    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7a
    .line 88
    const/4 v15, 0x1

    #@7b
    return v15

    #@7c
    .line 92
    .end local v3    # "_arg0":[B
    :sswitch_5
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@7f
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@87
    move-result-object v3

    #@88
    .line 96
    .restart local v3    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@8b
    move-result-object v6

    #@8c
    .line 98
    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@8f
    move-result-object v8

    #@90
    .line 100
    .local v8, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@93
    move-result-object v9

    #@94
    .line 101
    .local v9, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@96
    invoke-virtual {v0, v3, v6, v8, v9}, Landroid/security/IKeyChainService$Stub;->installKeyPair([B[B[BLjava/lang/String;)Z

    #@99
    move-result v13

    #@9a
    .line 102
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9d
    .line 103
    if-eqz v13, :cond_0

    #@9f
    const/4 v15, 0x1

    #@a0
    :goto_0
    move-object/from16 v0, p3

    #@a2
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@a5
    .line 104
    const/4 v15, 0x1

    #@a6
    return v15

    #@a7
    .line 103
    :cond_0
    const/4 v15, 0x0

    #@a8
    goto :goto_0

    #@a9
    .line 108
    .end local v3    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v8    # "_arg2":[B
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_6
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@ac
    move-object/from16 v0, p2

    #@ae
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b1
    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b4
    move-result-object v2

    #@b5
    .line 111
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b7
    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->removeKeyPair(Ljava/lang/String;)Z

    #@ba
    move-result v13

    #@bb
    .line 112
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@be
    .line 113
    if-eqz v13, :cond_1

    #@c0
    const/4 v15, 0x1

    #@c1
    :goto_1
    move-object/from16 v0, p3

    #@c3
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@c6
    .line 114
    const/4 v15, 0x1

    #@c7
    return v15

    #@c8
    .line 113
    :cond_1
    const/4 v15, 0x0

    #@c9
    goto :goto_1

    #@ca
    .line 118
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_7
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@cd
    move-object/from16 v0, p2

    #@cf
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d5
    move-result-object v2

    #@d6
    .line 121
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d8
    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->deleteCaCertificate(Ljava/lang/String;)Z

    #@db
    move-result v13

    #@dc
    .line 122
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    .line 123
    if-eqz v13, :cond_2

    #@e1
    const/4 v15, 0x1

    #@e2
    :goto_2
    move-object/from16 v0, p3

    #@e4
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@e7
    .line 124
    const/4 v15, 0x1

    #@e8
    return v15

    #@e9
    .line 123
    :cond_2
    const/4 v15, 0x0

    #@ea
    goto :goto_2

    #@eb
    .line 128
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_8
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@ee
    move-object/from16 v0, p2

    #@f0
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3
    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->reset()Z

    #@f6
    move-result v13

    #@f7
    .line 130
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fa
    .line 131
    if-eqz v13, :cond_3

    #@fc
    const/4 v15, 0x1

    #@fd
    :goto_3
    move-object/from16 v0, p3

    #@ff
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@102
    .line 132
    const/4 v15, 0x1

    #@103
    return v15

    #@104
    .line 131
    :cond_3
    const/4 v15, 0x0

    #@105
    goto :goto_3

    #@106
    .line 136
    .end local v13    # "_result":Z
    :sswitch_9
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@109
    move-object/from16 v0, p2

    #@10b
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10e
    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    #@111
    move-result-object v10

    #@112
    .line 138
    .local v10, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@115
    .line 139
    if-eqz v10, :cond_4

    #@117
    .line 140
    const/4 v15, 0x1

    #@118
    move-object/from16 v0, p3

    #@11a
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@11d
    .line 141
    const/4 v15, 0x1

    #@11e
    move-object/from16 v0, p3

    #@120
    invoke-virtual {v10, v0, v15}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@123
    .line 146
    :goto_4
    const/4 v15, 0x1

    #@124
    return v15

    #@125
    .line 144
    :cond_4
    const/4 v15, 0x0

    #@126
    move-object/from16 v0, p3

    #@128
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@12b
    goto :goto_4

    #@12c
    .line 150
    .end local v10    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_a
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@12f
    move-object/from16 v0, p2

    #@131
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@134
    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    #@137
    move-result-object v10

    #@138
    .line 152
    .restart local v10    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13b
    .line 153
    if-eqz v10, :cond_5

    #@13d
    .line 154
    const/4 v15, 0x1

    #@13e
    move-object/from16 v0, p3

    #@140
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@143
    .line 155
    const/4 v15, 0x1

    #@144
    move-object/from16 v0, p3

    #@146
    invoke-virtual {v10, v0, v15}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@149
    .line 160
    :goto_5
    const/4 v15, 0x1

    #@14a
    return v15

    #@14b
    .line 158
    :cond_5
    const/4 v15, 0x0

    #@14c
    move-object/from16 v0, p3

    #@14e
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@151
    goto :goto_5

    #@152
    .line 164
    .end local v10    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_b
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@155
    move-object/from16 v0, p2

    #@157
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15a
    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15d
    move-result-object v2

    #@15e
    .line 167
    .restart local v2    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@160
    invoke-virtual {v0, v2}, Landroid/security/IKeyChainService$Stub;->containsCaAlias(Ljava/lang/String;)Z

    #@163
    move-result v13

    #@164
    .line 168
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@167
    .line 169
    if-eqz v13, :cond_6

    #@169
    const/4 v15, 0x1

    #@16a
    :goto_6
    move-object/from16 v0, p3

    #@16c
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@16f
    .line 170
    const/4 v15, 0x1

    #@170
    return v15

    #@171
    .line 169
    :cond_6
    const/4 v15, 0x0

    #@172
    goto :goto_6

    #@173
    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_c
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@176
    move-object/from16 v0, p2

    #@178
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17b
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17e
    move-result-object v2

    #@17f
    .line 178
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@182
    move-result v15

    #@183
    if-eqz v15, :cond_7

    #@185
    const/4 v5, 0x1

    #@186
    .line 179
    .local v5, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    #@188
    invoke-virtual {v0, v2, v5}, Landroid/security/IKeyChainService$Stub;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    #@18b
    move-result-object v14

    #@18c
    .line 180
    .restart local v14    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18f
    .line 181
    move-object/from16 v0, p3

    #@191
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeByteArray([B)V

    #@194
    .line 182
    const/4 v15, 0x1

    #@195
    return v15

    #@196
    .line 178
    .end local v5    # "_arg1":Z
    .end local v14    # "_result":[B
    :cond_7
    const/4 v5, 0x0

    #@197
    goto :goto_7

    #@198
    .line 186
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@19b
    move-object/from16 v0, p2

    #@19d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a0
    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a3
    move-result-object v2

    #@1a4
    .line 190
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a7
    move-result v15

    #@1a8
    if-eqz v15, :cond_8

    #@1aa
    const/4 v5, 0x1

    #@1ab
    .line 191
    .restart local v5    # "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    #@1ad
    invoke-virtual {v0, v2, v5}, Landroid/security/IKeyChainService$Stub;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    #@1b0
    move-result-object v12

    #@1b1
    .line 192
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b4
    .line 193
    move-object/from16 v0, p3

    #@1b6
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1b9
    .line 194
    const/4 v15, 0x1

    #@1ba
    return v15

    #@1bb
    .line 190
    .end local v5    # "_arg1":Z
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const/4 v5, 0x0

    #@1bc
    goto :goto_8

    #@1bd
    .line 198
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@1c0
    move-object/from16 v0, p2

    #@1c2
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c5
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c8
    move-result v1

    #@1c9
    .line 202
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1cc
    move-result-object v4

    #@1cd
    .line 204
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d0
    move-result v15

    #@1d1
    if-eqz v15, :cond_9

    #@1d3
    const/4 v7, 0x1

    #@1d4
    .line 205
    .local v7, "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    #@1d6
    invoke-virtual {v0, v1, v4, v7}, Landroid/security/IKeyChainService$Stub;->setGrant(ILjava/lang/String;Z)V

    #@1d9
    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dc
    .line 207
    const/4 v15, 0x1

    #@1dd
    return v15

    #@1de
    .line 204
    .end local v7    # "_arg2":Z
    :cond_9
    const/4 v7, 0x0

    #@1df
    goto :goto_9

    #@1e0
    .line 211
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v15, "android.security.IKeyChainService"

    #@1e3
    move-object/from16 v0, p2

    #@1e5
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e8
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1eb
    move-result v1

    #@1ec
    .line 215
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ef
    move-result-object v4

    #@1f0
    .line 216
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f2
    invoke-virtual {v0, v1, v4}, Landroid/security/IKeyChainService$Stub;->hasGrant(ILjava/lang/String;)Z

    #@1f5
    move-result v13

    #@1f6
    .line 217
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f9
    .line 218
    if-eqz v13, :cond_a

    #@1fb
    const/4 v15, 0x1

    #@1fc
    :goto_a
    move-object/from16 v0, p3

    #@1fe
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    #@201
    .line 219
    const/4 v15, 0x1

    #@202
    return v15

    #@203
    .line 218
    :cond_a
    const/4 v15, 0x0

    #@204
    goto :goto_a

    #@205
    .line 44
    nop

    #@206
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Landroid/security/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IKeystoreService"

.field static final TRANSACTION_abort:I = 0x1f

.field static final TRANSACTION_addAuthToken:I = 0x21

.field static final TRANSACTION_addRngEntropy:I = 0x17

.field static final TRANSACTION_begin:I = 0x1c

.field static final TRANSACTION_clear_uid:I = 0x16

.field static final TRANSACTION_del:I = 0x4

.field static final TRANSACTION_duplicate:I = 0x14

.field static final TRANSACTION_exist:I = 0x5

.field static final TRANSACTION_exportKey:I = 0x1b

.field static final TRANSACTION_finish:I = 0x1e

.field static final TRANSACTION_generate:I = 0xc

.field static final TRANSACTION_generateKey:I = 0x18

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getKeyCharacteristics:I = 0x19

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_get_pubkey:I = 0x10

.field static final TRANSACTION_getmtime:I = 0x13

.field static final TRANSACTION_grant:I = 0x11

.field static final TRANSACTION_importKey:I = 0x1a

.field static final TRANSACTION_import_key:I = 0xd

.field static final TRANSACTION_insert:I = 0x3

.field static final TRANSACTION_isEmpty:I = 0xb

.field static final TRANSACTION_isOperationAuthorized:I = 0x20

.field static final TRANSACTION_is_hardware_backed:I = 0x15

.field static final TRANSACTION_list:I = 0x6

.field static final TRANSACTION_lock:I = 0x9

.field static final TRANSACTION_onUserAdded:I = 0x22

.field static final TRANSACTION_onUserPasswordChanged:I = 0x8

.field static final TRANSACTION_onUserRemoved:I = 0x23

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_sign:I = 0xe

.field static final TRANSACTION_ungrant:I = 0x12

.field static final TRANSACTION_unlock:I = 0xa

.field static final TRANSACTION_update:I = 0x1d

.field static final TRANSACTION_verify:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.security.IKeystoreService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/security/IKeystoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
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
    const-string/jumbo v1, "android.security.IKeystoreService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/security/IKeystoreService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/security/IKeystoreService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/security/IKeystoreService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/security/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 51
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
    .line 599
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 53
    :sswitch_1
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v33

    #@1e
    .line 56
    .local v33, "_arg0":I
    move-object/from16 v0, p0

    #@20
    move/from16 v1, v33

    #@22
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->getState(I)I

    #@25
    move-result v43

    #@26
    .line 57
    .local v43, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 58
    move-object/from16 v0, p3

    #@2b
    move/from16 v1, v43

    #@2d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 59
    const/4 v4, 0x1

    #@31
    return v4

    #@32
    .line 63
    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@35
    move-object/from16 v0, p2

    #@37
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 66
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v5}, Landroid/security/IKeystoreService$Stub;->get(Ljava/lang/String;)[B

    #@43
    move-result-object v49

    #@44
    .line 67
    .local v49, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@47
    .line 68
    move-object/from16 v0, p3

    #@49
    move-object/from16 v1, v49

    #@4b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@4e
    .line 69
    const/4 v4, 0x1

    #@4f
    return v4

    #@50
    .line 73
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":[B
    :sswitch_3
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@53
    move-object/from16 v0, p2

    #@55
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58
    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 77
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@5f
    move-result-object v38

    #@60
    .line 79
    .local v38, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v7

    #@64
    .line 81
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v8

    #@68
    .line 82
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    #@6a
    move-object/from16 v1, v38

    #@6c
    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/security/IKeystoreService$Stub;->insert(Ljava/lang/String;[BII)I

    #@6f
    move-result v43

    #@70
    .line 83
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@73
    .line 84
    move-object/from16 v0, p3

    #@75
    move/from16 v1, v43

    #@77
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 85
    const/4 v4, 0x1

    #@7b
    return v4

    #@7c
    .line 89
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_arg1":[B
    .end local v43    # "_result":I
    :sswitch_4
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@7f
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    .line 93
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v6

    #@8c
    .line 94
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    #@8e
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->del(Ljava/lang/String;I)I

    #@91
    move-result v43

    #@92
    .line 95
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@95
    .line 96
    move-object/from16 v0, p3

    #@97
    move/from16 v1, v43

    #@99
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9c
    .line 97
    const/4 v4, 0x1

    #@9d
    return v4

    #@9e
    .line 101
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v43    # "_result":I
    :sswitch_5
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@a1
    move-object/from16 v0, p2

    #@a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a9
    move-result-object v5

    #@aa
    .line 105
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v6

    #@ae
    .line 106
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@b0
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->exist(Ljava/lang/String;I)I

    #@b3
    move-result v43

    #@b4
    .line 107
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b7
    .line 108
    move-object/from16 v0, p3

    #@b9
    move/from16 v1, v43

    #@bb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@be
    .line 109
    const/4 v4, 0x1

    #@bf
    return v4

    #@c0
    .line 113
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v43    # "_result":I
    :sswitch_6
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@c3
    move-object/from16 v0, p2

    #@c5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cb
    move-result-object v5

    #@cc
    .line 117
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cf
    move-result v6

    #@d0
    .line 118
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@d2
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->list(Ljava/lang/String;I)[Ljava/lang/String;

    #@d5
    move-result-object v50

    #@d6
    .line 119
    .local v50, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d9
    .line 120
    move-object/from16 v0, p3

    #@db
    move-object/from16 v1, v50

    #@dd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@e0
    .line 121
    const/4 v4, 0x1

    #@e1
    return v4

    #@e2
    .line 125
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v50    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@e5
    move-object/from16 v0, p2

    #@e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea
    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeystoreService$Stub;->reset()I

    #@ed
    move-result v43

    #@ee
    .line 127
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1
    .line 128
    move-object/from16 v0, p3

    #@f3
    move/from16 v1, v43

    #@f5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f8
    .line 129
    const/4 v4, 0x1

    #@f9
    return v4

    #@fa
    .line 133
    .end local v43    # "_result":I
    :sswitch_8
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@fd
    move-object/from16 v0, p2

    #@ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v33

    #@106
    .line 137
    .restart local v33    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@109
    move-result-object v28

    #@10a
    .line 138
    .local v28, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@10c
    move/from16 v1, v33

    #@10e
    move-object/from16 v2, v28

    #@110
    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreService$Stub;->onUserPasswordChanged(ILjava/lang/String;)I

    #@113
    move-result v43

    #@114
    .line 139
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 140
    move-object/from16 v0, p3

    #@119
    move/from16 v1, v43

    #@11b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11e
    .line 141
    const/4 v4, 0x1

    #@11f
    return v4

    #@120
    .line 145
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_9
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@123
    move-object/from16 v0, p2

    #@125
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@128
    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12b
    move-result v33

    #@12c
    .line 148
    .restart local v33    # "_arg0":I
    move-object/from16 v0, p0

    #@12e
    move/from16 v1, v33

    #@130
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->lock(I)I

    #@133
    move-result v43

    #@134
    .line 149
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@137
    .line 150
    move-object/from16 v0, p3

    #@139
    move/from16 v1, v43

    #@13b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13e
    .line 151
    const/4 v4, 0x1

    #@13f
    return v4

    #@140
    .line 155
    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@143
    move-object/from16 v0, p2

    #@145
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@148
    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14b
    move-result v33

    #@14c
    .line 159
    .restart local v33    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14f
    move-result-object v28

    #@150
    .line 160
    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@152
    move/from16 v1, v33

    #@154
    move-object/from16 v2, v28

    #@156
    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreService$Stub;->unlock(ILjava/lang/String;)I

    #@159
    move-result v43

    #@15a
    .line 161
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15d
    .line 162
    move-object/from16 v0, p3

    #@15f
    move/from16 v1, v43

    #@161
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@164
    .line 163
    const/4 v4, 0x1

    #@165
    return v4

    #@166
    .line 167
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@169
    move-object/from16 v0, p2

    #@16b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16e
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@171
    move-result v33

    #@172
    .line 170
    .restart local v33    # "_arg0":I
    move-object/from16 v0, p0

    #@174
    move/from16 v1, v33

    #@176
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->isEmpty(I)I

    #@179
    move-result v43

    #@17a
    .line 171
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17d
    .line 172
    move-object/from16 v0, p3

    #@17f
    move/from16 v1, v43

    #@181
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@184
    .line 173
    const/4 v4, 0x1

    #@185
    return v4

    #@186
    .line 177
    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@189
    move-object/from16 v0, p2

    #@18b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18e
    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@191
    move-result-object v5

    #@192
    .line 181
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@195
    move-result v6

    #@196
    .line 183
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@199
    move-result v7

    #@19a
    .line 185
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19d
    move-result v8

    #@19e
    .line 187
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a1
    move-result v9

    #@1a2
    .line 189
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a5
    move-result v4

    #@1a6
    if-eqz v4, :cond_0

    #@1a8
    .line 190
    sget-object v4, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1aa
    move-object/from16 v0, p2

    #@1ac
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1af
    move-result-object v10

    #@1b0
    check-cast v10, Landroid/security/KeystoreArguments;

    #@1b2
    :goto_0
    move-object/from16 v4, p0

    #@1b4
    .line 195
    invoke-virtual/range {v4 .. v10}, Landroid/security/IKeystoreService$Stub;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    #@1b7
    move-result v43

    #@1b8
    .line 196
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bb
    .line 197
    move-object/from16 v0, p3

    #@1bd
    move/from16 v1, v43

    #@1bf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c2
    .line 198
    const/4 v4, 0x1

    #@1c3
    return v4

    #@1c4
    .line 193
    .end local v43    # "_result":I
    :cond_0
    const/4 v10, 0x0

    #@1c5
    .local v10, "_arg5":Landroid/security/KeystoreArguments;
    goto :goto_0

    #@1c6
    .line 202
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/security/KeystoreArguments;
    :sswitch_d
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d1
    move-result-object v5

    #@1d2
    .line 206
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@1d5
    move-result-object v38

    #@1d6
    .line 208
    .restart local v38    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d9
    move-result v7

    #@1da
    .line 210
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dd
    move-result v8

    #@1de
    .line 211
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@1e0
    move-object/from16 v1, v38

    #@1e2
    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/security/IKeystoreService$Stub;->import_key(Ljava/lang/String;[BII)I

    #@1e5
    move-result v43

    #@1e6
    .line 212
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e9
    .line 213
    move-object/from16 v0, p3

    #@1eb
    move/from16 v1, v43

    #@1ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f0
    .line 214
    const/4 v4, 0x1

    #@1f1
    return v4

    #@1f2
    .line 218
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_arg1":[B
    .end local v43    # "_result":I
    :sswitch_e
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@1f5
    move-object/from16 v0, p2

    #@1f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fa
    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1fd
    move-result-object v5

    #@1fe
    .line 222
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@201
    move-result-object v38

    #@202
    .line 223
    .restart local v38    # "_arg1":[B
    move-object/from16 v0, p0

    #@204
    move-object/from16 v1, v38

    #@206
    invoke-virtual {v0, v5, v1}, Landroid/security/IKeystoreService$Stub;->sign(Ljava/lang/String;[B)[B

    #@209
    move-result-object v49

    #@20a
    .line 224
    .restart local v49    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20d
    .line 225
    move-object/from16 v0, p3

    #@20f
    move-object/from16 v1, v49

    #@211
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@214
    .line 226
    const/4 v4, 0x1

    #@215
    return v4

    #@216
    .line 230
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v38    # "_arg1":[B
    .end local v49    # "_result":[B
    :sswitch_f
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@219
    move-object/from16 v0, p2

    #@21b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21e
    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@221
    move-result-object v5

    #@222
    .line 234
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@225
    move-result-object v38

    #@226
    .line 236
    .restart local v38    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@229
    move-result-object v14

    #@22a
    .line 237
    .local v14, "_arg2":[B
    move-object/from16 v0, p0

    #@22c
    move-object/from16 v1, v38

    #@22e
    invoke-virtual {v0, v5, v1, v14}, Landroid/security/IKeystoreService$Stub;->verify(Ljava/lang/String;[B[B)I

    #@231
    move-result v43

    #@232
    .line 238
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@235
    .line 239
    move-object/from16 v0, p3

    #@237
    move/from16 v1, v43

    #@239
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23c
    .line 240
    const/4 v4, 0x1

    #@23d
    return v4

    #@23e
    .line 244
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg2":[B
    .end local v38    # "_arg1":[B
    .end local v43    # "_result":I
    :sswitch_10
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@241
    move-object/from16 v0, p2

    #@243
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@246
    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@249
    move-result-object v5

    #@24a
    .line 247
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@24c
    invoke-virtual {v0, v5}, Landroid/security/IKeystoreService$Stub;->get_pubkey(Ljava/lang/String;)[B

    #@24f
    move-result-object v49

    #@250
    .line 248
    .restart local v49    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@253
    .line 249
    move-object/from16 v0, p3

    #@255
    move-object/from16 v1, v49

    #@257
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@25a
    .line 250
    const/4 v4, 0x1

    #@25b
    return v4

    #@25c
    .line 254
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":[B
    :sswitch_11
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@25f
    move-object/from16 v0, p2

    #@261
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@264
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@267
    move-result-object v5

    #@268
    .line 258
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26b
    move-result v6

    #@26c
    .line 259
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@26e
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->grant(Ljava/lang/String;I)I

    #@271
    move-result v43

    #@272
    .line 260
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@275
    .line 261
    move-object/from16 v0, p3

    #@277
    move/from16 v1, v43

    #@279
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@27c
    .line 262
    const/4 v4, 0x1

    #@27d
    return v4

    #@27e
    .line 266
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v43    # "_result":I
    :sswitch_12
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@281
    move-object/from16 v0, p2

    #@283
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@286
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@289
    move-result-object v5

    #@28a
    .line 270
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28d
    move-result v6

    #@28e
    .line 271
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@290
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->ungrant(Ljava/lang/String;I)I

    #@293
    move-result v43

    #@294
    .line 272
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@297
    .line 273
    move-object/from16 v0, p3

    #@299
    move/from16 v1, v43

    #@29b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29e
    .line 274
    const/4 v4, 0x1

    #@29f
    return v4

    #@2a0
    .line 278
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v43    # "_result":I
    :sswitch_13
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@2a3
    move-object/from16 v0, p2

    #@2a5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a8
    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ab
    move-result-object v5

    #@2ac
    .line 281
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2ae
    invoke-virtual {v0, v5}, Landroid/security/IKeystoreService$Stub;->getmtime(Ljava/lang/String;)J

    #@2b1
    move-result-wide v44

    #@2b2
    .line 282
    .local v44, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b5
    .line 283
    move-object/from16 v0, p3

    #@2b7
    move-wide/from16 v1, v44

    #@2b9
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@2bc
    .line 284
    const/4 v4, 0x1

    #@2bd
    return v4

    #@2be
    .line 288
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":J
    :sswitch_14
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@2c1
    move-object/from16 v0, p2

    #@2c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c6
    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c9
    move-result-object v5

    #@2ca
    .line 292
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cd
    move-result v6

    #@2ce
    .line 294
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d1
    move-result-object v40

    #@2d2
    .line 296
    .local v40, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d5
    move-result v8

    #@2d6
    .line 297
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@2d8
    move-object/from16 v1, v40

    #@2da
    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/security/IKeystoreService$Stub;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I

    #@2dd
    move-result v43

    #@2de
    .line 298
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e1
    .line 299
    move-object/from16 v0, p3

    #@2e3
    move/from16 v1, v43

    #@2e5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e8
    .line 300
    const/4 v4, 0x1

    #@2e9
    return v4

    #@2ea
    .line 304
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v40    # "_arg2":Ljava/lang/String;
    .end local v43    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@2ed
    move-object/from16 v0, p2

    #@2ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f2
    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f5
    move-result-object v5

    #@2f6
    .line 307
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2f8
    invoke-virtual {v0, v5}, Landroid/security/IKeystoreService$Stub;->is_hardware_backed(Ljava/lang/String;)I

    #@2fb
    move-result v43

    #@2fc
    .line 308
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ff
    .line 309
    move-object/from16 v0, p3

    #@301
    move/from16 v1, v43

    #@303
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@306
    .line 310
    const/4 v4, 0x1

    #@307
    return v4

    #@308
    .line 314
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":I
    :sswitch_16
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@30b
    move-object/from16 v0, p2

    #@30d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@310
    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@313
    move-result-wide v34

    #@314
    .line 317
    .local v34, "_arg0":J
    move-object/from16 v0, p0

    #@316
    move-wide/from16 v1, v34

    #@318
    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreService$Stub;->clear_uid(J)I

    #@31b
    move-result v43

    #@31c
    .line 318
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@31f
    .line 319
    move-object/from16 v0, p3

    #@321
    move/from16 v1, v43

    #@323
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@326
    .line 320
    const/4 v4, 0x1

    #@327
    return v4

    #@328
    .line 324
    .end local v34    # "_arg0":J
    .end local v43    # "_result":I
    :sswitch_17
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@32b
    move-object/from16 v0, p2

    #@32d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@330
    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@333
    move-result-object v36

    #@334
    .line 327
    .local v36, "_arg0":[B
    move-object/from16 v0, p0

    #@336
    move-object/from16 v1, v36

    #@338
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->addRngEntropy([B)I

    #@33b
    move-result v43

    #@33c
    .line 328
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33f
    .line 329
    move-object/from16 v0, p3

    #@341
    move/from16 v1, v43

    #@343
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@346
    .line 330
    const/4 v4, 0x1

    #@347
    return v4

    #@348
    .line 334
    .end local v36    # "_arg0":[B
    .end local v43    # "_result":I
    :sswitch_18
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@34b
    move-object/from16 v0, p2

    #@34d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@350
    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@353
    move-result-object v5

    #@354
    .line 338
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@357
    move-result v4

    #@358
    if-eqz v4, :cond_1

    #@35a
    .line 339
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@35c
    move-object/from16 v0, p2

    #@35e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@361
    move-result-object v13

    #@362
    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    #@364
    .line 345
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@367
    move-result-object v14

    #@368
    .line 347
    .restart local v14    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36b
    move-result v8

    #@36c
    .line 349
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36f
    move-result v9

    #@370
    .line 351
    .restart local v9    # "_arg4":I
    new-instance v17, Landroid/security/keymaster/KeyCharacteristics;

    #@372
    invoke-direct/range {v17 .. v17}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@375
    .local v17, "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v11, p0

    #@377
    move-object v12, v5

    #@378
    move v15, v8

    #@379
    move/from16 v16, v9

    #@37b
    .line 352
    invoke-virtual/range {v11 .. v17}, Landroid/security/IKeystoreService$Stub;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    #@37e
    move-result v43

    #@37f
    .line 353
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@382
    .line 354
    move-object/from16 v0, p3

    #@384
    move/from16 v1, v43

    #@386
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@389
    .line 355
    if-eqz v17, :cond_2

    #@38b
    .line 356
    const/4 v4, 0x1

    #@38c
    move-object/from16 v0, p3

    #@38e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@391
    .line 357
    const/4 v4, 0x1

    #@392
    move-object/from16 v0, v17

    #@394
    move-object/from16 v1, p3

    #@396
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    #@399
    .line 362
    :goto_2
    const/4 v4, 0x1

    #@39a
    return v4

    #@39b
    .line 342
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":[B
    .end local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :cond_1
    const/4 v13, 0x0

    #@39c
    .local v13, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_1

    #@39d
    .line 360
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v14    # "_arg2":[B
    .restart local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v43    # "_result":I
    :cond_2
    const/4 v4, 0x0

    #@39e
    move-object/from16 v0, p3

    #@3a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3a3
    goto :goto_2

    #@3a4
    .line 366
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":[B
    .end local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :sswitch_19
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@3a7
    move-object/from16 v0, p2

    #@3a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ac
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3af
    move-result-object v5

    #@3b0
    .line 370
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b3
    move-result v4

    #@3b4
    if-eqz v4, :cond_3

    #@3b6
    .line 371
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b8
    move-object/from16 v0, p2

    #@3ba
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3bd
    move-result-object v37

    #@3be
    check-cast v37, Landroid/security/keymaster/KeymasterBlob;

    #@3c0
    .line 377
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c3
    move-result v4

    #@3c4
    if-eqz v4, :cond_4

    #@3c6
    .line 378
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c8
    move-object/from16 v0, p2

    #@3ca
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3cd
    move-result-object v39

    #@3ce
    check-cast v39, Landroid/security/keymaster/KeymasterBlob;

    #@3d0
    .line 384
    :goto_4
    new-instance v41, Landroid/security/keymaster/KeyCharacteristics;

    #@3d2
    invoke-direct/range {v41 .. v41}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@3d5
    .line 385
    .local v41, "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v0, p0

    #@3d7
    move-object/from16 v1, v37

    #@3d9
    move-object/from16 v2, v39

    #@3db
    move-object/from16 v3, v41

    #@3dd
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/security/IKeystoreService$Stub;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    #@3e0
    move-result v43

    #@3e1
    .line 386
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e4
    .line 387
    move-object/from16 v0, p3

    #@3e6
    move/from16 v1, v43

    #@3e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3eb
    .line 388
    if-eqz v41, :cond_5

    #@3ed
    .line 389
    const/4 v4, 0x1

    #@3ee
    move-object/from16 v0, p3

    #@3f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3f3
    .line 390
    const/4 v4, 0x1

    #@3f4
    move-object/from16 v0, v41

    #@3f6
    move-object/from16 v1, p3

    #@3f8
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    #@3fb
    .line 395
    :goto_5
    const/4 v4, 0x1

    #@3fc
    return v4

    #@3fd
    .line 374
    .end local v41    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :cond_3
    const/16 v37, 0x0

    #@3ff
    .local v37, "_arg1":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_3

    #@400
    .line 381
    .end local v37    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    :cond_4
    const/16 v39, 0x0

    #@402
    .local v39, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_4

    #@403
    .line 393
    .end local v39    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .restart local v41    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v43    # "_result":I
    :cond_5
    const/4 v4, 0x0

    #@404
    move-object/from16 v0, p3

    #@406
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@409
    goto :goto_5

    #@40a
    .line 399
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :sswitch_1a
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@40d
    move-object/from16 v0, p2

    #@40f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@412
    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@415
    move-result-object v5

    #@416
    .line 403
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@419
    move-result v4

    #@41a
    if-eqz v4, :cond_6

    #@41c
    .line 404
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41e
    move-object/from16 v0, p2

    #@420
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@423
    move-result-object v13

    #@424
    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    #@426
    .line 410
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@429
    move-result v7

    #@42a
    .line 412
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@42d
    move-result-object v22

    #@42e
    .line 414
    .local v22, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@431
    move-result v9

    #@432
    .line 416
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@435
    move-result v24

    #@436
    .line 418
    .local v24, "_arg5":I
    new-instance v25, Landroid/security/keymaster/KeyCharacteristics;

    #@438
    invoke-direct/range {v25 .. v25}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@43b
    .local v25, "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v18, p0

    #@43d
    move-object/from16 v19, v5

    #@43f
    move-object/from16 v20, v13

    #@441
    move/from16 v21, v7

    #@443
    move/from16 v23, v9

    #@445
    .line 419
    invoke-virtual/range {v18 .. v25}, Landroid/security/IKeystoreService$Stub;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    #@448
    move-result v43

    #@449
    .line 420
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44c
    .line 421
    move-object/from16 v0, p3

    #@44e
    move/from16 v1, v43

    #@450
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@453
    .line 422
    if-eqz v25, :cond_7

    #@455
    .line 423
    const/4 v4, 0x1

    #@456
    move-object/from16 v0, p3

    #@458
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@45b
    .line 424
    const/4 v4, 0x1

    #@45c
    move-object/from16 v0, v25

    #@45e
    move-object/from16 v1, p3

    #@460
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    #@463
    .line 429
    :goto_7
    const/4 v4, 0x1

    #@464
    return v4

    #@465
    .line 407
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v22    # "_arg3":[B
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :cond_6
    const/4 v13, 0x0

    #@466
    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_6

    #@467
    .line 427
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v7    # "_arg2":I
    .restart local v9    # "_arg4":I
    .restart local v22    # "_arg3":[B
    .restart local v24    # "_arg5":I
    .restart local v25    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v43    # "_result":I
    :cond_7
    const/4 v4, 0x0

    #@468
    move-object/from16 v0, p3

    #@46a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@46d
    goto :goto_7

    #@46e
    .line 433
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v22    # "_arg3":[B
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :sswitch_1b
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@471
    move-object/from16 v0, p2

    #@473
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@476
    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@479
    move-result-object v5

    #@47a
    .line 437
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47d
    move-result v6

    #@47e
    .line 439
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@481
    move-result v4

    #@482
    if-eqz v4, :cond_8

    #@484
    .line 440
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    #@486
    move-object/from16 v0, p2

    #@488
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@48b
    move-result-object v39

    #@48c
    check-cast v39, Landroid/security/keymaster/KeymasterBlob;

    #@48e
    .line 446
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@491
    move-result v4

    #@492
    if-eqz v4, :cond_9

    #@494
    .line 447
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    #@496
    move-object/from16 v0, p2

    #@498
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49b
    move-result-object v42

    #@49c
    check-cast v42, Landroid/security/keymaster/KeymasterBlob;

    #@49e
    .line 452
    :goto_9
    move-object/from16 v0, p0

    #@4a0
    move-object/from16 v1, v39

    #@4a2
    move-object/from16 v2, v42

    #@4a4
    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/security/IKeystoreService$Stub;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    #@4a7
    move-result-object v46

    #@4a8
    .line 453
    .local v46, "_result":Landroid/security/keymaster/ExportResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ab
    .line 454
    if-eqz v46, :cond_a

    #@4ad
    .line 455
    const/4 v4, 0x1

    #@4ae
    move-object/from16 v0, p3

    #@4b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b3
    .line 456
    const/4 v4, 0x1

    #@4b4
    move-object/from16 v0, v46

    #@4b6
    move-object/from16 v1, p3

    #@4b8
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/ExportResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@4bb
    .line 461
    :goto_a
    const/4 v4, 0x1

    #@4bc
    return v4

    #@4bd
    .line 443
    .end local v46    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_8
    const/16 v39, 0x0

    #@4bf
    .restart local v39    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_8

    #@4c0
    .line 450
    .end local v39    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :cond_9
    const/16 v42, 0x0

    #@4c2
    .local v42, "_arg3":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_9

    #@4c3
    .line 459
    .end local v42    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .restart local v46    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_a
    const/4 v4, 0x0

    #@4c4
    move-object/from16 v0, p3

    #@4c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c9
    goto :goto_a

    #@4ca
    .line 465
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v46    # "_result":Landroid/security/keymaster/ExportResult;
    :sswitch_1c
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@4cd
    move-object/from16 v0, p2

    #@4cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d2
    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4d5
    move-result-object v27

    #@4d6
    .line 469
    .local v27, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d9
    move-result-object v28

    #@4da
    .line 471
    .restart local v28    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4dd
    move-result v7

    #@4de
    .line 473
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e1
    move-result v4

    #@4e2
    if-eqz v4, :cond_b

    #@4e4
    const/16 v30, 0x1

    #@4e6
    .line 475
    .local v30, "_arg3":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e9
    move-result v4

    #@4ea
    if-eqz v4, :cond_c

    #@4ec
    .line 476
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4ee
    move-object/from16 v0, p2

    #@4f0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4f3
    move-result-object v31

    #@4f4
    check-cast v31, Landroid/security/keymaster/KeymasterArguments;

    #@4f6
    .line 482
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@4f9
    move-result-object v32

    #@4fa
    .local v32, "_arg5":[B
    move-object/from16 v26, p0

    #@4fc
    move/from16 v29, v7

    #@4fe
    .line 483
    invoke-virtual/range {v26 .. v32}, Landroid/security/IKeystoreService$Stub;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    #@501
    move-result-object v47

    #@502
    .line 484
    .local v47, "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@505
    .line 485
    if-eqz v47, :cond_d

    #@507
    .line 486
    const/4 v4, 0x1

    #@508
    move-object/from16 v0, p3

    #@50a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@50d
    .line 487
    const/4 v4, 0x1

    #@50e
    move-object/from16 v0, v47

    #@510
    move-object/from16 v1, p3

    #@512
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@515
    .line 492
    :goto_d
    const/4 v4, 0x1

    #@516
    return v4

    #@517
    .line 473
    .end local v30    # "_arg3":Z
    .end local v32    # "_arg5":[B
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_b
    const/16 v30, 0x0

    #@519
    .restart local v30    # "_arg3":Z
    goto :goto_b

    #@51a
    .line 479
    :cond_c
    const/16 v31, 0x0

    #@51c
    .local v31, "_arg4":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_c

    #@51d
    .line 490
    .end local v31    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .restart local v32    # "_arg5":[B
    .restart local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_d
    const/4 v4, 0x0

    #@51e
    move-object/from16 v0, p3

    #@520
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@523
    goto :goto_d

    #@524
    .line 496
    .end local v7    # "_arg2":I
    .end local v27    # "_arg0":Landroid/os/IBinder;
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg3":Z
    .end local v32    # "_arg5":[B
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1d
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@527
    move-object/from16 v0, p2

    #@529
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52c
    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@52f
    move-result-object v27

    #@530
    .line 500
    .restart local v27    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@533
    move-result v4

    #@534
    if-eqz v4, :cond_e

    #@536
    .line 501
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@538
    move-object/from16 v0, p2

    #@53a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@53d
    move-result-object v13

    #@53e
    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    #@540
    .line 507
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@543
    move-result-object v14

    #@544
    .line 508
    .restart local v14    # "_arg2":[B
    move-object/from16 v0, p0

    #@546
    move-object/from16 v1, v27

    #@548
    invoke-virtual {v0, v1, v13, v14}, Landroid/security/IKeystoreService$Stub;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    #@54b
    move-result-object v47

    #@54c
    .line 509
    .restart local v47    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54f
    .line 510
    if-eqz v47, :cond_f

    #@551
    .line 511
    const/4 v4, 0x1

    #@552
    move-object/from16 v0, p3

    #@554
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@557
    .line 512
    const/4 v4, 0x1

    #@558
    move-object/from16 v0, v47

    #@55a
    move-object/from16 v1, p3

    #@55c
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@55f
    .line 517
    :goto_f
    const/4 v4, 0x1

    #@560
    return v4

    #@561
    .line 504
    .end local v14    # "_arg2":[B
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_e
    const/4 v13, 0x0

    #@562
    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_e

    #@563
    .line 515
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v14    # "_arg2":[B
    .restart local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_f
    const/4 v4, 0x0

    #@564
    move-object/from16 v0, p3

    #@566
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@569
    goto :goto_f

    #@56a
    .line 521
    .end local v14    # "_arg2":[B
    .end local v27    # "_arg0":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1e
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@56d
    move-object/from16 v0, p2

    #@56f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@572
    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@575
    move-result-object v27

    #@576
    .line 525
    .restart local v27    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@579
    move-result v4

    #@57a
    if-eqz v4, :cond_10

    #@57c
    .line 526
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@57e
    move-object/from16 v0, p2

    #@580
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@583
    move-result-object v13

    #@584
    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    #@586
    .line 532
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@589
    move-result-object v14

    #@58a
    .line 534
    .restart local v14    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@58d
    move-result-object v22

    #@58e
    .line 535
    .restart local v22    # "_arg3":[B
    move-object/from16 v0, p0

    #@590
    move-object/from16 v1, v27

    #@592
    move-object/from16 v2, v22

    #@594
    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/security/IKeystoreService$Stub;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    #@597
    move-result-object v47

    #@598
    .line 536
    .restart local v47    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59b
    .line 537
    if-eqz v47, :cond_11

    #@59d
    .line 538
    const/4 v4, 0x1

    #@59e
    move-object/from16 v0, p3

    #@5a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5a3
    .line 539
    const/4 v4, 0x1

    #@5a4
    move-object/from16 v0, v47

    #@5a6
    move-object/from16 v1, p3

    #@5a8
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@5ab
    .line 544
    :goto_11
    const/4 v4, 0x1

    #@5ac
    return v4

    #@5ad
    .line 529
    .end local v14    # "_arg2":[B
    .end local v22    # "_arg3":[B
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_10
    const/4 v13, 0x0

    #@5ae
    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_10

    #@5af
    .line 542
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v14    # "_arg2":[B
    .restart local v22    # "_arg3":[B
    .restart local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_11
    const/4 v4, 0x0

    #@5b0
    move-object/from16 v0, p3

    #@5b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5b5
    goto :goto_11

    #@5b6
    .line 548
    .end local v14    # "_arg2":[B
    .end local v22    # "_arg3":[B
    .end local v27    # "_arg0":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1f
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@5b9
    move-object/from16 v0, p2

    #@5bb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5be
    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5c1
    move-result-object v27

    #@5c2
    .line 551
    .restart local v27    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5c4
    move-object/from16 v1, v27

    #@5c6
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->abort(Landroid/os/IBinder;)I

    #@5c9
    move-result v43

    #@5ca
    .line 552
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5cd
    .line 553
    move-object/from16 v0, p3

    #@5cf
    move/from16 v1, v43

    #@5d1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d4
    .line 554
    const/4 v4, 0x1

    #@5d5
    return v4

    #@5d6
    .line 558
    .end local v27    # "_arg0":Landroid/os/IBinder;
    .end local v43    # "_result":I
    :sswitch_20
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@5d9
    move-object/from16 v0, p2

    #@5db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5de
    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5e1
    move-result-object v27

    #@5e2
    .line 561
    .restart local v27    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5e4
    move-object/from16 v1, v27

    #@5e6
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->isOperationAuthorized(Landroid/os/IBinder;)Z

    #@5e9
    move-result v48

    #@5ea
    .line 562
    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ed
    .line 563
    if-eqz v48, :cond_12

    #@5ef
    const/4 v4, 0x1

    #@5f0
    :goto_12
    move-object/from16 v0, p3

    #@5f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5f5
    .line 564
    const/4 v4, 0x1

    #@5f6
    return v4

    #@5f7
    .line 563
    :cond_12
    const/4 v4, 0x0

    #@5f8
    goto :goto_12

    #@5f9
    .line 568
    .end local v27    # "_arg0":Landroid/os/IBinder;
    .end local v48    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@5fc
    move-object/from16 v0, p2

    #@5fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@601
    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@604
    move-result-object v36

    #@605
    .line 571
    .restart local v36    # "_arg0":[B
    move-object/from16 v0, p0

    #@607
    move-object/from16 v1, v36

    #@609
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->addAuthToken([B)I

    #@60c
    move-result v43

    #@60d
    .line 572
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@610
    .line 573
    move-object/from16 v0, p3

    #@612
    move/from16 v1, v43

    #@614
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@617
    .line 574
    const/4 v4, 0x1

    #@618
    return v4

    #@619
    .line 578
    .end local v36    # "_arg0":[B
    .end local v43    # "_result":I
    :sswitch_22
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@61c
    move-object/from16 v0, p2

    #@61e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@621
    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@624
    move-result v33

    #@625
    .line 582
    .restart local v33    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@628
    move-result v6

    #@629
    .line 583
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@62b
    move/from16 v1, v33

    #@62d
    invoke-virtual {v0, v1, v6}, Landroid/security/IKeystoreService$Stub;->onUserAdded(II)I

    #@630
    move-result v43

    #@631
    .line 584
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@634
    .line 585
    move-object/from16 v0, p3

    #@636
    move/from16 v1, v43

    #@638
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@63b
    .line 586
    const/4 v4, 0x1

    #@63c
    return v4

    #@63d
    .line 590
    .end local v6    # "_arg1":I
    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_23
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@640
    move-object/from16 v0, p2

    #@642
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@645
    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@648
    move-result v33

    #@649
    .line 593
    .restart local v33    # "_arg0":I
    move-object/from16 v0, p0

    #@64b
    move/from16 v1, v33

    #@64d
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->onUserRemoved(I)I

    #@650
    move-result v43

    #@651
    .line 594
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@654
    .line 595
    move-object/from16 v0, p3

    #@656
    move/from16 v1, v43

    #@658
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@65b
    .line 596
    const/4 v4, 0x1

    #@65c
    return v4

    #@65d
    .line 44
    nop

    #@65e
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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

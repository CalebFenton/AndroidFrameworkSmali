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

.field static final TRANSACTION_attestKey:I = 0x24

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
    .locals 60
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
    .line 635
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
    move-result v45

    #@1e
    .line 56
    .local v45, "_arg0":I
    move-object/from16 v0, p0

    #@20
    move/from16 v1, v45

    #@22
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->getState(I)I

    #@25
    move-result v52

    #@26
    .line 57
    .local v52, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 58
    move-object/from16 v0, p3

    #@2b
    move/from16 v1, v52

    #@2d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 59
    const/4 v4, 0x1

    #@31
    return v4

    #@32
    .line 63
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
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
    .line 67
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v6

    #@42
    .line 68
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    #@44
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->get(Ljava/lang/String;I)[B

    #@47
    move-result-object v58

    #@48
    .line 69
    .local v58, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b
    .line 70
    move-object/from16 v0, p3

    #@4d
    move-object/from16 v1, v58

    #@4f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@52
    .line 71
    const/4 v4, 0x1

    #@53
    return v4

    #@54
    .line 75
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v58    # "_result":[B
    :sswitch_3
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    .line 79
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@63
    move-result-object v49

    #@64
    .line 81
    .local v49, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v7

    #@68
    .line 83
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v8

    #@6c
    .line 84
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    #@6e
    move-object/from16 v1, v49

    #@70
    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/security/IKeystoreService$Stub;->insert(Ljava/lang/String;[BII)I

    #@73
    move-result v52

    #@74
    .line 85
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@77
    .line 86
    move-object/from16 v0, p3

    #@79
    move/from16 v1, v52

    #@7b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7e
    .line 87
    const/4 v4, 0x1

    #@7f
    return v4

    #@80
    .line 91
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v49    # "_arg1":[B
    .end local v52    # "_result":I
    :sswitch_4
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@83
    move-object/from16 v0, p2

    #@85
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    .line 95
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v6

    #@90
    .line 96
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@92
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->del(Ljava/lang/String;I)I

    #@95
    move-result v52

    #@96
    .line 97
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@99
    .line 98
    move-object/from16 v0, p3

    #@9b
    move/from16 v1, v52

    #@9d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a0
    .line 99
    const/4 v4, 0x1

    #@a1
    return v4

    #@a2
    .line 103
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v52    # "_result":I
    :sswitch_5
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@a5
    move-object/from16 v0, p2

    #@a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ad
    move-result-object v5

    #@ae
    .line 107
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b1
    move-result v6

    #@b2
    .line 108
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@b4
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->exist(Ljava/lang/String;I)I

    #@b7
    move-result v52

    #@b8
    .line 109
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb
    .line 110
    move-object/from16 v0, p3

    #@bd
    move/from16 v1, v52

    #@bf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c2
    .line 111
    const/4 v4, 0x1

    #@c3
    return v4

    #@c4
    .line 115
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v52    # "_result":I
    :sswitch_6
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@c7
    move-object/from16 v0, p2

    #@c9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cc
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cf
    move-result-object v5

    #@d0
    .line 119
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d3
    move-result v6

    #@d4
    .line 120
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@d6
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->list(Ljava/lang/String;I)[Ljava/lang/String;

    #@d9
    move-result-object v59

    #@da
    .line 121
    .local v59, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dd
    .line 122
    move-object/from16 v0, p3

    #@df
    move-object/from16 v1, v59

    #@e1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@e4
    .line 123
    const/4 v4, 0x1

    #@e5
    return v4

    #@e6
    .line 127
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@e9
    move-object/from16 v0, p2

    #@eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ee
    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeystoreService$Stub;->reset()I

    #@f1
    move-result v52

    #@f2
    .line 129
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f5
    .line 130
    move-object/from16 v0, p3

    #@f7
    move/from16 v1, v52

    #@f9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@fc
    .line 131
    const/4 v4, 0x1

    #@fd
    return v4

    #@fe
    .line 135
    .end local v52    # "_result":I
    :sswitch_8
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@101
    move-object/from16 v0, p2

    #@103
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@106
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@109
    move-result v45

    #@10a
    .line 139
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10d
    move-result-object v39

    #@10e
    .line 140
    .local v39, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@110
    move/from16 v1, v45

    #@112
    move-object/from16 v2, v39

    #@114
    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreService$Stub;->onUserPasswordChanged(ILjava/lang/String;)I

    #@117
    move-result v52

    #@118
    .line 141
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11b
    .line 142
    move-object/from16 v0, p3

    #@11d
    move/from16 v1, v52

    #@11f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@122
    .line 143
    const/4 v4, 0x1

    #@123
    return v4

    #@124
    .line 147
    .end local v39    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_9
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@127
    move-object/from16 v0, p2

    #@129
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12c
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12f
    move-result v45

    #@130
    .line 150
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@132
    move/from16 v1, v45

    #@134
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->lock(I)I

    #@137
    move-result v52

    #@138
    .line 151
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13b
    .line 152
    move-object/from16 v0, p3

    #@13d
    move/from16 v1, v52

    #@13f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@142
    .line 153
    const/4 v4, 0x1

    #@143
    return v4

    #@144
    .line 157
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@147
    move-object/from16 v0, p2

    #@149
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14c
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14f
    move-result v45

    #@150
    .line 161
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@153
    move-result-object v39

    #@154
    .line 162
    .restart local v39    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@156
    move/from16 v1, v45

    #@158
    move-object/from16 v2, v39

    #@15a
    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreService$Stub;->unlock(ILjava/lang/String;)I

    #@15d
    move-result v52

    #@15e
    .line 163
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@161
    .line 164
    move-object/from16 v0, p3

    #@163
    move/from16 v1, v52

    #@165
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@168
    .line 165
    const/4 v4, 0x1

    #@169
    return v4

    #@16a
    .line 169
    .end local v39    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@16d
    move-object/from16 v0, p2

    #@16f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@172
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v45

    #@176
    .line 172
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@178
    move/from16 v1, v45

    #@17a
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->isEmpty(I)I

    #@17d
    move-result v52

    #@17e
    .line 173
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@181
    .line 174
    move-object/from16 v0, p3

    #@183
    move/from16 v1, v52

    #@185
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@188
    .line 175
    const/4 v4, 0x1

    #@189
    return v4

    #@18a
    .line 179
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@18d
    move-object/from16 v0, p2

    #@18f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@192
    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@195
    move-result-object v5

    #@196
    .line 183
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@199
    move-result v6

    #@19a
    .line 185
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19d
    move-result v7

    #@19e
    .line 187
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a1
    move-result v8

    #@1a2
    .line 189
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a5
    move-result v9

    #@1a6
    .line 191
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a9
    move-result v4

    #@1aa
    if-eqz v4, :cond_0

    #@1ac
    .line 192
    sget-object v4, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ae
    move-object/from16 v0, p2

    #@1b0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b3
    move-result-object v10

    #@1b4
    check-cast v10, Landroid/security/KeystoreArguments;

    #@1b6
    :goto_0
    move-object/from16 v4, p0

    #@1b8
    .line 197
    invoke-virtual/range {v4 .. v10}, Landroid/security/IKeystoreService$Stub;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    #@1bb
    move-result v52

    #@1bc
    .line 198
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bf
    .line 199
    move-object/from16 v0, p3

    #@1c1
    move/from16 v1, v52

    #@1c3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c6
    .line 200
    const/4 v4, 0x1

    #@1c7
    return v4

    #@1c8
    .line 195
    .end local v52    # "_result":I
    :cond_0
    const/4 v10, 0x0

    #@1c9
    .local v10, "_arg5":Landroid/security/KeystoreArguments;
    goto :goto_0

    #@1ca
    .line 204
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/security/KeystoreArguments;
    :sswitch_d
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@1cd
    move-object/from16 v0, p2

    #@1cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d2
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d5
    move-result-object v5

    #@1d6
    .line 208
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@1d9
    move-result-object v49

    #@1da
    .line 210
    .restart local v49    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dd
    move-result v7

    #@1de
    .line 212
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e1
    move-result v8

    #@1e2
    .line 213
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@1e4
    move-object/from16 v1, v49

    #@1e6
    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/security/IKeystoreService$Stub;->import_key(Ljava/lang/String;[BII)I

    #@1e9
    move-result v52

    #@1ea
    .line 214
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ed
    .line 215
    move-object/from16 v0, p3

    #@1ef
    move/from16 v1, v52

    #@1f1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f4
    .line 216
    const/4 v4, 0x1

    #@1f5
    return v4

    #@1f6
    .line 220
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v49    # "_arg1":[B
    .end local v52    # "_result":I
    :sswitch_e
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@1f9
    move-object/from16 v0, p2

    #@1fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fe
    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@201
    move-result-object v5

    #@202
    .line 224
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@205
    move-result-object v49

    #@206
    .line 225
    .restart local v49    # "_arg1":[B
    move-object/from16 v0, p0

    #@208
    move-object/from16 v1, v49

    #@20a
    invoke-virtual {v0, v5, v1}, Landroid/security/IKeystoreService$Stub;->sign(Ljava/lang/String;[B)[B

    #@20d
    move-result-object v58

    #@20e
    .line 226
    .restart local v58    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@211
    .line 227
    move-object/from16 v0, p3

    #@213
    move-object/from16 v1, v58

    #@215
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@218
    .line 228
    const/4 v4, 0x1

    #@219
    return v4

    #@21a
    .line 232
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":[B
    .end local v58    # "_result":[B
    :sswitch_f
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@21d
    move-object/from16 v0, p2

    #@21f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@222
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@225
    move-result-object v5

    #@226
    .line 236
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@229
    move-result-object v49

    #@22a
    .line 238
    .restart local v49    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@22d
    move-result-object v14

    #@22e
    .line 239
    .local v14, "_arg2":[B
    move-object/from16 v0, p0

    #@230
    move-object/from16 v1, v49

    #@232
    invoke-virtual {v0, v5, v1, v14}, Landroid/security/IKeystoreService$Stub;->verify(Ljava/lang/String;[B[B)I

    #@235
    move-result v52

    #@236
    .line 240
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@239
    .line 241
    move-object/from16 v0, p3

    #@23b
    move/from16 v1, v52

    #@23d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@240
    .line 242
    const/4 v4, 0x1

    #@241
    return v4

    #@242
    .line 246
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg2":[B
    .end local v49    # "_arg1":[B
    .end local v52    # "_result":I
    :sswitch_10
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@245
    move-object/from16 v0, p2

    #@247
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24a
    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24d
    move-result-object v5

    #@24e
    .line 249
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@250
    invoke-virtual {v0, v5}, Landroid/security/IKeystoreService$Stub;->get_pubkey(Ljava/lang/String;)[B

    #@253
    move-result-object v58

    #@254
    .line 250
    .restart local v58    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@257
    .line 251
    move-object/from16 v0, p3

    #@259
    move-object/from16 v1, v58

    #@25b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@25e
    .line 252
    const/4 v4, 0x1

    #@25f
    return v4

    #@260
    .line 256
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":[B
    :sswitch_11
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@263
    move-object/from16 v0, p2

    #@265
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@268
    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26b
    move-result-object v5

    #@26c
    .line 260
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26f
    move-result v6

    #@270
    .line 261
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@272
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->grant(Ljava/lang/String;I)I

    #@275
    move-result v52

    #@276
    .line 262
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@279
    .line 263
    move-object/from16 v0, p3

    #@27b
    move/from16 v1, v52

    #@27d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@280
    .line 264
    const/4 v4, 0x1

    #@281
    return v4

    #@282
    .line 268
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v52    # "_result":I
    :sswitch_12
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@285
    move-object/from16 v0, p2

    #@287
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28a
    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28d
    move-result-object v5

    #@28e
    .line 272
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@291
    move-result v6

    #@292
    .line 273
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@294
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->ungrant(Ljava/lang/String;I)I

    #@297
    move-result v52

    #@298
    .line 274
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29b
    .line 275
    move-object/from16 v0, p3

    #@29d
    move/from16 v1, v52

    #@29f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2a2
    .line 276
    const/4 v4, 0x1

    #@2a3
    return v4

    #@2a4
    .line 280
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v52    # "_result":I
    :sswitch_13
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@2a7
    move-object/from16 v0, p2

    #@2a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ac
    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2af
    move-result-object v5

    #@2b0
    .line 284
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b3
    move-result v6

    #@2b4
    .line 285
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@2b6
    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->getmtime(Ljava/lang/String;I)J

    #@2b9
    move-result-wide v54

    #@2ba
    .line 286
    .local v54, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bd
    .line 287
    move-object/from16 v0, p3

    #@2bf
    move-wide/from16 v1, v54

    #@2c1
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@2c4
    .line 288
    const/4 v4, 0x1

    #@2c5
    return v4

    #@2c6
    .line 292
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v54    # "_result":J
    :sswitch_14
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@2c9
    move-object/from16 v0, p2

    #@2cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ce
    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d1
    move-result-object v5

    #@2d2
    .line 296
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d5
    move-result v6

    #@2d6
    .line 298
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d9
    move-result-object v51

    #@2da
    .line 300
    .local v51, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2dd
    move-result v8

    #@2de
    .line 301
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@2e0
    move-object/from16 v1, v51

    #@2e2
    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/security/IKeystoreService$Stub;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I

    #@2e5
    move-result v52

    #@2e6
    .line 302
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e9
    .line 303
    move-object/from16 v0, p3

    #@2eb
    move/from16 v1, v52

    #@2ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2f0
    .line 304
    const/4 v4, 0x1

    #@2f1
    return v4

    #@2f2
    .line 308
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v51    # "_arg2":Ljava/lang/String;
    .end local v52    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@2f5
    move-object/from16 v0, p2

    #@2f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fa
    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2fd
    move-result-object v5

    #@2fe
    .line 311
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@300
    invoke-virtual {v0, v5}, Landroid/security/IKeystoreService$Stub;->is_hardware_backed(Ljava/lang/String;)I

    #@303
    move-result v52

    #@304
    .line 312
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@307
    .line 313
    move-object/from16 v0, p3

    #@309
    move/from16 v1, v52

    #@30b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@30e
    .line 314
    const/4 v4, 0x1

    #@30f
    return v4

    #@310
    .line 318
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v52    # "_result":I
    :sswitch_16
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@313
    move-object/from16 v0, p2

    #@315
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@318
    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@31b
    move-result-wide v46

    #@31c
    .line 321
    .local v46, "_arg0":J
    move-object/from16 v0, p0

    #@31e
    move-wide/from16 v1, v46

    #@320
    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreService$Stub;->clear_uid(J)I

    #@323
    move-result v52

    #@324
    .line 322
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@327
    .line 323
    move-object/from16 v0, p3

    #@329
    move/from16 v1, v52

    #@32b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@32e
    .line 324
    const/4 v4, 0x1

    #@32f
    return v4

    #@330
    .line 328
    .end local v46    # "_arg0":J
    .end local v52    # "_result":I
    :sswitch_17
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@333
    move-object/from16 v0, p2

    #@335
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@338
    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@33b
    move-result-object v48

    #@33c
    .line 331
    .local v48, "_arg0":[B
    move-object/from16 v0, p0

    #@33e
    move-object/from16 v1, v48

    #@340
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->addRngEntropy([B)I

    #@343
    move-result v52

    #@344
    .line 332
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@347
    .line 333
    move-object/from16 v0, p3

    #@349
    move/from16 v1, v52

    #@34b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@34e
    .line 334
    const/4 v4, 0x1

    #@34f
    return v4

    #@350
    .line 338
    .end local v48    # "_arg0":[B
    .end local v52    # "_result":I
    :sswitch_18
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@353
    move-object/from16 v0, p2

    #@355
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@358
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@35b
    move-result-object v5

    #@35c
    .line 342
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35f
    move-result v4

    #@360
    if-eqz v4, :cond_1

    #@362
    .line 343
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@364
    move-object/from16 v0, p2

    #@366
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@369
    move-result-object v13

    #@36a
    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    #@36c
    .line 349
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@36f
    move-result-object v14

    #@370
    .line 351
    .restart local v14    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@373
    move-result v8

    #@374
    .line 353
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@377
    move-result v9

    #@378
    .line 355
    .restart local v9    # "_arg4":I
    new-instance v17, Landroid/security/keymaster/KeyCharacteristics;

    #@37a
    invoke-direct/range {v17 .. v17}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@37d
    .local v17, "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v11, p0

    #@37f
    move-object v12, v5

    #@380
    move v15, v8

    #@381
    move/from16 v16, v9

    #@383
    .line 356
    invoke-virtual/range {v11 .. v17}, Landroid/security/IKeystoreService$Stub;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    #@386
    move-result v52

    #@387
    .line 357
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38a
    .line 358
    move-object/from16 v0, p3

    #@38c
    move/from16 v1, v52

    #@38e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@391
    .line 359
    if-eqz v17, :cond_2

    #@393
    .line 360
    const/4 v4, 0x1

    #@394
    move-object/from16 v0, p3

    #@396
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@399
    .line 361
    const/4 v4, 0x1

    #@39a
    move-object/from16 v0, v17

    #@39c
    move-object/from16 v1, p3

    #@39e
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    #@3a1
    .line 366
    :goto_2
    const/4 v4, 0x1

    #@3a2
    return v4

    #@3a3
    .line 346
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":[B
    .end local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :cond_1
    const/4 v13, 0x0

    #@3a4
    .local v13, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_1

    #@3a5
    .line 364
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v14    # "_arg2":[B
    .restart local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v52    # "_result":I
    :cond_2
    const/4 v4, 0x0

    #@3a6
    move-object/from16 v0, p3

    #@3a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3ab
    goto :goto_2

    #@3ac
    .line 370
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":[B
    .end local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :sswitch_19
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@3af
    move-object/from16 v0, p2

    #@3b1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b4
    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b7
    move-result-object v5

    #@3b8
    .line 374
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bb
    move-result v4

    #@3bc
    if-eqz v4, :cond_3

    #@3be
    .line 375
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c0
    move-object/from16 v0, p2

    #@3c2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c5
    move-result-object v20

    #@3c6
    check-cast v20, Landroid/security/keymaster/KeymasterBlob;

    #@3c8
    .line 381
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3cb
    move-result v4

    #@3cc
    if-eqz v4, :cond_4

    #@3ce
    .line 382
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d0
    move-object/from16 v0, p2

    #@3d2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d5
    move-result-object v21

    #@3d6
    check-cast v21, Landroid/security/keymaster/KeymasterBlob;

    #@3d8
    .line 388
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3db
    move-result v8

    #@3dc
    .line 390
    .restart local v8    # "_arg3":I
    new-instance v23, Landroid/security/keymaster/KeyCharacteristics;

    #@3de
    invoke-direct/range {v23 .. v23}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@3e1
    .local v23, "_arg4":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v18, p0

    #@3e3
    move-object/from16 v19, v5

    #@3e5
    move/from16 v22, v8

    #@3e7
    .line 391
    invoke-virtual/range {v18 .. v23}, Landroid/security/IKeystoreService$Stub;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    #@3ea
    move-result v52

    #@3eb
    .line 392
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ee
    .line 393
    move-object/from16 v0, p3

    #@3f0
    move/from16 v1, v52

    #@3f2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3f5
    .line 394
    if-eqz v23, :cond_5

    #@3f7
    .line 395
    const/4 v4, 0x1

    #@3f8
    move-object/from16 v0, p3

    #@3fa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3fd
    .line 396
    const/4 v4, 0x1

    #@3fe
    move-object/from16 v0, v23

    #@400
    move-object/from16 v1, p3

    #@402
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    #@405
    .line 401
    :goto_5
    const/4 v4, 0x1

    #@406
    return v4

    #@407
    .line 378
    .end local v8    # "_arg3":I
    .end local v23    # "_arg4":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :cond_3
    const/16 v20, 0x0

    #@409
    .local v20, "_arg1":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_3

    #@40a
    .line 385
    .end local v20    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    :cond_4
    const/16 v21, 0x0

    #@40c
    .local v21, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_4

    #@40d
    .line 399
    .end local v21    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .restart local v8    # "_arg3":I
    .restart local v23    # "_arg4":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v52    # "_result":I
    :cond_5
    const/4 v4, 0x0

    #@40e
    move-object/from16 v0, p3

    #@410
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@413
    goto :goto_5

    #@414
    .line 405
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v23    # "_arg4":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :sswitch_1a
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@417
    move-object/from16 v0, p2

    #@419
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41c
    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@41f
    move-result-object v5

    #@420
    .line 409
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@423
    move-result v4

    #@424
    if-eqz v4, :cond_6

    #@426
    .line 410
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@428
    move-object/from16 v0, p2

    #@42a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@42d
    move-result-object v13

    #@42e
    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    #@430
    .line 416
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@433
    move-result v7

    #@434
    .line 418
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@437
    move-result-object v28

    #@438
    .line 420
    .local v28, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43b
    move-result v9

    #@43c
    .line 422
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43f
    move-result v30

    #@440
    .line 424
    .local v30, "_arg5":I
    new-instance v31, Landroid/security/keymaster/KeyCharacteristics;

    #@442
    invoke-direct/range {v31 .. v31}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@445
    .local v31, "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v24, p0

    #@447
    move-object/from16 v25, v5

    #@449
    move-object/from16 v26, v13

    #@44b
    move/from16 v27, v7

    #@44d
    move/from16 v29, v9

    #@44f
    .line 425
    invoke-virtual/range {v24 .. v31}, Landroid/security/IKeystoreService$Stub;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    #@452
    move-result v52

    #@453
    .line 426
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@456
    .line 427
    move-object/from16 v0, p3

    #@458
    move/from16 v1, v52

    #@45a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@45d
    .line 428
    if-eqz v31, :cond_7

    #@45f
    .line 429
    const/4 v4, 0x1

    #@460
    move-object/from16 v0, p3

    #@462
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@465
    .line 430
    const/4 v4, 0x1

    #@466
    move-object/from16 v0, v31

    #@468
    move-object/from16 v1, p3

    #@46a
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    #@46d
    .line 435
    :goto_7
    const/4 v4, 0x1

    #@46e
    return v4

    #@46f
    .line 413
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v28    # "_arg3":[B
    .end local v30    # "_arg5":I
    .end local v31    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :cond_6
    const/4 v13, 0x0

    #@470
    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_6

    #@471
    .line 433
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v7    # "_arg2":I
    .restart local v9    # "_arg4":I
    .restart local v28    # "_arg3":[B
    .restart local v30    # "_arg5":I
    .restart local v31    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v52    # "_result":I
    :cond_7
    const/4 v4, 0x0

    #@472
    move-object/from16 v0, p3

    #@474
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@477
    goto :goto_7

    #@478
    .line 439
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v28    # "_arg3":[B
    .end local v30    # "_arg5":I
    .end local v31    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v52    # "_result":I
    :sswitch_1b
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@47b
    move-object/from16 v0, p2

    #@47d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@480
    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@483
    move-result-object v5

    #@484
    .line 443
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@487
    move-result v6

    #@488
    .line 445
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48b
    move-result v4

    #@48c
    if-eqz v4, :cond_8

    #@48e
    .line 446
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    #@490
    move-object/from16 v0, p2

    #@492
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@495
    move-result-object v21

    #@496
    check-cast v21, Landroid/security/keymaster/KeymasterBlob;

    #@498
    .line 452
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49b
    move-result v4

    #@49c
    if-eqz v4, :cond_9

    #@49e
    .line 453
    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a0
    move-object/from16 v0, p2

    #@4a2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4a5
    move-result-object v36

    #@4a6
    check-cast v36, Landroid/security/keymaster/KeymasterBlob;

    #@4a8
    .line 459
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ab
    move-result v9

    #@4ac
    .restart local v9    # "_arg4":I
    move-object/from16 v32, p0

    #@4ae
    move-object/from16 v33, v5

    #@4b0
    move/from16 v34, v6

    #@4b2
    move-object/from16 v35, v21

    #@4b4
    move/from16 v37, v9

    #@4b6
    .line 460
    invoke-virtual/range {v32 .. v37}, Landroid/security/IKeystoreService$Stub;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    #@4b9
    move-result-object v53

    #@4ba
    .line 461
    .local v53, "_result":Landroid/security/keymaster/ExportResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4bd
    .line 462
    if-eqz v53, :cond_a

    #@4bf
    .line 463
    const/4 v4, 0x1

    #@4c0
    move-object/from16 v0, p3

    #@4c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c5
    .line 464
    const/4 v4, 0x1

    #@4c6
    move-object/from16 v0, v53

    #@4c8
    move-object/from16 v1, p3

    #@4ca
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/ExportResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@4cd
    .line 469
    :goto_a
    const/4 v4, 0x1

    #@4ce
    return v4

    #@4cf
    .line 449
    .end local v9    # "_arg4":I
    .end local v53    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_8
    const/16 v21, 0x0

    #@4d1
    .restart local v21    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_8

    #@4d2
    .line 456
    .end local v21    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :cond_9
    const/16 v36, 0x0

    #@4d4
    .local v36, "_arg3":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_9

    #@4d5
    .line 467
    .end local v36    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .restart local v9    # "_arg4":I
    .restart local v53    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_a
    const/4 v4, 0x0

    #@4d6
    move-object/from16 v0, p3

    #@4d8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4db
    goto :goto_a

    #@4dc
    .line 473
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":I
    .end local v53    # "_result":Landroid/security/keymaster/ExportResult;
    :sswitch_1c
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@4df
    move-object/from16 v0, p2

    #@4e1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e4
    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4e7
    move-result-object v38

    #@4e8
    .line 477
    .local v38, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4eb
    move-result-object v39

    #@4ec
    .line 479
    .restart local v39    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ef
    move-result v7

    #@4f0
    .line 481
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f3
    move-result v4

    #@4f4
    if-eqz v4, :cond_b

    #@4f6
    const/16 v41, 0x1

    #@4f8
    .line 483
    .local v41, "_arg3":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4fb
    move-result v4

    #@4fc
    if-eqz v4, :cond_c

    #@4fe
    .line 484
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@500
    move-object/from16 v0, p2

    #@502
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@505
    move-result-object v42

    #@506
    check-cast v42, Landroid/security/keymaster/KeymasterArguments;

    #@508
    .line 490
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@50b
    move-result-object v43

    #@50c
    .line 492
    .local v43, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50f
    move-result v44

    #@510
    .local v44, "_arg6":I
    move-object/from16 v37, p0

    #@512
    move/from16 v40, v7

    #@514
    .line 493
    invoke-virtual/range {v37 .. v44}, Landroid/security/IKeystoreService$Stub;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    #@517
    move-result-object v56

    #@518
    .line 494
    .local v56, "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@51b
    .line 495
    if-eqz v56, :cond_d

    #@51d
    .line 496
    const/4 v4, 0x1

    #@51e
    move-object/from16 v0, p3

    #@520
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@523
    .line 497
    const/4 v4, 0x1

    #@524
    move-object/from16 v0, v56

    #@526
    move-object/from16 v1, p3

    #@528
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@52b
    .line 502
    :goto_d
    const/4 v4, 0x1

    #@52c
    return v4

    #@52d
    .line 481
    .end local v41    # "_arg3":Z
    .end local v43    # "_arg5":[B
    .end local v44    # "_arg6":I
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_b
    const/16 v41, 0x0

    #@52f
    .restart local v41    # "_arg3":Z
    goto :goto_b

    #@530
    .line 487
    :cond_c
    const/16 v42, 0x0

    #@532
    .local v42, "_arg4":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_c

    #@533
    .line 500
    .end local v42    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .restart local v43    # "_arg5":[B
    .restart local v44    # "_arg6":I
    .restart local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_d
    const/4 v4, 0x0

    #@534
    move-object/from16 v0, p3

    #@536
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@539
    goto :goto_d

    #@53a
    .line 506
    .end local v7    # "_arg2":I
    .end local v38    # "_arg0":Landroid/os/IBinder;
    .end local v39    # "_arg1":Ljava/lang/String;
    .end local v41    # "_arg3":Z
    .end local v43    # "_arg5":[B
    .end local v44    # "_arg6":I
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1d
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@53d
    move-object/from16 v0, p2

    #@53f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@542
    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@545
    move-result-object v38

    #@546
    .line 510
    .restart local v38    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@549
    move-result v4

    #@54a
    if-eqz v4, :cond_e

    #@54c
    .line 511
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54e
    move-object/from16 v0, p2

    #@550
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@553
    move-result-object v13

    #@554
    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    #@556
    .line 517
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@559
    move-result-object v14

    #@55a
    .line 518
    .restart local v14    # "_arg2":[B
    move-object/from16 v0, p0

    #@55c
    move-object/from16 v1, v38

    #@55e
    invoke-virtual {v0, v1, v13, v14}, Landroid/security/IKeystoreService$Stub;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    #@561
    move-result-object v56

    #@562
    .line 519
    .restart local v56    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@565
    .line 520
    if-eqz v56, :cond_f

    #@567
    .line 521
    const/4 v4, 0x1

    #@568
    move-object/from16 v0, p3

    #@56a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@56d
    .line 522
    const/4 v4, 0x1

    #@56e
    move-object/from16 v0, v56

    #@570
    move-object/from16 v1, p3

    #@572
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@575
    .line 527
    :goto_f
    const/4 v4, 0x1

    #@576
    return v4

    #@577
    .line 514
    .end local v14    # "_arg2":[B
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_e
    const/4 v13, 0x0

    #@578
    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_e

    #@579
    .line 525
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v14    # "_arg2":[B
    .restart local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_f
    const/4 v4, 0x0

    #@57a
    move-object/from16 v0, p3

    #@57c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@57f
    goto :goto_f

    #@580
    .line 531
    .end local v14    # "_arg2":[B
    .end local v38    # "_arg0":Landroid/os/IBinder;
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1e
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@583
    move-object/from16 v0, p2

    #@585
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@588
    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@58b
    move-result-object v38

    #@58c
    .line 535
    .restart local v38    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58f
    move-result v4

    #@590
    if-eqz v4, :cond_10

    #@592
    .line 536
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@594
    move-object/from16 v0, p2

    #@596
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@599
    move-result-object v13

    #@59a
    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    #@59c
    .line 542
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@59f
    move-result-object v14

    #@5a0
    .line 544
    .restart local v14    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@5a3
    move-result-object v28

    #@5a4
    .line 545
    .restart local v28    # "_arg3":[B
    move-object/from16 v0, p0

    #@5a6
    move-object/from16 v1, v38

    #@5a8
    move-object/from16 v2, v28

    #@5aa
    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/security/IKeystoreService$Stub;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    #@5ad
    move-result-object v56

    #@5ae
    .line 546
    .restart local v56    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b1
    .line 547
    if-eqz v56, :cond_11

    #@5b3
    .line 548
    const/4 v4, 0x1

    #@5b4
    move-object/from16 v0, p3

    #@5b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5b9
    .line 549
    const/4 v4, 0x1

    #@5ba
    move-object/from16 v0, v56

    #@5bc
    move-object/from16 v1, p3

    #@5be
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@5c1
    .line 554
    :goto_11
    const/4 v4, 0x1

    #@5c2
    return v4

    #@5c3
    .line 539
    .end local v14    # "_arg2":[B
    .end local v28    # "_arg3":[B
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_10
    const/4 v13, 0x0

    #@5c4
    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_10

    #@5c5
    .line 552
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v14    # "_arg2":[B
    .restart local v28    # "_arg3":[B
    .restart local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_11
    const/4 v4, 0x0

    #@5c6
    move-object/from16 v0, p3

    #@5c8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5cb
    goto :goto_11

    #@5cc
    .line 558
    .end local v14    # "_arg2":[B
    .end local v28    # "_arg3":[B
    .end local v38    # "_arg0":Landroid/os/IBinder;
    .end local v56    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1f
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@5cf
    move-object/from16 v0, p2

    #@5d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d4
    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5d7
    move-result-object v38

    #@5d8
    .line 561
    .restart local v38    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5da
    move-object/from16 v1, v38

    #@5dc
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->abort(Landroid/os/IBinder;)I

    #@5df
    move-result v52

    #@5e0
    .line 562
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e3
    .line 563
    move-object/from16 v0, p3

    #@5e5
    move/from16 v1, v52

    #@5e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5ea
    .line 564
    const/4 v4, 0x1

    #@5eb
    return v4

    #@5ec
    .line 568
    .end local v38    # "_arg0":Landroid/os/IBinder;
    .end local v52    # "_result":I
    :sswitch_20
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@5ef
    move-object/from16 v0, p2

    #@5f1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f4
    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5f7
    move-result-object v38

    #@5f8
    .line 571
    .restart local v38    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5fa
    move-object/from16 v1, v38

    #@5fc
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->isOperationAuthorized(Landroid/os/IBinder;)Z

    #@5ff
    move-result v57

    #@600
    .line 572
    .local v57, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@603
    .line 573
    if-eqz v57, :cond_12

    #@605
    const/4 v4, 0x1

    #@606
    :goto_12
    move-object/from16 v0, p3

    #@608
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@60b
    .line 574
    const/4 v4, 0x1

    #@60c
    return v4

    #@60d
    .line 573
    :cond_12
    const/4 v4, 0x0

    #@60e
    goto :goto_12

    #@60f
    .line 578
    .end local v38    # "_arg0":Landroid/os/IBinder;
    .end local v57    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@612
    move-object/from16 v0, p2

    #@614
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@617
    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@61a
    move-result-object v48

    #@61b
    .line 581
    .restart local v48    # "_arg0":[B
    move-object/from16 v0, p0

    #@61d
    move-object/from16 v1, v48

    #@61f
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->addAuthToken([B)I

    #@622
    move-result v52

    #@623
    .line 582
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@626
    .line 583
    move-object/from16 v0, p3

    #@628
    move/from16 v1, v52

    #@62a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@62d
    .line 584
    const/4 v4, 0x1

    #@62e
    return v4

    #@62f
    .line 588
    .end local v48    # "_arg0":[B
    .end local v52    # "_result":I
    :sswitch_22
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@632
    move-object/from16 v0, p2

    #@634
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@637
    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63a
    move-result v45

    #@63b
    .line 592
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63e
    move-result v6

    #@63f
    .line 593
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@641
    move/from16 v1, v45

    #@643
    invoke-virtual {v0, v1, v6}, Landroid/security/IKeystoreService$Stub;->onUserAdded(II)I

    #@646
    move-result v52

    #@647
    .line 594
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64a
    .line 595
    move-object/from16 v0, p3

    #@64c
    move/from16 v1, v52

    #@64e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@651
    .line 596
    const/4 v4, 0x1

    #@652
    return v4

    #@653
    .line 600
    .end local v6    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_23
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@656
    move-object/from16 v0, p2

    #@658
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65b
    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@65e
    move-result v45

    #@65f
    .line 603
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@661
    move/from16 v1, v45

    #@663
    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->onUserRemoved(I)I

    #@666
    move-result v52

    #@667
    .line 604
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@66a
    .line 605
    move-object/from16 v0, p3

    #@66c
    move/from16 v1, v52

    #@66e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@671
    .line 606
    const/4 v4, 0x1

    #@672
    return v4

    #@673
    .line 610
    .end local v45    # "_arg0":I
    .end local v52    # "_result":I
    :sswitch_24
    const-string/jumbo v4, "android.security.IKeystoreService"

    #@676
    move-object/from16 v0, p2

    #@678
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67b
    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@67e
    move-result-object v5

    #@67f
    .line 614
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@682
    move-result v4

    #@683
    if-eqz v4, :cond_13

    #@685
    .line 615
    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@687
    move-object/from16 v0, p2

    #@689
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@68c
    move-result-object v13

    #@68d
    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    #@68f
    .line 621
    :goto_13
    new-instance v50, Landroid/security/keymaster/KeymasterCertificateChain;

    #@691
    invoke-direct/range {v50 .. v50}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    #@694
    .line 622
    .local v50, "_arg2":Landroid/security/keymaster/KeymasterCertificateChain;
    move-object/from16 v0, p0

    #@696
    move-object/from16 v1, v50

    #@698
    invoke-virtual {v0, v5, v13, v1}, Landroid/security/IKeystoreService$Stub;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    #@69b
    move-result v52

    #@69c
    .line 623
    .restart local v52    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@69f
    .line 624
    move-object/from16 v0, p3

    #@6a1
    move/from16 v1, v52

    #@6a3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6a6
    .line 625
    if-eqz v50, :cond_14

    #@6a8
    .line 626
    const/4 v4, 0x1

    #@6a9
    move-object/from16 v0, p3

    #@6ab
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6ae
    .line 627
    const/4 v4, 0x1

    #@6af
    move-object/from16 v0, v50

    #@6b1
    move-object/from16 v1, p3

    #@6b3
    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeymasterCertificateChain;->writeToParcel(Landroid/os/Parcel;I)V

    #@6b6
    .line 632
    :goto_14
    const/4 v4, 0x1

    #@6b7
    return v4

    #@6b8
    .line 618
    .end local v50    # "_arg2":Landroid/security/keymaster/KeymasterCertificateChain;
    .end local v52    # "_result":I
    :cond_13
    const/4 v13, 0x0

    #@6b9
    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_13

    #@6ba
    .line 630
    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v50    # "_arg2":Landroid/security/keymaster/KeymasterCertificateChain;
    .restart local v52    # "_result":I
    :cond_14
    const/4 v4, 0x0

    #@6bb
    move-object/from16 v0, p3

    #@6bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6c0
    goto :goto_14

    #@6c1
    .line 44
    nop

    #@6c2
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
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;
.super Landroid/os/Binder;
.source "IKeystoreSecurityLevel.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreSecurityLevel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreSecurityLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_convertStorageKeyToEphemeral:I = 0x5

.field static final blacklist TRANSACTION_createOperation:I = 0x1

.field static final blacklist TRANSACTION_deleteKey:I = 0x6

.field static final blacklist TRANSACTION_generateKey:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_importKey:I = 0x3

.field static final blacklist TRANSACTION_importWrappedKey:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->markVintfStability()V

    .line 68
    sget-object v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreSecurityLevel;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_4
    sget-object v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-eqz v1, :cond_14

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/system/keystore2/IKeystoreSecurityLevel;

    return-object v1

    .line 83
    :cond_14
    new-instance v1, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 92
    sparse-switch p0, :sswitch_data_20

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 120
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 124
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 116
    :sswitch_b
    const-string v0, "deleteKey"

    return-object v0

    .line 112
    :sswitch_e
    const-string v0, "convertStorageKeyToEphemeral"

    return-object v0

    .line 108
    :sswitch_11
    const-string/jumbo v0, "importWrappedKey"

    return-object v0

    .line 104
    :sswitch_15
    const-string/jumbo v0, "importKey"

    return-object v0

    .line 100
    :sswitch_19
    const-string v0, "generateKey"

    return-object v0

    .line 96
    :sswitch_1c
    const-string v0, "createOperation"

    return-object v0

    nop

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_19
        0x3 -> :sswitch_15
        0x4 -> :sswitch_11
        0x5 -> :sswitch_e
        0x6 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 459
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 135
    invoke-static {p1}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    sget-object v6, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 140
    .local v6, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    if-gt p1, v1, :cond_d

    .line 141
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 144
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return v7

    .line 147
    :cond_16
    if-ne p1, v1, :cond_23

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return v7

    .line 152
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v7

    .line 157
    :cond_33
    packed-switch p1, :pswitch_data_120

    .line 248
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 240
    :pswitch_3b
    sget-object v1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    .line 241
    .local v1, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v1}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_11f

    .line 230
    .end local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    :pswitch_4e
    sget-object v1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    .line 231
    .restart local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v1}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->convertStorageKeyToEphemeral(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/EphemeralStorageKeyResponse;

    move-result-object v2

    .line 233
    .local v2, "_result":Landroid/system/keystore2/EphemeralStorageKeyResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 235
    goto/16 :goto_11f

    .line 212
    .end local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v2    # "_result":Landroid/system/keystore2/EphemeralStorageKeyResponse;
    :pswitch_65
    sget-object v1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    .line 214
    .restart local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 216
    .local v2, "_arg1":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 218
    .local v3, "_arg2":[B
    sget-object v4, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/security/keymint/KeyParameter;

    .line 220
    .local v4, "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    sget-object v5, Landroid/system/keystore2/AuthenticatorSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/system/keystore2/AuthenticatorSpec;

    .line 221
    .local v5, "_arg4":[Landroid/system/keystore2/AuthenticatorSpec;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[Landroid/hardware/security/keymint/KeyParameter;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;

    move-result-object v8

    .line 223
    .local v8, "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v8, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    goto/16 :goto_11f

    .line 194
    .end local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v2    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v5    # "_arg4":[Landroid/system/keystore2/AuthenticatorSpec;
    .end local v8    # "_result":Landroid/system/keystore2/KeyMetadata;
    :pswitch_99
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    .line 196
    .restart local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 198
    .restart local v2    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 200
    .local v3, "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 202
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 203
    .local v5, "_arg4":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v8

    .line 205
    .restart local v8    # "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v8, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 207
    goto :goto_11f

    .line 176
    .end local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v2    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v8    # "_result":Landroid/system/keystore2/KeyMetadata;
    :pswitch_cb
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    .line 178
    .restart local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v0, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 180
    .restart local v2    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    sget-object v0, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 182
    .restart local v3    # "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 184
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 185
    .restart local v5    # "_arg4":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v8

    .line 187
    .restart local v8    # "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v8, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 189
    goto :goto_11f

    .line 162
    .end local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v2    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v8    # "_result":Landroid/system/keystore2/KeyMetadata;
    :pswitch_fd
    sget-object v1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/keystore2/KeyDescriptor;

    .line 164
    .restart local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v2, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/KeyParameter;

    .line 166
    .local v2, "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 167
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v1, v2, v3}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->createOperation(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Z)Landroid/system/keystore2/CreateOperationResponse;

    move-result-object v4

    .line 169
    .local v4, "_result":Landroid/system/keystore2/CreateOperationResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 171
    nop

    .line 251
    .end local v1    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v2    # "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Landroid/system/keystore2/CreateOperationResponse;
    :goto_11f
    return v7

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_cb
        :pswitch_99
        :pswitch_65
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method

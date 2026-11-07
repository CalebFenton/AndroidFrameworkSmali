.class public abstract Landroid/hardware/security/keymint/IKeyMintDevice$Stub;
.super Landroid/os/Binder;
.source "IKeyMintDevice.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addRngEntropy:I = 0x2

.field static final blacklist TRANSACTION_begin:I = 0xa

.field static final blacklist TRANSACTION_convertStorageKeyToEphemeral:I = 0xd

.field static final blacklist TRANSACTION_deleteAllKeys:I = 0x8

.field static final blacklist TRANSACTION_deleteKey:I = 0x7

.field static final blacklist TRANSACTION_destroyAttestationIds:I = 0x9

.field static final blacklist TRANSACTION_deviceLocked:I = 0xb

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0xc

.field static final blacklist TRANSACTION_generateKey:I = 0x3

.field static final blacklist TRANSACTION_getHardwareInfo:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getKeyCharacteristics:I = 0xe

.field static final blacklist TRANSACTION_getRootOfTrust:I = 0x10

.field static final blacklist TRANSACTION_getRootOfTrustChallenge:I = 0xf

.field static final blacklist TRANSACTION_importKey:I = 0x4

.field static final blacklist TRANSACTION_importWrappedKey:I = 0x5

.field static final blacklist TRANSACTION_sendRootOfTrust:I = 0x11

.field static final blacklist TRANSACTION_setAdditionalAttestationInfo:I = 0x12

.field static final blacklist TRANSACTION_upgradeKey:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 109
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->markVintfStability()V

    .line 110
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IKeyMintDevice;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 118
    if-nez p0, :cond_4

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_4
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/security/keymint/IKeyMintDevice;

    if-eqz v1, :cond_14

    .line 123
    move-object v1, v0

    check-cast v1, Landroid/hardware/security/keymint/IKeyMintDevice;

    return-object v1

    .line 125
    :cond_14
    new-instance v1, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 134
    sparse-switch p0, :sswitch_data_42

    .line 218
    const/4 v0, 0x0

    return-object v0

    .line 210
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 214
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 206
    :sswitch_b
    const-string v0, "setAdditionalAttestationInfo"

    return-object v0

    .line 202
    :sswitch_e
    const-string v0, "sendRootOfTrust"

    return-object v0

    .line 198
    :sswitch_11
    const-string v0, "getRootOfTrust"

    return-object v0

    .line 194
    :sswitch_14
    const-string v0, "getRootOfTrustChallenge"

    return-object v0

    .line 190
    :sswitch_17
    const-string v0, "getKeyCharacteristics"

    return-object v0

    .line 186
    :sswitch_1a
    const-string v0, "convertStorageKeyToEphemeral"

    return-object v0

    .line 182
    :sswitch_1d
    const-string v0, "earlyBootEnded"

    return-object v0

    .line 178
    :sswitch_20
    const-string v0, "deviceLocked"

    return-object v0

    .line 174
    :sswitch_23
    const-string v0, "begin"

    return-object v0

    .line 170
    :sswitch_26
    const-string v0, "destroyAttestationIds"

    return-object v0

    .line 166
    :sswitch_29
    const-string v0, "deleteAllKeys"

    return-object v0

    .line 162
    :sswitch_2c
    const-string v0, "deleteKey"

    return-object v0

    .line 158
    :sswitch_2f
    const-string v0, "upgradeKey"

    return-object v0

    .line 154
    :sswitch_32
    const-string v0, "importWrappedKey"

    return-object v0

    .line 150
    :sswitch_35
    const-string v0, "importKey"

    return-object v0

    .line 146
    :sswitch_38
    const-string v0, "generateKey"

    return-object v0

    .line 142
    :sswitch_3b
    const-string v0, "addRngEntropy"

    return-object v0

    .line 138
    :sswitch_3e
    const-string v0, "getHardwareInfo"

    return-object v0

    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_38
        0x4 -> :sswitch_35
        0x5 -> :sswitch_32
        0x6 -> :sswitch_2f
        0x7 -> :sswitch_2c
        0x8 -> :sswitch_29
        0x9 -> :sswitch_26
        0xa -> :sswitch_23
        0xb -> :sswitch_20
        0xc -> :sswitch_1d
        0xd -> :sswitch_1a
        0xe -> :sswitch_17
        0xf -> :sswitch_14
        0x10 -> :sswitch_11
        0x11 -> :sswitch_e
        0x12 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 129
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 904
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 225
    invoke-static {p1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-object v12, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 230
    .local v12, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v13, 0x1

    if-lt v9, v13, :cond_13

    if-gt v9, v1, :cond_13

    .line 231
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    :cond_13
    const v2, 0x5f4e5446

    if-ne v9, v2, :cond_1c

    .line 234
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    return v13

    .line 237
    :cond_1c
    if-ne v9, v1, :cond_29

    .line 238
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    return v13

    .line 242
    :cond_29
    const v1, 0xfffffe

    if-ne v9, v1, :cond_39

    .line 243
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v13

    .line 247
    :cond_39
    const/16 v1, 0x10

    packed-switch v9, :pswitch_data_1c8

    .line 440
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 432
    :pswitch_43
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 433
    .local v1, "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->setAdditionalAttestationInfo([Landroid/hardware/security/keymint/KeyParameter;)V

    .line 435
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    goto/16 :goto_1c6

    .line 423
    .end local v1    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    :pswitch_56
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 424
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->sendRootOfTrust([B)V

    .line 426
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    goto/16 :goto_1c6

    .line 413
    .end local v1    # "_arg0":[B
    :pswitch_65
    const-class v2, [B

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 414
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getRootOfTrust([B)[B

    move-result-object v2

    .line 416
    .local v2, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 418
    goto/16 :goto_1c6

    .line 405
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":[B
    :pswitch_80
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getRootOfTrustChallenge()[B

    move-result-object v2

    .line 406
    .restart local v2    # "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v11, v2, v13, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 408
    goto/16 :goto_1c6

    .line 392
    .end local v2    # "_result":[B
    :pswitch_90
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 394
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 396
    .local v2, "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 397
    .local v3, "_arg2":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getKeyCharacteristics([B[B[B)[Landroid/hardware/security/keymint/KeyCharacteristics;

    move-result-object v4

    .line 399
    .local v4, "_result":[Landroid/hardware/security/keymint/KeyCharacteristics;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 401
    goto/16 :goto_1c6

    .line 382
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":[Landroid/hardware/security/keymint/KeyCharacteristics;
    :pswitch_ab
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 383
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->convertStorageKeyToEphemeral([B)[B

    move-result-object v2

    .line 385
    .local v2, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 387
    goto/16 :goto_1c6

    .line 375
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":[B
    :pswitch_be
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->earlyBootEnded()V

    .line 376
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto/16 :goto_1c6

    .line 365
    :pswitch_c6
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 367
    .local v1, "_arg0":Z
    sget-object v2, Landroid/hardware/security/secureclock/TimeStampToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/secureclock/TimeStampToken;

    .line 368
    .local v2, "_arg1":Landroid/hardware/security/secureclock/TimeStampToken;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deviceLocked(ZLandroid/hardware/security/secureclock/TimeStampToken;)V

    .line 370
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    goto/16 :goto_1c6

    .line 349
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/hardware/security/secureclock/TimeStampToken;
    :pswitch_dd
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 353
    .local v2, "_arg1":[B
    sget-object v3, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 355
    .local v3, "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    sget-object v4, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 356
    .local v4, "_arg3":Landroid/hardware/security/keymint/HardwareAuthToken;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->begin(I[B[Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/HardwareAuthToken;)Landroid/hardware/security/keymint/BeginResult;

    move-result-object v5

    .line 358
    .local v5, "_result":Landroid/hardware/security/keymint/BeginResult;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 360
    goto/16 :goto_1c6

    .line 342
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v4    # "_arg3":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local v5    # "_result":Landroid/hardware/security/keymint/BeginResult;
    :pswitch_104
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->destroyAttestationIds()V

    .line 343
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    goto/16 :goto_1c6

    .line 336
    :pswitch_10c
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deleteAllKeys()V

    .line 337
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto/16 :goto_1c6

    .line 328
    :pswitch_114
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 329
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->deleteKey([B)V

    .line 331
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_1c6

    .line 316
    .end local v1    # "_arg0":[B
    :pswitch_123
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 318
    .restart local v1    # "_arg0":[B
    sget-object v2, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/KeyParameter;

    .line 319
    .local v2, "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->upgradeKey([B[Landroid/hardware/security/keymint/KeyParameter;)[B

    move-result-object v3

    .line 321
    .local v3, "_result":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 323
    goto/16 :goto_1c6

    .line 296
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v3    # "_result":[B
    :pswitch_13e
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 298
    .restart local v1    # "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 300
    .local v2, "_arg1":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 302
    .local v3, "_arg2":[B
    sget-object v4, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/security/keymint/KeyParameter;

    .line 304
    .local v4, "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 306
    .local v5, "_arg4":J
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 307
    .local v7, "_arg5":J
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->importWrappedKey([B[B[B[Landroid/hardware/security/keymint/KeyParameter;JJ)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v14

    .line 309
    .local v14, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {v11, v14, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 311
    goto :goto_1c6

    .line 280
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v5    # "_arg4":J
    .end local v7    # "_arg5":J
    .end local v14    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    :pswitch_169
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 282
    .local v1, "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 286
    .restart local v3    # "_arg2":[B
    sget-object v4, Landroid/hardware/security/keymint/AttestationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/security/keymint/AttestationKey;

    .line 287
    .local v4, "_arg3":Landroid/hardware/security/keymint/AttestationKey;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->importKey([Landroid/hardware/security/keymint/KeyParameter;I[BLandroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v5

    .line 289
    .local v5, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 291
    goto :goto_1c6

    .line 268
    .end local v1    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Landroid/hardware/security/keymint/AttestationKey;
    .end local v5    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    :pswitch_18f
    sget-object v1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 270
    .restart local v1    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    sget-object v2, Landroid/hardware/security/keymint/AttestationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/keymint/AttestationKey;

    .line 271
    .local v2, "_arg1":Landroid/hardware/security/keymint/AttestationKey;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->generateKey([Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;

    move-result-object v3

    .line 273
    .local v3, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 275
    goto :goto_1c6

    .line 259
    .end local v1    # "_arg0":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v2    # "_arg1":Landroid/hardware/security/keymint/AttestationKey;
    .end local v3    # "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    :pswitch_1ad
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 260
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v1}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->addRngEntropy([B)V

    .line 262
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_1c6

    .line 251
    .end local v1    # "_arg0":[B
    :pswitch_1bb
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintDevice$Stub;->getHardwareInfo()Landroid/hardware/security/keymint/KeyMintHardwareInfo;

    move-result-object v1

    .line 252
    .local v1, "_result":Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 254
    nop

    .line 443
    .end local v1    # "_result":Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    :goto_1c6
    return v13

    nop

    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_1bb
        :pswitch_1ad
        :pswitch_18f
        :pswitch_169
        :pswitch_13e
        :pswitch_123
        :pswitch_114
        :pswitch_10c
        :pswitch_104
        :pswitch_dd
        :pswitch_c6
        :pswitch_be
        :pswitch_ab
        :pswitch_90
        :pswitch_80
        :pswitch_65
        :pswitch_56
        :pswitch_43
    .end packed-switch
.end method

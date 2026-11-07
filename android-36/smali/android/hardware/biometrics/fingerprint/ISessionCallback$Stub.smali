.class public abstract Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onAcquired:I = 0x3

.field static final blacklist TRANSACTION_onAuthenticationFailed:I = 0x7

.field static final blacklist TRANSACTION_onAuthenticationSucceeded:I = 0x6

.field static final blacklist TRANSACTION_onAuthenticatorIdInvalidated:I = 0xf

.field static final blacklist TRANSACTION_onAuthenticatorIdRetrieved:I = 0xe

.field static final blacklist TRANSACTION_onChallengeGenerated:I = 0x1

.field static final blacklist TRANSACTION_onChallengeRevoked:I = 0x2

.field static final blacklist TRANSACTION_onEnrollmentProgress:I = 0x5

.field static final blacklist TRANSACTION_onEnrollmentsEnumerated:I = 0xc

.field static final blacklist TRANSACTION_onEnrollmentsRemoved:I = 0xd

.field static final blacklist TRANSACTION_onError:I = 0x4

.field static final blacklist TRANSACTION_onInteractionDetected:I = 0xb

.field static final blacklist TRANSACTION_onLockoutCleared:I = 0xa

.field static final blacklist TRANSACTION_onLockoutPermanent:I = 0x9

.field static final blacklist TRANSACTION_onLockoutTimed:I = 0x8

.field static final blacklist TRANSACTION_onSessionClosed:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 236
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 237
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->markVintfStability()V

    .line 238
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISessionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 246
    if-nez p0, :cond_4

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 249
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 250
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    if-eqz v1, :cond_14

    .line 251
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    return-object v1

    .line 253
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 262
    sparse-switch p0, :sswitch_data_4c

    .line 338
    const/4 v0, 0x0

    return-object v0

    .line 330
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 334
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 326
    :sswitch_b
    const-string/jumbo v0, "onSessionClosed"

    return-object v0

    .line 322
    :sswitch_f
    const-string/jumbo v0, "onAuthenticatorIdInvalidated"

    return-object v0

    .line 318
    :sswitch_13
    const-string/jumbo v0, "onAuthenticatorIdRetrieved"

    return-object v0

    .line 314
    :sswitch_17
    const-string/jumbo v0, "onEnrollmentsRemoved"

    return-object v0

    .line 310
    :sswitch_1b
    const-string/jumbo v0, "onEnrollmentsEnumerated"

    return-object v0

    .line 306
    :sswitch_1f
    const-string/jumbo v0, "onInteractionDetected"

    return-object v0

    .line 302
    :sswitch_23
    const-string/jumbo v0, "onLockoutCleared"

    return-object v0

    .line 298
    :sswitch_27
    const-string/jumbo v0, "onLockoutPermanent"

    return-object v0

    .line 294
    :sswitch_2b
    const-string/jumbo v0, "onLockoutTimed"

    return-object v0

    .line 290
    :sswitch_2f
    const-string/jumbo v0, "onAuthenticationFailed"

    return-object v0

    .line 286
    :sswitch_33
    const-string/jumbo v0, "onAuthenticationSucceeded"

    return-object v0

    .line 282
    :sswitch_37
    const-string/jumbo v0, "onEnrollmentProgress"

    return-object v0

    .line 278
    :sswitch_3b
    const-string/jumbo v0, "onError"

    return-object v0

    .line 274
    :sswitch_3f
    const-string/jumbo v0, "onAcquired"

    return-object v0

    .line 270
    :sswitch_43
    const-string/jumbo v0, "onChallengeRevoked"

    return-object v0

    .line 266
    :sswitch_47
    const-string/jumbo v0, "onChallengeGenerated"

    return-object v0

    nop

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_47
        0x2 -> :sswitch_43
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_3b
        0x5 -> :sswitch_37
        0x6 -> :sswitch_33
        0x7 -> :sswitch_2f
        0x8 -> :sswitch_2b
        0x9 -> :sswitch_27
        0xa -> :sswitch_23
        0xb -> :sswitch_1f
        0xc -> :sswitch_1b
        0xd -> :sswitch_17
        0xe -> :sswitch_13
        0xf -> :sswitch_f
        0x10 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 257
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1015
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 345
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 350
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 351
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 354
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    return v2

    .line 357
    :cond_16
    if-ne p1, v1, :cond_23

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    return v2

    .line 362
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    return v2

    .line 367
    :cond_33
    packed-switch p1, :pswitch_data_116

    .line 508
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 502
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onSessionClosed()V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_114

    .line 494
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 495
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onAuthenticatorIdInvalidated(J)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    goto/16 :goto_114

    .line 485
    .end local v3    # "_arg0":J
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 486
    .restart local v3    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onAuthenticatorIdRetrieved(J)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    goto/16 :goto_114

    .line 476
    .end local v3    # "_arg0":J
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 477
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onEnrollmentsRemoved([I)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    goto/16 :goto_114

    .line 467
    .end local v1    # "_arg0":[I
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 468
    .restart local v1    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onEnrollmentsEnumerated([I)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    goto/16 :goto_114

    .line 460
    .end local v1    # "_arg0":[I
    :pswitch_7f
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onInteractionDetected()V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_114

    .line 454
    :pswitch_87
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onLockoutCleared()V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    goto/16 :goto_114

    .line 448
    :pswitch_8f
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onLockoutPermanent()V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    goto/16 :goto_114

    .line 440
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 441
    .restart local v3    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onLockoutTimed(J)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    goto :goto_114

    .line 433
    .end local v3    # "_arg0":J
    :pswitch_a5
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onAuthenticationFailed()V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto :goto_114

    .line 423
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    .local v1, "_arg0":I
    sget-object v3, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 426
    .local v3, "_arg1":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v1, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto :goto_114

    .line 412
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/keymaster/HardwareAuthToken;
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 414
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 415
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, v1, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onEnrollmentProgress(II)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    goto :goto_114

    .line 401
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 403
    .local v1, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 404
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v1, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onError(BI)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    goto :goto_114

    .line 390
    .end local v1    # "_arg0":B
    .end local v3    # "_arg1":I
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 392
    .restart local v1    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 393
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v1, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onAcquired(BI)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    goto :goto_114

    .line 381
    .end local v1    # "_arg0":B
    .end local v3    # "_arg1":I
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 382
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onChallengeRevoked(J)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    goto :goto_114

    .line 372
    .end local v3    # "_arg0":J
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 373
    .restart local v3    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->onChallengeGenerated(J)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    nop

    .line 511
    .end local v3    # "_arg0":J
    :goto_114
    return v2

    nop

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_106
        :pswitch_f8
        :pswitch_e6
        :pswitch_d4
        :pswitch_c2
        :pswitch_ac
        :pswitch_a5
        :pswitch_97
        :pswitch_8f
        :pswitch_87
        :pswitch_7f
        :pswitch_70
        :pswitch_61
        :pswitch_52
        :pswitch_43
        :pswitch_3b
    .end packed-switch
.end method

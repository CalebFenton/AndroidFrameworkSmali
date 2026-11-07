.class public abstract Landroid/hardware/radio/data/IRadioData$Stub;
.super Landroid/os/Binder;
.source "IRadioData.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/IRadioData$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_allocatePduSessionId:I = 0x1

.field static final blacklist TRANSACTION_cancelHandover:I = 0x2

.field static final blacklist TRANSACTION_deactivateDataCall:I = 0x3

.field static final blacklist TRANSACTION_getDataCallList:I = 0x4

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSlicingConfig:I = 0x5

.field static final blacklist TRANSACTION_releasePduSessionId:I = 0x6

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x7

.field static final blacklist TRANSACTION_setDataAllowed:I = 0x8

.field static final blacklist TRANSACTION_setDataProfile:I = 0x9

.field static final blacklist TRANSACTION_setDataThrottling:I = 0xa

.field static final blacklist TRANSACTION_setInitialAttachApn:I = 0xb

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0xc

.field static final blacklist TRANSACTION_setupDataCall:I = 0xd

.field static final blacklist TRANSACTION_startHandover:I = 0xe

.field static final blacklist TRANSACTION_startKeepalive:I = 0xf

.field static final blacklist TRANSACTION_stopKeepalive:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 332
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 333
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioData$Stub;->markVintfStability()V

    .line 334
    sget-object v0, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioData;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 342
    if-nez p0, :cond_4

    .line 343
    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_4
    sget-object v0, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 346
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/data/IRadioData;

    if-eqz v1, :cond_14

    .line 347
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/data/IRadioData;

    return-object v1

    .line 349
    :cond_14
    new-instance v1, Landroid/hardware/radio/data/IRadioData$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/data/IRadioData$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 353
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    sget-object v14, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 358
    .local v14, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v15, 0x1

    if-lt v11, v15, :cond_15

    if-gt v11, v1, :cond_15

    .line 359
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    :cond_15
    const v2, 0x5f4e5446

    if-ne v11, v2, :cond_1e

    .line 362
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    return v15

    .line 365
    :cond_1e
    if-ne v11, v1, :cond_2b

    .line 366
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {v0}, Landroid/hardware/radio/data/IRadioData$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    return v15

    .line 370
    :cond_2b
    const v1, 0xfffffe

    if-ne v11, v1, :cond_3b

    .line 371
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v0}, Landroid/hardware/radio/data/IRadioData$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    return v15

    .line 375
    :cond_3b
    packed-switch v11, :pswitch_data_16c

    .line 548
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 539
    :pswitch_43
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 541
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 542
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->stopKeepalive(II)V

    .line 544
    goto/16 :goto_16b

    .line 529
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_53
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 531
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/data/KeepaliveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/data/KeepaliveRequest;

    .line 532
    .local v2, "_arg1":Landroid/hardware/radio/data/KeepaliveRequest;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->startKeepalive(ILandroid/hardware/radio/data/KeepaliveRequest;)V

    .line 534
    goto/16 :goto_16b

    .line 519
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/data/KeepaliveRequest;
    :pswitch_67
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 522
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->startHandover(II)V

    .line 524
    goto/16 :goto_16b

    .line 493
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_77
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 497
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/DataProfileInfo;

    .line 499
    .local v3, "_arg2":Landroid/hardware/radio/data/DataProfileInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 501
    .local v4, "_arg3":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 503
    .local v5, "_arg4":I
    sget-object v6, Landroid/hardware/radio/data/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/radio/data/LinkAddress;

    .line 505
    .local v6, "_arg5":[Landroid/hardware/radio/data/LinkAddress;
    invoke-virtual {v12}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 507
    .local v7, "_arg6":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 509
    .local v8, "_arg7":I
    sget-object v9, Landroid/hardware/radio/data/SliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/radio/data/SliceInfo;

    .line 511
    .local v9, "_arg8":Landroid/hardware/radio/data/SliceInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 512
    .local v10, "_arg9":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual/range {v0 .. v10}, Landroid/hardware/radio/data/IRadioData$Stub;->setupDataCall(IILandroid/hardware/radio/data/DataProfileInfo;ZI[Landroid/hardware/radio/data/LinkAddress;[Ljava/lang/String;ILandroid/hardware/radio/data/SliceInfo;Z)V

    .line 514
    goto/16 :goto_16b

    .line 483
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/radio/data/DataProfileInfo;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[Landroid/hardware/radio/data/LinkAddress;
    .end local v7    # "_arg6":[Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/hardware/radio/data/SliceInfo;
    .end local v10    # "_arg9":Z
    :pswitch_b3
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataResponse;

    move-result-object v1

    .line 485
    .local v1, "_arg0":Landroid/hardware/radio/data/IRadioDataResponse;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataIndication;

    move-result-object v2

    .line 486
    .local v2, "_arg1":Landroid/hardware/radio/data/IRadioDataIndication;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setResponseFunctions(Landroid/hardware/radio/data/IRadioDataResponse;Landroid/hardware/radio/data/IRadioDataIndication;)V

    .line 488
    goto/16 :goto_16b

    .line 473
    .end local v1    # "_arg0":Landroid/hardware/radio/data/IRadioDataResponse;
    .end local v2    # "_arg1":Landroid/hardware/radio/data/IRadioDataIndication;
    :pswitch_cb
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    .local v1, "_arg0":I
    sget-object v2, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/data/DataProfileInfo;

    .line 476
    .local v2, "_arg1":Landroid/hardware/radio/data/DataProfileInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setInitialAttachApn(ILandroid/hardware/radio/data/DataProfileInfo;)V

    .line 478
    goto/16 :goto_16b

    .line 461
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/radio/data/DataProfileInfo;
    :pswitch_df
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 463
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 465
    .local v2, "_arg1":B
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 466
    .local v3, "_arg2":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataThrottling(IBJ)V

    .line 468
    goto/16 :goto_16b

    .line 451
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":B
    .end local v3    # "_arg2":J
    :pswitch_f3
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 453
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/data/DataProfileInfo;

    .line 454
    .local v2, "_arg1":[Landroid/hardware/radio/data/DataProfileInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataProfile(I[Landroid/hardware/radio/data/DataProfileInfo;)V

    .line 456
    goto :goto_16b

    .line 441
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/hardware/radio/data/DataProfileInfo;
    :pswitch_106
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 444
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataAllowed(IZ)V

    .line 446
    goto :goto_16b

    .line 435
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_115
    invoke-virtual {v0}, Landroid/hardware/radio/data/IRadioData$Stub;->responseAcknowledgement()V

    .line 436
    goto :goto_16b

    .line 426
    :pswitch_119
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 428
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 429
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->releasePduSessionId(II)V

    .line 431
    goto :goto_16b

    .line 418
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_128
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->getSlicingConfig(I)V

    .line 421
    goto :goto_16b

    .line 410
    .end local v1    # "_arg0":I
    :pswitch_133
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 411
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->getDataCallList(I)V

    .line 413
    goto :goto_16b

    .line 398
    .end local v1    # "_arg0":I
    :pswitch_13e
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 400
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 402
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 403
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/radio/data/IRadioData$Stub;->deactivateDataCall(III)V

    .line 405
    goto :goto_16b

    .line 388
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_151
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 390
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 391
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->cancelHandover(II)V

    .line 393
    goto :goto_16b

    .line 380
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_160
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 381
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->allocatePduSessionId(I)V

    .line 383
    nop

    .line 551
    .end local v1    # "_arg0":I
    :goto_16b
    return v15

    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_160
        :pswitch_151
        :pswitch_13e
        :pswitch_133
        :pswitch_128
        :pswitch_119
        :pswitch_115
        :pswitch_106
        :pswitch_f3
        :pswitch_df
        :pswitch_cb
        :pswitch_b3
        :pswitch_77
        :pswitch_67
        :pswitch_53
        :pswitch_43
    .end packed-switch
.end method

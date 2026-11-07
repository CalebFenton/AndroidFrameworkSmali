.class public abstract Landroid/hardware/radio/data/IRadioDataResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioDataResponse.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioDataResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_allocatePduSessionIdResponse:I = 0x2

.field static final blacklist TRANSACTION_cancelHandoverResponse:I = 0x3

.field static final blacklist TRANSACTION_deactivateDataCallResponse:I = 0x4

.field static final blacklist TRANSACTION_getDataCallListResponse:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSlicingConfigResponse:I = 0x6

.field static final blacklist TRANSACTION_releasePduSessionIdResponse:I = 0x7

.field static final blacklist TRANSACTION_setDataAllowedResponse:I = 0x8

.field static final blacklist TRANSACTION_setDataProfileResponse:I = 0x9

.field static final blacklist TRANSACTION_setDataThrottlingResponse:I = 0xa

.field static final blacklist TRANSACTION_setInitialAttachApnResponse:I = 0xb

.field static final blacklist TRANSACTION_setupDataCallResponse:I = 0xc

.field static final blacklist TRANSACTION_startHandoverResponse:I = 0xd

.field static final blacklist TRANSACTION_startKeepaliveResponse:I = 0xe

.field static final blacklist TRANSACTION_stopKeepaliveResponse:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 278
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 279
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->markVintfStability()V

    .line 280
    sget-object v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataResponse;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 288
    if-nez p0, :cond_4

    .line 289
    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_4
    sget-object v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 292
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/data/IRadioDataResponse;

    if-eqz v1, :cond_14

    .line 293
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/data/IRadioDataResponse;

    return-object v1

    .line 295
    :cond_14
    new-instance v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 299
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    sget-object v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 304
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 305
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 308
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    return v2

    .line 311
    :cond_16
    if-ne p1, v1, :cond_23

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    return v2

    .line 316
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    return v2

    .line 321
    :cond_33
    packed-switch p1, :pswitch_data_146

    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 448
    :pswitch_3b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 449
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 451
    goto/16 :goto_144

    .line 438
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_4b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 440
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/data/KeepaliveStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/KeepaliveStatus;

    .line 441
    .local v3, "_arg1":Landroid/hardware/radio/data/KeepaliveStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/KeepaliveStatus;)V

    .line 443
    goto/16 :goto_144

    .line 430
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/data/KeepaliveStatus;
    :pswitch_63
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 431
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->startHandoverResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 433
    goto/16 :goto_144

    .line 420
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_73
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 422
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/data/SetupDataCallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/SetupDataCallResult;

    .line 423
    .local v3, "_arg1":Landroid/hardware/radio/data/SetupDataCallResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/SetupDataCallResult;)V

    .line 425
    goto/16 :goto_144

    .line 412
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/data/SetupDataCallResult;
    :pswitch_8b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 413
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 415
    goto/16 :goto_144

    .line 404
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_9b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 405
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setDataThrottlingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 407
    goto/16 :goto_144

    .line 396
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_ab
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 397
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 399
    goto/16 :goto_144

    .line 388
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_bb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 389
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 391
    goto/16 :goto_144

    .line 380
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_cb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 381
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->releasePduSessionIdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 383
    goto :goto_144

    .line 370
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_da
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 372
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/data/SlicingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/data/SlicingConfig;

    .line 373
    .local v3, "_arg1":Landroid/hardware/radio/data/SlicingConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getSlicingConfigResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/SlicingConfig;)V

    .line 375
    goto :goto_144

    .line 360
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/data/SlicingConfig;
    :pswitch_f1
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 362
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/data/SetupDataCallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/data/SetupDataCallResult;

    .line 363
    .local v3, "_arg1":[Landroid/hardware/radio/data/SetupDataCallResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/data/SetupDataCallResult;)V

    .line 365
    goto :goto_144

    .line 352
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/data/SetupDataCallResult;
    :pswitch_108
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 353
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 355
    goto :goto_144

    .line 344
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_117
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 345
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->cancelHandoverResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 347
    goto :goto_144

    .line 334
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_126
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 336
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 337
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->allocatePduSessionIdResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 339
    goto :goto_144

    .line 326
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v1}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->acknowledgeRequest(I)V

    .line 329
    nop

    .line 458
    .end local v1    # "_arg0":I
    :goto_144
    return v2

    nop

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_139
        :pswitch_126
        :pswitch_117
        :pswitch_108
        :pswitch_f1
        :pswitch_da
        :pswitch_cb
        :pswitch_bb
        :pswitch_ab
        :pswitch_9b
        :pswitch_8b
        :pswitch_73
        :pswitch_63
        :pswitch_4b
        :pswitch_3b
    .end packed-switch
.end method

.class public abstract Landroid/adservices/adselection/AdSelectionService$Stub;
.super Landroid/os/Binder;
.source "AdSelectionService.java"

# interfaces
.implements Landroid/adservices/adselection/AdSelectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/AdSelectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/AdSelectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAdSelectionData:I = 0x1

.field static final blacklist TRANSACTION_overrideAdSelectionConfigRemoteInfo:I = 0x8

.field static final blacklist TRANSACTION_overrideAdSelectionFromOutcomesConfigRemoteInfo:I = 0xc

.field static final blacklist TRANSACTION_persistAdSelectionResult:I = 0x2

.field static final blacklist TRANSACTION_removeAdCounterHistogramOverride:I = 0x10

.field static final blacklist TRANSACTION_removeAdSelectionConfigRemoteInfoOverride:I = 0xa

.field static final blacklist TRANSACTION_removeAdSelectionFromOutcomesConfigRemoteInfoOverride:I = 0xd

.field static final blacklist TRANSACTION_reportImpression:I = 0x5

.field static final blacklist TRANSACTION_reportInteraction:I = 0x6

.field static final blacklist TRANSACTION_resetAllAdCounterHistogramOverrides:I = 0x11

.field static final blacklist TRANSACTION_resetAllAdSelectionConfigRemoteOverrides:I = 0xb

.field static final blacklist TRANSACTION_resetAllAdSelectionFromOutcomesConfigRemoteOverrides:I = 0xe

.field static final blacklist TRANSACTION_selectAds:I = 0x3

.field static final blacklist TRANSACTION_selectAdsFromOutcomes:I = 0x4

.field static final blacklist TRANSACTION_setAdCounterHistogramOverride:I = 0xf

.field static final blacklist TRANSACTION_setAppInstallAdvertisers:I = 0x9

.field static final blacklist TRANSACTION_updateAdCounterHistogram:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 266
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 267
    const-string v0, "android.adservices.adselection.AdSelectionService"

    invoke-virtual {p0, p0, v0}, Landroid/adservices/adselection/AdSelectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 275
    if-nez p0, :cond_4

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_4
    const-string v0, "android.adservices.adselection.AdSelectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 279
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/adservices/adselection/AdSelectionService;

    if-eqz v1, :cond_14

    .line 280
    move-object v1, v0

    check-cast v1, Landroid/adservices/adselection/AdSelectionService;

    return-object v1

    .line 282
    :cond_14
    new-instance v1, Landroid/adservices/adselection/AdSelectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/adservices/adselection/AdSelectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 291
    packed-switch p0, :pswitch_data_38

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 359
    :pswitch_5
    const-string v0, "resetAllAdCounterHistogramOverrides"

    return-object v0

    .line 355
    :pswitch_8
    const-string v0, "removeAdCounterHistogramOverride"

    return-object v0

    .line 351
    :pswitch_b
    const-string v0, "setAdCounterHistogramOverride"

    return-object v0

    .line 347
    :pswitch_e
    const-string v0, "resetAllAdSelectionFromOutcomesConfigRemoteOverrides"

    return-object v0

    .line 343
    :pswitch_11
    const-string v0, "removeAdSelectionFromOutcomesConfigRemoteInfoOverride"

    return-object v0

    .line 339
    :pswitch_14
    const-string v0, "overrideAdSelectionFromOutcomesConfigRemoteInfo"

    return-object v0

    .line 335
    :pswitch_17
    const-string v0, "resetAllAdSelectionConfigRemoteOverrides"

    return-object v0

    .line 331
    :pswitch_1a
    const-string v0, "removeAdSelectionConfigRemoteInfoOverride"

    return-object v0

    .line 327
    :pswitch_1d
    const-string v0, "setAppInstallAdvertisers"

    return-object v0

    .line 323
    :pswitch_20
    const-string v0, "overrideAdSelectionConfigRemoteInfo"

    return-object v0

    .line 319
    :pswitch_23
    const-string v0, "updateAdCounterHistogram"

    return-object v0

    .line 315
    :pswitch_26
    const-string v0, "reportInteraction"

    return-object v0

    .line 311
    :pswitch_29
    const-string v0, "reportImpression"

    return-object v0

    .line 307
    :pswitch_2c
    const-string v0, "selectAdsFromOutcomes"

    return-object v0

    .line 303
    :pswitch_2f
    const-string v0, "selectAds"

    return-object v0

    .line 299
    :pswitch_32
    const-string v0, "persistAdSelectionResult"

    return-object v0

    .line 295
    :pswitch_35
    const-string v0, "getAdSelectionData"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 286
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1065
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 370
    invoke-static {p1}, Landroid/adservices/adselection/AdSelectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 374
    const-string v0, "android.adservices.adselection.AdSelectionService"

    .line 375
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 376
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 379
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    return v1

    .line 382
    :cond_16
    packed-switch p1, :pswitch_data_1f0

    .line 568
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 561
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/adservices/adselection/AdSelectionOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionOverrideCallback;

    move-result-object v2

    .line 562
    .local v2, "_arg0":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    invoke-virtual {p0, v2}, Landroid/adservices/adselection/AdSelectionService$Stub;->resetAllAdCounterHistogramOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    move-object v3, p0

    goto/16 :goto_1ef

    .line 551
    .end local v2    # "_arg0":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    :pswitch_30
    sget-object v2, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;

    .line 553
    .local v2, "_arg0":Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/adselection/AdSelectionOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionOverrideCallback;

    move-result-object v3

    .line 554
    .local v3, "_arg1":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    invoke-virtual {p0, v2, v3}, Landroid/adservices/adselection/AdSelectionService$Stub;->removeAdCounterHistogramOverride(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    move-object v3, p0

    goto/16 :goto_1ef

    .line 541
    .end local v2    # "_arg0":Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;
    .end local v3    # "_arg1":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    :pswitch_49
    sget-object v2, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;

    .line 543
    .local v2, "_arg0":Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/adselection/AdSelectionOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionOverrideCallback;

    move-result-object v3

    .line 544
    .restart local v3    # "_arg1":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    invoke-virtual {p0, v2, v3}, Landroid/adservices/adselection/AdSelectionService$Stub;->setAdCounterHistogramOverride(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V

    .line 545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    move-object v3, p0

    goto/16 :goto_1ef

    .line 533
    .end local v2    # "_arg0":Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;
    .end local v3    # "_arg1":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/adservices/adselection/AdSelectionOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionOverrideCallback;

    move-result-object v2

    .line 534
    .local v2, "_arg0":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    invoke-virtual {p0, v2}, Landroid/adservices/adselection/AdSelectionService$Stub;->resetAllAdSelectionFromOutcomesConfigRemoteOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    move-object v3, p0

    goto/16 :goto_1ef

    .line 523
    .end local v2    # "_arg0":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    :pswitch_73
    sget-object v2, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 525
    .local v2, "_arg0":Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/adselection/AdSelectionOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionOverrideCallback;

    move-result-object v3

    .line 526
    .restart local v3    # "_arg1":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    invoke-virtual {p0, v2, v3}, Landroid/adservices/adselection/AdSelectionService$Stub;->removeAdSelectionFromOutcomesConfigRemoteInfoOverride(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    move-object v3, p0

    goto/16 :goto_1ef

    .line 509
    .end local v2    # "_arg0":Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .end local v3    # "_arg1":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    :pswitch_8c
    sget-object v2, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    .line 511
    .restart local v2    # "_arg0":Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/adservices/common/AdSelectionSignals;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/adservices/common/AdSelectionSignals;

    .line 515
    .local v4, "_arg2":Landroid/adservices/common/AdSelectionSignals;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/adservices/adselection/AdSelectionOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionOverrideCallback;

    move-result-object v5

    .line 516
    .local v5, "_arg3":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/adservices/adselection/AdSelectionService$Stub;->overrideAdSelectionFromOutcomesConfigRemoteInfo(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    move-object v3, p0

    goto/16 :goto_1ef

    .line 501
    .end local v2    # "_arg0":Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/adservices/common/AdSelectionSignals;
    .end local v5    # "_arg3":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/adservices/adselection/AdSelectionOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionOverrideCallback;

    move-result-object v2

    .line 502
    .local v2, "_arg0":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    invoke-virtual {p0, v2}, Landroid/adservices/adselection/AdSelectionService$Stub;->resetAllAdSelectionConfigRemoteOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    move-object v3, p0

    goto/16 :goto_1ef

    .line 491
    .end local v2    # "_arg0":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    :pswitch_c2
    sget-object v2, Landroid/adservices/adselection/AdSelectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/AdSelectionConfig;

    .line 493
    .local v2, "_arg0":Landroid/adservices/adselection/AdSelectionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/adselection/AdSelectionOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionOverrideCallback;

    move-result-object v3

    .line 494
    .local v3, "_arg1":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    invoke-virtual {p0, v2, v3}, Landroid/adservices/adselection/AdSelectionService$Stub;->removeAdSelectionConfigRemoteInfoOverride(Landroid/adservices/adselection/AdSelectionConfig;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    move-object v3, p0

    goto/16 :goto_1ef

    .line 481
    .end local v2    # "_arg0":Landroid/adservices/adselection/AdSelectionConfig;
    .end local v3    # "_arg1":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    :pswitch_db
    sget-object v2, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/SetAppInstallAdvertisersInput;

    .line 483
    .local v2, "_arg0":Landroid/adservices/adselection/SetAppInstallAdvertisersInput;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/adservices/adselection/SetAppInstallAdvertisersCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/SetAppInstallAdvertisersCallback;

    move-result-object v3

    .line 484
    .local v3, "_arg1":Landroid/adservices/adselection/SetAppInstallAdvertisersCallback;
    invoke-virtual {p0, v2, v3}, Landroid/adservices/adselection/AdSelectionService$Stub;->setAppInstallAdvertisers(Landroid/adservices/adselection/SetAppInstallAdvertisersInput;Landroid/adservices/adselection/SetAppInstallAdvertisersCallback;)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    move-object v3, p0

    goto/16 :goto_1ef

    .line 465
    .end local v2    # "_arg0":Landroid/adservices/adselection/SetAppInstallAdvertisersInput;
    .end local v3    # "_arg1":Landroid/adservices/adselection/SetAppInstallAdvertisersCallback;
    :pswitch_f4
    sget-object v2, Landroid/adservices/adselection/AdSelectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/adservices/adselection/AdSelectionConfig;

    .line 467
    .local v4, "_arg0":Landroid/adservices/adselection/AdSelectionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/adservices/common/AdSelectionSignals;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/adservices/common/AdSelectionSignals;

    .line 471
    .local v6, "_arg2":Landroid/adservices/common/AdSelectionSignals;
    sget-object v2, Landroid/adservices/adselection/PerBuyerDecisionLogic;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/adservices/adselection/PerBuyerDecisionLogic;

    .line 473
    .local v7, "_arg3":Landroid/adservices/adselection/PerBuyerDecisionLogic;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/adservices/adselection/AdSelectionOverrideCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionOverrideCallback;

    move-result-object v8

    .line 474
    .local v8, "_arg4":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/adservices/adselection/AdSelectionService$Stub;->overrideAdSelectionConfigRemoteInfo(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/adselection/PerBuyerDecisionLogic;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    goto/16 :goto_1ef

    .line 455
    .end local v4    # "_arg0":Landroid/adservices/adselection/AdSelectionConfig;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/adservices/common/AdSelectionSignals;
    .end local v7    # "_arg3":Landroid/adservices/adselection/PerBuyerDecisionLogic;
    .end local v8    # "_arg4":Landroid/adservices/adselection/AdSelectionOverrideCallback;
    :pswitch_124
    move-object v3, p0

    sget-object v2, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;

    .line 457
    .local v2, "_arg0":Landroid/adservices/adselection/UpdateAdCounterHistogramInput;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/adselection/UpdateAdCounterHistogramCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/UpdateAdCounterHistogramCallback;

    move-result-object v4

    .line 458
    .local v4, "_arg1":Landroid/adservices/adselection/UpdateAdCounterHistogramCallback;
    invoke-virtual {p0, v2, v4}, Landroid/adservices/adselection/AdSelectionService$Stub;->updateAdCounterHistogram(Landroid/adservices/adselection/UpdateAdCounterHistogramInput;Landroid/adservices/adselection/UpdateAdCounterHistogramCallback;)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    goto/16 :goto_1ef

    .line 445
    .end local v2    # "_arg0":Landroid/adservices/adselection/UpdateAdCounterHistogramInput;
    .end local v4    # "_arg1":Landroid/adservices/adselection/UpdateAdCounterHistogramCallback;
    :pswitch_13d
    move-object v3, p0

    sget-object v2, Landroid/adservices/adselection/ReportInteractionInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/ReportInteractionInput;

    .line 447
    .local v2, "_arg0":Landroid/adservices/adselection/ReportInteractionInput;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/adselection/ReportInteractionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/ReportInteractionCallback;

    move-result-object v4

    .line 448
    .local v4, "_arg1":Landroid/adservices/adselection/ReportInteractionCallback;
    invoke-virtual {p0, v2, v4}, Landroid/adservices/adselection/AdSelectionService$Stub;->reportInteraction(Landroid/adservices/adselection/ReportInteractionInput;Landroid/adservices/adselection/ReportInteractionCallback;)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    goto/16 :goto_1ef

    .line 435
    .end local v2    # "_arg0":Landroid/adservices/adselection/ReportInteractionInput;
    .end local v4    # "_arg1":Landroid/adservices/adselection/ReportInteractionCallback;
    :pswitch_156
    move-object v3, p0

    sget-object v2, Landroid/adservices/adselection/ReportImpressionInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/ReportImpressionInput;

    .line 437
    .local v2, "_arg0":Landroid/adservices/adselection/ReportImpressionInput;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/adservices/adselection/ReportImpressionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/ReportImpressionCallback;

    move-result-object v4

    .line 438
    .local v4, "_arg1":Landroid/adservices/adselection/ReportImpressionCallback;
    invoke-virtual {p0, v2, v4}, Landroid/adservices/adselection/AdSelectionService$Stub;->reportImpression(Landroid/adservices/adselection/ReportImpressionInput;Landroid/adservices/adselection/ReportImpressionCallback;)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    goto/16 :goto_1ef

    .line 423
    .end local v2    # "_arg0":Landroid/adservices/adselection/ReportImpressionInput;
    .end local v4    # "_arg1":Landroid/adservices/adselection/ReportImpressionCallback;
    :pswitch_16f
    move-object v3, p0

    sget-object v2, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/AdSelectionFromOutcomesInput;

    .line 425
    .local v2, "_arg0":Landroid/adservices/adselection/AdSelectionFromOutcomesInput;
    sget-object v4, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/adservices/common/CallerMetadata;

    .line 427
    .local v4, "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/adservices/adselection/AdSelectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionCallback;

    move-result-object v5

    .line 428
    .local v5, "_arg2":Landroid/adservices/adselection/AdSelectionCallback;
    invoke-virtual {p0, v2, v4, v5}, Landroid/adservices/adselection/AdSelectionService$Stub;->selectAdsFromOutcomes(Landroid/adservices/adselection/AdSelectionFromOutcomesInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/AdSelectionCallback;)V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto :goto_1ef

    .line 411
    .end local v2    # "_arg0":Landroid/adservices/adselection/AdSelectionFromOutcomesInput;
    .end local v4    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v5    # "_arg2":Landroid/adservices/adselection/AdSelectionCallback;
    :pswitch_18f
    move-object v3, p0

    sget-object v2, Landroid/adservices/adselection/AdSelectionInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/AdSelectionInput;

    .line 413
    .local v2, "_arg0":Landroid/adservices/adselection/AdSelectionInput;
    sget-object v4, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/adservices/common/CallerMetadata;

    .line 415
    .restart local v4    # "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/adservices/adselection/AdSelectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/AdSelectionCallback;

    move-result-object v5

    .line 416
    .restart local v5    # "_arg2":Landroid/adservices/adselection/AdSelectionCallback;
    invoke-virtual {p0, v2, v4, v5}, Landroid/adservices/adselection/AdSelectionService$Stub;->selectAds(Landroid/adservices/adselection/AdSelectionInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/AdSelectionCallback;)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    goto :goto_1ef

    .line 399
    .end local v2    # "_arg0":Landroid/adservices/adselection/AdSelectionInput;
    .end local v4    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v5    # "_arg2":Landroid/adservices/adselection/AdSelectionCallback;
    :pswitch_1af
    move-object v3, p0

    sget-object v2, Landroid/adservices/adselection/PersistAdSelectionResultInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/PersistAdSelectionResultInput;

    .line 401
    .local v2, "_arg0":Landroid/adservices/adselection/PersistAdSelectionResultInput;
    sget-object v4, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/adservices/common/CallerMetadata;

    .line 403
    .restart local v4    # "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/adservices/adselection/PersistAdSelectionResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/PersistAdSelectionResultCallback;

    move-result-object v5

    .line 404
    .local v5, "_arg2":Landroid/adservices/adselection/PersistAdSelectionResultCallback;
    invoke-virtual {p0, v2, v4, v5}, Landroid/adservices/adselection/AdSelectionService$Stub;->persistAdSelectionResult(Landroid/adservices/adselection/PersistAdSelectionResultInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/PersistAdSelectionResultCallback;)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    goto :goto_1ef

    .line 387
    .end local v2    # "_arg0":Landroid/adservices/adselection/PersistAdSelectionResultInput;
    .end local v4    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v5    # "_arg2":Landroid/adservices/adselection/PersistAdSelectionResultCallback;
    :pswitch_1cf
    move-object v3, p0

    sget-object v2, Landroid/adservices/adselection/GetAdSelectionDataInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/adselection/GetAdSelectionDataInput;

    .line 389
    .local v2, "_arg0":Landroid/adservices/adselection/GetAdSelectionDataInput;
    sget-object v4, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/adservices/common/CallerMetadata;

    .line 391
    .restart local v4    # "_arg1":Landroid/adservices/common/CallerMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/adservices/adselection/GetAdSelectionDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/adservices/adselection/GetAdSelectionDataCallback;

    move-result-object v5

    .line 392
    .local v5, "_arg2":Landroid/adservices/adselection/GetAdSelectionDataCallback;
    invoke-virtual {p0, v2, v4, v5}, Landroid/adservices/adselection/AdSelectionService$Stub;->getAdSelectionData(Landroid/adservices/adselection/GetAdSelectionDataInput;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adselection/GetAdSelectionDataCallback;)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    nop

    .line 571
    .end local v2    # "_arg0":Landroid/adservices/adselection/GetAdSelectionDataInput;
    .end local v4    # "_arg1":Landroid/adservices/common/CallerMetadata;
    .end local v5    # "_arg2":Landroid/adservices/adselection/GetAdSelectionDataCallback;
    :goto_1ef
    return v1

    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_1cf
        :pswitch_1af
        :pswitch_18f
        :pswitch_16f
        :pswitch_156
        :pswitch_13d
        :pswitch_124
        :pswitch_f4
        :pswitch_db
        :pswitch_c2
        :pswitch_b1
        :pswitch_8c
        :pswitch_73
        :pswitch_62
        :pswitch_49
        :pswitch_30
        :pswitch_1f
    .end packed-switch
.end method

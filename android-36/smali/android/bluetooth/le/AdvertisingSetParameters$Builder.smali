.class public final Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
.super Ljava/lang/Object;
.source "AdvertisingSetParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertisingSetParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConnectable:Z

.field private blacklist mDiscoverable:Z

.field private blacklist mIncludeTxPower:Z

.field private blacklist mInterval:I

.field private blacklist mIsAnonymous:Z

.field private blacklist mIsDirected:Z

.field private blacklist mIsHighDutyCycle:Z

.field private blacklist mIsLegacy:Z

.field private blacklist mOwnAddressType:I

.field private blacklist mPeerAddress:Ljava/lang/String;

.field private blacklist mPeerAddressType:I

.field private blacklist mPrimaryPhy:I

.field private blacklist mScannable:Z

.field private blacklist mSecondaryPhy:I

.field private blacklist mTxPowerLevel:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    .line 376
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mDiscoverable:Z

    .line 377
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    .line 378
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    .line 379
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    .line 380
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    .line 381
    iput v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    .line 382
    iput v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    .line 383
    const/16 v1, 0xa0

    iput v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    .line 384
    const/4 v1, -0x7

    iput v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    .line 385
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mOwnAddressType:I

    .line 386
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsDirected:Z

    .line 387
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsHighDutyCycle:Z

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPeerAddress:Ljava/lang/String;

    .line 389
    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPeerAddressType:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/AdvertisingSetParameters;
    .registers 21

    .line 652
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    if-eqz v1, :cond_67

    .line 653
    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    if-nez v1, :cond_5f

    .line 657
    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsDirected:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 658
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Legacy directed advertising must be connectable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 662
    :cond_1b
    :goto_1b
    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsDirected:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    if-nez v1, :cond_24

    goto :goto_2c

    .line 663
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Legacy directed advertising can\'t be scannable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    :cond_2c
    :goto_2c
    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsDirected:Z

    if-nez v1, :cond_3d

    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsHighDutyCycle:Z

    if-nez v1, :cond_35

    goto :goto_3d

    .line 668
    :cond_35
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Non-directed legacy advertising can\'t be high duty cycle"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 672
    :cond_3d
    :goto_3d
    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsDirected:Z

    if-nez v1, :cond_52

    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-eqz v1, :cond_52

    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    if-eqz v1, :cond_4a

    goto :goto_52

    .line 673
    :cond_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Non-directed legacy advertising can\'t be connectable and non-scannable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_52
    :goto_52
    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    if-nez v1, :cond_57

    goto :goto_8d

    .line 679
    :cond_57
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Legacy advertising can\'t include TX power level in header"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    :cond_5f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Legacy advertising can\'t be anonymous"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 683
    :cond_67
    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-eqz v1, :cond_78

    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    if-nez v1, :cond_70

    goto :goto_78

    .line 684
    :cond_70
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Advertising can\'t be both connectable and scannable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    :cond_78
    :goto_78
    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    if-eqz v1, :cond_89

    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    if-nez v1, :cond_81

    goto :goto_89

    .line 689
    :cond_81
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Advertising can\'t be both connectable and anonymous"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_89
    :goto_89
    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsHighDutyCycle:Z

    if-nez v1, :cond_ca

    .line 699
    :goto_8d
    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsDirected:Z

    if-eqz v1, :cond_9e

    iget-object v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPeerAddress:Ljava/lang/String;

    if-eqz v1, :cond_96

    goto :goto_9e

    .line 700
    :cond_96
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Peer address should not be null for directed advertising"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 704
    :cond_9e
    :goto_9e
    new-instance v3, Landroid/bluetooth/le/AdvertisingSetParameters;

    iget-boolean v4, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    iget-boolean v5, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mDiscoverable:Z

    iget-boolean v6, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    iget-boolean v7, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    iget-boolean v8, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    iget-boolean v9, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    iget v10, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    iget v11, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    iget v12, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    iget v13, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    iget v14, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mOwnAddressType:I

    iget-boolean v15, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsDirected:Z

    iget-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsHighDutyCycle:Z

    iget-object v2, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPeerAddress:Ljava/lang/String;

    move/from16 v16, v1

    iget v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPeerAddressType:I

    const/16 v19, 0x0

    move/from16 v18, v1

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v19}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZZIIIIIZZLjava/lang/String;ILandroid/bluetooth/le/AdvertisingSetParameters-IA;)V

    return-object v3

    .line 694
    :cond_ca
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Non-legacy advertising can\'t be high duty cycle"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setAnonymous(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2
    .param p1, "isAnonymous"    # Z

    .line 449
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsAnonymous:Z

    .line 450
    return-object p0
.end method

.method public whitelist setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2
    .param p1, "connectable"    # Z

    .line 400
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mConnectable:Z

    .line 401
    return-object p0
.end method

.method public whitelist setDirected(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2
    .param p1, "isDirected"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 578
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsDirected:Z

    .line 579
    return-object p0
.end method

.method public whitelist setDiscoverable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2
    .param p1, "discoverable"    # Z

    .line 413
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mDiscoverable:Z

    .line 414
    return-object p0
.end method

.method public whitelist setHighDutyCycle(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2
    .param p1, "isHighDutyCycle"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 593
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsHighDutyCycle:Z

    .line 594
    return-object p0
.end method

.method public whitelist setIncludeTxPower(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2
    .param p1, "includeTxPower"    # Z

    .line 461
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIncludeTxPower:Z

    .line 462
    return-object p0
.end method

.method public whitelist setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5
    .param p1, "interval"    # I

    .line 521
    const/16 v0, 0xa0

    if-lt p1, v0, :cond_c

    const v0, 0xffffff

    if-gt p1, v0, :cond_c

    .line 524
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mInterval:I

    .line 525
    return-object p0

    .line 522
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2
    .param p1, "isLegacy"    # Z

    .line 436
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mIsLegacy:Z

    .line 437
    return-object p0
.end method

.method public whitelist setOwnAddressType(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5
    .param p1, "ownAddressType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 558
    const/4 v0, -0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x2

    if-gt p1, v0, :cond_9

    .line 563
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mOwnAddressType:I

    .line 564
    return-object p0

    .line 561
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown address type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPeerAddress(Ljava/lang/String;)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5
    .param p1, "peerAddress"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 609
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 614
    iput-object p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPeerAddress:Ljava/lang/String;

    .line 615
    return-object p0

    .line 611
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid Bluetooth address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPeerAddressType(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5
    .param p1, "peerAddressType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 630
    sparse-switch p1, :sswitch_data_3a

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown peer address type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :sswitch_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported peer address type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :sswitch_35
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPeerAddressType:I

    .line 634
    nop

    .line 643
    return-object p0

    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_35
        0x1 -> :sswitch_35
        0xff -> :sswitch_1c
        0xffff -> :sswitch_1c
    .end sparse-switch
.end method

.method public whitelist setPrimaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5
    .param p1, "primaryPhy"    # I

    .line 478
    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_20

    .line 480
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad primaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_20
    :goto_20
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mPrimaryPhy:I

    .line 483
    return-object p0
.end method

.method public whitelist setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 2
    .param p1, "scannable"    # Z

    .line 426
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mScannable:Z

    .line 427
    return-object p0
.end method

.method public whitelist setSecondaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5
    .param p1, "secondaryPhy"    # I

    .line 501
    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_23

    .line 504
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad secondaryPhy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_23
    :goto_23
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mSecondaryPhy:I

    .line 507
    return-object p0
.end method

.method public whitelist setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .registers 5
    .param p1, "txPowerLevel"    # I

    .line 540
    const/16 v0, -0x7f

    if-lt p1, v0, :cond_a

    const/4 v0, 0x1

    if-gt p1, v0, :cond_a

    .line 543
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->mTxPowerLevel:I

    .line 544
    return-object p0

    .line 541
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown txPowerLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public final Landroid/net/NetworkIdentity$Builder;
.super Ljava/lang/Object;
.source "NetworkIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDefaultNetwork:Z

.field private blacklist mMetered:Z

.field private blacklist mOemManaged:I

.field private blacklist mRatType:I

.field private blacklist mRoaming:Z

.field private blacklist mSubId:I

.field private blacklist mSubscriberId:Ljava/lang/String;

.field private blacklist mType:I

.field private blacklist mWifiNetworkKey:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkIdentity$Builder;->mType:I

    .line 372
    iput v0, p0, Landroid/net/NetworkIdentity$Builder;->mRatType:I

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/NetworkIdentity$Builder;->mSubscriberId:Ljava/lang/String;

    .line 374
    iput-object v1, p0, Landroid/net/NetworkIdentity$Builder;->mWifiNetworkKey:Ljava/lang/String;

    .line 375
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/NetworkIdentity$Builder;->mRoaming:Z

    .line 376
    iput-boolean v1, p0, Landroid/net/NetworkIdentity$Builder;->mMetered:Z

    .line 377
    iput-boolean v1, p0, Landroid/net/NetworkIdentity$Builder;->mDefaultNetwork:Z

    .line 378
    iput v1, p0, Landroid/net/NetworkIdentity$Builder;->mOemManaged:I

    .line 379
    iput v0, p0, Landroid/net/NetworkIdentity$Builder;->mSubId:I

    .line 380
    return-void
.end method

.method private blacklist ensureValidParameters()V
    .registers 4

    .line 585
    iget v0, p0, Landroid/net/NetworkIdentity$Builder;->mType:I

    if-eqz v0, :cond_31

    iget v0, p0, Landroid/net/NetworkIdentity$Builder;->mRatType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_31

    .line 586
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ratType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkIdentity$Builder;->mRatType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkIdentity$Builder;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_31
    :goto_31
    iget v0, p0, Landroid/net/NetworkIdentity$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    iget v0, p0, Landroid/net/NetworkIdentity$Builder;->mType:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5c

    iget-object v0, p0, Landroid/net/NetworkIdentity$Builder;->mWifiNetworkKey:Ljava/lang/String;

    if-nez v0, :cond_41

    goto :goto_5c

    .line 592
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid wifi network key for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkIdentity$Builder;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/NetworkIdentity;
    .registers 11

    .line 603
    invoke-direct {p0}, Landroid/net/NetworkIdentity$Builder;->ensureValidParameters()V

    .line 604
    new-instance v0, Landroid/net/NetworkIdentity;

    iget v1, p0, Landroid/net/NetworkIdentity$Builder;->mType:I

    iget v2, p0, Landroid/net/NetworkIdentity$Builder;->mRatType:I

    iget-object v3, p0, Landroid/net/NetworkIdentity$Builder;->mSubscriberId:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/NetworkIdentity$Builder;->mWifiNetworkKey:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/net/NetworkIdentity$Builder;->mRoaming:Z

    iget-boolean v6, p0, Landroid/net/NetworkIdentity$Builder;->mMetered:Z

    iget-boolean v7, p0, Landroid/net/NetworkIdentity$Builder;->mDefaultNetwork:Z

    iget v8, p0, Landroid/net/NetworkIdentity$Builder;->mOemManaged:I

    iget v9, p0, Landroid/net/NetworkIdentity$Builder;->mSubId:I

    invoke-direct/range {v0 .. v9}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZII)V

    return-object v0
.end method

.method public blacklist clearRatType()Landroid/net/NetworkIdentity$Builder;
    .registers 2

    .line 481
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkIdentity$Builder;->mRatType:I

    .line 482
    return-object p0
.end method

.method public blacklist setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;
    .registers 2
    .param p1, "defaultNetwork"    # Z

    .line 549
    iput-boolean p1, p0, Landroid/net/NetworkIdentity$Builder;->mDefaultNetwork:Z

    .line 550
    return-object p0
.end method

.method public blacklist setMetered(Z)Landroid/net/NetworkIdentity$Builder;
    .registers 2
    .param p1, "metered"    # Z

    .line 535
    iput-boolean p1, p0, Landroid/net/NetworkIdentity$Builder;->mMetered:Z

    .line 536
    return-object p0
.end method

.method public blacklist setNetworkStateSnapshot(Landroid/net/NetworkStateSnapshot;)Landroid/net/NetworkIdentity$Builder;
    .registers 7
    .param p1, "snapshot"    # Landroid/net/NetworkStateSnapshot;

    .line 399
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getLegacyType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    .line 401
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    .line 402
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/net/NetworkIdentity$Builder;->setRoaming(Z)Landroid/net/NetworkIdentity$Builder;

    .line 404
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    .line 407
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkIdentity;->getOemBitfield(Landroid/net/NetworkCapabilities;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkIdentity$Builder;->setOemManaged(I)Landroid/net/NetworkIdentity$Builder;

    .line 409
    iget v0, p0, Landroid/net/NetworkIdentity$Builder;->mType:I

    if-ne v0, v2, :cond_7d

    .line 410
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 411
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v1

    .line 412
    .local v1, "transportInfo":Landroid/net/TransportInfo;
    instance-of v2, v1, Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_98

    .line 413
    move-object v2, v1

    check-cast v2, Landroid/net/wifi/WifiInfo;

    .line 417
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_75

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiInfo contains a null wifiNetworkKey and it will be set into NetworkIdentity, netId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 419
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NetworkCapabilities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 418
    const-string v4, "NetworkIdentity"

    invoke-static {v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_75
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/NetworkIdentity$Builder;->setWifiNetworkKey(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    goto :goto_98

    .line 424
    .end local v0    # "nc":Landroid/net/NetworkCapabilities;
    .end local v1    # "transportInfo":Landroid/net/TransportInfo;
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_7d
    iget v0, p0, Landroid/net/NetworkIdentity$Builder;->mType:I

    if-ne v0, v1, :cond_98

    .line 425
    invoke-virtual {p1}, Landroid/net/NetworkStateSnapshot;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    .line 426
    .local v0, "ns":Landroid/net/NetworkSpecifier;
    instance-of v1, v0, Landroid/net/TestNetworkSpecifier;

    if-eqz v1, :cond_99

    .line 428
    move-object v1, v0

    check-cast v1, Landroid/net/TestNetworkSpecifier;

    invoke-virtual {v1}, Landroid/net/TestNetworkSpecifier;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkIdentity$Builder;->setWifiNetworkKey(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    goto :goto_99

    .line 424
    .end local v0    # "ns":Landroid/net/NetworkSpecifier;
    :cond_98
    :goto_98
    nop

    .line 431
    :cond_99
    :goto_99
    return-object p0
.end method

.method public blacklist setOemManaged(I)Landroid/net/NetworkIdentity$Builder;
    .registers 6
    .param p1, "oemManaged"    # I

    .line 563
    const-wide/16 v0, -0x4

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 566
    iput p1, p0, Landroid/net/NetworkIdentity$Builder;->mOemManaged:I

    .line 567
    return-object p0

    .line 564
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for OemManaged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRatType(I)Landroid/net/NetworkIdentity$Builder;
    .registers 5
    .param p1, "ratType"    # I

    .line 465
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz p1, :cond_29

    const/4 v0, -0x2

    if-ne p1, v0, :cond_10

    goto :goto_29

    .line 468
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ratType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_29
    :goto_29
    iput p1, p0, Landroid/net/NetworkIdentity$Builder;->mRatType:I

    .line 471
    return-object p0
.end method

.method public blacklist setRoaming(Z)Landroid/net/NetworkIdentity$Builder;
    .registers 2
    .param p1, "roaming"    # Z

    .line 521
    iput-boolean p1, p0, Landroid/net/NetworkIdentity$Builder;->mRoaming:Z

    .line 522
    return-object p0
.end method

.method public blacklist setSubId(I)Landroid/net/NetworkIdentity$Builder;
    .registers 2
    .param p1, "subId"    # I

    .line 579
    iput p1, p0, Landroid/net/NetworkIdentity$Builder;->mSubId:I

    .line 580
    return-object p0
.end method

.method public blacklist setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;
    .registers 2
    .param p1, "subscriberId"    # Ljava/lang/String;

    .line 493
    iput-object p1, p0, Landroid/net/NetworkIdentity$Builder;->mSubscriberId:Ljava/lang/String;

    .line 494
    return-object p0
.end method

.method public blacklist setType(I)Landroid/net/NetworkIdentity$Builder;
    .registers 5
    .param p1, "type"    # I

    .line 445
    if-ltz p1, :cond_6

    const/16 v0, 0x12

    if-ge v0, p1, :cond_9

    :cond_6
    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    .line 449
    :cond_9
    iput p1, p0, Landroid/net/NetworkIdentity$Builder;->mType:I

    .line 450
    return-object p0

    .line 447
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setWifiNetworkKey(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;
    .registers 2
    .param p1, "wifiNetworkKey"    # Ljava/lang/String;

    .line 507
    iput-object p1, p0, Landroid/net/NetworkIdentity$Builder;->mWifiNetworkKey:Ljava/lang/String;

    .line 508
    return-object p0
.end method

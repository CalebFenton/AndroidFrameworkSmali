.class public final Landroid/net/wifi/rtt/RangingRequest$Builder;
.super Ljava/lang/Object;
.source "RangingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/RangingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRttBurstSize:I

.field private greylist-max-o mRttPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSecurityMode:I

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mRttPeers:Ljava/util/List;

    .line 284
    const/16 v0, 0x8

    iput v0, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mRttBurstSize:I

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mVendorData:Ljava/util/List;

    .line 286
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mSecurityMode:I

    return-void
.end method

.method private blacklist filterRttPeersBasedOnSecurityMode()V
    .registers 8

    .line 613
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mRttPeers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 614
    .local v0, "peers":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/rtt/ResponderConfig;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 615
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/rtt/ResponderConfig;

    .line 616
    .local v1, "peer":Landroid/net/wifi/rtt/ResponderConfig;
    invoke-virtual {v1}, Landroid/net/wifi/rtt/ResponderConfig;->getSecureRangingConfig()Landroid/net/wifi/rtt/SecureRangingConfig;

    move-result-object v2

    .line 618
    .local v2, "config":Landroid/net/wifi/rtt/SecureRangingConfig;
    iget v3, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mSecurityMode:I

    const/4 v4, 0x2

    const-string v5, "RangingRequest"

    if-ne v3, v4, :cond_4c

    .line 619
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/net/wifi/rtt/SecureRangingConfig;->getPasnConfig()Landroid/net/wifi/rtt/PasnConfig;

    move-result-object v3

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    .line 620
    .local v3, "pasn":Landroid/net/wifi/rtt/PasnConfig;
    :goto_25
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Landroid/net/wifi/rtt/PasnConfig;->getBaseAkms()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_74

    .line 621
    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SECURITY_MODE_SECURE_AUTH is set, removing non-secure peer: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 623
    invoke-virtual {v1}, Landroid/net/wifi/rtt/ResponderConfig;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 625
    .end local v3    # "pasn":Landroid/net/wifi/rtt/PasnConfig;
    :cond_4c
    iget v3, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mSecurityMode:I

    if-nez v3, :cond_74

    .line 628
    invoke-virtual {v2}, Landroid/net/wifi/rtt/SecureRangingConfig;->isRangingFrameProtectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 629
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECURITY_MODE_OPEN is set, removing secure peer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 631
    invoke-virtual {v1}, Landroid/net/wifi/rtt/ResponderConfig;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 625
    :cond_74
    :goto_74
    nop

    .line 634
    .end local v1    # "peer":Landroid/net/wifi/rtt/ResponderConfig;
    .end local v2    # "config":Landroid/net/wifi/rtt/SecureRangingConfig;
    :cond_75
    :goto_75
    goto :goto_6

    .line 635
    :cond_76
    return-void
.end method


# virtual methods
.method public whitelist addAccessPoint(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 4
    .param p1, "apInfo"    # Landroid/net/wifi/ScanResult;

    .line 339
    if-eqz p1, :cond_b

    .line 342
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->fromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    move-result-object v0

    return-object v0

    .line 340
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null ScanResult!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addAccessPoints(Ljava/util/List;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/net/wifi/rtt/RangingRequest$Builder;"
        }
    .end annotation

    .line 366
    .local p1, "apInfos":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_17

    .line 369
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 370
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {p0, v1}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addAccessPoint(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    .line 371
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_6

    .line 372
    :cond_16
    return-object p0

    .line 367
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null list of ScanResults!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addNon80211mcCapableAccessPoint(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 4
    .param p1, "apInfo"    # Landroid/net/wifi/ScanResult;

    .line 460
    if-eqz p1, :cond_1f

    .line 463
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is80211mcResponder()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is80211azNtbResponder()Z

    move-result v0

    if-nez v0, :cond_17

    .line 467
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->fromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    move-result-object v0

    return-object v0

    .line 464
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AP supports the 802.11mc or 8022.11az protocol."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null ScanResult!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addNon80211mcCapableAccessPoints(Ljava/util/List;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/net/wifi/rtt/RangingRequest$Builder;"
        }
    .end annotation

    .line 497
    .local p1, "apInfos":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_2b

    .line 500
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 501
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is80211mcResponder()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is80211azNtbResponder()Z

    move-result v2

    if-nez v2, :cond_22

    .line 505
    invoke-virtual {p0, v1}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addAccessPoint(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    .line 506
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    goto :goto_6

    .line 502
    .restart local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "At least one AP supports the 802.11mc or 802.11az protocol."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_2a
    return-object p0

    .line 498
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null list of ScanResults!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 4
    .param p1, "responder"    # Landroid/net/wifi/rtt/ResponderConfig;

    .line 395
    if-eqz p1, :cond_8

    .line 399
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mRttPeers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    return-object p0

    .line 396
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null Responder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addResponders(Ljava/util/List;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;)",
            "Landroid/net/wifi/rtt/RangingRequest$Builder;"
        }
    .end annotation

    .line 424
    .local p1, "responders":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/ResponderConfig;>;"
    if-eqz p1, :cond_17

    .line 427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/rtt/ResponderConfig;

    .line 428
    .local v1, "responder":Landroid/net/wifi/rtt/ResponderConfig;
    invoke-virtual {p0, v1}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    .line 429
    .end local v1    # "responder":Landroid/net/wifi/rtt/ResponderConfig;
    goto :goto_6

    .line 430
    :cond_16
    return-object p0

    .line 425
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null list of Responders"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addWifiAwarePeer(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 4
    .param p1, "peerMacAddress"    # Landroid/net/MacAddress;

    .line 530
    if-eqz p1, :cond_c

    .line 533
    nop

    .line 534
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->fromWifiAwarePeerMacAddressWithDefaults(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v0

    .line 533
    invoke-virtual {p0, v0}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    move-result-object v0

    return-object v0

    .line 531
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null peer MAC address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addWifiAwarePeer(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 4
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .line 558
    if-eqz p1, :cond_b

    .line 562
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->fromWifiAwarePeerHandleWithDefaults(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    move-result-object v0

    return-object v0

    .line 559
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null peer handler (identifier)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/net/wifi/rtt/RangingRequest;
    .registers 9

    .line 643
    iget v0, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mSecurityMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 644
    invoke-direct {p0}, Landroid/net/wifi/rtt/RangingRequest$Builder;->filterRttPeersBasedOnSecurityMode()V

    .line 646
    :cond_8
    new-instance v2, Landroid/net/wifi/rtt/RangingRequest;

    iget-object v3, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mRttPeers:Ljava/util/List;

    iget v4, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mRttBurstSize:I

    iget v5, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mSecurityMode:I

    iget-object v6, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mVendorData:Ljava/util/List;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/rtt/RangingRequest;-><init>(Ljava/util/List;IILjava/util/List;Landroid/net/wifi/rtt/RangingRequest-IA;)V

    return-object v2
.end method

.method public whitelist setRttBurstSize(I)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 4
    .param p1, "rttBurstSize"    # I

    .line 311
    const/4 v0, 0x2

    if-lt p1, v0, :cond_a

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_a

    .line 314
    iput p1, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mRttBurstSize:I

    .line 315
    return-object p0

    .line 312
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RTT burst size out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSecurityMode(I)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 2
    .param p1, "securityMode"    # I

    .line 602
    iput p1, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mSecurityMode:I

    .line 603
    return-object p0
.end method

.method public whitelist setVendorData(Ljava/util/List;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)",
            "Landroid/net/wifi/rtt/RangingRequest$Builder;"
        }
    .end annotation

    .line 578
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 581
    if-eqz p1, :cond_b

    .line 584
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mVendorData:Ljava/util/List;

    .line 585
    return-object p0

    .line 582
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

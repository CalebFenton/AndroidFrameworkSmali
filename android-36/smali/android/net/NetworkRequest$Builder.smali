.class public Landroid/net/NetworkRequest$Builder;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist VCN_SUPPORTED_CAPABILITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private blacklist mShouldDeduceNotVcnManaged:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 300
    nop

    .line 301
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 302
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 303
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 304
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 305
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 306
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 307
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 308
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 309
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 310
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 311
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 312
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 313
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 314
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 315
    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Integer;

    move-result-object v0

    .line 300
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkRequest$Builder;->VCN_SUPPORTED_CAPABILITIES:Ljava/util/List;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkRequest$Builder;->mShouldDeduceNotVcnManaged:Z

    .line 330
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 331
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 332
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/NetworkRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkRequest$Builder;->mShouldDeduceNotVcnManaged:Z

    .line 338
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iput-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkRequest$Builder;->mShouldDeduceNotVcnManaged:Z

    .line 344
    return-void
.end method

.method private blacklist deduceNotVcnManagedCapability(Landroid/net/NetworkCapabilities;)V
    .registers 8
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 623
    iget-boolean v0, p0, Landroid/net/NetworkRequest$Builder;->mShouldDeduceNotVcnManaged:Z

    if-nez v0, :cond_5

    return-void

    .line 624
    :cond_5
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1f

    aget v3, v0, v2

    .line 625
    .local v3, "cap":I
    sget-object v4, Landroid/net/NetworkRequest$Builder;->VCN_SUPPORTED_CAPABILITIES:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    return-void

    .line 624
    .end local v3    # "cap":I
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 627
    :cond_1f
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 628
    return-void
.end method


# virtual methods
.method public whitelist addCapability(I)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .param p1, "capability"    # I

    .line 372
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 373
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_c

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkRequest$Builder;->mShouldDeduceNotVcnManaged:Z

    .line 376
    :cond_c
    return-object p0
.end method

.method public blacklist addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .param p1, "capability"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 446
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addForbiddenCapability(I)V

    .line 447
    return-object p0
.end method

.method public whitelist addTransportType(I)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .param p1, "transportType"    # I

    .line 494
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 495
    return-object p0
.end method

.method public whitelist build()Landroid/net/NetworkRequest;
    .registers 6

    .line 354
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 355
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 356
    invoke-direct {p0, v0}, Landroid/net/NetworkRequest$Builder;->deduceNotVcnManagedCapability(Landroid/net/NetworkCapabilities;)V

    .line 357
    new-instance v1, Landroid/net/NetworkRequest;

    const/4 v2, 0x0

    sget-object v3, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    const/4 v4, -0x1

    invoke-direct {v1, v0, v4, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    return-object v1
.end method

.method public whitelist clearCapabilities()Landroid/net/NetworkRequest$Builder;
    .registers 2

    .line 477
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->clearAll()V

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkRequest$Builder;->mShouldDeduceNotVcnManaged:Z

    .line 481
    return-object p0
.end method

.method public whitelist removeCapability(I)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .param p1, "capability"    # I

    .line 386
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 387
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_c

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkRequest$Builder;->mShouldDeduceNotVcnManaged:Z

    .line 390
    :cond_c
    return-object p0
.end method

.method public blacklist removeForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .param p1, "capability"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 464
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeForbiddenCapability(I)Landroid/net/NetworkCapabilities;

    .line 465
    return-object p0
.end method

.method public whitelist removeTransportType(I)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .param p1, "transportType"    # I

    .line 505
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeTransportType(I)Landroid/net/NetworkCapabilities;

    .line 506
    return-object p0
.end method

.method public greylist-max-o setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 402
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->set(Landroid/net/NetworkCapabilities;)V

    .line 403
    return-object p0
.end method

.method public whitelist setIncludeOtherUidNetworks(Z)Landroid/net/NetworkRequest$Builder;
    .registers 4
    .param p1, "include"    # Z

    .line 665
    if-eqz p1, :cond_9

    .line 666
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    goto :goto_12

    .line 668
    :cond_9
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 670
    :goto_12
    return-object p0
.end method

.method public greylist-max-o setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .param p1, "downKbps"    # I

    .line 520
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 521
    return-object p0
.end method

.method public greylist-max-o setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .param p1, "upKbps"    # I

    .line 513
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 514
    return-object p0
.end method

.method public whitelist setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;
    .registers 4
    .param p1, "networkSpecifier"    # Landroid/net/NetworkSpecifier;

    .line 577
    instance-of v0, p1, Landroid/net/MatchAllNetworkSpecifier;

    if-nez v0, :cond_d

    .line 580
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkRequest$Builder;->mShouldDeduceNotVcnManaged:Z

    .line 584
    return-object p0

    .line 578
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A MatchAllNetworkSpecifier is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;
    .registers 5
    .param p1, "networkSpecifier"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 548
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 549
    .local v0, "subId":I
    new-instance v1, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v1}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 550
    invoke-virtual {v1, v0}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v1

    .line 549
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 551
    .end local v0    # "subId":I
    :catch_16
    move-exception v0

    .line 556
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 557
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    return-object v1

    .line 558
    :cond_26
    iget-object v1, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 559
    new-instance v1, Landroid/net/TestNetworkSpecifier;

    invoke-direct {v1, p1}, Landroid/net/TestNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    return-object v1

    .line 561
    :cond_39
    new-instance v1, Landroid/net/EthernetNetworkSpecifier;

    invoke-direct {v1, p1}, Landroid/net/EthernetNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setSignalStrength(I)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .param p1, "signalStrength"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 606
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)Landroid/net/NetworkCapabilities;

    .line 607
    return-object p0
.end method

.method public whitelist setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkRequest$Builder;"
        }
    .end annotation

    .line 645
    .local p1, "subIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 646
    return-object p0
.end method

.method public greylist-max-o setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Landroid/net/NetworkRequest$Builder;"
        }
    .end annotation

    .line 423
    .local p1, "uids":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 424
    return-object p0
.end method

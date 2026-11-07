.class public final Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
.super Ljava/lang/Object;
.source "VcnCellUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAllowedNetworkPlmnIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedSpecificCarrierIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCapabilitiesMatchCriteria:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMeteredMatchCriteria:I

.field private blacklist mMinEntryDownstreamBandwidthKbps:I

.field private blacklist mMinEntryUpstreamBandwidthKbps:I

.field private blacklist mMinExitDownstreamBandwidthKbps:I

.field private blacklist mMinExitUpstreamBandwidthKbps:I

.field private blacklist mOpportunisticMatchCriteria:I

.field private blacklist mRoamingMatchCriteria:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    .line 415
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    .line 416
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    .line 417
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    .line 419
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    .line 420
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    .line 422
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    .line 423
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    .line 424
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    .line 425
    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    .line 429
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    invoke-static {}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->-$$Nest$sfgetCAPABILITIES_MATCH_CRITERIA_DEFAULT()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 430
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    .registers 13

    .line 727
    new-instance v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iget v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    iget v4, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iget v5, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    iget-object v6, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    iget-object v7, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iget v8, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    iget v9, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    iget-object v10, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;IILjava/util/Map;Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate-IA;)V

    return-object v0
.end method

.method public whitelist setCbs(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 5
    .param p1, "matchCriteria"    # I

    .line 618
    const-string v0, "setCbs"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 620
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-object p0
.end method

.method public whitelist setDun(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 5
    .param p1, "matchCriteria"    # I

    .line 638
    const-string v0, "setDun"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 640
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    return-object p0
.end method

.method public whitelist setIms(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 5
    .param p1, "matchCriteria"    # I

    .line 658
    const-string v0, "setIms"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 660
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    return-object p0
.end method

.method public whitelist setInternet(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 5
    .param p1, "matchCriteria"    # I

    .line 678
    const-string v0, "setInternet"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 680
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    return-object p0
.end method

.method public whitelist setMetered(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3
    .param p1, "matchCriteria"    # I

    .line 448
    const-string v0, "setMetered"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 450
    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    .line 451
    return-object p0
.end method

.method public whitelist setMinDownstreamBandwidthKbps(II)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3
    .param p1, "minEntryDownstreamBandwidthKbps"    # I
    .param p2, "minExitDownstreamBandwidthKbps"    # I

    .line 595
    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 598
    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    .line 599
    iput p2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    .line 601
    return-object p0
.end method

.method public whitelist setMinUpstreamBandwidthKbps(II)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3
    .param p1, "minEntryUpstreamBandwidthKbps"    # I
    .param p2, "minExitUpstreamBandwidthKbps"    # I

    .line 557
    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    .line 559
    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    .line 560
    iput p2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    .line 562
    return-object p0
.end method

.method public whitelist setMms(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 5
    .param p1, "matchCriteria"    # I

    .line 698
    const-string v0, "setMms"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 700
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    return-object p0
.end method

.method public whitelist setOperatorPlmnIds(Ljava/util/Set;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    .line 469
    .local p1, "operatorPlmnIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->-$$Nest$smvalidatePlmnIds(Ljava/util/Set;)V

    .line 471
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 472
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 473
    return-object p0
.end method

.method public whitelist setOpportunistic(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3
    .param p1, "matchCriteria"    # I

    .line 521
    const-string v0, "setOpportunistic"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 523
    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    .line 524
    return-object p0
.end method

.method public whitelist setRcs(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 5
    .param p1, "matchCriteria"    # I

    .line 718
    const-string v0, "setRcs"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 720
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    return-object p0
.end method

.method public whitelist setRoaming(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3
    .param p1, "matchCriteria"    # I

    .line 506
    const-string v0, "setRoaming"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    .line 508
    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    .line 509
    return-object p0
.end method

.method public whitelist setSimSpecificCarrierIds(Ljava/util/Set;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    .line 486
    .local p1, "simSpecificCarrierIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v0, "simSpecificCarrierIds is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 489
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 490
    return-object p0
.end method

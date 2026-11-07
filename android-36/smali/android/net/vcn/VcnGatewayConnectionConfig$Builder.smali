.class public final Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
.super Ljava/lang/Object;
.source "VcnGatewayConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnGatewayConnectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mExposedCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGatewayConnectionName:Ljava/lang/String;

.field private final blacklist mGatewayOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsSafeModeDisabled:Z

.field private blacklist mMaxMtu:I

.field private blacklist mMinUdpPort4500NatTimeoutSeconds:I

.field private blacklist mRetryIntervalsMs:[J

.field private final blacklist mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private final blacklist mUnderlyingNetworkTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)V
    .registers 5
    .param p1, "gatewayConnectionName"    # Ljava/lang/String;
    .param p2, "tunnelConnectionParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    .line 613
    invoke-static {}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$sfgetDEFAULT_RETRY_INTERVALS_MS()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mRetryIntervalsMs:[J

    .line 614
    const/16 v0, 0x5dc

    iput v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMaxMtu:I

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMinUdpPort4500NatTimeoutSeconds:I

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mIsSafeModeDisabled:Z

    .line 618
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mGatewayOptions:Ljava/util/Set;

    .line 641
    const-string v0, "gatewayConnectionName was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 642
    const-string v0, "tunnelConnectionParams was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 643
    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 648
    iput-object p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mGatewayConnectionName:Ljava/lang/String;

    .line 649
    iput-object p2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 650
    return-void

    .line 644
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MOBIKE must be configured for the provided IkeSessionParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addExposedCapability(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 4
    .param p1, "exposedCapability"    # I

    .line 663
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smcheckValidCapability(I)V

    .line 665
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 666
    return-object p0
.end method

.method public whitelist addGatewayOption(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 4
    .param p1, "option"    # I

    .line 817
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smvalidateGatewayOption(I)V

    .line 818
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mGatewayOptions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 819
    return-object p0
.end method

.method public whitelist build()Landroid/net/vcn/VcnGatewayConnectionConfig;
    .registers 12

    .line 864
    new-instance v0, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mGatewayConnectionName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    iget-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    iget-object v5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mRetryIntervalsMs:[J

    iget v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMaxMtu:I

    iget v7, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMinUdpPort4500NatTimeoutSeconds:I

    iget-boolean v8, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mIsSafeModeDisabled:Z

    iget-object v9, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mGatewayOptions:Ljava/util/Set;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/net/vcn/VcnGatewayConnectionConfig;-><init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JIIZLjava/util/Set;Landroid/net/vcn/VcnGatewayConnectionConfig-IA;)V

    return-object v0
.end method

.method public whitelist removeExposedCapability(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 4
    .param p1, "exposedCapability"    # I

    .line 681
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smcheckValidCapability(I)V

    .line 683
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 684
    return-object p0
.end method

.method public whitelist removeGatewayOption(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 4
    .param p1, "option"    # I

    .line 831
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smvalidateGatewayOption(I)V

    .line 832
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mGatewayOptions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 833
    return-object p0
.end method

.method public whitelist setMaxMtu(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 4
    .param p1, "maxMtu"    # I

    .line 770
    const/16 v0, 0x500

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "maxMtu must be at least IPv6 min MTU (1280)"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 773
    iput p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMaxMtu:I

    .line 774
    return-object p0
.end method

.method public whitelist setMinUdpPort4500NatTimeoutSeconds(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 6
    .param p1, "minUdpPort4500NatTimeoutSeconds"    # I

    .line 792
    invoke-static {}, Landroid/net/vcn/Flags;->mainlineVcnModuleApi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x78

    if-eqz v0, :cond_17

    .line 793
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    if-lt p1, v3, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :cond_11
    :goto_11
    const-string v0, "Timeout must be at least 120s or MIN_UDP_PORT_4500_NAT_TIMEOUT_UNSET"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_20

    .line 799
    :cond_17
    if-lt p1, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    const-string v0, "Timeout must be at least 120s"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 804
    :goto_20
    iput p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMinUdpPort4500NatTimeoutSeconds:I

    .line 805
    return-object p0
.end method

.method public whitelist setRetryIntervalsMillis([J)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 2
    .param p1, "retryIntervalsMs"    # [J

    .line 749
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smvalidateRetryInterval([J)V

    .line 751
    iput-object p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mRetryIntervalsMs:[J

    .line 752
    return-object p0
.end method

.method public whitelist setSafeModeEnabled(Z)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 3
    .param p1, "enabled"    # Z

    .line 853
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mIsSafeModeDisabled:Z

    .line 854
    return-object p0
.end method

.method public whitelist setVcnUnderlyingNetworkPriorities(Ljava/util/List;)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;)",
            "Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;"
        }
    .end annotation

    .line 711
    .local p1, "underlyingNetworkTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smvalidateNetworkTemplateList(Ljava/util/List;)V

    .line 713
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 715
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 716
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    sget-object v1, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b

    .line 718
    :cond_16
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 721
    :goto_1b
    return-object p0
.end method

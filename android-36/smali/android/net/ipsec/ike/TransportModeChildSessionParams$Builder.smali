.class public final Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;
.super Landroid/net/ipsec/ike/ChildSessionParams$Builder;
.source "TransportModeChildSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/TransportModeChildSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Landroid/net/ipsec/ike/ChildSessionParams$Builder;-><init>()V

    .line 88
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/ipsec/ike/TransportModeChildSessionParams;)V
    .registers 2
    .param p1, "childParams"    # Landroid/net/ipsec/ike/TransportModeChildSessionParams;

    .line 96
    invoke-direct {p0, p1}, Landroid/net/ipsec/ike/ChildSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/ChildSessionParams;)V

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist addChildSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;
    .registers 3
    .param p1, "proposal"    # Landroid/net/ipsec/ike/ChildSaProposal;

    .line 129
    const-string v0, "Required argument not provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->addProposal(Landroid/net/ipsec/ike/ChildSaProposal;)V

    .line 132
    return-object p0
.end method

.method public whitelist addInboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;
    .registers 3
    .param p1, "trafficSelector"    # Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 154
    const-string v0, "Required argument not provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->addInboundTs(Landroid/net/ipsec/ike/IkeTrafficSelector;)V

    .line 156
    return-object p0
.end method

.method public whitelist addOutboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;
    .registers 3
    .param p1, "trafficSelector"    # Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 178
    const-string v0, "Required argument not provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->addOutboundTs(Landroid/net/ipsec/ike/IkeTrafficSelector;)V

    .line 180
    return-object p0
.end method

.method public whitelist addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;
    .registers 3
    .param p1, "proposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->addChildSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/net/ipsec/ike/TransportModeChildSessionParams;
    .registers 9

    .line 223
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->addDefaultTsIfNotConfigured()V

    .line 224
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->validateOrThrow()V

    .line 226
    new-instance v0, Landroid/net/ipsec/ike/TransportModeChildSessionParams;

    iget-object v1, p0, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->mInboundTsList:Ljava/util/List;

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 227
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v3, p0, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->mOutboundTsList:Ljava/util/List;

    new-array v4, v2, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 228
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v4, p0, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    new-array v2, v2, [Landroid/net/ipsec/ike/ChildSaProposal;

    .line 229
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/ipsec/ike/ChildSaProposal;

    iget v4, p0, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->mHardLifetimeSec:I

    iget v5, p0, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->mSoftLifetimeSec:I

    const/4 v6, 0x0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Landroid/net/ipsec/ike/TransportModeChildSessionParams;-><init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;IILandroid/net/ipsec/ike/TransportModeChildSessionParams-IA;)V

    .line 226
    return-object v0
.end method

.method public whitelist setLifetimeSeconds(II)Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;
    .registers 3
    .param p1, "hardLifetimeSeconds"    # I
    .param p2, "softLifetimeSeconds"    # I

    .line 210
    invoke-virtual {p0, p1, p2}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->validateAndSetLifetime(II)V

    .line 211
    iput p1, p0, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->mHardLifetimeSec:I

    .line 212
    iput p2, p0, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->mSoftLifetimeSec:I

    .line 213
    return-object p0
.end method

.class public abstract Landroid/net/ipsec/ike/ChildSessionParams$Builder;
.super Ljava/lang/Object;
.source "ChildSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/ChildSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Builder"
.end annotation


# instance fields
.field protected blacklist mHardLifetimeSec:I

.field protected final blacklist mInboundTsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mOutboundTsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mSaProposalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/SaProposal;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSoftLifetimeSec:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mInboundTsList:Ljava/util/List;

    .line 311
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mOutboundTsList:Ljava/util/List;

    .line 312
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    .line 314
    const/16 v0, 0x1c20

    iput v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mHardLifetimeSec:I

    .line 315
    const/16 v0, 0xe10

    iput v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mSoftLifetimeSec:I

    .line 318
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/ipsec/ike/ChildSessionParams;)V
    .registers 4
    .param p1, "childParams"    # Landroid/net/ipsec/ike/ChildSessionParams;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mInboundTsList:Ljava/util/List;

    .line 311
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mOutboundTsList:Ljava/util/List;

    .line 312
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    .line 314
    const/16 v0, 0x1c20

    iput v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mHardLifetimeSec:I

    .line 315
    const/16 v0, 0xe10

    iput v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mSoftLifetimeSec:I

    .line 322
    const-string v0, "childParams was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mInboundTsList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/ipsec/ike/ChildSessionParams;->getInboundTrafficSelectors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mOutboundTsList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/ipsec/ike/ChildSessionParams;->getOutboundTrafficSelectors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 326
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/ipsec/ike/ChildSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    invoke-virtual {p1}, Landroid/net/ipsec/ike/ChildSessionParams;->getHardLifetimeSeconds()I

    move-result v0

    iput v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mHardLifetimeSec:I

    .line 328
    invoke-virtual {p1}, Landroid/net/ipsec/ike/ChildSessionParams;->getSoftLifetimeSeconds()I

    move-result v0

    iput v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mSoftLifetimeSec:I

    .line 329
    return-void
.end method


# virtual methods
.method protected blacklist addDefaultTsIfNotConfigured()V
    .registers 3

    .line 360
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mInboundTsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 361
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mInboundTsList:Ljava/util/List;

    invoke-static {}, Landroid/net/ipsec/ike/ChildSessionParams;->-$$Nest$sfgetDEFAULT_TRAFFIC_SELECTOR_IPV4()Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mInboundTsList:Ljava/util/List;

    invoke-static {}, Landroid/net/ipsec/ike/ChildSessionParams;->-$$Nest$sfgetDEFAULT_TRAFFIC_SELECTOR_IPV6()Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_1a
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mOutboundTsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 366
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mOutboundTsList:Ljava/util/List;

    invoke-static {}, Landroid/net/ipsec/ike/ChildSessionParams;->-$$Nest$sfgetDEFAULT_TRAFFIC_SELECTOR_IPV4()Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mOutboundTsList:Ljava/util/List;

    invoke-static {}, Landroid/net/ipsec/ike/ChildSessionParams;->-$$Nest$sfgetDEFAULT_TRAFFIC_SELECTOR_IPV6()Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_34
    return-void
.end method

.method protected blacklist addInboundTs(Landroid/net/ipsec/ike/IkeTrafficSelector;)V
    .registers 3
    .param p1, "trafficSelector"    # Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 336
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mInboundTsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method protected blacklist addOutboundTs(Landroid/net/ipsec/ike/IkeTrafficSelector;)V
    .registers 3
    .param p1, "trafficSelector"    # Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 340
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mOutboundTsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method protected blacklist addProposal(Landroid/net/ipsec/ike/ChildSaProposal;)V
    .registers 3
    .param p1, "proposal"    # Landroid/net/ipsec/ike/ChildSaProposal;

    .line 332
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method protected blacklist validateAndSetLifetime(II)V
    .registers 5
    .param p1, "hardLifetimeSec"    # I
    .param p2, "softLifetimeSec"    # I

    .line 344
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_13

    const/16 v0, 0x3840

    if-gt p1, v0, :cond_13

    const/16 v0, 0x78

    if-lt p2, v0, :cond_13

    sub-int v0, p1, p2

    sget v1, Landroid/net/ipsec/ike/ChildSessionParams;->CHILD_LIFETIME_MARGIN_SEC_MINIMUM:I

    if-lt v0, v1, :cond_13

    .line 350
    return-void

    .line 348
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid lifetime value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist validateOrThrow()V
    .registers 3

    .line 353
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 357
    return-void

    .line 354
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ChildSessionParams requires at least one Child SA proposal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

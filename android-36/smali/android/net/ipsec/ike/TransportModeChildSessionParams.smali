.class public final Landroid/net/ipsec/ike/TransportModeChildSessionParams;
.super Landroid/net/ipsec/ike/ChildSessionParams;
.source "TransportModeChildSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;II)V
    .registers 13
    .param p1, "inboundTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p2, "outboundTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p3, "proposals"    # [Landroid/net/ipsec/ike/ChildSaProposal;
    .param p4, "hardLifetimeSec"    # I
    .param p5, "softLifetimeSec"    # I

    .line 38
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "inboundTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local p2    # "outboundTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local p3    # "proposals":[Landroid/net/ipsec/ike/ChildSaProposal;
    .end local p4    # "hardLifetimeSec":I
    .end local p5    # "softLifetimeSec":I
    .local v1, "inboundTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .local v2, "outboundTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .local v3, "proposals":[Landroid/net/ipsec/ike/ChildSaProposal;
    .local v4, "hardLifetimeSec":I
    .local v5, "softLifetimeSec":I
    invoke-direct/range {v0 .. v6}, Landroid/net/ipsec/ike/ChildSessionParams;-><init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;IIZ)V

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;IILandroid/net/ipsec/ike/TransportModeChildSessionParams-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/net/ipsec/ike/TransportModeChildSessionParams;-><init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;II)V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/TransportModeChildSessionParams;
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 58
    const-string v0, "PersistableBundle not provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    new-instance v0, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;-><init>()V

    .line 63
    .local v0, "builder":Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;
    invoke-static {p0}, Landroid/net/ipsec/ike/TransportModeChildSessionParams;->getProposalsFromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 64
    .local v2, "p":Landroid/net/ipsec/ike/ChildSaProposal;
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;

    .line 65
    .end local v2    # "p":Landroid/net/ipsec/ike/ChildSaProposal;
    goto :goto_12

    .line 67
    :cond_22
    const-string v1, "mInboundTrafficSelectors"

    invoke-static {p0, v1}, Landroid/net/ipsec/ike/TransportModeChildSessionParams;->getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 68
    .local v2, "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->addInboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;

    .line 69
    .end local v2    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    goto :goto_2c

    .line 71
    :cond_3c
    const-string v1, "mOutboundTrafficSelectors"

    invoke-static {p0, v1}, Landroid/net/ipsec/ike/TransportModeChildSessionParams;->getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 72
    .restart local v2    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->addOutboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;

    .line 73
    .end local v2    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    goto :goto_46

    .line 75
    :cond_56
    nop

    .line 76
    const-string v1, "mHardLifetimeSec"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mSoftLifetimeSec"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->setLifetimeSeconds(II)Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;

    .line 78
    invoke-virtual {v0}, Landroid/net/ipsec/ike/TransportModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TransportModeChildSessionParams;

    move-result-object v1

    return-object v1
.end method

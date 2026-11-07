.class public final Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
.super Landroid/net/ipsec/ike/ChildSessionParams;
.source "TunnelModeChildSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;,
        Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6DnsServer;,
        Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;,
        Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Netmask;,
        Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4DnsServer;,
        Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4DhcpServer;,
        Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Address;,
        Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_ATTRIBUTES_KEY:Ljava/lang/String; = "mConfigRequests"


# instance fields
.field private final blacklist mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigRequests(Landroid/net/ipsec/ike/TunnelModeChildSessionParams;)[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;
    .registers 1

    iget-object p0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    return-object p0
.end method

.method private constructor blacklist <init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;II)V
    .registers 14
    .param p1, "inboundTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p2, "outboundTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p3, "proposals"    # [Landroid/net/ipsec/ike/ChildSaProposal;
    .param p4, "configRequests"    # [Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;
    .param p5, "hardLifetimeSec"    # I
    .param p6, "softLifetimeSec"    # I

    .line 66
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    .end local p1    # "inboundTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local p2    # "outboundTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local p3    # "proposals":[Landroid/net/ipsec/ike/ChildSaProposal;
    .end local p5    # "hardLifetimeSec":I
    .end local p6    # "softLifetimeSec":I
    .local v1, "inboundTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .local v2, "outboundTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .local v3, "proposals":[Landroid/net/ipsec/ike/ChildSaProposal;
    .local v4, "hardLifetimeSec":I
    .local v5, "softLifetimeSec":I
    invoke-direct/range {v0 .. v6}, Landroid/net/ipsec/ike/ChildSessionParams;-><init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;IIZ)V

    .line 73
    iput-object p4, v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;IILandroid/net/ipsec/ike/TunnelModeChildSessionParams-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;-><init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;II)V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
    .registers 7
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 87
    const-string v0, "PersistableBundle not provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;-><init>()V

    .line 91
    .local v0, "builder":Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    invoke-static {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getProposalsFromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/util/List;

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

    .line 92
    .local v2, "p":Landroid/net/ipsec/ike/ChildSaProposal;
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 93
    .end local v2    # "p":Landroid/net/ipsec/ike/ChildSaProposal;
    goto :goto_12

    .line 95
    :cond_22
    const-string v1, "mInboundTrafficSelectors"

    invoke-static {p0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;

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

    .line 96
    .local v2, "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 97
    .end local v2    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    goto :goto_2c

    .line 99
    :cond_3c
    const-string v1, "mOutboundTrafficSelectors"

    invoke-static {p0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getTsFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/util/List;

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

    .line 100
    .restart local v2    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addOutboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 101
    .end local v2    # "ts":Landroid/net/ipsec/ike/IkeTrafficSelector;
    goto :goto_46

    .line 103
    :cond_56
    nop

    .line 104
    const-string v1, "mHardLifetimeSec"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mSoftLifetimeSec"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->setLifetimeSeconds(II)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 106
    const-string v1, "mConfigRequests"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 107
    .local v1, "configAttributeBundle":Landroid/os/PersistableBundle;
    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda3;-><init>()V

    .line 108
    invoke-static {v1, v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, "configReqList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    .line 112
    .local v4, "a":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    move-object v5, v4

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    invoke-virtual {v0, v5}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addConfigRequest(Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 113
    .end local v4    # "a":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    goto :goto_79

    .line 115
    :cond_8c
    invoke-virtual {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 199
    invoke-super {p0, p1}, Landroid/net/ipsec/ike/ChildSessionParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p1, Landroid/net/ipsec/ike/ChildSessionParams;

    if-nez v0, :cond_b

    goto :goto_17

    .line 203
    :cond_b
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 205
    .local v0, "other":Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
    iget-object v1, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    iget-object v2, v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 200
    .end local v0    # "other":Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConfigurationAttributesInternal()[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    return-object v0
.end method

.method public whitelist getConfigurationRequests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 194
    invoke-super {p0}, Landroid/net/ipsec/ike/ChildSessionParams;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 126
    invoke-super {p0}, Landroid/net/ipsec/ike/ChildSessionParams;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 128
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    .line 130
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$$ExternalSyntheticLambda0;-><init>()V

    .line 129
    invoke-static {v1, v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 132
    .local v1, "configAttributeBundle":Landroid/os/PersistableBundle;
    const-string v2, "mConfigRequests"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 134
    return-object v0
.end method

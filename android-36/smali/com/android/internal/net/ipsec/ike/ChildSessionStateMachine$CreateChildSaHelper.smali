.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;
.super Ljava/lang/Object;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CreateChildSaHelper"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getChildCreatePayloads(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;ZZLcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;
    .registers 10
    .param p0, "saPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .param p1, "initTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p2, "respTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p3, "isTransport"    # Z
    .param p4, "isFirstChildSa"    # Z
    .param p5, "randomFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;",
            "[",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            "[",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            "ZZ",
            "Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 2342
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2344
    .local v0, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2345
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;-><init>(Z[Landroid/net/ipsec/ike/IkeTrafficSelector;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2346
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;-><init>(Z[Landroid/net/ipsec/ike/IkeTrafficSelector;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2348
    if-nez p4, :cond_25

    .line 2349
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    invoke-direct {v1, p5}, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;-><init>(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2352
    :cond_25
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    .line 2353
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->saProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 2354
    invoke-virtual {v1}, Landroid/net/ipsec/ike/ChildSaProposal;->getDhGroupTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    move-result-object v1

    .line 2355
    .local v1, "dhGroups":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    array-length v3, v1

    if-eqz v3, :cond_47

    aget-object v3, v1, v2

    iget v3, v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    if-eqz v3, :cond_47

    .line 2356
    aget-object v2, v1, v2

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    .line 2357
    invoke-static {v2, p5}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->createOutboundKePayload(ILcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    move-result-object v2

    .line 2356
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2360
    :cond_47
    if-eqz p3, :cond_53

    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const/16 v3, 0x4007

    invoke-direct {v2, v3}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2362
    :cond_53
    return-object v0
.end method

.method public static blacklist getConfigAttributes(Landroid/net/ipsec/ike/ChildSessionParams;)[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    .registers 2
    .param p0, "params"    # Landroid/net/ipsec/ike/ChildSessionParams;

    .line 2267
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2268
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getConfigurationAttributesInternal()[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    move-result-object v0

    return-object v0

    .line 2270
    :cond_e
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    return-object v0
.end method

.method public static blacklist getInitChildCreateReqPayloads(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;Landroid/net/ipsec/ike/ChildSessionParams;Z)Ljava/util/List;
    .registers 13
    .param p0, "randomFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .param p1, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p2, "localAddress"    # Ljava/net/InetAddress;
    .param p3, "childSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p4, "isFirstChildSa"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;",
            "Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;",
            "Ljava/net/InetAddress;",
            "Landroid/net/ipsec/ike/ChildSessionParams;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 2243
    invoke-virtual {p3}, Landroid/net/ipsec/ike/ChildSessionParams;->getSaProposalsInternal()[Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v0

    .line 2245
    .local v0, "saProposals":[Landroid/net/ipsec/ike/ChildSaProposal;
    if-eqz p4, :cond_1a

    .line 2246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_1a

    .line 2247
    nop

    .line 2248
    invoke-virtual {p3}, Landroid/net/ipsec/ike/ChildSessionParams;->getSaProposalsInternal()[Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v2

    aget-object v2, v2, v1

    .line 2249
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSaProposal;->getCopyWithoutDhTransform()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2246
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2253
    .end local v1    # "i":I
    :cond_1a
    nop

    .line 2255
    invoke-static {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->createChildSaRequestPayload([Landroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    move-result-object v2

    .line 2257
    invoke-virtual {p3}, Landroid/net/ipsec/ike/ChildSessionParams;->getInboundTrafficSelectorsInternal()[Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v3

    .line 2258
    invoke-virtual {p3}, Landroid/net/ipsec/ike/ChildSessionParams;->getOutboundTrafficSelectorsInternal()[Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v4

    .line 2259
    invoke-virtual {p3}, Landroid/net/ipsec/ike/ChildSessionParams;->isTransportMode()Z

    move-result v5

    .line 2254
    move-object v7, p0

    move v6, p4

    .end local p0    # "randomFactory":Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .end local p4    # "isFirstChildSa":Z
    .local v6, "isFirstChildSa":Z
    .local v7, "randomFactory":Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    invoke-static/range {v2 .. v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->getChildCreatePayloads(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;ZZLcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;

    move-result-object p0

    .line 2263
    .local p0, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    return-object p0
.end method

.method public static blacklist getRekeyChildCreateReqPayloads(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;Landroid/net/ipsec/ike/ChildSaProposal;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;IZ)Ljava/util/List;
    .registers 16
    .param p0, "randomFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .param p1, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p2, "localAddress"    # Ljava/net/InetAddress;
    .param p3, "currentProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .param p4, "currentLocalTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p5, "currentRemoteTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p6, "localSpi"    # I
    .param p7, "isTransport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;",
            "Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;",
            "Ljava/net/InetAddress;",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            "[",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            "[",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 2284
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/ipsec/ike/ChildSaProposal;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 2286
    invoke-static {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->createChildSaRequestPayload([Landroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    move-result-object v2

    .line 2285
    const/4 v6, 0x0

    move-object v7, p0

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    .end local p0    # "randomFactory":Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .end local p4    # "currentLocalTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local p5    # "currentRemoteTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local p7    # "isTransport":Z
    .local v3, "currentLocalTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .local v4, "currentRemoteTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .local v5, "isTransport":Z
    .local v7, "randomFactory":Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    invoke-static/range {v2 .. v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->getChildCreatePayloads(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;ZZLcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;

    move-result-object p0

    .line 2296
    .local p0, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance p4, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const/16 p5, 0x4009

    new-array p7, v1, [B

    const/4 v0, 0x3

    invoke-direct {p4, v0, p6, p5, p7}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(III[B)V

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2299
    return-object p0
.end method

.method public static blacklist getRekeyChildCreateRespPayloads(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;BLandroid/net/ipsec/ike/ChildSaProposal;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;IZ)Ljava/util/List;
    .registers 15
    .param p0, "randomFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .param p1, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p2, "localAddress"    # Ljava/net/InetAddress;
    .param p3, "proposalNumber"    # B
    .param p4, "currentProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .param p5, "currentLocalTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p6, "currentRemoteTs"    # [Landroid/net/ipsec/ike/IkeTrafficSelector;
    .param p7, "localSpi"    # I
    .param p8, "isTransport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;",
            "Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;",
            "Ljava/net/InetAddress;",
            "B",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            "[",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            "[",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 2314
    nop

    .line 2316
    invoke-static {p3, p4, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->createChildSaResponsePayload(BLandroid/net/ipsec/ike/ChildSaProposal;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    move-result-object v0

    .line 2315
    const/4 v4, 0x0

    move-object v5, p0

    move-object v2, p5

    move-object v1, p6

    move v3, p8

    .end local p0    # "randomFactory":Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    .end local p5    # "currentLocalTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local p6    # "currentRemoteTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .end local p8    # "isTransport":Z
    .local v1, "currentRemoteTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .local v2, "currentLocalTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .local v3, "isTransport":Z
    .local v5, "randomFactory":Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->getChildCreatePayloads(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;ZZLcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Ljava/util/List;

    move-result-object p0

    .line 2327
    .local p0, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance p5, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    const/4 p6, 0x0

    new-array p6, p6, [B

    const/4 p8, 0x3

    const/16 v0, 0x4009

    invoke-direct {p5, p8, p7, v0, p6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(III[B)V

    invoke-interface {p0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2330
    return-object p0
.end method

.method public static blacklist hasRemoteChildSpiForRekey(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)Z
    .registers 8
    .param p1, "expectedRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;",
            ")Z"
        }
    .end annotation

    .line 2451
    .local p0, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 2452
    const/16 v1, 0x29

    invoke-static {v1, v0, p0}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadListForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2455
    .local v0, "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    const/4 v1, 0x0

    .line 2456
    .local v1, "hasExpectedRekeyNotify":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 2457
    .local v3, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v5, 0x4009

    if-ne v4, v5, :cond_29

    iget v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spi:I

    .line 2458
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getRemoteSpi()I

    move-result v5

    if-ne v4, v5, :cond_29

    .line 2459
    const/4 v1, 0x1

    .line 2460
    goto :goto_2a

    .line 2462
    .end local v3    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_29
    goto :goto_d

    .line 2464
    :cond_2a
    :goto_2a
    return v1
.end method

.method private static blacklist logw(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 2756
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    const-string v1, "ChildSessionStateMachine"

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    return-void
.end method

.method public static blacklist releaseSpiResources(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 2468
    .local p0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    if-nez p0, :cond_3

    .line 2469
    return-void

    .line 2472
    :cond_3
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 2473
    const/16 v1, 0x21

    invoke-static {v1, v0, p0}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 2475
    .local v0, "saPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    if-eqz v0, :cond_12

    .line 2476
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->releaseSpiResources()V

    .line 2478
    :cond_12
    return-void
.end method

.method private static blacklist validateAndGetNegotiatedTs(Ljava/util/List;Ljava/util/List;Z)[Landroid/net/ipsec/ike/IkeTrafficSelector;
    .registers 7
    .param p2, "isInitTs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;Z)[",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/TsUnacceptableException;
        }
    .end annotation

    .line 2703
    .local p0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    if-eqz p2, :cond_5

    const/16 v0, 0x2c

    goto :goto_7

    :cond_5
    const/16 v0, 0x2d

    .line 2704
    .local v0, "tsType":I
    :goto_7
    const-class v1, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    .line 2705
    invoke-static {v0, v1, p0}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    .line 2707
    .local v1, "reqPayload":Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;
    const-class v2, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    .line 2708
    invoke-static {v0, v2, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    .line 2711
    .local v2, "respPayload":Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;
    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->contains(Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2717
    iget-object v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;->trafficSelectors:[Landroid/net/ipsec/ike/IkeTrafficSelector;

    return-object v3

    .line 2712
    :cond_20
    new-instance v3, Landroid/net/ipsec/ike/exceptions/TsUnacceptableException;

    invoke-direct {v3}, Landroid/net/ipsec/ike/exceptions/TsUnacceptableException;-><init>()V

    throw v3
.end method

.method private static blacklist validateAndGetNegotiatedTsPair(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)",
            "Landroid/util/Pair<",
            "[",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            "[",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/TsUnacceptableException;
        }
    .end annotation

    .line 2692
    .local p0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    nop

    .line 2693
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateAndGetNegotiatedTs(Ljava/util/List;Ljava/util/List;Z)[Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v0

    .line 2694
    .local v0, "initTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    nop

    .line 2695
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateAndGetNegotiatedTs(Ljava/util/List;Ljava/util/List;Z)[Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-result-object v1

    .line 2697
    .local v1, "respTs":[Landroid/net/ipsec/ike/IkeTrafficSelector;
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static blacklist validateAndNegotiateChild(Ljava/util/List;Ljava/util/List;IIZZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    .registers 30
    .param p2, "exchangeType"    # I
    .param p3, "expectedExchangeType"    # I
    .param p4, "isLocalInit"    # Z
    .param p5, "expectTransport"    # Z
    .param p6, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p7, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;IIZZ",
            "Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;",
            "Ljava/net/InetAddress;",
            ")",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;"
        }
    .end annotation

    .line 2490
    .local p0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    move/from16 v1, p4

    if-eqz v1, :cond_7

    move-object/from16 v0, p1

    goto :goto_9

    :cond_7
    move-object/from16 v0, p0

    :goto_9
    move-object v2, v0

    .line 2493
    .local v2, "inboundPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const/4 v3, 0x1

    move/from16 v4, p2

    move/from16 v5, p3

    :try_start_f
    invoke-static {v2, v1, v4, v5}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validatePayloadAndExchangeType(Ljava/util/List;ZII)V
    :try_end_12
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_f .. :try_end_12} :catch_141

    .line 2500
    nop

    .line 2502
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 2503
    const/16 v6, 0x29

    invoke-static {v6, v0, v2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadListForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 2508
    .local v6, "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    const/4 v0, 0x0

    .line 2509
    .local v0, "hasTransportNotify":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    .end local v0    # "hasTransportNotify":Z
    .local v8, "hasTransportNotify":Z
    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 2510
    .local v9, "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    invoke-virtual {v9}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 2512
    :try_start_34
    invoke-virtual {v9}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateAndBuildIkeException()Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    move-result-object v0

    .line 2513
    .local v0, "exception":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    if-eqz v1, :cond_41

    .line 2514
    new-instance v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    const/4 v10, 0x2

    invoke-direct {v7, v10, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v7

    .line 2517
    :cond_41
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received unexpected error notification: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->logw(Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_34 .. :try_end_59} :catch_5a

    .line 2521
    .end local v0    # "exception":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    goto :goto_61

    .line 2519
    :catch_5a
    move-exception v0

    .line 2520
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    new-instance v7, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    invoke-direct {v7, v3, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v7

    .line 2524
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    :cond_61
    :goto_61
    iget v0, v9, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    packed-switch v0, :pswitch_data_152

    .line 2543
    :pswitch_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received unknown or unexpected status notifications with notify type: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v9, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->logw(Ljava/lang/String;)V

    goto :goto_86

    .line 2537
    :pswitch_7f
    goto :goto_86

    .line 2540
    :pswitch_80
    goto :goto_86

    .line 2533
    :pswitch_81
    const/4 v0, 0x1

    .line 2534
    .end local v8    # "hasTransportNotify":Z
    .local v0, "hasTransportNotify":Z
    move v8, v0

    goto :goto_86

    .line 2531
    .end local v0    # "hasTransportNotify":Z
    .restart local v8    # "hasTransportNotify":Z
    :pswitch_84
    goto :goto_86

    .line 2528
    :pswitch_85
    nop

    .line 2548
    .end local v9    # "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :goto_86
    goto :goto_21

    .line 2550
    :cond_87
    const/4 v7, 0x0

    .line 2552
    .local v7, "childProposalPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;>;"
    :try_start_88
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    :try_end_8a
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_88 .. :try_end_8a} :catch_f6
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_88 .. :try_end_8a} :catch_f6
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_88 .. :try_end_8a} :catch_f6

    .line 2553
    const/16 v9, 0x21

    move-object/from16 v10, p0

    :try_start_8e
    invoke-static {v9, v0, v10}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 2555
    .local v0, "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    const-class v11, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    :try_end_96
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_8e .. :try_end_96} :catch_f4
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_8e .. :try_end_96} :catch_f4
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_8e .. :try_end_96} :catch_f4

    .line 2556
    move-object/from16 v12, p1

    :try_start_98
    invoke-static {v9, v11, v12}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v9

    check-cast v9, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    :try_end_9e
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_98 .. :try_end_9e} :catch_f2
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_98 .. :try_end_9e} :catch_f2
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_98 .. :try_end_9e} :catch_f2

    .line 2562
    .local v9, "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    nop

    .line 2563
    move-object/from16 v11, p6

    move-object/from16 v13, p7

    :try_start_a3
    invoke-static {v0, v9, v11, v13}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->getVerifiedNegotiatedChildProposalPair(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Landroid/util/Pair;

    move-result-object v14

    move-object v7, v14

    .line 2565
    iget-object v14, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    iget-object v14, v14, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->saProposal:Landroid/net/ipsec/ike/ChildSaProposal;

    .line 2567
    .local v14, "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    invoke-static {v2, v1, v14}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateKePayloads(Ljava/util/List;ZLandroid/net/ipsec/ike/ChildSaProposal;)V

    .line 2569
    move/from16 v15, p5

    if-ne v15, v8, :cond_e4

    .line 2574
    nop

    .line 2575
    invoke-static/range {p0 .. p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateAndGetNegotiatedTsPair(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v16

    move-object/from16 v21, v16

    .line 2577
    .local v21, "tsPair":Landroid/util/Pair;, "Landroid/util/Pair<[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    new-instance v15, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    .line 2578
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->getChildSpiResource()Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v16

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    .line 2579
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->getChildSpiResource()Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v17

    move-object/from16 v3, v21

    move-object/from16 v21, v0

    .end local v0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .local v3, "tsPair":Landroid/util/Pair;, "Landroid/util/Pair<[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    .local v21, "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    move-object/from16 v18, v14

    .end local v14    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .local v18, "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    invoke-direct/range {v15 .. v20}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;-><init>(Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/IpSecManager$SecurityParameterIndex;Landroid/net/ipsec/ike/ChildSaProposal;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;)V

    .line 2577
    return-object v15

    .line 2570
    .end local v3    # "tsPair":Landroid/util/Pair;, "Landroid/util/Pair<[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    .end local v18    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .end local v21    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local v0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local v14    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    :cond_e4
    move-object/from16 v21, v0

    move-object/from16 v18, v14

    .end local v0    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local v14    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .restart local v18    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .restart local v21    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    new-instance v0, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    const-string v3, "Failed the negotiation on Child SA mode (conflicting modes chosen)."

    invoke-direct {v0, v3}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>(Ljava/lang/String;)V

    .end local v2    # "inboundPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local v6    # "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    .end local v7    # "childProposalPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;>;"
    .end local v8    # "hasTransportNotify":Z
    .end local p0    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local p1    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local p2    # "exchangeType":I
    .end local p3    # "expectedExchangeType":I
    .end local p4    # "isLocalInit":Z
    .end local p5    # "expectTransport":Z
    .end local p6    # "ipSecSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .end local p7    # "remoteAddress":Ljava/net/InetAddress;
    throw v0
    :try_end_f0
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_a3 .. :try_end_f0} :catch_f0
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_a3 .. :try_end_f0} :catch_f0
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_a3 .. :try_end_f0} :catch_f0

    .line 2583
    .end local v9    # "respSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local v18    # "saProposal":Landroid/net/ipsec/ike/ChildSaProposal;
    .end local v21    # "reqSaPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .restart local v2    # "inboundPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local v6    # "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    .restart local v7    # "childProposalPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;>;"
    .restart local v8    # "hasTransportNotify":Z
    .restart local p0    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local p1    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .restart local p2    # "exchangeType":I
    .restart local p3    # "expectedExchangeType":I
    .restart local p4    # "isLocalInit":Z
    .restart local p5    # "expectTransport":Z
    .restart local p6    # "ipSecSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .restart local p7    # "remoteAddress":Ljava/net/InetAddress;
    :catch_f0
    move-exception v0

    goto :goto_ff

    :catch_f2
    move-exception v0

    goto :goto_fb

    :catch_f4
    move-exception v0

    goto :goto_f9

    :catch_f6
    move-exception v0

    move-object/from16 v10, p0

    :goto_f9
    move-object/from16 v12, p1

    :goto_fb
    move-object/from16 v11, p6

    move-object/from16 v13, p7

    .line 2586
    .local v0, "e":Ljava/lang/Exception;
    :goto_ff
    if-eqz v7, :cond_117

    .line 2587
    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->getChildSpiResource()Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 2588
    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;->getChildSpiResource()Landroid/net/IpSecManager$SecurityParameterIndex;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 2591
    :cond_117
    instance-of v3, v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    if-eqz v3, :cond_125

    .line 2592
    new-instance v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    move-object v9, v0

    check-cast v9, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const/4 v14, 0x1

    invoke-direct {v3, v14, v9}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v3

    .line 2594
    :cond_125
    const/4 v14, 0x1

    instance-of v3, v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    if-eqz v3, :cond_137

    .line 2595
    new-instance v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    new-instance v9, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v15, "Processing error in received Create Child response"

    invoke-direct {v9, v15, v0}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v3, v14, v9}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v3

    .line 2600
    :cond_137
    new-instance v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    .line 2601
    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v9

    invoke-direct {v3, v14, v9}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 2600
    return-object v3

    .line 2498
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    .end local v7    # "childProposalPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$ChildProposal;>;"
    .end local v8    # "hasTransportNotify":Z
    :catch_141
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    move v14, v3

    .line 2499
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    new-instance v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    invoke-direct {v3, v14, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v3

    nop

    :pswitch_data_152
    .packed-switch 0x4002
        :pswitch_85
        :pswitch_84
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_81
        :pswitch_66
        :pswitch_80
        :pswitch_7f
    .end packed-switch
.end method

.method public static blacklist validateAndNegotiateInitChild(Ljava/util/List;Ljava/util/List;IIZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    .registers 15
    .param p2, "exchangeType"    # I
    .param p3, "expectedExchangeType"    # I
    .param p4, "expectTransport"    # Z
    .param p5, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p6, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;IIZ",
            "Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;",
            "Ljava/net/InetAddress;",
            ")",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;"
        }
    .end annotation

    .line 2378
    .local p0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p0    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local p1    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local p2    # "exchangeType":I
    .end local p3    # "expectedExchangeType":I
    .end local p4    # "expectTransport":Z
    .end local p5    # "ipSecSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .end local p6    # "remoteAddress":Ljava/net/InetAddress;
    .local v0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v2, "exchangeType":I
    .local v3, "expectedExchangeType":I
    .local v5, "expectTransport":Z
    .local v6, "ipSecSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .local v7, "remoteAddress":Ljava/net/InetAddress;
    invoke-static/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateAndNegotiateChild(Ljava/util/List;Ljava/util/List;IIZZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist validateAndNegotiateRekeyChildRequest(Ljava/util/List;Ljava/util/List;IIZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    .registers 15
    .param p2, "exchangeType"    # I
    .param p3, "expectedExchangeType"    # I
    .param p4, "expectTransport"    # Z
    .param p5, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p6, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;IIZ",
            "Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;",
            "Ljava/net/InetAddress;",
            ")",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;"
        }
    .end annotation

    .line 2404
    .local p0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p0    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local p1    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local p2    # "exchangeType":I
    .end local p3    # "expectedExchangeType":I
    .end local p4    # "expectTransport":Z
    .end local p5    # "ipSecSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .end local p6    # "remoteAddress":Ljava/net/InetAddress;
    .local v0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v2, "exchangeType":I
    .local v3, "expectedExchangeType":I
    .local v5, "expectTransport":Z
    .local v6, "ipSecSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .local v7, "remoteAddress":Ljava/net/InetAddress;
    invoke-static/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateAndNegotiateChild(Ljava/util/List;Ljava/util/List;IIZZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist validateAndNegotiateRekeyChildResp(Ljava/util/List;Ljava/util/List;IIZLcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    .registers 16
    .param p2, "exchangeType"    # I
    .param p3, "expectedExchangeType"    # I
    .param p4, "expectTransport"    # Z
    .param p5, "expectedChildRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    .param p6, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p7, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;IIZ",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;",
            "Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;",
            "Ljava/net/InetAddress;",
            ")",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;"
        }
    .end annotation

    .line 2429
    .local p0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    nop

    .line 2430
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p6

    move-object v7, p7

    .end local p0    # "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local p1    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .end local p2    # "exchangeType":I
    .end local p3    # "expectedExchangeType":I
    .end local p4    # "expectTransport":Z
    .end local p6    # "ipSecSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .end local p7    # "remoteAddress":Ljava/net/InetAddress;
    .local v0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local v2, "exchangeType":I
    .local v3, "expectedExchangeType":I
    .local v5, "expectTransport":Z
    .local v6, "ipSecSpiGenerator":Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .local v7, "remoteAddress":Ljava/net/InetAddress;
    invoke-static/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->validateAndNegotiateChild(Ljava/util/List;Ljava/util/List;IIZZLcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/net/InetAddress;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;

    move-result-object p0

    .line 2442
    .local p0, "childResult":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildResult;
    return-object p0
.end method

.method static blacklist validateKePayloads(Ljava/util/List;ZLandroid/net/ipsec/ike/ChildSaProposal;)V
    .registers 9
    .param p1, "isResp"    # Z
    .param p2, "negotiatedProposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;Z",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 2726
    .local p0, "inboundPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-virtual {p2}, Landroid/net/ipsec/ike/ChildSaProposal;->getDhGroupTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    move-result-object v0

    .line 2728
    .local v0, "dhTransforms":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4e

    .line 2732
    array-length v1, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_13

    aget-object v1, v0, v3

    iget v1, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    if-eqz v1, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    .line 2735
    .local v2, "expectKePayload":Z
    :goto_14
    const-class v1, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 2736
    const/16 v4, 0x22

    invoke-static {v4, v1, p0}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 2739
    .local v1, "kePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    if-eqz v2, :cond_3e

    if-eqz v1, :cond_2a

    aget-object v4, v0, v3

    iget v4, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    iget v5, v1, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    if-eq v4, v5, :cond_3e

    .line 2740
    :cond_2a
    if-eqz p1, :cond_34

    .line 2741
    new-instance v3, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v4, "KE Payload missing or has mismatched DH Group with the negotiated proposal."

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2745
    :cond_34
    new-instance v4, Landroid/net/ipsec/ike/exceptions/InvalidKeException;

    aget-object v3, v0, v3

    iget v3, v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    invoke-direct {v4, v3}, Landroid/net/ipsec/ike/exceptions/InvalidKeException;-><init>(I)V

    throw v4

    .line 2748
    :cond_3e
    if-nez v2, :cond_4d

    if-eqz v1, :cond_4d

    if-nez p1, :cond_45

    goto :goto_4d

    .line 2751
    :cond_45
    new-instance v3, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v4, "Received unexpected KE Payload."

    invoke-direct {v3, v4}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2753
    :cond_4d
    :goto_4d
    return-void

    .line 2729
    .end local v1    # "kePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    .end local v2    # "expectKePayload":Z
    :cond_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Found multiple DH Group Transforms in the negotiated SA proposal"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist validatePayloadAndExchangeType(Ljava/util/List;ZII)V
    .registers 14
    .param p1, "isResp"    # Z
    .param p2, "exchangeType"    # I
    .param p3, "expectedExchangeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;ZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 2613
    .local p0, "inboundPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const/4 v0, 0x0

    .line 2614
    .local v0, "hasSaPayload":Z
    const/4 v1, 0x0

    .line 2615
    .local v1, "hasKePayload":Z
    const/4 v2, 0x0

    .line 2616
    .local v2, "hasNoncePayload":Z
    const/4 v3, 0x0

    .line 2617
    .local v3, "hasTsInitPayload":Z
    const/4 v4, 0x0

    .line 2618
    .local v4, "hasTsRespPayload":Z
    const/4 v5, 0x0

    .line 2620
    .local v5, "hasErrorNotify":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 2621
    .local v7, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    iget v8, v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    sparse-switch v8, :sswitch_data_94

    .line 2651
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received unexpected payload in Create Child SA message. Payload type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->logw(Ljava/lang/String;)V

    goto :goto_4a

    .line 2649
    :sswitch_34
    goto :goto_4a

    .line 2637
    :sswitch_35
    const/4 v4, 0x1

    .line 2638
    goto :goto_4a

    .line 2634
    :sswitch_37
    const/4 v3, 0x1

    .line 2635
    goto :goto_4a

    .line 2640
    :sswitch_39
    move-object v8, v7

    check-cast v8, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-virtual {v8}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v8

    if-eqz v8, :cond_4a

    const/4 v5, 0x1

    goto :goto_4a

    .line 2631
    :sswitch_44
    const/4 v2, 0x1

    .line 2632
    goto :goto_4a

    .line 2628
    :sswitch_46
    const/4 v1, 0x1

    .line 2629
    goto :goto_4a

    .line 2623
    :sswitch_48
    const/4 v0, 0x1

    .line 2624
    nop

    .line 2656
    .end local v7    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    :cond_4a
    :goto_4a
    goto :goto_a

    .line 2660
    :cond_4b
    const/16 v6, 0x25

    if-eqz p1, :cond_6d

    if-eq p2, p3, :cond_6d

    if-ne p2, v6, :cond_54

    goto :goto_6d

    .line 2663
    :cond_54
    new-instance v6, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received invalid exchange type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2666
    :cond_6d
    :goto_6d
    if-ne p2, v6, :cond_7e

    if-nez v0, :cond_79

    if-nez v1, :cond_79

    if-nez v2, :cond_79

    if-nez v3, :cond_79

    if-eqz v4, :cond_7e

    .line 2672
    :cond_79
    const-string v6, "Unexpected payload found in an INFORMATIONAL message: SA, KE, Nonce, TS-Initiator or TS-Responder"

    invoke-static {v6}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->logw(Ljava/lang/String;)V

    .line 2677
    :cond_7e
    if-eqz p1, :cond_93

    if-nez v5, :cond_93

    if-eqz v0, :cond_8b

    if-eqz v2, :cond_8b

    if-eqz v3, :cond_8b

    if-eqz v4, :cond_8b

    goto :goto_93

    .line 2683
    :cond_8b
    new-instance v6, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v7, "SA, Nonce, TS-Initiator or TS-Responder missing."

    invoke-direct {v6, v7}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2686
    :cond_93
    :goto_93
    return-void

    :sswitch_data_94
    .sparse-switch
        0x21 -> :sswitch_48
        0x22 -> :sswitch_46
        0x28 -> :sswitch_44
        0x29 -> :sswitch_39
        0x2c -> :sswitch_37
        0x2d -> :sswitch_35
        0x2f -> :sswitch_34
    .end sparse-switch
.end method

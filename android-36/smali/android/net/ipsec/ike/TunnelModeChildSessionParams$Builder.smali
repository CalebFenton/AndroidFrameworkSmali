.class public final Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
.super Landroid/net/ipsec/ike/ChildSessionParams$Builder;
.source "TunnelModeChildSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist IPv4_DEFAULT_PREFIX_LEN:I = 0x20


# instance fields
.field private blacklist mConfigRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasIp4AddressRequest:Z

.field private blacklist mHasIp4NetmaskRequest:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 218
    invoke-direct {p0}, Landroid/net/ipsec/ike/ChildSessionParams$Builder;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4AddressRequest:Z

    .line 220
    iput-boolean v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4NetmaskRequest:Z

    .line 221
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/ipsec/ike/TunnelModeChildSessionParams;)V
    .registers 6
    .param p1, "childParams"    # Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    .line 229
    invoke-direct {p0, p1}, Landroid/net/ipsec/ike/ChildSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/ChildSessionParams;)V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    .line 230
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    invoke-static {p1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->-$$Nest$fgetmConfigRequests(Landroid/net/ipsec/ike/TunnelModeChildSessionParams;)[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    .line 232
    .local v1, "config":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;
    instance-of v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    .line 233
    iput-boolean v3, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4AddressRequest:Z

    goto :goto_37

    .line 234
    :cond_31
    instance-of v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;

    if-eqz v2, :cond_37

    .line 235
    iput-boolean v3, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4NetmaskRequest:Z

    .line 237
    .end local v1    # "config":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;
    :cond_37
    :goto_37
    goto :goto_1d

    .line 238
    :cond_38
    return-void
.end method


# virtual methods
.method public whitelist addChildSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 4
    .param p1, "proposal"    # Landroid/net/ipsec/ike/ChildSaProposal;

    .line 270
    if-eqz p1, :cond_6

    .line 274
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addProposal(Landroid/net/ipsec/ike/ChildSaProposal;)V

    .line 275
    return-object p0

    .line 271
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addConfigRequest(Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 4
    .param p1, "attribute"    # Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    .line 529
    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 530
    iput-boolean v1, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4AddressRequest:Z

    goto :goto_1e

    .line 531
    :cond_8
    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;

    if-eqz v0, :cond_1e

    .line 532
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;->address:Ljava/net/Inet4Address;

    if-nez v0, :cond_16

    .line 536
    iput-boolean v1, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4NetmaskRequest:Z

    goto :goto_1e

    .line 533
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requesting specific a netmask is disallowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1e
    :goto_1e
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    return-object p0
.end method

.method public whitelist addInboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 3
    .param p1, "trafficSelector"    # Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 297
    const-string v0, "Required argument not provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInboundTs(Landroid/net/ipsec/ike/IkeTrafficSelector;)V

    .line 299
    return-object p0
.end method

.method public whitelist addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 5
    .param p1, "addressFamily"    # I

    .line 372
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p1, v0, :cond_12

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4AddressRequest:Z

    .line 374
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;

    invoke-direct {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    return-object p0

    .line 376
    :cond_12
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_21

    .line 377
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;

    invoke-direct {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    return-object p0

    .line 380
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addInternalAddressRequest(Ljava/net/Inet4Address;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 4
    .param p1, "address"    # Ljava/net/Inet4Address;

    .line 396
    if-eqz p1, :cond_10

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4AddressRequest:Z

    .line 401
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;

    invoke-direct {v1, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;-><init>(Ljava/net/Inet4Address;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    return-object p0

    .line 397
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addInternalAddressRequest(Ljava/net/Inet6Address;I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 6
    .param p1, "address"    # Ljava/net/Inet6Address;
    .param p2, "prefixLen"    # I

    .line 418
    if-eqz p1, :cond_12

    .line 422
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;-><init>(Landroid/net/LinkAddress;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    return-object p0

    .line 419
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addInternalDhcpServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 5
    .param p1, "addressFamily"    # I

    .line 490
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p1, v0, :cond_f

    .line 491
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dhcp;

    invoke-direct {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dhcp;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    return-object p0

    .line 494
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addInternalDhcpServerRequest(Ljava/net/InetAddress;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 510
    if-eqz p1, :cond_2d

    .line 514
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_14

    .line 515
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dhcp;

    move-object v2, p1

    check-cast v2, Ljava/net/Inet4Address;

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dhcp;-><init>(Ljava/net/Inet4Address;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    return-object p0

    .line 518
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 5
    .param p1, "addressFamily"    # I

    .line 440
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p1, v0, :cond_f

    .line 441
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dns;

    invoke-direct {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dns;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    return-object p0

    .line 443
    :cond_f
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_1e

    .line 444
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;

    invoke-direct {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    return-object p0

    .line 447
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addInternalDnsServerRequest(Ljava/net/InetAddress;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 461
    if-eqz p1, :cond_3f

    .line 465
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_14

    .line 466
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dns;

    move-object v2, p1

    check-cast v2, Ljava/net/Inet4Address;

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dns;-><init>(Ljava/net/Inet4Address;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    return-object p0

    .line 468
    :cond_14
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_26

    .line 469
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;

    move-object v2, p1

    check-cast v2, Ljava/net/Inet6Address;

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;-><init>(Ljava/net/Inet6Address;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    return-object p0

    .line 472
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Required argument not provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addOutboundTrafficSelectors(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 3
    .param p1, "trafficSelector"    # Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 321
    const-string v0, "Required argument not provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addOutboundTs(Landroid/net/ipsec/ike/IkeTrafficSelector;)V

    .line 323
    return-object p0
.end method

.method public whitelist addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 3
    .param p1, "proposal"    # Landroid/net/ipsec/ike/ChildSaProposal;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addChildSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
    .registers 11

    .line 551
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addDefaultTsIfNotConfigured()V

    .line 552
    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->validateOrThrow()V

    .line 554
    iget-boolean v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4AddressRequest:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4NetmaskRequest:Z

    if-nez v0, :cond_f

    goto :goto_17

    .line 555
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requesting netmask without IPv4 address is disallowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_17
    :goto_17
    iget-boolean v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4AddressRequest:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHasIp4NetmaskRequest:Z

    if-nez v0, :cond_29

    .line 559
    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;

    invoke-direct {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_29
    new-instance v2, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mInboundTsList:Ljava/util/List;

    const/4 v1, 0x0

    new-array v3, v1, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 563
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mOutboundTsList:Ljava/util/List;

    new-array v4, v1, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 564
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/net/ipsec/ike/IkeTrafficSelector;

    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mSaProposalList:Ljava/util/List;

    new-array v5, v1, [Landroid/net/ipsec/ike/ChildSaProposal;

    .line 565
    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/net/ipsec/ike/ChildSaProposal;

    iget-object v0, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mConfigRequestList:Ljava/util/List;

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    .line 566
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;

    iget v7, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHardLifetimeSec:I

    iget v8, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mSoftLifetimeSec:I

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;-><init>([Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/IkeTrafficSelector;[Landroid/net/ipsec/ike/ChildSaProposal;[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttribute;IILandroid/net/ipsec/ike/TunnelModeChildSessionParams-IA;)V

    .line 562
    return-object v2
.end method

.method public whitelist setLifetimeSeconds(II)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;
    .registers 3
    .param p1, "hardLifetimeSeconds"    # I
    .param p2, "softLifetimeSeconds"    # I

    .line 353
    invoke-virtual {p0, p1, p2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->validateAndSetLifetime(II)V

    .line 354
    iput p1, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mHardLifetimeSec:I

    .line 355
    iput p2, p0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->mSoftLifetimeSec:I

    .line 356
    return-object p0
.end method

.class public final Landroid/net/ipsec/ike/ChildSessionConfiguration;
.super Ljava/lang/Object;
.source "ChildSessionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final blacklist IPv4_DEFAULT_PREFIX_LEN:I = 0x20


# instance fields
.field private final blacklist mInboundTs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInternalAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInternalDhcpAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInternalDnsAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutboundTs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubnetAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "inTs":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    .local p2, "outTs":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInboundTs:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mOutboundTs:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalAddressList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalDnsAddressList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mSubnetAddressList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalDhcpAddressList:Ljava/util/List;

    .line 150
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInboundTs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mOutboundTs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;)V
    .registers 12
    .param p3, "configPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;",
            ")V"
        }
    .end annotation

    .line 78
    .local p1, "inTs":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    .local p2, "outTs":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    invoke-direct {p0, p1, p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 80
    iget v0, p3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d2

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "netmaskAttr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;
    iget-object v2, p3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->recognizedAttributeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    .line 90
    .local v3, "att":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    iget v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->attributeType:I

    if-ne v4, v1, :cond_28

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->isEmptyValue()Z

    move-result v4

    if-nez v4, :cond_28

    .line 91
    move-object v0, v3

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;

    .line 93
    .end local v3    # "att":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    :cond_28
    goto :goto_f

    .line 95
    :cond_29
    iget-object v1, p3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->recognizedAttributeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    .line 96
    .local v2, "att":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->isEmptyValue()Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_2f

    .line 97
    :cond_42
    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;->attributeType:I

    packed-switch v3, :pswitch_data_ee

    :pswitch_47
    goto/16 :goto_cf

    .line 128
    :pswitch_49
    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Subnet;

    .line 129
    .local v3, "ipV6SubnetAttr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Subnet;
    iget-object v4, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mSubnetAddressList:Ljava/util/List;

    new-instance v5, Landroid/net/IpPrefix;

    iget-object v6, v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Subnet;->linkAddress:Landroid/net/LinkAddress;

    .line 131
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Subnet;->linkAddress:Landroid/net/LinkAddress;

    .line 132
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 129
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    goto :goto_cf

    .line 121
    .end local v3    # "ipV6SubnetAttr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Subnet;
    :pswitch_63
    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;

    .line 122
    .local v3, "ipv4SubnetAttr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;
    iget-object v4, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mSubnetAddressList:Ljava/util/List;

    new-instance v5, Landroid/net/IpPrefix;

    iget-object v6, v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    .line 124
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;->linkAddress:Landroid/net/LinkAddress;

    .line 125
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 122
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    goto :goto_cf

    .line 118
    .end local v3    # "ipv4SubnetAttr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Subnet;
    :pswitch_7d
    iget-object v3, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalDnsAddressList:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;->address:Ljava/net/Inet6Address;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_cf

    .line 112
    :pswitch_88
    iget-object v3, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalAddressList:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;->linkAddress:Landroid/net/LinkAddress;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_cf

    .line 135
    :pswitch_93
    iget-object v3, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalDhcpAddressList:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dhcp;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dhcp;->address:Ljava/net/Inet4Address;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    goto :goto_cf

    .line 115
    :pswitch_9e
    iget-object v3, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalDnsAddressList:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dns;

    iget-object v4, v4, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Dns;->address:Ljava/net/Inet4Address;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    goto :goto_cf

    .line 110
    :pswitch_a9
    goto :goto_cf

    .line 99
    :pswitch_aa
    move-object v3, v2

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;

    .line 100
    .local v3, "addressAttr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;
    if-eqz v0, :cond_c0

    .line 101
    iget-object v4, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalAddressList:Ljava/util/List;

    new-instance v5, Landroid/net/LinkAddress;

    iget-object v6, v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;->address:Ljava/net/Inet4Address;

    .line 102
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;->getPrefixLen()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 101
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    .line 104
    :cond_c0
    iget-object v4, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalAddressList:Ljava/util/List;

    new-instance v5, Landroid/net/LinkAddress;

    iget-object v6, v3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;->address:Ljava/net/Inet4Address;

    const/16 v7, 0x20

    invoke-direct {v5, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    nop

    .line 140
    .end local v2    # "att":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    .end local v3    # "addressAttr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Address;
    :goto_cf
    goto/16 :goto_2f

    .line 141
    :cond_d1
    return-void

    .line 81
    .end local v0    # "netmaskAttr":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;
    :cond_d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build ChildSessionConfiguration with configuration type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;->configType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a9
        :pswitch_9e
        :pswitch_47
        :pswitch_47
        :pswitch_93
        :pswitch_47
        :pswitch_88
        :pswitch_47
        :pswitch_7d
        :pswitch_47
        :pswitch_47
        :pswitch_63
        :pswitch_47
        :pswitch_49
    .end packed-switch
.end method

.method private constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "inTs":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    .local p2, "outTs":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    .local p3, "internalAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local p4, "internalSubnets":Ljava/util/List;, "Ljava/util/List<Landroid/net/IpPrefix;>;"
    .local p5, "internalDnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p6, "internalDhcpServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-direct {p0, p1, p2}, Landroid/net/ipsec/ike/ChildSessionConfiguration;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 167
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalAddressList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mSubnetAddressList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalDnsAddressList:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalDhcpAddressList:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/net/ipsec/ike/ChildSessionConfiguration-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/net/ipsec/ike/ChildSessionConfiguration;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist getInboundTrafficSelectors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInboundTs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getInternalAddresses()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalAddressList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInternalDhcpServers()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalDhcpAddressList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInternalDnsServers()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mInternalDnsAddressList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInternalSubnets()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mSubnetAddressList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutboundTrafficSelectors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration;->mOutboundTs:Ljava/util/List;

    return-object v0
.end method

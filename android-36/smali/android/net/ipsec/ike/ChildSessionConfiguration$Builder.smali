.class public final Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;
.super Ljava/lang/Object;
.source "ChildSessionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/ChildSessionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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
.method public constructor whitelist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 5
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

    .line 278
    .local p1, "inTs":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    .local p2, "outTs":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeTrafficSelector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInboundTs:Ljava/util/List;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mOutboundTs:Ljava/util/List;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalAddressList:Ljava/util/List;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mSubnetAddressList:Ljava/util/List;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalDnsAddressList:Ljava/util/List;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalDhcpAddressList:Ljava/util/List;

    .line 279
    const-string v0, "inTs was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    const-string v0, "outTs was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 284
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInboundTs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mOutboundTs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    return-void

    .line 282
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inTs or outTs is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addInternalAddress(Landroid/net/LinkAddress;)Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;
    .registers 3
    .param p1, "address"    # Landroid/net/LinkAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 298
    const-string v0, "address was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalAddressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-object p0
.end method

.method public whitelist addInternalDhcpServer(Ljava/net/InetAddress;)Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;
    .registers 3
    .param p1, "dhcpServer"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 387
    const-string v0, "dhcpServer was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalDhcpAddressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    return-object p0
.end method

.method public whitelist addInternalDnsServer(Ljava/net/InetAddress;)Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;
    .registers 3
    .param p1, "dnsServer"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 357
    const-string v0, "dnsServer was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalDnsAddressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    return-object p0
.end method

.method public whitelist addInternalSubnet(Landroid/net/IpPrefix;)Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;
    .registers 3
    .param p1, "subnet"    # Landroid/net/IpPrefix;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 327
    const-string v0, "subnet was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mSubnetAddressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-object p0
.end method

.method public whitelist build()Landroid/net/ipsec/ike/ChildSessionConfiguration;
    .registers 9

    .line 409
    new-instance v0, Landroid/net/ipsec/ike/ChildSessionConfiguration;

    iget-object v1, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInboundTs:Ljava/util/List;

    iget-object v2, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mOutboundTs:Ljava/util/List;

    iget-object v3, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalAddressList:Ljava/util/List;

    iget-object v4, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mSubnetAddressList:Ljava/util/List;

    iget-object v5, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalDnsAddressList:Ljava/util/List;

    iget-object v6, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalDhcpAddressList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/net/ipsec/ike/ChildSessionConfiguration;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/net/ipsec/ike/ChildSessionConfiguration-IA;)V

    return-object v0
.end method

.method public whitelist clearInternalAddresses()Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 313
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalAddressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    return-object p0
.end method

.method public whitelist clearInternalDhcpServers()Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 402
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalDhcpAddressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    return-object p0
.end method

.method public whitelist clearInternalDnsServers()Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 372
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mInternalDnsAddressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
    return-object p0
.end method

.method public whitelist clearInternalSubnets()Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSessionConfiguration$Builder;->mSubnetAddressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    return-object p0
.end method

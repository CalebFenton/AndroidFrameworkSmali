.class public final Landroid/net/LinkProperties;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkProperties$CompareResult;,
        Landroid/net/LinkProperties$ProvisioningChange;,
        Landroid/net/LinkProperties$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_MTU:I = 0x2710

.field private static final MIN_MTU:I = 0x44

.field private static final MIN_MTU_V6:I = 0x500


# instance fields
.field private mDnses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDomains:Ljava/lang/String;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIfaceName:Ljava/lang/String;

.field private mLinkAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mMtu:I

.field private mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStackedLinks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mTcpBufferSizes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1144
    new-instance v0, Landroid/net/LinkProperties$1;

    #@2
    invoke-direct {v0}, Landroid/net/LinkProperties$1;-><init>()V

    #@5
    .line 1143
    sput-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@a
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@11
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@18
    .line 68
    new-instance v0, Ljava/util/Hashtable;

    #@1a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1d
    .line 67
    iput-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@1f
    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkProperties;)V
    .locals 9
    .param p1, "source"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 52
    new-instance v8, Ljava/util/ArrayList;

    #@6
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v8, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@b
    .line 53
    new-instance v8, Ljava/util/ArrayList;

    #@d
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v8, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@12
    .line 55
    new-instance v8, Ljava/util/ArrayList;

    #@14
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v8, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@19
    .line 68
    new-instance v8, Ljava/util/Hashtable;

    #@1b
    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    #@1e
    .line 67
    iput-object v8, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@20
    .line 146
    if-eqz p1, :cond_5

    #@22
    .line 147
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@25
    move-result-object v8

    #@26
    iput-object v8, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@28
    .line 148
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    #@2b
    move-result-object v8

    #@2c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v4

    #@30
    .local v4, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_0

    #@36
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Landroid/net/LinkAddress;

    #@3c
    .local v2, "l":Landroid/net/LinkAddress;
    iget-object v8, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 149
    .end local v2    # "l":Landroid/net/LinkAddress;
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@45
    move-result-object v8

    #@46
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v1

    #@4a
    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v8

    #@4e
    if-eqz v8, :cond_1

    #@50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Ljava/net/InetAddress;

    #@56
    .local v0, "i":Ljava/net/InetAddress;
    iget-object v8, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_1

    #@5c
    .line 150
    .end local v0    # "i":Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    iput-object v8, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    #@62
    .line 151
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@65
    move-result-object v8

    #@66
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@69
    move-result-object v6

    #@6a
    .local v6, "r$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@6d
    move-result v8

    #@6e
    if-eqz v8, :cond_2

    #@70
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@73
    move-result-object v5

    #@74
    check-cast v5, Landroid/net/RouteInfo;

    #@76
    .local v5, "r":Landroid/net/RouteInfo;
    iget-object v8, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7b
    goto :goto_2

    #@7c
    .line 152
    .end local v5    # "r":Landroid/net/RouteInfo;
    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@7f
    move-result-object v8

    #@80
    if-nez v8, :cond_3

    #@82
    :goto_3
    iput-object v7, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    #@84
    .line 154
    iget-object v7, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@86
    invoke-virtual {v7}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@89
    move-result-object v7

    #@8a
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8d
    move-result-object v4

    #@8e
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@91
    move-result v7

    #@92
    if-eqz v7, :cond_4

    #@94
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@97
    move-result-object v3

    #@98
    check-cast v3, Landroid/net/LinkProperties;

    #@9a
    .line 155
    .local v3, "l":Landroid/net/LinkProperties;
    invoke-virtual {p0, v3}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    #@9d
    goto :goto_4

    #@9e
    .line 153
    .end local v3    # "l":Landroid/net/LinkProperties;
    :cond_3
    new-instance v7, Landroid/net/ProxyInfo;

    #@a0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@a3
    move-result-object v8

    #@a4
    invoke-direct {v7, v8}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    #@a7
    goto :goto_3

    #@a8
    .line 157
    :cond_4
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    #@ab
    move-result v7

    #@ac
    invoke-virtual {p0, v7}, Landroid/net/LinkProperties;->setMtu(I)V

    #@af
    .line 158
    iget-object v7, p1, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@b1
    iput-object v7, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@b3
    .line 145
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    .end local v4    # "l$iterator":Ljava/util/Iterator;
    .end local v6    # "r$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public static compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 1
    .param p0, "before"    # Landroid/net/LinkProperties;
    .param p1, "after"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2

    #@6
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 123
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv4Provisioned()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv4Provisioned()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 126
    :cond_0
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@1a
    return-object v0

    #@1b
    .line 124
    :cond_1
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@1d
    return-object v0

    #@1e
    .line 127
    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_3

    #@24
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 129
    :cond_3
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_5

    #@30
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_5

    #@36
    .line 130
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@38
    return-object v0

    #@39
    .line 128
    :cond_4
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@3b
    return-object v0

    #@3c
    .line 132
    :cond_5
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@3e
    return-object v0
.end method

.method private findLinkAddressIndex(Landroid/net/LinkAddress;)I
    .locals 2
    .param p1, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 233
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 234
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/net/LinkAddress;

    #@11
    invoke-virtual {v1, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 235
    return v0

    #@18
    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 238
    :cond_1
    const/4 v1, -0x1

    #@1c
    return v1
.end method

.method private hasIPv4AddressOnInterface(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 670
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 671
    :cond_0
    if-eqz p1, :cond_2

    #@10
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 672
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@1a
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/net/LinkProperties;

    #@20
    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@23
    move-result v0

    #@24
    .line 670
    :goto_0
    return v0

    #@25
    :cond_1
    const/4 v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 671
    :cond_2
    const/4 v0, 0x0

    #@28
    goto :goto_0
.end method

.method public static isValidMtu(IZ)Z
    .locals 3
    .param p0, "mtu"    # I
    .param p1, "ipv6"    # Z

    #@0
    .prologue
    const/16 v2, 0x2710

    #@2
    const/4 v1, 0x1

    #@3
    .line 1190
    if-eqz p1, :cond_0

    #@5
    .line 1191
    const/16 v0, 0x500

    #@7
    if-lt p0, v0, :cond_1

    #@9
    if-gt p0, v2, :cond_1

    #@b
    return v1

    #@c
    .line 1193
    :cond_0
    const/16 v0, 0x44

    #@e
    if-lt p0, v0, :cond_1

    #@10
    if-gt p0, v2, :cond_1

    #@12
    return v1

    #@13
    .line 1195
    :cond_1
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method private routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;
    .locals 5
    .param p1, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    .line 443
    new-instance v0, Landroid/net/RouteInfo;

    #@2
    .line 444
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    #@5
    move-result-object v1

    #@6
    .line 445
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    #@9
    move-result-object v2

    #@a
    .line 446
    iget-object v3, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@c
    .line 447
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getType()I

    #@f
    move-result v4

    #@10
    .line 443
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    #@13
    return-object v0
.end method


# virtual methods
.method public addDnsServer(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "dnsServer"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 330
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 334
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 331
    :cond_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 332
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method public addLinkAddress(Landroid/net/LinkAddress;)Z
    .locals 4
    .param p1, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 249
    if-nez p1, :cond_0

    #@4
    .line 250
    return v2

    #@5
    .line 252
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->findLinkAddressIndex(Landroid/net/LinkAddress;)I

    #@8
    move-result v0

    #@9
    .line 253
    .local v0, "i":I
    if-gez v0, :cond_1

    #@b
    .line 255
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 256
    return v3

    #@11
    .line 257
    :cond_1
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/net/LinkAddress;

    #@19
    invoke-virtual {v1, p1}, Landroid/net/LinkAddress;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 259
    return v2

    #@20
    .line 262
    :cond_2
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 263
    return v3
.end method

.method public addRoute(Landroid/net/RouteInfo;)Z
    .locals 4
    .param p1, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    .line 462
    if-eqz p1, :cond_2

    #@2
    .line 463
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 464
    .local v0, "routeIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 469
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;

    #@13
    move-result-object p1

    #@14
    .line 470
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_2

    #@1c
    .line 471
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 472
    const/4 v1, 0x1

    #@22
    return v1

    #@23
    .line 465
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@25
    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "Route added with non-matching interface: "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 467
    const-string/jumbo v3, " vs. "

    #@38
    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 467
    iget-object v3, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@3e
    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 465
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1

    #@4a
    .line 475
    .end local v0    # "routeIface":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    #@4b
    return v1
.end method

.method public addStackedLink(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "link"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 548
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 549
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@a
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 550
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 552
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 593
    iput-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@3
    .line 594
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@8
    .line 595
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@d
    .line 596
    iput-object v1, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    #@f
    .line 597
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@14
    .line 598
    iput-object v1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    #@16
    .line 599
    iget-object v0, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@18
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@1b
    .line 600
    const/4 v0, 0x0

    #@1c
    iput v0, p0, Landroid/net/LinkProperties;->mMtu:I

    #@1e
    .line 601
    iput-object v1, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@20
    .line 592
    return-void
.end method

.method public compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 5
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 988
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    #@2
    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    #@5
    .line 989
    .local v2, "result":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@7
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@9
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@c
    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@e
    .line 990
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@10
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@13
    .line 991
    if-eqz p1, :cond_1

    #@15
    .line 992
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "newAddress$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/net/LinkAddress;

    #@29
    .line 993
    .local v0, "newAddress":Landroid/net/LinkAddress;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@2b
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_0

    #@31
    .line 994
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@33
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 998
    .end local v0    # "newAddress":Landroid/net/LinkAddress;
    .end local v1    # "newAddress$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public compareAllInterfaceNames(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 4
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1075
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    #@2
    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    #@5
    .line 1077
    .local v2, "result":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@8
    move-result-object v3

    #@9
    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@b
    .line 1078
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@d
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@10
    .line 1079
    if-eqz p1, :cond_1

    #@12
    .line 1080
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/lang/String;

    #@26
    .line 1081
    .local v0, "r":Ljava/lang/String;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@28
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_0

    #@2e
    .line 1082
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@30
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 1086
    .end local v0    # "r":Ljava/lang/String;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 4
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1046
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    #@2
    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    #@5
    .line 1048
    .local v2, "result":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@8
    move-result-object v3

    #@9
    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@b
    .line 1049
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@d
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@10
    .line 1050
    if-eqz p1, :cond_1

    #@12
    .line 1051
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/net/RouteInfo;

    #@26
    .line 1052
    .local v0, "r":Landroid/net/RouteInfo;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@28
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_0

    #@2e
    .line 1053
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@30
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_0

    #@34
    .line 1057
    .end local v0    # "r":Landroid/net/RouteInfo;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;
    .locals 5
    .param p1, "target"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Landroid/net/LinkProperties$CompareResult",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1017
    new-instance v2, Landroid/net/LinkProperties$CompareResult;

    #@2
    invoke-direct {v2}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    #@5
    .line 1019
    .local v2, "result":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@7
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@9
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@c
    iput-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@e
    .line 1020
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@10
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@13
    .line 1021
    if-eqz p1, :cond_1

    #@15
    .line 1022
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "newAddress$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/net/InetAddress;

    #@29
    .line 1023
    .local v0, "newAddress":Ljava/net/InetAddress;
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    #@2b
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_0

    #@31
    .line 1024
    iget-object v3, v2, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    #@33
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 1028
    .end local v0    # "newAddress":Ljava/net/InetAddress;
    .end local v1    # "newAddress$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 608
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 952
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 954
    :cond_0
    instance-of v2, p1, Landroid/net/LinkProperties;

    #@7
    if-nez v2, :cond_1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 956
    check-cast v0, Landroid/net/LinkProperties;

    #@d
    .line 962
    .local v0, "target":Landroid/net/LinkProperties;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 963
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    #@16
    move-result v2

    #@17
    .line 962
    if-eqz v2, :cond_2

    #@19
    .line 964
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    #@1c
    move-result v2

    #@1d
    .line 962
    if-eqz v2, :cond_2

    #@1f
    .line 965
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    #@22
    move-result v2

    #@23
    .line 962
    if-eqz v2, :cond_2

    #@25
    .line 966
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    #@28
    move-result v2

    #@29
    .line 962
    if-eqz v2, :cond_2

    #@2b
    .line 967
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalStackedLinks(Landroid/net/LinkProperties;)Z

    #@2e
    move-result v2

    #@2f
    .line 962
    if-eqz v2, :cond_2

    #@31
    .line 968
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    #@34
    move-result v2

    #@35
    .line 962
    if-eqz v2, :cond_2

    #@37
    .line 969
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isIdenticalTcpBufferSizes(Landroid/net/LinkProperties;)Z

    #@3a
    move-result v1

    #@3b
    .line 962
    :cond_2
    return v1
.end method

.method public getAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 211
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "linkAddress$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/net/LinkAddress;

    #@17
    .line 212
    .local v1, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 214
    .end local v1    # "linkAddress":Landroid/net/LinkAddress;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@22
    move-result-object v3

    #@23
    return-object v3
.end method

.method public getAllAddresses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 222
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 223
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v5, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "linkAddress$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/net/LinkAddress;

    #@17
    .line 224
    .local v1, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@1a
    move-result-object v5

    #@1b
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 226
    .end local v1    # "linkAddress":Landroid/net/LinkAddress;
    :cond_0
    iget-object v5, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@21
    invoke-virtual {v5}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@24
    move-result-object v5

    #@25
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v4

    #@29
    .local v4, "stacked$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_1

    #@2f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Landroid/net/LinkProperties;

    #@35
    .line 227
    .local v3, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    #@38
    move-result-object v5

    #@39
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@3c
    goto :goto_1

    #@3d
    .line 229
    .end local v3    # "stacked":Landroid/net/LinkProperties;
    :cond_1
    return-object v0
.end method

.method public getAllInterfaceNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@4
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    #@7
    move-result v3

    #@8
    add-int/lit8 v3, v3, 0x1

    #@a
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 192
    .local v0, "interfaceNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@f
    if-eqz v3, :cond_0

    #@11
    new-instance v3, Ljava/lang/String;

    #@13
    iget-object v4, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@15
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@18
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 193
    :cond_0
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@1d
    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v2

    #@25
    .local v2, "stacked$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Landroid/net/LinkProperties;

    #@31
    .line 194
    .local v1, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@34
    move-result-object v3

    #@35
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@38
    goto :goto_0

    #@39
    .line 196
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_1
    return-object v0
.end method

.method public getAllLinkAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 299
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 300
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@7
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 301
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@c
    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    .local v2, "stacked$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/net/LinkProperties;

    #@20
    .line 302
    .local v1, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@27
    goto :goto_0

    #@28
    .line 304
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_0
    return-object v0
.end method

.method public getAllRoutes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 507
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 508
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@7
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 509
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@c
    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    .local v2, "stacked$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/net/LinkProperties;

    #@20
    .line 510
    .local v1, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@27
    goto :goto_0

    #@28
    .line 512
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_0
    return-object v0
.end method

.method public getDnsServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDomains()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    #@2
    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLinkAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMtu()I
    .locals 1

    #@0
    .prologue
    .line 416
    iget v0, p0, Landroid/net/LinkProperties;->mMtu:I

    #@2
    return v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 499
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStackedLinks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 578
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 579
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@a
    return-object v3

    #@b
    .line 581
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 582
    .local v2, "stacked":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "link$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/net/LinkProperties;

    #@26
    .line 583
    .local v0, "link":Landroid/net/LinkProperties;
    new-instance v3, Landroid/net/LinkProperties;

    #@28
    invoke-direct {v3, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@2b
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_0

    #@2f
    .line 585
    .end local v0    # "link":Landroid/net/LinkProperties;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@32
    move-result-object v3

    #@33
    return-object v3
.end method

.method public getTcpBufferSizes()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasGlobalIPv6Address()Z
    .locals 3

    #@0
    .prologue
    .line 682
    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "address$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/net/LinkAddress;

    #@12
    .line 683
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@15
    move-result-object v2

    #@16
    instance-of v2, v2, Ljava/net/Inet6Address;

    #@18
    if-eqz v2, :cond_0

    #@1a
    invoke-virtual {v0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 684
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 687
    .end local v0    # "address":Landroid/net/LinkAddress;
    :cond_1
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method public hasIPv4Address()Z
    .locals 3

    #@0
    .prologue
    .line 656
    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "address$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/net/LinkAddress;

    #@12
    .line 657
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@15
    move-result-object v2

    #@16
    instance-of v2, v2, Ljava/net/Inet4Address;

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 658
    const/4 v2, 0x1

    #@1b
    return v2

    #@1c
    .line 661
    .end local v0    # "address":Landroid/net/LinkAddress;
    :cond_1
    const/4 v2, 0x0

    #@1d
    return v2
.end method

.method public hasIPv4DefaultRoute()Z
    .locals 3

    #@0
    .prologue
    .line 697
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/net/RouteInfo;

    #@12
    .line 698
    .local v0, "r":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isIPv4Default()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 699
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 702
    .end local v0    # "r":Landroid/net/RouteInfo;
    :cond_1
    const/4 v2, 0x0

    #@1b
    return v2
.end method

.method public hasIPv4DnsServer()Z
    .locals 3

    #@0
    .prologue
    .line 727
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "ia$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/net/InetAddress;

    #@12
    .line 728
    .local v0, "ia":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 729
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 732
    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_1
    const/4 v2, 0x0

    #@19
    return v2
.end method

.method public hasIPv6DefaultRoute()Z
    .locals 3

    #@0
    .prologue
    .line 712
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/net/RouteInfo;

    #@12
    .line 713
    .local v0, "r":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isIPv6Default()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 714
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 717
    .end local v0    # "r":Landroid/net/RouteInfo;
    :cond_1
    const/4 v2, 0x0

    #@1b
    return v2
.end method

.method public hasIPv6DnsServer()Z
    .locals 3

    #@0
    .prologue
    .line 742
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "ia$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/net/InetAddress;

    #@12
    .line 743
    .local v0, "ia":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 744
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 747
    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_1
    const/4 v2, 0x0

    #@19
    return v2
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1097
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    move v0, v1

    #@6
    .line 1104
    :goto_0
    iget v2, p0, Landroid/net/LinkProperties;->mMtu:I

    #@8
    mul-int/lit8 v2, v2, 0x33

    #@a
    .line 1097
    add-int/2addr v0, v2

    #@b
    .line 1105
    iget-object v2, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@d
    if-nez v2, :cond_3

    #@f
    .line 1097
    :goto_1
    add-int/2addr v0, v1

    #@10
    return v0

    #@11
    :cond_0
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@16
    move-result v0

    #@17
    .line 1098
    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v2

    #@1d
    mul-int/lit8 v2, v2, 0x1f

    #@1f
    .line 1097
    add-int/2addr v0, v2

    #@20
    .line 1099
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v2

    #@26
    mul-int/lit8 v2, v2, 0x25

    #@28
    .line 1097
    add-int/2addr v2, v0

    #@29
    .line 1100
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    #@2b
    if-nez v0, :cond_1

    #@2d
    move v0, v1

    #@2e
    .line 1097
    :goto_2
    add-int/2addr v0, v2

    #@2f
    .line 1101
    iget-object v2, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v2

    #@35
    mul-int/lit8 v2, v2, 0x29

    #@37
    .line 1097
    add-int/2addr v2, v0

    #@38
    .line 1102
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    #@3a
    if-nez v0, :cond_2

    #@3c
    move v0, v1

    #@3d
    .line 1097
    :goto_3
    add-int/2addr v0, v2

    #@3e
    .line 1103
    iget-object v2, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@40
    invoke-virtual {v2}, Ljava/util/Hashtable;->hashCode()I

    #@43
    move-result v2

    #@44
    mul-int/lit8 v2, v2, 0x2f

    #@46
    .line 1097
    add-int/2addr v0, v2

    #@47
    goto :goto_0

    #@48
    .line 1100
    :cond_1
    iget-object v0, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    #@4a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@4d
    move-result v0

    #@4e
    goto :goto_2

    #@4f
    .line 1102
    :cond_2
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    #@51
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->hashCode()I

    #@54
    move-result v0

    #@55
    goto :goto_3

    #@56
    .line 1105
    :cond_3
    iget-object v1, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@58
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5b
    move-result v1

    #@5c
    goto :goto_1
.end method

.method public isIPv4Provisioned()Z
    .locals 1

    #@0
    .prologue
    .line 758
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 759
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    #@9
    move-result v0

    #@a
    .line 758
    if-eqz v0, :cond_0

    #@c
    .line 760
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    #@f
    move-result v0

    #@10
    .line 758
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public isIPv6Provisioned()Z
    .locals 1

    #@0
    .prologue
    .line 771
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 772
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@9
    move-result v0

    #@a
    .line 771
    if-eqz v0, :cond_0

    #@c
    .line 773
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    #@f
    move-result v0

    #@10
    .line 771
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public isIdenticalAddresses(Landroid/net/LinkProperties;)Z
    .locals 4
    .param p1, "target"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 843
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 844
    .local v1, "targetAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    .line 845
    .local v0, "sourceAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@b
    move-result v2

    #@c
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    #@f
    move-result v3

    #@10
    if-ne v2, v3, :cond_0

    #@12
    .line 846
    invoke-interface {v0, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    #@15
    move-result v2

    #@16
    .line 845
    :goto_0
    return v2

    #@17
    .line 846
    :cond_0
    const/4 v2, 0x0

    #@18
    goto :goto_0
.end method

.method public isIdenticalDnses(Landroid/net/LinkProperties;)Z
    .locals 5
    .param p1, "target"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 857
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    .line 858
    .local v0, "targetDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 859
    .local v1, "targetDomains":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    #@b
    if-nez v3, :cond_0

    #@d
    .line 860
    if-eqz v1, :cond_1

    #@f
    return v2

    #@10
    .line 862
    :cond_0
    iget-object v3, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    #@12
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_1

    #@18
    return v2

    #@19
    .line 864
    :cond_1
    iget-object v3, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v3

    #@1f
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@22
    move-result v4

    #@23
    if-ne v3, v4, :cond_2

    #@25
    .line 865
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    #@2a
    move-result v2

    #@2b
    .line 864
    :cond_2
    return v2
.end method

.method public isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 889
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1

    #@6
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0

    #@10
    .line 890
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    goto :goto_0
.end method

.method public isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 832
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isIdenticalMtu(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 922
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public isIdenticalRoutes(Landroid/net/LinkProperties;)Z
    .locals 3
    .param p1, "target"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 876
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 877
    .local v0, "targetRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@d
    move-result v2

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 878
    iget-object v1, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    #@15
    move-result v1

    #@16
    .line 877
    :goto_0
    return v1

    #@17
    .line 878
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0
.end method

.method public isIdenticalStackedLinks(Landroid/net/LinkProperties;)Z
    .locals 6
    .param p1, "target"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 901
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    #@6
    move-result-object v3

    #@7
    iget-object v4, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    #@c
    move-result-object v4

    #@d
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_0

    #@13
    .line 902
    return v5

    #@14
    .line 904
    :cond_0
    iget-object v3, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@16
    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@19
    move-result-object v3

    #@1a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v2

    #@1e
    .local v2, "stacked$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Landroid/net/LinkProperties;

    #@2a
    .line 906
    .local v1, "stacked":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 907
    .local v0, "iface":Ljava/lang/String;
    iget-object v3, p1, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@30
    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_1

    #@3a
    .line 908
    return v5

    #@3b
    .line 911
    .end local v0    # "iface":Ljava/lang/String;
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_2
    const/4 v3, 0x1

    #@3c
    return v3
.end method

.method public isIdenticalTcpBufferSizes(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "target"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 933
    iget-object v0, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@2
    iget-object v1, p1, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    #@0
    .prologue
    .line 784
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv4Provisioned()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public isReachable(Ljava/net/InetAddress;)Z
    .locals 5
    .param p1, "ip"    # Ljava/net/InetAddress;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 795
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 797
    .local v0, "allRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-static {v0, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    #@9
    move-result-object v1

    #@a
    .line 798
    .local v1, "bestRoute":Landroid/net/RouteInfo;
    if-nez v1, :cond_0

    #@c
    .line 799
    return v3

    #@d
    .line 804
    :cond_0
    instance-of v4, p1, Ljava/net/Inet4Address;

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 806
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {p0, v2}, Landroid/net/LinkProperties;->hasIPv4AddressOnInterface(Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 807
    :cond_1
    instance-of v4, p1, Ljava/net/Inet6Address;

    #@1c
    if-eqz v4, :cond_5

    #@1e
    .line 808
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_3

    #@24
    .line 812
    check-cast p1, Ljava/net/Inet6Address;

    #@26
    .end local p1    # "ip":Ljava/net/InetAddress;
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getScopeId()I

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_2

    #@2c
    :goto_0
    return v2

    #@2d
    :cond_2
    move v2, v3

    #@2e
    goto :goto_0

    #@2f
    .line 817
    .restart local p1    # "ip":Ljava/net/InetAddress;
    :cond_3
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_4

    #@35
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@38
    move-result v2

    #@39
    :cond_4
    return v2

    #@3a
    .line 821
    :cond_5
    return v3
.end method

.method public removeDnsServer(Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "dnsServer"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 345
    if-eqz p1, :cond_0

    #@2
    .line 346
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 348
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public removeLinkAddress(Landroid/net/LinkAddress;)Z
    .locals 2
    .param p1, "toRemove"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 276
    invoke-direct {p0, p1}, Landroid/net/LinkProperties;->findLinkAddressIndex(Landroid/net/LinkAddress;)I

    #@4
    move-result v0

    #@5
    .line 277
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@7
    .line 278
    iget-object v1, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@c
    .line 279
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 281
    :cond_0
    return v1
.end method

.method public removeRoute(Landroid/net/RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroid/net/RouteInfo;

    #@0
    .prologue
    .line 488
    if-eqz p1, :cond_0

    #@2
    .line 489
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@4
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    .line 488
    if-eqz v0, :cond_0

    #@e
    .line 490
    iget-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    .line 488
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public removeStackedLink(Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 566
    if-eqz p1, :cond_1

    #@3
    .line 567
    iget-object v2, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@5
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/LinkProperties;

    #@b
    .line 568
    .local v0, "removed":Landroid/net/LinkProperties;
    if-eqz v0, :cond_0

    #@d
    const/4 v1, 0x1

    #@e
    :cond_0
    return v1

    #@f
    .line 570
    .end local v0    # "removed":Landroid/net/LinkProperties;
    :cond_1
    return v1
.end method

.method public setDnsServers(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 359
    .local p1, "dnsServers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 360
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "dnsServer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/net/InetAddress;

    #@15
    .line 361
    .local v0, "dnsServer":Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@18
    goto :goto_0

    #@19
    .line 358
    .end local v0    # "dnsServer":Ljava/net/InetAddress;
    :cond_0
    return-void
.end method

.method public setDomains(Ljava/lang/String;)V
    .locals 0
    .param p1, "domains"    # Ljava/lang/String;

    #@0
    .prologue
    .line 383
    iput-object p1, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    #@2
    .line 382
    return-void
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 524
    iput-object p1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    #@2
    .line 523
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    iput-object p1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@2
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    #@4
    iget-object v3, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 172
    .local v0, "newRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "route$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/net/RouteInfo;

    #@1f
    .line 173
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-direct {p0, v1}, Landroid/net/LinkProperties;->routeWithInterface(Landroid/net/RouteInfo;)Landroid/net/RouteInfo;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 175
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_0
    iput-object v0, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@29
    .line 169
    return-void
.end method

.method public setLinkAddresses(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 316
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 317
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "address$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/net/LinkAddress;

    #@15
    .line 318
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    #@18
    goto :goto_0

    #@19
    .line 315
    .end local v0    # "address":Landroid/net/LinkAddress;
    :cond_0
    return-void
.end method

.method public setMtu(I)V
    .locals 0
    .param p1, "mtu"    # I

    #@0
    .prologue
    .line 405
    iput p1, p0, Landroid/net/LinkProperties;->mMtu:I

    #@2
    .line 404
    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .locals 0
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;

    #@0
    .prologue
    .line 428
    iput-object p1, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@2
    .line 427
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    #@0
    .prologue
    .line 613
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@4
    move-object/from16 v18, v0

    #@6
    if-nez v18, :cond_0

    #@8
    const-string/jumbo v7, ""

    #@b
    .line 615
    .local v7, "ifaceName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v10, "LinkAddresses: ["

    #@e
    .line 616
    .local v10, "linkAddresses":Ljava/lang/String;
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@12
    move-object/from16 v18, v0

    #@14
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v4

    #@18
    .local v4, "addr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v18

    #@1c
    if-eqz v18, :cond_1

    #@1e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/net/LinkAddress;

    #@24
    .local v2, "addr":Landroid/net/LinkAddress;
    new-instance v18, Ljava/lang/StringBuilder;

    #@26
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    move-object/from16 v0, v18

    #@2b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v18

    #@2f
    invoke-virtual {v2}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    #@32
    move-result-object v19

    #@33
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v18

    #@37
    const-string/jumbo v19, ","

    #@3a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v18

    #@3e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v10

    #@42
    goto :goto_1

    #@43
    .line 613
    .end local v2    # "addr":Landroid/net/LinkAddress;
    .end local v4    # "addr$iterator":Ljava/util/Iterator;
    .end local v7    # "ifaceName":Ljava/lang/String;
    .end local v10    # "linkAddresses":Ljava/lang/String;
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    #@45
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v19, "InterfaceName: "

    #@4b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v18

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    #@53
    move-object/from16 v19, v0

    #@55
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v18

    #@59
    const-string/jumbo v19, " "

    #@5c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v18

    #@60
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    .restart local v7    # "ifaceName":Ljava/lang/String;
    goto :goto_0

    #@65
    .line 617
    .restart local v4    # "addr$iterator":Ljava/util/Iterator;
    .restart local v10    # "linkAddresses":Ljava/lang/String;
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    #@67
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    move-object/from16 v0, v18

    #@6c
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v18

    #@70
    const-string/jumbo v19, "] "

    #@73
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v18

    #@77
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v10

    #@7b
    .line 619
    const-string/jumbo v5, "DnsAddresses: ["

    #@7e
    .line 620
    .local v5, "dns":Ljava/lang/String;
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@82
    move-object/from16 v18, v0

    #@84
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@87
    move-result-object v4

    #@88
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@8b
    move-result v18

    #@8c
    if-eqz v18, :cond_2

    #@8e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@91
    move-result-object v3

    #@92
    check-cast v3, Ljava/net/InetAddress;

    #@94
    .local v3, "addr":Ljava/net/InetAddress;
    new-instance v18, Ljava/lang/StringBuilder;

    #@96
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    move-object/from16 v0, v18

    #@9b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v18

    #@9f
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@a2
    move-result-object v19

    #@a3
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v18

    #@a7
    const-string/jumbo v19, ","

    #@aa
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v18

    #@ae
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v5

    #@b2
    goto :goto_2

    #@b3
    .line 621
    .end local v3    # "addr":Ljava/net/InetAddress;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    move-object/from16 v0, v18

    #@ba
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v18

    #@be
    const-string/jumbo v19, "] "

    #@c1
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v18

    #@c5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v5

    #@c9
    .line 623
    new-instance v18, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v19, "Domains: "

    #@d1
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v18

    #@d5
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    #@d9
    move-object/from16 v19, v0

    #@db
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v18

    #@df
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v6

    #@e3
    .line 625
    .local v6, "domainName":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v19, " MTU: "

    #@eb
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v18

    #@ef
    move-object/from16 v0, p0

    #@f1
    iget v0, v0, Landroid/net/LinkProperties;->mMtu:I

    #@f3
    move/from16 v19, v0

    #@f5
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v18

    #@f9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v11

    #@fd
    .line 627
    .local v11, "mtu":Ljava/lang/String;
    const-string/jumbo v17, ""

    #@100
    .line 628
    .local v17, "tcpBuffSizes":Ljava/lang/String;
    move-object/from16 v0, p0

    #@102
    iget-object v0, v0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@104
    move-object/from16 v18, v0

    #@106
    if-eqz v18, :cond_3

    #@108
    .line 629
    new-instance v18, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v19, " TcpBufferSizes: "

    #@110
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v18

    #@114
    move-object/from16 v0, p0

    #@116
    iget-object v0, v0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@118
    move-object/from16 v19, v0

    #@11a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v18

    #@11e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v17

    #@122
    .line 632
    :cond_3
    const-string/jumbo v15, " Routes: ["

    #@125
    .line 633
    .local v15, "routes":Ljava/lang/String;
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@129
    move-object/from16 v18, v0

    #@12b
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12e
    move-result-object v14

    #@12f
    .local v14, "route$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@132
    move-result v18

    #@133
    if-eqz v18, :cond_4

    #@135
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@138
    move-result-object v13

    #@139
    check-cast v13, Landroid/net/RouteInfo;

    #@13b
    .local v13, "route":Landroid/net/RouteInfo;
    new-instance v18, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    move-object/from16 v0, v18

    #@142
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v18

    #@146
    invoke-virtual {v13}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    #@149
    move-result-object v19

    #@14a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v18

    #@14e
    const-string/jumbo v19, ","

    #@151
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v18

    #@155
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@158
    move-result-object v15

    #@159
    goto :goto_3

    #@15a
    .line 634
    .end local v13    # "route":Landroid/net/RouteInfo;
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    move-object/from16 v0, v18

    #@161
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v18

    #@165
    const-string/jumbo v19, "] "

    #@168
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v18

    #@16c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v15

    #@170
    .line 635
    move-object/from16 v0, p0

    #@172
    iget-object v0, v0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    #@174
    move-object/from16 v18, v0

    #@176
    if-nez v18, :cond_5

    #@178
    const-string/jumbo v12, ""

    #@17b
    .line 637
    .local v12, "proxy":Ljava/lang/String;
    :goto_4
    const-string/jumbo v16, ""

    #@17e
    .line 638
    .local v16, "stacked":Ljava/lang/String;
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@182
    move-object/from16 v18, v0

    #@184
    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@187
    move-result-object v18

    #@188
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    #@18b
    move-result v18

    #@18c
    if-lez v18, :cond_7

    #@18e
    .line 639
    new-instance v18, Ljava/lang/StringBuilder;

    #@190
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    move-object/from16 v0, v18

    #@195
    move-object/from16 v1, v16

    #@197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v18

    #@19b
    const-string/jumbo v19, " Stacked: ["

    #@19e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v18

    #@1a2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v16

    #@1a6
    .line 640
    move-object/from16 v0, p0

    #@1a8
    iget-object v0, v0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@1aa
    move-object/from16 v18, v0

    #@1ac
    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@1af
    move-result-object v18

    #@1b0
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b3
    move-result-object v9

    #@1b4
    .local v9, "link$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@1b7
    move-result v18

    #@1b8
    if-eqz v18, :cond_6

    #@1ba
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1bd
    move-result-object v8

    #@1be
    check-cast v8, Landroid/net/LinkProperties;

    #@1c0
    .line 641
    .local v8, "link":Landroid/net/LinkProperties;
    new-instance v18, Ljava/lang/StringBuilder;

    #@1c2
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1c5
    move-object/from16 v0, v18

    #@1c7
    move-object/from16 v1, v16

    #@1c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v18

    #@1cd
    const-string/jumbo v19, " ["

    #@1d0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v18

    #@1d4
    invoke-virtual {v8}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v19

    #@1d8
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v18

    #@1dc
    const-string/jumbo v19, " ],"

    #@1df
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v18

    #@1e3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e6
    move-result-object v16

    #@1e7
    goto :goto_5

    #@1e8
    .line 635
    .end local v8    # "link":Landroid/net/LinkProperties;
    .end local v9    # "link$iterator":Ljava/util/Iterator;
    .end local v12    # "proxy":Ljava/lang/String;
    .end local v16    # "stacked":Ljava/lang/String;
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    #@1ea
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1ed
    const-string/jumbo v19, " HttpProxy: "

    #@1f0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v18

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    #@1f8
    move-object/from16 v19, v0

    #@1fa
    invoke-virtual/range {v19 .. v19}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    #@1fd
    move-result-object v19

    #@1fe
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v18

    #@202
    const-string/jumbo v19, " "

    #@205
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v18

    #@209
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v12

    #@20d
    .restart local v12    # "proxy":Ljava/lang/String;
    goto/16 :goto_4

    #@20f
    .line 643
    .restart local v9    # "link$iterator":Ljava/util/Iterator;
    .restart local v16    # "stacked":Ljava/lang/String;
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    #@211
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@214
    move-object/from16 v0, v18

    #@216
    move-object/from16 v1, v16

    #@218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v18

    #@21c
    const-string/jumbo v19, "] "

    #@21f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v18

    #@223
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@226
    move-result-object v16

    #@227
    .line 645
    .end local v9    # "link$iterator":Ljava/util/Iterator;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    #@229
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@22c
    const-string/jumbo v19, "{"

    #@22f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    move-result-object v18

    #@233
    move-object/from16 v0, v18

    #@235
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v18

    #@239
    move-object/from16 v0, v18

    #@23b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v18

    #@23f
    move-object/from16 v0, v18

    #@241
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v18

    #@245
    move-object/from16 v0, v18

    #@247
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24a
    move-result-object v18

    #@24b
    move-object/from16 v0, v18

    #@24d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v18

    #@251
    move-object/from16 v0, v18

    #@253
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v18

    #@257
    move-object/from16 v0, v18

    #@259
    move-object/from16 v1, v17

    #@25b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25e
    move-result-object v18

    #@25f
    move-object/from16 v0, v18

    #@261
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v18

    #@265
    move-object/from16 v0, v18

    #@267
    move-object/from16 v1, v16

    #@269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v18

    #@26d
    .line 646
    const-string/jumbo v19, "}"

    #@270
    .line 645
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v18

    #@274
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@277
    move-result-object v18

    #@278
    return-object v18
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1112
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@3
    move-result-object v7

    #@4
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 1113
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v7

    #@d
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1114
    iget-object v7, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/ArrayList;

    #@12
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v3

    #@16
    .local v3, "linkAddress$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_0

    #@1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/net/LinkAddress;

    #@22
    .line 1115
    .local v2, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@25
    goto :goto_0

    #@26
    .line 1118
    .end local v2    # "linkAddress":Landroid/net/LinkAddress;
    :cond_0
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v7

    #@2c
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1119
    iget-object v7, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/ArrayList;

    #@31
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v1

    #@35
    .local v1, "d$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_1

    #@3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/net/InetAddress;

    #@41
    .line 1120
    .local v0, "d":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    #@44
    move-result-object v7

    #@45
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    #@48
    goto :goto_1

    #@49
    .line 1122
    .end local v0    # "d":Ljava/net/InetAddress;
    :cond_1
    iget-object v7, p0, Landroid/net/LinkProperties;->mDomains:Ljava/lang/String;

    #@4b
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4e
    .line 1123
    iget v7, p0, Landroid/net/LinkProperties;->mMtu:I

    #@50
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 1124
    iget-object v7, p0, Landroid/net/LinkProperties;->mTcpBufferSizes:Ljava/lang/String;

    #@55
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@58
    .line 1125
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@5d
    move-result v7

    #@5e
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 1126
    iget-object v7, p0, Landroid/net/LinkProperties;->mRoutes:Ljava/util/ArrayList;

    #@63
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@66
    move-result-object v5

    #@67
    .local v5, "route$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@6a
    move-result v7

    #@6b
    if-eqz v7, :cond_2

    #@6d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@70
    move-result-object v4

    #@71
    check-cast v4, Landroid/net/RouteInfo;

    #@73
    .line 1127
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@76
    goto :goto_2

    #@77
    .line 1130
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_2
    iget-object v7, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    #@79
    if-eqz v7, :cond_3

    #@7b
    .line 1131
    const/4 v7, 0x1

    #@7c
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeByte(B)V

    #@7f
    .line 1132
    iget-object v7, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyInfo;

    #@81
    invoke-virtual {p1, v7, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@84
    .line 1136
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    #@86
    iget-object v7, p0, Landroid/net/LinkProperties;->mStackedLinks:Ljava/util/Hashtable;

    #@88
    invoke-virtual {v7}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    #@8b
    move-result-object v7

    #@8c
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@8f
    .line 1137
    .local v6, "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@92
    .line 1111
    return-void

    #@93
    .line 1134
    .end local v6    # "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    :cond_3
    const/4 v7, 0x0

    #@94
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeByte(B)V

    #@97
    goto :goto_3
.end method

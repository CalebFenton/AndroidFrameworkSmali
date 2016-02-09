.class public Landroid/net/StaticIpConfiguration;
.super Ljava/lang/Object;
.source "StaticIpConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/StaticIpConfiguration$1;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/StaticIpConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final dnsServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public domains:Ljava/lang/String;

.field public gateway:Ljava/net/InetAddress;

.field public ipAddress:Landroid/net/LinkAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 165
    new-instance v0, Landroid/net/StaticIpConfiguration$1;

    #@2
    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$1;-><init>()V

    #@5
    .line 164
    sput-object v0, Landroid/net/StaticIpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@a
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/net/StaticIpConfiguration;)V
    .locals 2
    .param p1, "source"    # Landroid/net/StaticIpConfiguration;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Landroid/net/StaticIpConfiguration;-><init>()V

    #@3
    .line 60
    if-eqz p1, :cond_0

    #@5
    .line 62
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@7
    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@9
    .line 63
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@b
    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@d
    .line 64
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@f
    iget-object v1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@14
    .line 65
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@16
    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@18
    .line 58
    :cond_0
    return-void
.end method

.method protected static readFromParcel(Landroid/net/StaticIpConfiguration;Landroid/os/Parcel;)V
    .locals 4
    .param p0, "s"    # Landroid/net/StaticIpConfiguration;
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 194
    const/4 v2, 0x0

    #@1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4
    move-result-object v2

    #@5
    check-cast v2, Landroid/net/LinkAddress;

    #@7
    iput-object v2, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@9
    .line 195
    invoke-static {p1}, Landroid/net/NetworkUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@f
    .line 196
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@14
    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v1

    #@18
    .line 198
    .local v1, "size":I
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@1b
    .line 199
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@1d
    invoke-static {p1}, Landroid/net/NetworkUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 198
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@2d
    .line 193
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 70
    iput-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@3
    .line 71
    iput-object v1, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@5
    .line 72
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 73
    iput-object v1, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@c
    .line 69
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 179
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 150
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 152
    :cond_0
    instance-of v2, p1, Landroid/net/StaticIpConfiguration;

    #@7
    if-nez v2, :cond_1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 154
    check-cast v0, Landroid/net/StaticIpConfiguration;

    #@d
    .line 156
    .local v0, "other":Landroid/net/StaticIpConfiguration;
    if-eqz v0, :cond_2

    #@f
    .line 157
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@11
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@13
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    .line 156
    if-eqz v2, :cond_2

    #@19
    .line 158
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@1b
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@1d
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 156
    if-eqz v2, :cond_2

    #@23
    .line 159
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@25
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    .line 156
    if-eqz v2, :cond_2

    #@2d
    .line 160
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@2f
    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@31
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    .line 156
    :cond_2
    return v1
.end method

.method public getRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    #@3
    const/4 v3, 0x3

    #@4
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@7
    .line 85
    .local v1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 86
    new-instance v0, Landroid/net/RouteInfo;

    #@d
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@f
    invoke-direct {v0, v3, v2, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@12
    .line 87
    .local v0, "connectedRoute":Landroid/net/RouteInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    .line 88
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@17
    if-eqz v3, :cond_0

    #@19
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@1b
    invoke-virtual {v0, v3}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 92
    .end local v0    # "connectedRoute":Landroid/net/RouteInfo;
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 93
    new-instance v3, Landroid/net/RouteInfo;

    #@27
    check-cast v2, Landroid/net/IpPrefix;

    #@29
    iget-object v4, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@2b
    invoke-direct {v3, v2, v4, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    #@2e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    .line 95
    :cond_1
    return-object v1

    #@32
    .line 89
    .restart local v0    # "connectedRoute":Landroid/net/RouteInfo;
    :cond_2
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@34
    invoke-static {v3, p1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    #@37
    move-result-object v3

    #@38
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 141
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@3
    if-nez v1, :cond_0

    #@5
    move v1, v2

    #@6
    :goto_0
    add-int/lit16 v0, v1, 0x263

    #@8
    .line 142
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x2f

    #@a
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@c
    if-nez v1, :cond_1

    #@e
    move v1, v2

    #@f
    :goto_1
    add-int v0, v3, v1

    #@11
    .line 143
    mul-int/lit8 v1, v0, 0x2f

    #@13
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@15
    if-nez v3, :cond_2

    #@17
    :goto_2
    add-int v0, v1, v2

    #@19
    .line 144
    mul-int/lit8 v1, v0, 0x2f

    #@1b
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    #@20
    move-result v2

    #@21
    add-int v0, v1, v2

    #@23
    .line 145
    return v0

    #@24
    .line 141
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@26
    invoke-virtual {v1}, Landroid/net/LinkAddress;->hashCode()I

    #@29
    move-result v1

    #@2a
    goto :goto_0

    #@2b
    .line 142
    .restart local v0    # "result":I
    :cond_1
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@2d
    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    #@30
    move-result v1

    #@31
    goto :goto_1

    #@32
    .line 143
    :cond_2
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@34
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@37
    move-result v2

    #@38
    goto :goto_2
.end method

.method public toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    new-instance v2, Landroid/net/LinkProperties;

    #@2
    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    #@5
    .line 106
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v2, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    #@8
    .line 107
    iget-object v5, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 108
    iget-object v5, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@e
    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    #@11
    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/StaticIpConfiguration;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    #@14
    move-result-object v5

    #@15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v4

    #@19
    .local v4, "route$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_1

    #@1f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Landroid/net/RouteInfo;

    #@25
    .line 111
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@28
    goto :goto_0

    #@29
    .line 113
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_1
    iget-object v5, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@2b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    .local v1, "dns$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_2

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Ljava/net/InetAddress;

    #@3b
    .line 114
    .local v0, "dns":Ljava/net/InetAddress;
    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@3e
    goto :goto_1

    #@3f
    .line 116
    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_2
    iget-object v5, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@41
    invoke-virtual {v2, v5}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    #@44
    .line 117
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 121
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 123
    .local v2, "str":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "IP address "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 124
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@d
    if-eqz v3, :cond_0

    #@f
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v3

    #@15
    const-string/jumbo v4, " "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    .line 126
    :cond_0
    const-string/jumbo v3, "Gateway "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 127
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@23
    if-eqz v3, :cond_1

    #@25
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@27
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v3

    #@2f
    const-string/jumbo v4, " "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    .line 129
    :cond_1
    const-string/jumbo v3, " DNS servers: ["

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3b
    .line 130
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@3d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v1

    #@41
    .local v1, "dnsServer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_2

    #@47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Ljava/net/InetAddress;

    #@4d
    .line 131
    .local v0, "dnsServer":Ljava/net/InetAddress;
    const-string/jumbo v3, " "

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    goto :goto_0

    #@5c
    .line 134
    .end local v0    # "dnsServer":Ljava/net/InetAddress;
    :cond_2
    const-string/jumbo v3, " ] Domains"

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@62
    .line 135
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@64
    if-eqz v3, :cond_3

    #@66
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6b
    .line 136
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 184
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@2
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 185
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    #@7
    invoke-static {p1, v2, p2}, Landroid/net/NetworkUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    #@a
    .line 186
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v2

    #@10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 187
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    #@15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "dnsServer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/net/InetAddress;

    #@25
    .line 188
    .local v0, "dnsServer":Ljava/net/InetAddress;
    invoke-static {p1, v0, p2}, Landroid/net/NetworkUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    #@28
    goto :goto_0

    #@29
    .line 190
    .end local v0    # "dnsServer":Ljava/net/InetAddress;
    :cond_0
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    #@2b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2e
    .line 183
    return-void
.end method

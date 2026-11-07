.class public final Landroid/net/StaticIpConfiguration;
.super Ljava/lang/Object;
.source "StaticIpConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/StaticIpConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/StaticIpConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-r dnsServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-r domains:Ljava/lang/String;

.field public greylist-max-r gateway:Ljava/net/InetAddress;

.field public greylist-max-r ipAddress:Landroid/net/LinkAddress;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 300
    new-instance v0, Landroid/net/StaticIpConfiguration$1;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/StaticIpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/StaticIpConfiguration;)V
    .registers 4
    .param p1, "source"    # Landroid/net/StaticIpConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 65
    invoke-direct {p0}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 66
    if-eqz p1, :cond_18

    .line 68
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 69
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 70
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v0, p1, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    .line 73
    :cond_18
    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/StaticIpConfiguration;
    .registers 6
    .param p0, "in"    # Landroid/os/Parcel;

    .line 331
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 332
    .local v0, "s":Landroid/net/StaticIpConfiguration;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    iput-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 333
    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/InetAddressUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 334
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 335
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 336
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_2c

    .line 337
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/InetAddressUtils;->unparcelInetAddress(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 339
    .end local v2    # "i":I
    :cond_2c
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    .line 340
    return-object v0
.end method


# virtual methods
.method public whitelist addDnsServer(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "server"    # Ljava/net/InetAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 202
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public whitelist clear()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 79
    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 80
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    iput-object v0, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 286
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 288
    :cond_4
    instance-of v1, p1, Landroid/net/StaticIpConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 290
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/StaticIpConfiguration;

    .line 292
    .local v1, "other":Landroid/net/StaticIpConfiguration;
    if-eqz v1, :cond_38

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    iget-object v4, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 293
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v4, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 294
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    .line 295
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    .line 296
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v2

    .line 292
    :goto_39
    return v0
.end method

.method public whitelist getDnsServers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getDomains()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGateway()Ljava/net/InetAddress;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getIpAddress()Landroid/net/LinkAddress;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    return-object v0
.end method

.method public whitelist getRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 215
    new-instance v1, Landroid/net/RouteInfo;

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-direct {v1, v3, v2, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 216
    .local v1, "connectedRoute":Landroid/net/RouteInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 221
    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-static {v3, p1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v1    # "connectedRoute":Landroid/net/RouteInfo;
    :cond_2a
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_3b

    .line 225
    new-instance v1, Landroid/net/RouteInfo;

    move-object v3, v2

    check-cast v3, Landroid/net/IpPrefix;

    iget-object v3, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-direct {v1, v2, v3, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_3b
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 276
    const/16 v0, 0xd

    .line 277
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x2f

    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    const/4 v3, 0x0

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_11

    :cond_b
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v1, v2

    .line 278
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x2f

    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v2, :cond_1a

    move v2, v3

    goto :goto_20

    :cond_1a
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    .line 279
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x2f

    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    if-nez v2, :cond_28

    goto :goto_2e

    :cond_28
    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2e
    add-int/2addr v1, v3

    .line 280
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x2f

    iget-object v2, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 281
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist-max-o toLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 238
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 239
    .local v0, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_11

    .line 241
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 243
    :cond_11
    invoke-virtual {p0, p1}, Landroid/net/StaticIpConfiguration;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 244
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 245
    .end local v2    # "route":Landroid/net/RouteInfo;
    goto :goto_19

    .line 246
    :cond_29
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 247
    .local v2, "dns":Ljava/net/InetAddress;
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 248
    .end local v2    # "dns":Ljava/net/InetAddress;
    goto :goto_2f

    .line 249
    :cond_3f
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 250
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 256
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    .local v0, "str":Ljava/lang/StringBuffer;
    const-string v1, "IP address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    const-string v2, " "

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_19
    const-string v1, "Gateway "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :cond_2f
    const-string v1, " DNS servers: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 266
    .local v3, "dnsServer":Ljava/net/InetAddress;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    .end local v3    # "dnsServer":Ljava/net/InetAddress;
    goto :goto_3a

    .line 269
    :cond_52
    const-string v1, " ] Domains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    if-eqz v1, :cond_60

    iget-object v1, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 320
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 321
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-static {p1, v0, p2}, Landroid/net/connectivity/com/android/net/module/util/InetAddressUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    .line 322
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 324
    .local v1, "dnsServer":Ljava/net/InetAddress;
    invoke-static {p1, v1, p2}, Landroid/net/connectivity/com/android/net/module/util/InetAddressUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    .line 325
    .end local v1    # "dnsServer":Ljava/net/InetAddress;
    goto :goto_19

    .line 326
    :cond_29
    iget-object v0, p0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    return-void
.end method

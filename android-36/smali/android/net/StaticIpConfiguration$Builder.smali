.class public final Landroid/net/StaticIpConfiguration$Builder;
.super Ljava/lang/Object;
.source "StaticIpConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/StaticIpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDnsServers:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDomains:Ljava/lang/String;

.field private blacklist mGateway:Ljava/net/InetAddress;

.field private blacklist mIpAddress:Landroid/net/LinkAddress;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/StaticIpConfiguration;
    .registers 5

    .line 183
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 184
    .local v0, "config":Landroid/net/StaticIpConfiguration;
    iget-object v1, p0, Landroid/net/StaticIpConfiguration$Builder;->mIpAddress:Landroid/net/LinkAddress;

    iput-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 185
    iget-object v1, p0, Landroid/net/StaticIpConfiguration$Builder;->mGateway:Ljava/net/InetAddress;

    iput-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 186
    iget-object v1, p0, Landroid/net/StaticIpConfiguration$Builder;->mDnsServers:Ljava/lang/Iterable;

    if-eqz v1, :cond_29

    .line 187
    iget-object v1, p0, Landroid/net/StaticIpConfiguration$Builder;->mDnsServers:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 188
    .local v2, "server":Ljava/net/InetAddress;
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v2    # "server":Ljava/net/InetAddress;
    goto :goto_17

    .line 191
    :cond_29
    iget-object v1, p0, Landroid/net/StaticIpConfiguration$Builder;->mDomains:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    .line 192
    return-object v0
.end method

.method public whitelist setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Landroid/net/StaticIpConfiguration$Builder;"
        }
    .end annotation

    .line 154
    .local p1, "dnsServers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/InetAddress;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 156
    .local v1, "inetAddress":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_18

    .line 160
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_7

    .line 157
    .restart local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only IPv4 addresses can be used for the DNS server configuration"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_20
    iput-object p1, p0, Landroid/net/StaticIpConfiguration$Builder;->mDnsServers:Ljava/lang/Iterable;

    .line 162
    return-object p0
.end method

.method public whitelist setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;
    .registers 2
    .param p1, "newDomains"    # Ljava/lang/String;

    .line 172
    iput-object p1, p0, Landroid/net/StaticIpConfiguration$Builder;->mDomains:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public whitelist setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;
    .registers 4
    .param p1, "gateway"    # Ljava/net/InetAddress;

    .line 141
    if-eqz p1, :cond_f

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_7

    goto :goto_f

    .line 142
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only IPv4 addresses can be used for the gateway configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_f
    :goto_f
    iput-object p1, p0, Landroid/net/StaticIpConfiguration$Builder;->mGateway:Ljava/net/InetAddress;

    .line 146
    return-object p0
.end method

.method public whitelist setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;
    .registers 4
    .param p1, "ipAddress"    # Landroid/net/LinkAddress;

    .line 128
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_b

    goto :goto_13

    .line 129
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only IPv4 addresses can be used for the IP configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_13
    :goto_13
    iput-object p1, p0, Landroid/net/StaticIpConfiguration$Builder;->mIpAddress:Landroid/net/LinkAddress;

    .line 133
    return-object p0
.end method

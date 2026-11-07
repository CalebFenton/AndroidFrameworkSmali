.class public final Landroid/net/IpConfiguration$Builder;
.super Ljava/lang/Object;
.source "IpConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mProxyInfo:Landroid/net/ProxyInfo;

.field private blacklist mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/IpConfiguration;
    .registers 3

    .line 289
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    .line 290
    .local v0, "config":Landroid/net/IpConfiguration;
    iget-object v1, p0, Landroid/net/IpConfiguration$Builder;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 291
    nop

    .line 292
    iget-object v1, p0, Landroid/net/IpConfiguration$Builder;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    if-nez v1, :cond_12

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_14

    :cond_12
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    .line 291
    :goto_14
    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 294
    iget-object v1, p0, Landroid/net/IpConfiguration$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 295
    iget-object v1, p0, Landroid/net/IpConfiguration$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    if-nez v1, :cond_26

    .line 296
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_37

    .line 298
    :cond_26
    nop

    .line 299
    iget-object v1, p0, Landroid/net/IpConfiguration$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_32

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_34

    .line 300
    :cond_32
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    .line 298
    :goto_34
    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 302
    :goto_37
    return-object v0
.end method

.method public whitelist setHttpProxy(Landroid/net/ProxyInfo;)Landroid/net/IpConfiguration$Builder;
    .registers 2
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 279
    iput-object p1, p0, Landroid/net/IpConfiguration$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 280
    return-object p0
.end method

.method public whitelist setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/IpConfiguration$Builder;
    .registers 2
    .param p1, "config"    # Landroid/net/StaticIpConfiguration;

    .line 268
    iput-object p1, p0, Landroid/net/IpConfiguration$Builder;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 269
    return-object p0
.end method

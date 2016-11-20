.class public Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RaParams"
.end annotation


# instance fields
.field public dnses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field public hasDefaultRoute:Z

.field public mtu:I

.field public prefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 127
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    #@6
    .line 128
    const/16 v0, 0x500

    #@8
    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    #@a
    .line 129
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@11
    .line 130
    new-instance v0, Ljava/util/HashSet;

    #@13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@18
    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 1
    .param p1, "other"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 134
    iget-boolean v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    #@5
    iput-boolean v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    #@7
    .line 135
    iget v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    #@9
    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    #@b
    .line 136
    iget-object v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@d
    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/util/HashSet;

    #@13
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@15
    .line 137
    iget-object v0, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@17
    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/HashSet;

    #@1d
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@1f
    .line 133
    return-void
.end method

.method public static getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .locals 6
    .param p0, "oldRa"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .param p1, "newRa"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@0
    .prologue
    .line 145
    new-instance v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    #@2
    invoke-direct {v4}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    #@5
    .line 147
    .local v4, "newlyDeprecated":Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    if-eqz p0, :cond_5

    #@7
    .line 148
    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    .local v3, "ipp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_2

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/net/IpPrefix;

    #@19
    .line 149
    .local v2, "ipp":Landroid/net/IpPrefix;
    if-eqz p1, :cond_1

    #@1b
    iget-object v5, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@1d
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-nez v5, :cond_0

    #@23
    .line 150
    :cond_1
    iget-object v5, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    #@25
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 154
    .end local v2    # "ipp":Landroid/net/IpPrefix;
    :cond_2
    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@2b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    .local v1, "dns$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_5

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Ljava/net/Inet6Address;

    #@3b
    .line 155
    .local v0, "dns":Ljava/net/Inet6Address;
    if-eqz p1, :cond_4

    #@3d
    iget-object v5, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@3f
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@42
    move-result v5

    #@43
    if-nez v5, :cond_3

    #@45
    .line 156
    :cond_4
    iget-object v5, v4, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    #@47
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4a
    goto :goto_1

    #@4b
    .line 161
    .end local v0    # "dns":Ljava/net/Inet6Address;
    .end local v1    # "dns$iterator":Ljava/util/Iterator;
    .end local v3    # "ipp$iterator":Ljava/util/Iterator;
    :cond_5
    return-object v4
.end method

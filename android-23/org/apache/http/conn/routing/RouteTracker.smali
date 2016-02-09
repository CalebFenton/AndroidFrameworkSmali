.class public final Lorg/apache/http/conn/routing/RouteTracker;
.super Ljava/lang/Object;
.source "RouteTracker.java"

# interfaces
.implements Lorg/apache/http/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private connected:Z

.field private layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private proxyChain:[Lorg/apache/http/HttpHost;

.field private secure:Z

.field private final targetHost:Lorg/apache/http/HttpHost;

.field private tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    if-nez p1, :cond_0

    #@5
    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Target host may not be null."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 97
    :cond_0
    iput-object p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    #@10
    .line 98
    iput-object p2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@12
    .line 99
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@14
    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@16
    .line 100
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@18
    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@1a
    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    #@0
    .prologue
    .line 112
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Lorg/apache/http/conn/routing/RouteTracker;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;)V

    #@b
    .line 111
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final connectProxy(Lorg/apache/http/HttpHost;Z)V
    .locals 2
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;
    .param p2, "secure"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 139
    if-nez p1, :cond_0

    #@3
    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Proxy host may not be null."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 142
    :cond_0
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "Already connected."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 145
    :cond_1
    iput-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@1b
    .line 146
    new-array v0, v1, [Lorg/apache/http/HttpHost;

    #@1d
    const/4 v1, 0x0

    #@1e
    aput-object p1, v0, v1

    #@20
    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@22
    .line 147
    iput-boolean p2, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@24
    .line 138
    return-void
.end method

.method public final connectTarget(Z)V
    .locals 2
    .param p1, "secure"    # Z

    #@0
    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 126
    :cond_0
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@10
    .line 127
    iput-boolean p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@12
    .line 122
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 334
    if-ne p1, p0, :cond_0

    #@4
    .line 335
    return v4

    #@5
    .line 336
    :cond_0
    instance-of v3, p1, Lorg/apache/http/conn/routing/RouteTracker;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 337
    return v5

    #@a
    :cond_1
    move-object v2, p1

    #@b
    .line 339
    check-cast v2, Lorg/apache/http/conn/routing/RouteTracker;

    #@d
    .line 340
    .local v2, "that":Lorg/apache/http/conn/routing/RouteTracker;
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    #@f
    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    #@11
    invoke-virtual {v3, v6}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    .line 342
    .local v0, "equal":Z
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@17
    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@19
    if-eq v3, v6, :cond_2

    #@1b
    .line 343
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@1d
    if-eqz v3, :cond_3

    #@1f
    .line 344
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@21
    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@23
    invoke-virtual {v3, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    .line 341
    :goto_0
    and-int/2addr v0, v3

    #@28
    .line 346
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@2a
    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@2c
    if-eq v3, v6, :cond_4

    #@2e
    .line 347
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@30
    if-eqz v3, :cond_6

    #@32
    .line 348
    iget-object v3, v2, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@34
    if-eqz v3, :cond_6

    #@36
    .line 349
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@38
    array-length v3, v3

    #@39
    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@3b
    array-length v6, v6

    #@3c
    if-ne v3, v6, :cond_5

    #@3e
    move v3, v4

    #@3f
    .line 345
    :goto_1
    and-int/2addr v0, v3

    #@40
    .line 352
    iget-boolean v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@42
    iget-boolean v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@44
    if-ne v3, v6, :cond_8

    #@46
    .line 353
    iget-boolean v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@48
    iget-boolean v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@4a
    if-ne v3, v6, :cond_8

    #@4c
    .line 354
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@4e
    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@50
    if-ne v3, v6, :cond_8

    #@52
    .line 355
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@54
    iget-object v6, v2, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@56
    if-ne v3, v6, :cond_7

    #@58
    .line 351
    :goto_2
    and-int/2addr v0, v4

    #@59
    .line 358
    if-eqz v0, :cond_9

    #@5b
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@5d
    if-eqz v3, :cond_9

    #@5f
    .line 359
    const/4 v1, 0x0

    #@60
    .local v1, "i":I
    :goto_3
    if-eqz v0, :cond_9

    #@62
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@64
    array-length v3, v3

    #@65
    if-ge v1, v3, :cond_9

    #@67
    .line 360
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@69
    aget-object v3, v3, v1

    #@6b
    iget-object v4, v2, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@6d
    aget-object v4, v4, v1

    #@6f
    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v0

    #@73
    .line 359
    add-int/lit8 v1, v1, 0x1

    #@75
    goto :goto_3

    #@76
    .end local v1    # "i":I
    :cond_2
    move v3, v4

    #@77
    .line 342
    goto :goto_0

    #@78
    :cond_3
    move v3, v5

    #@79
    .line 343
    goto :goto_0

    #@7a
    :cond_4
    move v3, v4

    #@7b
    .line 346
    goto :goto_1

    #@7c
    :cond_5
    move v3, v5

    #@7d
    .line 349
    goto :goto_1

    #@7e
    :cond_6
    move v3, v5

    #@7f
    .line 347
    goto :goto_1

    #@80
    :cond_7
    move v4, v5

    #@81
    .line 355
    goto :goto_2

    #@82
    :cond_8
    move v4, v5

    #@83
    .line 352
    goto :goto_2

    #@84
    .line 363
    :cond_9
    return v0
.end method

.method public final getHopCount()I
    .locals 2

    #@0
    .prologue
    .line 233
    const/4 v0, 0x0

    #@1
    .line 234
    .local v0, "hops":I
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 235
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 236
    const/4 v0, 0x1

    #@a
    .line 240
    :cond_0
    :goto_0
    return v0

    #@b
    .line 238
    :cond_1
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@d
    array-length v1, v1

    #@e
    add-int/lit8 v0, v1, 0x1

    #@10
    goto :goto_0
.end method

.method public final getHopTarget(I)Lorg/apache/http/HttpHost;
    .locals 5
    .param p1, "hop"    # I

    #@0
    .prologue
    .line 246
    if-gez p1, :cond_0

    #@2
    .line 247
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "Hop index must not be negative: "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 247
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 249
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/conn/routing/RouteTracker;->getHopCount()I

    #@1f
    move-result v0

    #@20
    .line 250
    .local v0, "hopcount":I
    if-lt p1, v0, :cond_1

    #@22
    .line 251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@24
    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Hop index "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 253
    const-string/jumbo v4, " exceeds tracked route length "

    #@37
    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 253
    const-string/jumbo v4, "."

    #@42
    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    .line 251
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v2

    #@4e
    .line 256
    :cond_1
    const/4 v1, 0x0

    #@4f
    .line 257
    .local v1, "result":Lorg/apache/http/HttpHost;
    add-int/lit8 v2, v0, -0x1

    #@51
    if-ge p1, v2, :cond_2

    #@53
    .line 258
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@55
    aget-object v1, v2, p1

    #@57
    .line 262
    .local v1, "result":Lorg/apache/http/HttpHost;
    :goto_0
    return-object v1

    #@58
    .line 260
    .local v1, "result":Lorg/apache/http/HttpHost;
    :cond_2
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    #@5a
    .local v1, "result":Lorg/apache/http/HttpHost;
    goto :goto_0
.end method

.method public final getLayerType()Lorg/apache/http/conn/routing/RouteInfo$LayerType;
    .locals 1

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@2
    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public final getProxyHost()Lorg/apache/http/HttpHost;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 268
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@8
    const/4 v1, 0x0

    #@9
    aget-object v0, v0, v1

    #@b
    goto :goto_0
.end method

.method public final getTargetHost()Lorg/apache/http/HttpHost;
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    #@2
    return-object v0
.end method

.method public final getTunnelType()Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .locals 1

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    #@0
    .prologue
    .line 378
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    #@2
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 380
    .local v0, "hc":I
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 381
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@c
    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    #@f
    move-result v2

    #@10
    xor-int/2addr v0, v2

    #@11
    .line 382
    :cond_0
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 383
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@17
    array-length v2, v2

    #@18
    xor-int/2addr v0, v2

    #@19
    .line 384
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@1c
    array-length v2, v2

    #@1d
    if-ge v1, v2, :cond_1

    #@1f
    .line 385
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@21
    aget-object v2, v2, v1

    #@23
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->hashCode()I

    #@26
    move-result v2

    #@27
    xor-int/2addr v0, v2

    #@28
    .line 384
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 388
    .end local v1    # "i":I
    :cond_1
    iget-boolean v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 389
    const v2, 0x11111111

    #@32
    xor-int/2addr v0, v2

    #@33
    .line 390
    :cond_2
    iget-boolean v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 391
    const v2, 0x22222222

    #@3a
    xor-int/2addr v0, v2

    #@3b
    .line 393
    :cond_3
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@3d
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->hashCode()I

    #@40
    move-result v2

    #@41
    xor-int/2addr v0, v2

    #@42
    .line 394
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@44
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->hashCode()I

    #@47
    move-result v2

    #@48
    xor-int/2addr v0, v2

    #@49
    .line 396
    return v0
.end method

.method public final isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@2
    return v0
.end method

.method public final isLayered()Z
    .locals 2

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@2
    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public final isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 304
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@2
    return v0
.end method

.method public final isTunnelled()Z
    .locals 2

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@2
    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public final layerProtocol(Z)V
    .locals 2
    .param p1, "secure"    # Z

    #@0
    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 211
    const-string/jumbo v1, "No layered protocol unless connected."

    #@9
    .line 210
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 213
    :cond_0
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@f
    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@11
    .line 214
    iput-boolean p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@13
    .line 206
    return-void
.end method

.method public final toRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 7

    #@0
    .prologue
    .line 317
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 318
    const/4 v0, 0x0

    #@5
    .line 317
    :goto_0
    return-object v0

    #@6
    .line 318
    :cond_0
    new-instance v0, Lorg/apache/http/conn/routing/HttpRoute;

    #@8
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    #@a
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@c
    .line 319
    iget-object v3, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@e
    iget-boolean v4, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@10
    .line 320
    iget-object v5, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@12
    iget-object v6, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@14
    .line 318
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    #@17
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Lorg/apache/http/conn/routing/RouteTracker;->getHopCount()I

    #@5
    move-result v2

    #@6
    mul-int/lit8 v2, v2, 0x1e

    #@8
    add-int/lit8 v2, v2, 0x32

    #@a
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 409
    .local v0, "cab":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "RouteTracker["

    #@10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 410
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 411
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    .line 412
    const-string/jumbo v2, "->"

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 414
    :cond_0
    const/16 v2, 0x7b

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 415
    iget-boolean v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 416
    const/16 v2, 0x63

    #@2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 417
    :cond_1
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@32
    sget-object v3, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@34
    if-ne v2, v3, :cond_2

    #@36
    .line 418
    const/16 v2, 0x74

    #@38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 419
    :cond_2
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@3d
    sget-object v3, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@3f
    if-ne v2, v3, :cond_3

    #@41
    .line 420
    const/16 v2, 0x6c

    #@43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 421
    :cond_3
    iget-boolean v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@48
    if-eqz v2, :cond_4

    #@4a
    .line 422
    const/16 v2, 0x73

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    .line 423
    :cond_4
    const-string/jumbo v2, "}->"

    #@52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 424
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@57
    if-eqz v2, :cond_5

    #@59
    .line 425
    const/4 v1, 0x0

    #@5a
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@5c
    array-length v2, v2

    #@5d
    if-ge v1, v2, :cond_5

    #@5f
    .line 426
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@61
    aget-object v2, v2, v1

    #@63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    .line 427
    const-string/jumbo v2, "->"

    #@69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 425
    add-int/lit8 v1, v1, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 430
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->targetHost:Lorg/apache/http/HttpHost;

    #@71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    .line 431
    const/16 v2, 0x5d

    #@76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@79
    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    return-object v2
.end method

.method public final tunnelProxy(Lorg/apache/http/HttpHost;Z)V
    .locals 4
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;
    .param p2, "secure"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 179
    if-nez p1, :cond_0

    #@3
    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Proxy host may not be null."

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 182
    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@e
    if-nez v1, :cond_1

    #@10
    .line 183
    new-instance v1, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v2, "No tunnel unless connected."

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 185
    :cond_1
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@1b
    if-nez v1, :cond_2

    #@1d
    .line 186
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1f
    const-string/jumbo v2, "No proxy tunnel without proxy."

    #@22
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 190
    :cond_2
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@28
    array-length v1, v1

    #@29
    add-int/lit8 v1, v1, 0x1

    #@2b
    new-array v0, v1, [Lorg/apache/http/HttpHost;

    #@2d
    .line 191
    .local v0, "proxies":[Lorg/apache/http/HttpHost;
    iget-object v1, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@2f
    .line 192
    iget-object v2, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@31
    array-length v2, v2

    #@32
    .line 191
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@35
    .line 193
    array-length v1, v0

    #@36
    add-int/lit8 v1, v1, -0x1

    #@38
    aput-object p1, v0, v1

    #@3a
    .line 195
    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@3c
    .line 196
    iput-boolean p2, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@3e
    .line 178
    return-void
.end method

.method public final tunnelTarget(Z)V
    .locals 2
    .param p1, "secure"    # Z

    #@0
    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->connected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "No tunnel unless connected."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 161
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->proxyChain:[Lorg/apache/http/HttpHost;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "No tunnel without proxy."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 164
    :cond_1
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@1c
    iput-object v0, p0, Lorg/apache/http/conn/routing/RouteTracker;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@1e
    .line 165
    iput-boolean p1, p0, Lorg/apache/http/conn/routing/RouteTracker;->secure:Z

    #@20
    .line 157
    return-void
.end method

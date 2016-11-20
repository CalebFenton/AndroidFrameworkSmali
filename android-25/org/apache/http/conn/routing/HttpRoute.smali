.class public final Lorg/apache/http/conn/routing/HttpRoute;
.super Ljava/lang/Object;
.source "HttpRoute.java"

# interfaces
.implements Lorg/apache/http/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private final proxyChain:[Lorg/apache/http/HttpHost;

.field private final secure:Z

.field private final targetHost:Lorg/apache/http/HttpHost;

.field private final tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;


# direct methods
.method private constructor <init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .locals 2
    .param p1, "local"    # Ljava/net/InetAddress;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "proxies"    # [Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z
    .param p5, "tunnelled"    # Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .param p6, "layered"    # Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    if-nez p2, :cond_0

    #@5
    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 106
    const-string/jumbo v1, "Target host may not be null."

    #@a
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 108
    :cond_0
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@10
    if-ne p5, v0, :cond_1

    #@12
    if-nez p3, :cond_1

    #@14
    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    .line 110
    const-string/jumbo v1, "Proxy required if tunnelled."

    #@19
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 114
    :cond_1
    if-nez p5, :cond_2

    #@1f
    .line 115
    sget-object p5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@21
    .line 116
    :cond_2
    if-nez p6, :cond_3

    #@23
    .line 117
    sget-object p6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@25
    .line 119
    :cond_3
    iput-object p2, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    #@27
    .line 120
    iput-object p1, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@29
    .line 121
    iput-object p3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@2b
    .line 122
    iput-boolean p4, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    #@2d
    .line 123
    iput-object p5, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@2f
    .line 124
    iput-object p6, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@31
    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 191
    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@3
    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@5
    const/4 v4, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v2, p1

    #@8
    move-object v3, v1

    #@9
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    #@c
    .line 190
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "proxy"    # Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z

    #@0
    .prologue
    .line 210
    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    #@3
    move-result-object v3

    #@4
    .line 211
    if-eqz p4, :cond_0

    #@6
    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@8
    .line 212
    :goto_0
    if-eqz p4, :cond_1

    #@a
    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@c
    :goto_1
    move-object v0, p0

    #@d
    move-object v1, p2

    #@e
    move-object v2, p1

    #@f
    move v4, p4

    #@10
    .line 210
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    #@13
    .line 213
    if-nez p3, :cond_2

    #@15
    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    .line 215
    const-string/jumbo v1, "Proxy host may not be null."

    #@1a
    .line 214
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 211
    :cond_0
    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@20
    goto :goto_0

    #@21
    .line 212
    :cond_1
    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@23
    goto :goto_1

    #@24
    .line 209
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "proxy"    # Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z
    .param p5, "tunnelled"    # Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .param p6, "layered"    # Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@0
    .prologue
    .line 166
    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    #@3
    move-result-object v3

    #@4
    move-object v0, p0

    #@5
    move-object v1, p2

    #@6
    move-object v2, p1

    #@7
    move v4, p4

    #@8
    move-object v5, p5

    #@9
    move-object v6, p6

    #@a
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    #@d
    .line 165
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "secure"    # Z

    #@0
    .prologue
    .line 181
    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@2
    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@4
    const/4 v3, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p2

    #@7
    move-object v2, p1

    #@8
    move v4, p3

    #@9
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    #@c
    .line 180
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "local"    # Ljava/net/InetAddress;
    .param p3, "proxies"    # [Lorg/apache/http/HttpHost;
    .param p4, "secure"    # Z
    .param p5, "tunnelled"    # Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .param p6, "layered"    # Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@0
    .prologue
    .line 143
    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain([Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    #@3
    move-result-object v3

    #@4
    move-object v0, p0

    #@5
    move-object v1, p2

    #@6
    move-object v2, p1

    #@7
    move v4, p4

    #@8
    move-object v5, p5

    #@9
    move-object v6, p6

    #@a
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    #@d
    .line 142
    return-void
.end method

.method private static toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;
    .locals 2
    .param p0, "proxy"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 228
    if-nez p0, :cond_0

    #@3
    .line 229
    return-object v0

    #@4
    .line 231
    :cond_0
    const/4 v0, 0x1

    #@5
    new-array v0, v0, [Lorg/apache/http/HttpHost;

    #@7
    const/4 v1, 0x0

    #@8
    aput-object p0, v0, v1

    #@a
    return-object v0
.end method

.method private static toChain([Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;
    .locals 6
    .param p0, "proxies"    # [Lorg/apache/http/HttpHost;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 244
    if-eqz p0, :cond_0

    #@4
    array-length v2, p0

    #@5
    const/4 v4, 0x1

    #@6
    if-ge v2, v4, :cond_1

    #@8
    .line 245
    :cond_0
    return-object v5

    #@9
    .line 247
    :cond_1
    array-length v4, p0

    #@a
    move v2, v3

    #@b
    :goto_0
    if-ge v2, v4, :cond_3

    #@d
    aget-object v0, p0, v2

    #@f
    .line 248
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    if-nez v0, :cond_2

    #@11
    .line 249
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    .line 250
    const-string/jumbo v3, "Proxy chain may not contain null elements."

    #@16
    .line 249
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 247
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 254
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    :cond_3
    array-length v2, p0

    #@1e
    new-array v1, v2, [Lorg/apache/http/HttpHost;

    #@20
    .line 255
    .local v1, "result":[Lorg/apache/http/HttpHost;
    array-length v2, p0

    #@21
    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 257
    return-object v1
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
    .line 444
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 347
    if-ne p1, p0, :cond_0

    #@4
    .line 348
    return v4

    #@5
    .line 349
    :cond_0
    instance-of v3, p1, Lorg/apache/http/conn/routing/HttpRoute;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 350
    return v5

    #@a
    :cond_1
    move-object v2, p1

    #@b
    .line 352
    check-cast v2, Lorg/apache/http/conn/routing/HttpRoute;

    #@d
    .line 353
    .local v2, "that":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    #@f
    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    #@11
    invoke-virtual {v3, v6}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    .line 355
    .local v0, "equal":Z
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@17
    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@19
    if-eq v3, v6, :cond_2

    #@1b
    .line 356
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@1d
    if-eqz v3, :cond_3

    #@1f
    .line 357
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@21
    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@23
    invoke-virtual {v3, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    .line 354
    :goto_0
    and-int/2addr v0, v3

    #@28
    .line 359
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@2a
    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@2c
    if-eq v3, v6, :cond_4

    #@2e
    .line 360
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@30
    if-eqz v3, :cond_6

    #@32
    .line 361
    iget-object v3, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@34
    if-eqz v3, :cond_6

    #@36
    .line 362
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@38
    array-length v3, v3

    #@39
    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@3b
    array-length v6, v6

    #@3c
    if-ne v3, v6, :cond_5

    #@3e
    move v3, v4

    #@3f
    .line 358
    :goto_1
    and-int/2addr v0, v3

    #@40
    .line 365
    iget-boolean v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    #@42
    iget-boolean v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    #@44
    if-ne v3, v6, :cond_8

    #@46
    .line 366
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@48
    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@4a
    if-ne v3, v6, :cond_8

    #@4c
    .line 367
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@4e
    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@50
    if-ne v3, v6, :cond_7

    #@52
    .line 364
    :goto_2
    and-int/2addr v0, v4

    #@53
    .line 370
    if-eqz v0, :cond_9

    #@55
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@57
    if-eqz v3, :cond_9

    #@59
    .line 371
    const/4 v1, 0x0

    #@5a
    .local v1, "i":I
    :goto_3
    if-eqz v0, :cond_9

    #@5c
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@5e
    array-length v3, v3

    #@5f
    if-ge v1, v3, :cond_9

    #@61
    .line 372
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@63
    aget-object v3, v3, v1

    #@65
    iget-object v4, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@67
    aget-object v4, v4, v1

    #@69
    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v0

    #@6d
    .line 371
    add-int/lit8 v1, v1, 0x1

    #@6f
    goto :goto_3

    #@70
    .end local v1    # "i":I
    :cond_2
    move v3, v4

    #@71
    .line 355
    goto :goto_0

    #@72
    :cond_3
    move v3, v5

    #@73
    .line 356
    goto :goto_0

    #@74
    :cond_4
    move v3, v4

    #@75
    .line 359
    goto :goto_1

    #@76
    :cond_5
    move v3, v5

    #@77
    .line 362
    goto :goto_1

    #@78
    :cond_6
    move v3, v5

    #@79
    .line 360
    goto :goto_1

    #@7a
    :cond_7
    move v4, v5

    #@7b
    .line 367
    goto :goto_2

    #@7c
    :cond_8
    move v4, v5

    #@7d
    .line 365
    goto :goto_2

    #@7e
    .line 375
    :cond_9
    return v0
.end method

.method public final getHopCount()I
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@8
    array-length v0, v0

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0
.end method

.method public final getHopTarget(I)Lorg/apache/http/HttpHost;
    .locals 5
    .param p1, "hop"    # I

    #@0
    .prologue
    .line 282
    if-gez p1, :cond_0

    #@2
    .line 283
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 284
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
    .line 283
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 285
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    #@1f
    move-result v0

    #@20
    .line 286
    .local v0, "hopcount":I
    if-lt p1, v0, :cond_1

    #@22
    .line 287
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@24
    .line 288
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
    .line 289
    const-string/jumbo v4, " exceeds route length "

    #@37
    .line 288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 287
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v2

    #@47
    .line 291
    :cond_1
    const/4 v1, 0x0

    #@48
    .line 292
    .local v1, "result":Lorg/apache/http/HttpHost;
    add-int/lit8 v2, v0, -0x1

    #@4a
    if-ge p1, v2, :cond_2

    #@4c
    .line 293
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@4e
    aget-object v1, v2, p1

    #@50
    .line 297
    .local v1, "result":Lorg/apache/http/HttpHost;
    :goto_0
    return-object v1

    #@51
    .line 295
    .local v1, "result":Lorg/apache/http/HttpHost;
    :cond_2
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    #@53
    .local v1, "result":Lorg/apache/http/HttpHost;
    goto :goto_0
.end method

.method public final getLayerType()Lorg/apache/http/conn/routing/RouteInfo$LayerType;
    .locals 1

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@2
    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public final getProxyHost()Lorg/apache/http/HttpHost;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 303
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

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
    .line 264
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    #@2
    return-object v0
.end method

.method public final getTunnelType()Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .locals 1

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    #@0
    .prologue
    .line 387
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    #@2
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->hashCode()I

    #@5
    move-result v1

    #@6
    .line 389
    .local v1, "hc":I
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 390
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@c
    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    #@f
    move-result v2

    #@10
    xor-int/2addr v1, v2

    #@11
    .line 391
    :cond_0
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 392
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@17
    array-length v2, v2

    #@18
    xor-int/2addr v1, v2

    #@19
    .line 393
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@1b
    const/4 v2, 0x0

    #@1c
    array-length v4, v3

    #@1d
    :goto_0
    if-ge v2, v4, :cond_1

    #@1f
    aget-object v0, v3, v2

    #@21
    .local v0, "aProxyChain":Lorg/apache/http/HttpHost;
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->hashCode()I

    #@24
    move-result v5

    #@25
    xor-int/2addr v1, v5

    #@26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 396
    .end local v0    # "aProxyChain":Lorg/apache/http/HttpHost;
    :cond_1
    iget-boolean v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    #@2b
    if-eqz v2, :cond_2

    #@2d
    .line 397
    const v2, 0x11111111

    #@30
    xor-int/2addr v1, v2

    #@31
    .line 399
    :cond_2
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@33
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->hashCode()I

    #@36
    move-result v2

    #@37
    xor-int/2addr v1, v2

    #@38
    .line 400
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@3a
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->hashCode()I

    #@3d
    move-result v2

    #@3e
    xor-int/2addr v1, v2

    #@3f
    .line 402
    return v1
.end method

.method public final isLayered()Z
    .locals 2

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

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
    .line 333
    iget-boolean v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    #@2
    return v0
.end method

.method public final isTunnelled()Z
    .locals 2

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

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

.method public final toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    #@5
    move-result v2

    #@6
    mul-int/lit8 v2, v2, 0x1e

    #@8
    add-int/lit8 v2, v2, 0x32

    #@a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 415
    .local v1, "cab":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "HttpRoute["

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 416
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 417
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    .line 418
    const-string/jumbo v2, "->"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 420
    :cond_0
    const/16 v2, 0x7b

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 421
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@29
    sget-object v3, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    #@2b
    if-ne v2, v3, :cond_1

    #@2d
    .line 422
    const/16 v2, 0x74

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    .line 423
    :cond_1
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@34
    sget-object v3, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@36
    if-ne v2, v3, :cond_2

    #@38
    .line 424
    const/16 v2, 0x6c

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 425
    :cond_2
    iget-boolean v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    #@3f
    if-eqz v2, :cond_3

    #@41
    .line 426
    const/16 v2, 0x73

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 427
    :cond_3
    const-string/jumbo v2, "}->"

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 428
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@4e
    if-eqz v2, :cond_4

    #@50
    .line 429
    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    #@52
    const/4 v2, 0x0

    #@53
    array-length v4, v3

    #@54
    :goto_0
    if-ge v2, v4, :cond_4

    #@56
    aget-object v0, v3, v2

    #@58
    .line 430
    .local v0, "aProxyChain":Lorg/apache/http/HttpHost;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    .line 431
    const-string/jumbo v5, "->"

    #@5e
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 429
    add-int/lit8 v2, v2, 0x1

    #@63
    goto :goto_0

    #@64
    .line 434
    .end local v0    # "aProxyChain":Lorg/apache/http/HttpHost;
    :cond_4
    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    .line 435
    const/16 v2, 0x5d

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6e
    .line 437
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    return-object v2
.end method

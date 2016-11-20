.class public Lorg/apache/http/conn/params/ConnRouteParams;
.super Ljava/lang/Object;
.source "ConnRouteParams.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnRoutePNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NO_HOST:Lorg/apache/http/HttpHost;

.field public static final NO_ROUTE:Lorg/apache/http/conn/routing/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 66
    new-instance v0, Lorg/apache/http/HttpHost;

    #@2
    const-string/jumbo v1, "127.0.0.255"

    #@5
    const-string/jumbo v2, "no-host"

    #@8
    const/4 v3, 0x0

    #@9
    invoke-direct {v0, v1, v3, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@c
    .line 65
    sput-object v0, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    #@e
    .line 72
    new-instance v0, Lorg/apache/http/conn/routing/HttpRoute;

    #@10
    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    #@12
    invoke-direct {v0, v1}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;)V

    #@15
    sput-object v0, Lorg/apache/http/conn/params/ConnRouteParams;->NO_ROUTE:Lorg/apache/http/conn/routing/HttpRoute;

    #@17
    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDefaultProxy(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/HttpHost;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 93
    if-nez p0, :cond_0

    #@2
    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Parameters must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 97
    :cond_0
    const-string/jumbo v1, "http.route.default-proxy"

    #@e
    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 96
    check-cast v0, Lorg/apache/http/HttpHost;

    #@14
    .line 98
    .local v0, "proxy":Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_1

    #@16
    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    #@18
    invoke-virtual {v1, v0}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 100
    const/4 v0, 0x0

    #@1f
    .line 102
    .end local v0    # "proxy":Lorg/apache/http/HttpHost;
    :cond_1
    return-object v0
.end method

.method public static getForcedRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 137
    if-nez p0, :cond_0

    #@2
    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Parameters must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 141
    :cond_0
    const-string/jumbo v1, "http.route.forced-route"

    #@e
    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 140
    check-cast v0, Lorg/apache/http/conn/routing/HttpRoute;

    #@14
    .line 142
    .local v0, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v0, :cond_1

    #@16
    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_ROUTE:Lorg/apache/http/conn/routing/HttpRoute;

    #@18
    invoke-virtual {v1, v0}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 144
    const/4 v0, 0x0

    #@1f
    .line 146
    .end local v0    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_1
    return-object v0
.end method

.method public static getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 182
    if-nez p0, :cond_0

    #@2
    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Parameters must not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 186
    :cond_0
    const-string/jumbo v1, "http.route.local-address"

    #@e
    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 185
    check-cast v0, Ljava/net/InetAddress;

    #@14
    .line 188
    .local v0, "local":Ljava/net/InetAddress;
    return-object v0
.end method

.method public static setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    .line 118
    if-nez p0, :cond_0

    #@2
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Parameters must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 121
    :cond_0
    const-string/jumbo v0, "http.route.default-proxy"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@11
    .line 117
    return-void
.end method

.method public static setForcedRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    #@0
    .prologue
    .line 162
    if-nez p0, :cond_0

    #@2
    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Parameters must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 165
    :cond_0
    const-string/jumbo v0, "http.route.forced-route"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@11
    .line 161
    return-void
.end method

.method public static setLocalAddress(Lorg/apache/http/params/HttpParams;Ljava/net/InetAddress;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "local"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 201
    if-nez p0, :cond_0

    #@2
    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Parameters must not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 204
    :cond_0
    const-string/jumbo v0, "http.route.local-address"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@11
    .line 200
    return-void
.end method

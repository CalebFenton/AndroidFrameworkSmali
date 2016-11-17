.class public Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultHttpRoutePlanner.java"

# interfaces
.implements Lorg/apache/http/conn/routing/HttpRoutePlanner;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    if-nez p1, :cond_0

    #@5
    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 76
    const-string/jumbo v1, "SchemeRegistry must not be null."

    #@a
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 78
    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@10
    .line 73
    return-void
.end method


# virtual methods
.method public determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 7
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    if-nez p2, :cond_0

    #@2
    .line 89
    new-instance v5, Ljava/lang/IllegalStateException;

    #@4
    .line 90
    const-string/jumbo v6, "Request must not be null."

    #@7
    .line 89
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 95
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@e
    move-result-object v5

    #@f
    invoke-static {v5}, Lorg/apache/http/conn/params/ConnRouteParams;->getForcedRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/routing/HttpRoute;

    #@12
    move-result-object v2

    #@13
    .line 96
    .local v2, "route":Lorg/apache/http/conn/routing/HttpRoute;
    if-eqz v2, :cond_1

    #@15
    .line 97
    return-object v2

    #@16
    .line 102
    :cond_1
    if-nez p1, :cond_2

    #@18
    .line 103
    new-instance v5, Ljava/lang/IllegalStateException;

    #@1a
    .line 104
    const-string/jumbo v6, "Target host must not be null."

    #@1d
    .line 103
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v5

    #@21
    .line 108
    :cond_2
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@24
    move-result-object v5

    #@25
    invoke-static {v5}, Lorg/apache/http/conn/params/ConnRouteParams;->getLocalAddress(Lorg/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    #@28
    move-result-object v0

    #@29
    .line 110
    .local v0, "local":Ljava/net/InetAddress;
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@2c
    move-result-object v5

    #@2d
    invoke-static {v5}, Lorg/apache/http/conn/params/ConnRouteParams;->getDefaultProxy(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/HttpHost;

    #@30
    move-result-object v1

    #@31
    .line 112
    .local v1, "proxy":Lorg/apache/http/HttpHost;
    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    #@33
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v5, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    #@3a
    move-result-object v3

    #@3b
    .line 115
    .local v3, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->isLayered()Z

    #@3e
    move-result v4

    #@3f
    .line 117
    .local v4, "secure":Z
    if-nez v1, :cond_3

    #@41
    .line 118
    new-instance v2, Lorg/apache/http/conn/routing/HttpRoute;

    #@43
    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-direct {v2, p1, v0, v4}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    #@46
    .line 122
    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :goto_0
    return-object v2

    #@47
    .line 120
    :cond_3
    new-instance v2, Lorg/apache/http/conn/routing/HttpRoute;

    #@49
    .end local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-direct {v2, p1, v0, v1, v4}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V

    #@4c
    .restart local v2    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    goto :goto_0
.end method

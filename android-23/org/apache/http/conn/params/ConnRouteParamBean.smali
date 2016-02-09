.class public Lorg/apache/http/conn/params/ConnRouteParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "ConnRouteParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 53
    return-void
.end method


# virtual methods
.method public setDefaultProxy(Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p1, "defaultProxy"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnRouteParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.route.default-proxy"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 58
    return-void
.end method

.method public setForcedRoute(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnRouteParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.route.forced-route"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 68
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnRouteParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.route.local-address"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 63
    return-void
.end method

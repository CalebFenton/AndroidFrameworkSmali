.class public Lorg/apache/http/conn/params/ConnManagerParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "ConnManagerParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 49
    return-void
.end method


# virtual methods
.method public setConnectionsPerRoute(Lorg/apache/http/conn/params/ConnPerRouteBean;)V
    .locals 2
    .param p1, "connPerRoute"    # Lorg/apache/http/conn/params/ConnPerRouteBean;

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnManagerParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.conn-manager.max-per-route"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 63
    return-void
.end method

.method public setMaxTotalConnections(I)V
    .locals 2
    .param p1, "maxConnections"    # I

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnManagerParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.conn-manager.max-total"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    #@8
    .line 58
    return-void
.end method

.method public setTimeout(J)V
    .locals 3
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnManagerParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.conn-manager.timeout"

    #@5
    invoke-interface {v0, v1, p1, p2}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    #@8
    .line 53
    return-void
.end method

.class public Lorg/apache/http/client/params/ClientParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "ClientParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 50
    return-void
.end method


# virtual methods
.method public setAllowCircularRedirects(Z)V
    .locals 2
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.protocol.allow-circular-redirects"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    #@8
    .line 74
    return-void
.end method

.method public setConnectionManagerFactory(Lorg/apache/http/conn/ClientConnectionManagerFactory;)V
    .locals 2
    .param p1, "factory"    # Lorg/apache/http/conn/ClientConnectionManagerFactory;

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.connection-manager.factory-object"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 58
    return-void
.end method

.method public setConnectionManagerFactoryClassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "factory"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.connection-manager.factory-class-name"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 54
    return-void
.end method

.method public setCookiePolicy(Ljava/lang/String;)V
    .locals 2
    .param p1, "policy"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.protocol.cookie-policy"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 82
    return-void
.end method

.method public setDefaultHeaders(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 91
    .local p1, "headers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/http/Header;>;"
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.default-headers"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 90
    return-void
.end method

.method public setDefaultHost(Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.default-host"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 94
    return-void
.end method

.method public setHandleAuthentication(Z)V
    .locals 2
    .param p1, "handle"    # Z

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.protocol.handle-authentication"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    #@8
    .line 78
    return-void
.end method

.method public setHandleRedirects(Z)V
    .locals 2
    .param p1, "handle"    # Z

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.protocol.handle-redirects"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    #@8
    .line 62
    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 2
    .param p1, "maxRedirects"    # I

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.protocol.max-redirects"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    #@8
    .line 70
    return-void
.end method

.method public setRejectRelativeRedirect(Z)V
    .locals 2
    .param p1, "reject"    # Z

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.protocol.reject-relative-redirect"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    #@8
    .line 66
    return-void
.end method

.method public setVirtualHost(Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/http/client/params/ClientParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.virtual-host"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 86
    return-void
.end method

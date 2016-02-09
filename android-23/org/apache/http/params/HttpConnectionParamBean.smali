.class public Lorg/apache/http/params/HttpConnectionParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "HttpConnectionParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 42
    return-void
.end method


# virtual methods
.method public setConnectionTimeout(I)V
    .locals 1
    .param p1, "connectionTimeout"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/params/HttpConnectionParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    #@5
    .line 62
    return-void
.end method

.method public setLinger(I)V
    .locals 1
    .param p1, "linger"    # I

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/params/HttpConnectionParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    #@5
    .line 58
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "soTimeout"    # I

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/http/params/HttpConnectionParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    #@5
    .line 46
    return-void
.end method

.method public setSocketBufferSize(I)V
    .locals 1
    .param p1, "socketBufferSize"    # I

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/http/params/HttpConnectionParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    #@5
    .line 54
    return-void
.end method

.method public setStaleCheckingEnabled(Z)V
    .locals 1
    .param p1, "staleCheckingEnabled"    # Z

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/http/params/HttpConnectionParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    #@5
    .line 66
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "tcpNoDelay"    # Z

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/http/params/HttpConnectionParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    #@5
    .line 50
    return-void
.end method

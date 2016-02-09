.class public Lorg/apache/http/params/HttpProtocolParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "HttpProtocolParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 44
    return-void
.end method


# virtual methods
.method public setContentCharset(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentCharset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    #@5
    .line 52
    return-void
.end method

.method public setHttpElementCharset(Ljava/lang/String;)V
    .locals 1
    .param p1, "httpElementCharset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    #@5
    .line 48
    return-void
.end method

.method public setUseExpectContinue(Z)V
    .locals 1
    .param p1, "useExpectContinue"    # Z

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    #@5
    .line 64
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    #@5
    .line 60
    return-void
.end method

.method public setVersion(Lorg/apache/http/HttpVersion;)V
    .locals 1
    .param p1, "version"    # Lorg/apache/http/HttpVersion;

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/http/params/HttpProtocolParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    #@5
    .line 56
    return-void
.end method

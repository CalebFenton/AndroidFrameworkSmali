.class public Lorg/apache/http/cookie/params/CookieSpecParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "CookieSpecParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 47
    return-void
.end method


# virtual methods
.method public setDatePatterns(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p1, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/http/cookie/params/CookieSpecParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.protocol.cookie-datepatterns"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 51
    return-void
.end method

.method public setSingleHeader(Z)V
    .locals 2
    .param p1, "singleHeader"    # Z

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/http/cookie/params/CookieSpecParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.protocol.single-cookie-header"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    #@8
    .line 55
    return-void
.end method

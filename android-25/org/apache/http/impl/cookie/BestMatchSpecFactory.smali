.class public Lorg/apache/http/impl/cookie/BestMatchSpecFactory;
.super Ljava/lang/Object;
.source "BestMatchSpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 4
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 53
    if-eqz p1, :cond_0

    #@2
    .line 54
    new-instance v1, Lorg/apache/http/impl/cookie/BestMatchSpec;

    #@4
    .line 55
    const-string/jumbo v0, "http.protocol.cookie-datepatterns"

    #@7
    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Ljava/lang/String;

    #@d
    .line 56
    const-string/jumbo v2, "http.protocol.single-cookie-header"

    #@10
    const/4 v3, 0x0

    #@11
    invoke-interface {p1, v2, v3}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    #@14
    move-result v2

    #@15
    .line 54
    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    #@18
    return-object v1

    #@19
    .line 58
    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/BestMatchSpec;

    #@1b
    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>()V

    #@1e
    return-object v0
.end method

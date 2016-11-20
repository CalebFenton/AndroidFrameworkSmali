.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecFactory.java"

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
    .locals 2
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 53
    if-eqz p1, :cond_0

    #@2
    .line 54
    new-instance v1, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

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
    .line 54
    invoke-direct {v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    #@10
    return-object v1

    #@11
    .line 57
    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    #@13
    invoke-direct {v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>()V

    #@16
    return-object v0
.end method

.class public final Lorg/apache/http/auth/params/AuthParams;
.super Ljava/lang/Object;
.source "AuthParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    return-void
.end method

.method public static getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 72
    if-nez p0, :cond_0

    #@2
    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "HTTP parameters may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 76
    :cond_0
    const-string/jumbo v1, "http.auth.credential-charset"

    #@e
    .line 75
    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    .line 79
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_1

    #@16
    .line 80
    const-string/jumbo v0, "US-ASCII"

    #@19
    .line 82
    :cond_1
    return-object v0
.end method

.method public static setCredentialCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    if-nez p0, :cond_0

    #@2
    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 96
    :cond_0
    const-string/jumbo v0, "http.auth.credential-charset"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@11
    .line 92
    return-void
.end method

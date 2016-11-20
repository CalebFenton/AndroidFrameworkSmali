.class public Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965VersionAttributeHandler.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    return-void
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    .line 98
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/SetCookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    if-nez p1, :cond_0

    #@2
    .line 62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Cookie may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 64
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 65
    new-instance v2, Lorg/apache/http/cookie/MalformedCookieException;

    #@f
    .line 66
    const-string/jumbo v3, "Missing value for version attribute"

    #@12
    .line 65
    invoke-direct {v2, v3}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 68
    :cond_1
    const/4 v1, -0x1

    #@17
    .line 70
    .local v1, "version":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result v1

    #@1b
    .line 74
    :goto_0
    if-gez v1, :cond_2

    #@1d
    .line 75
    new-instance v2, Lorg/apache/http/cookie/MalformedCookieException;

    #@1f
    const-string/jumbo v3, "Invalid cookie version."

    #@22
    invoke-direct {v2, v3}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 71
    :catch_0
    move-exception v0

    #@27
    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    #@28
    goto :goto_0

    #@29
    .line 77
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-interface {p1, v1}, Lorg/apache/http/cookie/SetCookie;->setVersion(I)V

    #@2c
    .line 60
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    if-nez p1, :cond_0

    #@2
    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cookie may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 88
    :cond_0
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 89
    instance-of v0, p1, Lorg/apache/http/cookie/ClientCookie;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 90
    check-cast p1, Lorg/apache/http/cookie/ClientCookie;

    #@15
    .end local p1    # "cookie":Lorg/apache/http/cookie/Cookie;
    const-string/jumbo v0, "version"

    #@18
    invoke-interface {p1, v0}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 84
    :cond_1
    return-void

    #@1f
    .line 91
    :cond_2
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    #@21
    .line 92
    const-string/jumbo v1, "Violates RFC 2965. Version attribute is required."

    #@24
    .line 91
    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0
.end method

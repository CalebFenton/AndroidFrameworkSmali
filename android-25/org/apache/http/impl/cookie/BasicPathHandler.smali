.class public Lorg/apache/http/impl/cookie/BasicPathHandler;
.super Ljava/lang/Object;
.source "BasicPathHandler.java"

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
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    return-void
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 5
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    .line 72
    if-nez p1, :cond_0

    #@2
    .line 73
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Cookie may not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 75
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 76
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v4, "Cookie origin may not be null"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 78
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 79
    .local v1, "targetpath":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 80
    .local v2, "topmostPath":Ljava/lang/String;
    if-nez v2, :cond_2

    #@20
    .line 81
    const-string/jumbo v2, "/"

    #@23
    .line 83
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@26
    move-result v3

    #@27
    const/4 v4, 0x1

    #@28
    if-le v3, v4, :cond_3

    #@2a
    const-string/jumbo v3, "/"

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_3

    #@33
    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@36
    move-result v3

    #@37
    add-int/lit8 v3, v3, -0x1

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 86
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    .line 89
    .local v0, "match":Z
    if-eqz v0, :cond_4

    #@44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@47
    move-result v3

    #@48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4b
    move-result v4

    #@4c
    if-eq v3, v4, :cond_4

    #@4e
    .line 90
    const-string/jumbo v3, "/"

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@54
    move-result v3

    #@55
    if-nez v3, :cond_4

    #@57
    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@5a
    move-result v3

    #@5b
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v3

    #@5f
    const/16 v4, 0x2f

    #@61
    if-ne v3, v4, :cond_5

    #@63
    const/4 v0, 0x1

    #@64
    .line 94
    .end local v0    # "match":Z
    :cond_4
    :goto_0
    return v0

    #@65
    .line 91
    .restart local v0    # "match":Z
    :cond_5
    const/4 v0, 0x0

    #@66
    .local v0, "match":Z
    goto :goto_0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/SetCookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    if-nez p1, :cond_0

    #@2
    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cookie may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 56
    :cond_0
    if-eqz p2, :cond_1

    #@d
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_2

    #@17
    .line 57
    :cond_1
    const-string/jumbo p2, "/"

    #@1a
    .line 59
    :cond_2
    invoke-interface {p1, p2}, Lorg/apache/http/cookie/SetCookie;->setPath(Ljava/lang/String;)V

    #@1d
    .line 52
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 3
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/BasicPathHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 65
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    #@8
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal path attribute \""

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 67
    const-string/jumbo v2, "\". Path of origin: \""

    #@1f
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 67
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 67
    const-string/jumbo v2, "\""

    #@2e
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 65
    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 63
    :cond_0
    return-void
.end method

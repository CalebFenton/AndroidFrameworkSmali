.class public Lorg/apache/http/impl/cookie/NetscapeDomainHandler;
.super Lorg/apache/http/impl/cookie/BasicDomainHandler;
.source "NetscapeDomainHandler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    #@3
    .line 48
    return-void
.end method

.method private static isSpecialDomain(Ljava/lang/String;)Z
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 87
    .local v0, "ucDomain":Ljava/lang/String;
    const-string/jumbo v1, ".COM"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 88
    const-string/jumbo v1, ".EDU"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    .line 87
    if-nez v1, :cond_0

    #@18
    .line 89
    const-string/jumbo v1, ".NET"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    .line 87
    if-nez v1, :cond_0

    #@21
    .line 90
    const-string/jumbo v1, ".GOV"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@27
    move-result v1

    #@28
    .line 87
    if-nez v1, :cond_0

    #@2a
    .line 91
    const-string/jumbo v1, ".MIL"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@30
    move-result v1

    #@31
    .line 87
    if-nez v1, :cond_0

    #@33
    .line 92
    const-string/jumbo v1, ".ORG"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@39
    move-result v1

    #@3a
    .line 87
    if-nez v1, :cond_0

    #@3c
    .line 93
    const-string/jumbo v1, ".INT"

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@42
    move-result v1

    #@43
    .line 87
    :goto_0
    return v1

    #@44
    :cond_0
    const/4 v1, 0x1

    #@45
    goto :goto_0
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    .line 98
    if-nez p1, :cond_0

    #@2
    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Cookie may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 101
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "Cookie origin may not be null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 104
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 105
    .local v1, "host":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 106
    .local v0, "domain":Ljava/lang/String;
    if-nez v0, :cond_2

    #@20
    .line 107
    const/4 v2, 0x0

    #@21
    return v2

    #@22
    .line 109
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@25
    move-result v2

    #@26
    return v2
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 6
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/BasicDomainHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    #@3
    .line 57
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 58
    .local v2, "host":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 59
    .local v0, "domain":Ljava/lang/String;
    const-string/jumbo v3, "."

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 60
    new-instance v3, Ljava/util/StringTokenizer;

    #@16
    const-string/jumbo v4, "."

    #@19
    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    #@1f
    move-result v1

    #@20
    .line 62
    .local v1, "domainParts":I
    invoke-static {v0}, Lorg/apache/http/impl/cookie/NetscapeDomainHandler;->isSpecialDomain(Ljava/lang/String;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 63
    const/4 v3, 0x2

    #@27
    if-ge v1, v3, :cond_1

    #@29
    .line 64
    new-instance v3, Lorg/apache/http/cookie/MalformedCookieException;

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Domain attribute \""

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 66
    const-string/jumbo v5, "\" violates the Netscape cookie specification for "

    #@3e
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 67
    const-string/jumbo v5, "special domains"

    #@45
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-direct {v3, v4}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@50
    throw v3

    #@51
    .line 70
    :cond_0
    const/4 v3, 0x3

    #@52
    if-ge v1, v3, :cond_1

    #@54
    .line 71
    new-instance v3, Lorg/apache/http/cookie/MalformedCookieException;

    #@56
    new-instance v4, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v5, "Domain attribute \""

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    .line 73
    const-string/jumbo v5, "\" violates the Netscape cookie specification"

    #@69
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-direct {v3, v4}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@74
    throw v3

    #@75
    .line 54
    .end local v1    # "domainParts":I
    :cond_1
    return-void
.end method

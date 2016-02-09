.class public Lorg/apache/http/impl/cookie/RFC2109DomainHandler;
.super Ljava/lang/Object;
.source "RFC2109DomainHandler.java"

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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    return-void
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 118
    if-nez p1, :cond_0

    #@3
    .line 119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "Cookie may not be null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 121
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v3, "Cookie origin may not be null"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 124
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 125
    .local v1, "host":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 126
    .local v0, "domain":Ljava/lang/String;
    if-nez v0, :cond_2

    #@21
    .line 127
    return v2

    #@22
    .line 129
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_4

    #@28
    const-string/jumbo v3, "."

    #@2b
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_3

    #@31
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@34
    move-result v2

    #@35
    :cond_3
    :goto_0
    return v2

    #@36
    :cond_4
    const/4 v2, 0x1

    #@37
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
    .line 55
    if-nez p1, :cond_0

    #@2
    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cookie may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 58
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 59
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    #@f
    const-string/jumbo v1, "Missing value for domain attribute"

    #@12
    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 61
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 62
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    #@22
    const-string/jumbo v1, "Blank value for domain attribute"

    #@25
    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 64
    :cond_2
    invoke-interface {p1, p2}, Lorg/apache/http/cookie/SetCookie;->setDomain(Ljava/lang/String;)V

    #@2c
    .line 54
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 9
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    const/16 v6, 0x2e

    #@4
    .line 69
    if-nez p1, :cond_0

    #@6
    .line 70
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "Cookie may not be null"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 72
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 73
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v5, "Cookie origin may not be null"

    #@16
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v4

    #@1a
    .line 75
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 76
    .local v2, "host":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 77
    .local v0, "domain":Ljava/lang/String;
    if-nez v0, :cond_2

    #@24
    .line 78
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@26
    const-string/jumbo v5, "Cookie domain may not be null"

    #@29
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 80
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_8

    #@33
    .line 81
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    #@36
    move-result v1

    #@37
    .line 82
    .local v1, "dotIndex":I
    if-ne v1, v7, :cond_3

    #@39
    .line 83
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@3b
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v6, "Domain attribute \""

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    .line 85
    const-string/jumbo v6, "\" does not match the host \""

    #@4e
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    .line 86
    const-string/jumbo v6, "\""

    #@59
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@64
    throw v4

    #@65
    .line 89
    :cond_3
    const-string/jumbo v4, "."

    #@68
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6b
    move-result v4

    #@6c
    if-nez v4, :cond_4

    #@6e
    .line 90
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@70
    new-instance v5, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v6, "Domain attribute \""

    #@78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    .line 92
    const-string/jumbo v6, "\" violates RFC 2109: domain must start with a dot"

    #@83
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v4

    #@8f
    .line 95
    :cond_4
    const/4 v4, 0x1

    #@90
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    #@93
    move-result v1

    #@94
    .line 96
    if-ltz v1, :cond_5

    #@96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@99
    move-result v4

    #@9a
    add-int/lit8 v4, v4, -0x1

    #@9c
    if-ne v1, v4, :cond_6

    #@9e
    .line 97
    :cond_5
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@a0
    new-instance v5, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v6, "Domain attribute \""

    #@a8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v5

    #@ac
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    .line 99
    const-string/jumbo v6, "\" violates RFC 2109: domain must contain an embedded dot"

    #@b3
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v5

    #@b7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v5

    #@bb
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@be
    throw v4

    #@bf
    .line 101
    :cond_6
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@c1
    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@c4
    move-result-object v2

    #@c5
    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@c8
    move-result v4

    #@c9
    if-nez v4, :cond_7

    #@cb
    .line 103
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@cd
    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v6, "Illegal domain attribute \""

    #@d5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v5

    #@d9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v5

    #@dd
    .line 105
    const-string/jumbo v6, "\". Domain of origin: \""

    #@e0
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v5

    #@e4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v5

    #@e8
    .line 105
    const-string/jumbo v6, "\""

    #@eb
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v5

    #@ef
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v5

    #@f3
    .line 103
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@f6
    throw v4

    #@f7
    .line 108
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@fa
    move-result v4

    #@fb
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@fe
    move-result v5

    #@ff
    sub-int/2addr v4, v5

    #@100
    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@103
    move-result-object v3

    #@104
    .line 109
    .local v3, "hostWithoutDomain":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@107
    move-result v4

    #@108
    if-eq v4, v7, :cond_8

    #@10a
    .line 110
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@10c
    new-instance v5, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string/jumbo v6, "Domain attribute \""

    #@114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v5

    #@118
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v5

    #@11c
    .line 112
    const-string/jumbo v6, "\" violates RFC 2109: host minus domain may not contain any dots"

    #@11f
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v5

    #@123
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v5

    #@127
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@12a
    throw v4

    #@12b
    .line 68
    .end local v1    # "dotIndex":I
    .end local v3    # "hostWithoutDomain":Ljava/lang/String;
    :cond_8
    return-void
.end method

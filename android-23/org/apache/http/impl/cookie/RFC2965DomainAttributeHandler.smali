.class public Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965DomainAttributeHandler.java"

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
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    return-void
.end method


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 106
    const-string/jumbo v1, "."

    #@9
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    .line 108
    :goto_0
    return v0

    #@14
    .line 105
    :cond_0
    const/4 v0, 0x1

    #@15
    .local v0, "match":Z
    goto :goto_0

    #@16
    .line 106
    .end local v0    # "match":Z
    :cond_1
    const/4 v0, 0x0

    #@17
    .restart local v0    # "match":Z
    goto :goto_0
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 6
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 180
    if-nez p1, :cond_0

    #@3
    .line 181
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v4, "Cookie may not be null"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 183
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 184
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v4, "Cookie origin may not be null"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 186
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 187
    .local v2, "host":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 191
    .local v0, "cookieDomain":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_2

    #@2b
    .line 192
    return v3

    #@2c
    .line 196
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2f
    move-result v4

    #@30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@33
    move-result v5

    #@34
    sub-int/2addr v4, v5

    #@35
    .line 195
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 197
    .local v1, "effectiveHostWithoutDomain":Ljava/lang/String;
    const/16 v4, 0x2e

    #@3b
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    #@3e
    move-result v4

    #@3f
    const/4 v5, -0x1

    #@40
    if-ne v4, v5, :cond_3

    #@42
    const/4 v3, 0x1

    #@43
    :cond_3
    return v3
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/SetCookie;
    .param p2, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    if-nez p1, :cond_0

    #@2
    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Cookie may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 69
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 70
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    #@f
    .line 71
    const-string/jumbo v1, "Missing value for domain attribute"

    #@12
    .line 70
    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 73
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
    .line 74
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    #@22
    .line 75
    const-string/jumbo v1, "Blank value for domain attribute"

    #@25
    .line 74
    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 77
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@2b
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@2e
    move-result-object p2

    #@2f
    .line 78
    const-string/jumbo v0, "."

    #@32
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@35
    move-result v0

    #@36
    if-nez v0, :cond_3

    #@38
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const/16 v1, 0x2e

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object p2

    #@4b
    .line 86
    :cond_3
    invoke-interface {p1, p2}, Lorg/apache/http/cookie/SetCookie;->setDomain(Ljava/lang/String;)V

    #@4e
    .line 65
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 8
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x2e

    #@2
    const/4 v6, 0x0

    #@3
    .line 116
    if-nez p1, :cond_0

    #@5
    .line 117
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v5, "Cookie may not be null"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 119
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 120
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v5, "Cookie origin may not be null"

    #@15
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v4

    #@19
    .line 122
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 123
    .local v3, "host":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    if-nez v4, :cond_2

    #@29
    .line 124
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@2b
    const-string/jumbo v5, "Invalid cookie state: domain not specified"

    #@2e
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@31
    throw v4

    #@32
    .line 127
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 129
    .local v0, "cookieDomain":Ljava/lang/String;
    instance-of v4, p1, Lorg/apache/http/cookie/ClientCookie;

    #@3e
    if-eqz v4, :cond_8

    #@40
    move-object v4, p1

    #@41
    .line 130
    check-cast v4, Lorg/apache/http/cookie/ClientCookie;

    #@43
    const-string/jumbo v5, "domain"

    #@46
    invoke-interface {v4, v5}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    #@49
    move-result v4

    #@4a
    .line 129
    if-eqz v4, :cond_8

    #@4c
    .line 132
    const-string/jumbo v4, "."

    #@4f
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@52
    move-result v4

    #@53
    if-nez v4, :cond_3

    #@55
    .line 133
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@57
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "Domain attribute \""

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    .line 134
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    .line 134
    const-string/jumbo v6, "\" violates RFC 2109: domain must start with a dot"

    #@6e
    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@79
    throw v4

    #@7a
    .line 139
    :cond_3
    const/4 v4, 0x1

    #@7b
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    #@7e
    move-result v1

    #@7f
    .line 140
    .local v1, "dotIndex":I
    if-ltz v1, :cond_4

    #@81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@84
    move-result v4

    #@85
    add-int/lit8 v4, v4, -0x1

    #@87
    if-ne v1, v4, :cond_5

    #@89
    .line 141
    :cond_4
    const-string/jumbo v4, ".local"

    #@8c
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_6

    #@92
    .line 149
    :cond_5
    invoke-virtual {p0, v3, v0}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@95
    move-result v4

    #@96
    if-nez v4, :cond_7

    #@98
    .line 150
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@9a
    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v6, "Domain attribute \""

    #@a2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v5

    #@a6
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@a9
    move-result-object v6

    #@aa
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v5

    #@ae
    .line 152
    const-string/jumbo v6, "\" violates RFC 2965: effective host name does not "

    #@b1
    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v5

    #@b5
    .line 153
    const-string/jumbo v6, "domain-match domain attribute."

    #@b8
    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    .line 150
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v4

    #@c4
    .line 142
    :cond_6
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@c6
    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v6, "Domain attribute \""

    #@ce
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v5

    #@d2
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@d5
    move-result-object v6

    #@d6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v5

    #@da
    .line 144
    const-string/jumbo v6, "\" violates RFC 2965: the value contains no embedded dots "

    #@dd
    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v5

    #@e1
    .line 145
    const-string/jumbo v6, "and the value is not .local"

    #@e4
    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v5

    #@e8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v5

    #@ec
    .line 142
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@ef
    throw v4

    #@f0
    .line 158
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@f3
    move-result v4

    #@f4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@f7
    move-result v5

    #@f8
    sub-int/2addr v4, v5

    #@f9
    .line 157
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@fc
    move-result-object v2

    #@fd
    .line 159
    .local v2, "effectiveHostWithoutDomain":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    #@100
    move-result v4

    #@101
    const/4 v5, -0x1

    #@102
    if-eq v4, v5, :cond_9

    #@104
    .line 160
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@106
    new-instance v5, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v6, "Domain attribute \""

    #@10e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v5

    #@112
    .line 161
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@115
    move-result-object v6

    #@116
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v5

    #@11a
    .line 161
    const-string/jumbo v6, "\" violates RFC 2965: "

    #@11d
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v5

    #@121
    .line 162
    const-string/jumbo v6, "effective host minus domain may not contain any dots"

    #@124
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v5

    #@128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v5

    #@12c
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@12f
    throw v4

    #@130
    .line 167
    .end local v1    # "dotIndex":I
    .end local v2    # "effectiveHostWithoutDomain":Ljava/lang/String;
    :cond_8
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@133
    move-result-object v4

    #@134
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@137
    move-result v4

    #@138
    if-nez v4, :cond_9

    #@13a
    .line 168
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@13c
    new-instance v5, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    const-string/jumbo v6, "Illegal domain attribute: \""

    #@144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v5

    #@148
    .line 169
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@14b
    move-result-object v6

    #@14c
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v5

    #@150
    .line 169
    const-string/jumbo v6, "\"."

    #@153
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v5

    #@157
    .line 170
    const-string/jumbo v6, "Domain of origin: \""

    #@15a
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v5

    #@15e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v5

    #@162
    .line 171
    const-string/jumbo v6, "\""

    #@165
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v5

    #@169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v5

    #@16d
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@170
    throw v4

    #@171
    .line 115
    :cond_9
    return-void
.end method

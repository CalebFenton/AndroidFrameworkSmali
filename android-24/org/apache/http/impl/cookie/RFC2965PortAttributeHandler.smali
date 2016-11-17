.class public Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965PortAttributeHandler.java"

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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    return-void
.end method

.method private static parsePortAttribute(Ljava/lang/String;)[I
    .locals 7
    .param p0, "portValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    new-instance v3, Ljava/util/StringTokenizer;

    #@2
    const-string/jumbo v4, ","

    #@5
    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 70
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    #@b
    move-result v4

    #@c
    new-array v2, v4, [I

    #@e
    .line 72
    .local v2, "ports":[I
    const/4 v1, 0x0

    #@f
    .line 73
    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    .line 74
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20
    move-result v4

    #@21
    aput v4, v2, v1

    #@23
    .line 75
    aget v4, v2, v1

    #@25
    if-gez v4, :cond_0

    #@27
    .line 76
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@29
    const-string/jumbo v5, "Invalid Port attribute."

    #@2c
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 80
    :catch_0
    move-exception v0

    #@31
    .line 81
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/apache/http/cookie/MalformedCookieException;

    #@33
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v6, "Invalid Port attribute: "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    .line 82
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-direct {v4, v5}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v4

    #@4f
    .line 78
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_0

    #@52
    .line 84
    :cond_1
    return-object v2
.end method

.method private static portMatch(I[I)Z
    .locals 4
    .param p0, "port"    # I
    .param p1, "ports"    # [I

    #@0
    .prologue
    .line 97
    const/4 v2, 0x0

    #@1
    .line 98
    .local v2, "portInList":Z
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    array-length v1, p1

    #@3
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@5
    .line 99
    aget v3, p1, v0

    #@7
    if-ne p0, v3, :cond_1

    #@9
    .line 100
    const/4 v2, 0x1

    #@a
    .line 104
    :cond_0
    return v2

    #@b
    .line 98
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 153
    if-nez p1, :cond_0

    #@3
    .line 154
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Cookie may not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 156
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "Cookie origin may not be null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 159
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    #@1a
    move-result v0

    #@1b
    .line 160
    .local v0, "port":I
    instance-of v1, p1, Lorg/apache/http/cookie/ClientCookie;

    #@1d
    if-eqz v1, :cond_3

    #@1f
    move-object v1, p1

    #@20
    .line 161
    check-cast v1, Lorg/apache/http/cookie/ClientCookie;

    #@22
    const-string/jumbo v2, "port"

    #@25
    invoke-interface {v1, v2}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    #@28
    move-result v1

    #@29
    .line 160
    if-eqz v1, :cond_3

    #@2b
    .line 162
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    #@2e
    move-result-object v1

    #@2f
    if-nez v1, :cond_2

    #@31
    .line 164
    return v3

    #@32
    .line 166
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    #@35
    move-result-object v1

    #@36
    invoke-static {v0, v1}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    #@39
    move-result v1

    #@3a
    if-nez v1, :cond_3

    #@3c
    .line 167
    return v3

    #@3d
    .line 170
    :cond_3
    const/4 v1, 0x1

    #@3e
    return v1
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/SetCookie;
    .param p2, "portValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    if-nez p1, :cond_0

    #@2
    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Cookie may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 115
    :cond_0
    instance-of v2, p1, Lorg/apache/http/cookie/SetCookie2;

    #@d
    if-eqz v2, :cond_1

    #@f
    move-object v0, p1

    #@10
    .line 116
    check-cast v0, Lorg/apache/http/cookie/SetCookie2;

    #@12
    .line 117
    .local v0, "cookie2":Lorg/apache/http/cookie/SetCookie2;
    if-eqz p2, :cond_1

    #@14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1b
    move-result v2

    #@1c
    if-lez v2, :cond_1

    #@1e
    .line 118
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->parsePortAttribute(Ljava/lang/String;)[I

    #@21
    move-result-object v1

    #@22
    .line 119
    .local v1, "ports":[I
    invoke-interface {v0, v1}, Lorg/apache/http/cookie/SetCookie2;->setPorts([I)V

    #@25
    .line 111
    .end local v0    # "cookie2":Lorg/apache/http/cookie/SetCookie2;
    .end local v1    # "ports":[I
    :cond_1
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
    .line 130
    if-nez p1, :cond_0

    #@2
    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Cookie may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 133
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "Cookie origin may not be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 136
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    #@19
    move-result v0

    #@1a
    .line 137
    .local v0, "port":I
    instance-of v1, p1, Lorg/apache/http/cookie/ClientCookie;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    move-object v1, p1

    #@1f
    .line 138
    check-cast v1, Lorg/apache/http/cookie/ClientCookie;

    #@21
    const-string/jumbo v2, "port"

    #@24
    invoke-interface {v1, v2}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    #@27
    move-result v1

    #@28
    .line 137
    if-eqz v1, :cond_2

    #@2a
    .line 139
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_2

    #@34
    .line 140
    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    #@36
    .line 141
    const-string/jumbo v2, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    #@39
    .line 140
    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v1

    #@3d
    .line 129
    :cond_2
    return-void
.end method

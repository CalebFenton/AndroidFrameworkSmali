.class public abstract Lorg/apache/http/impl/cookie/CookieSpecBase;
.super Lorg/apache/http/impl/cookie/AbstractCookieSpec;
.source "CookieSpecBase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;-><init>()V

    #@3
    return-void
.end method

.method protected static getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 1
    .param p0, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected static getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 4
    .param p0, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 60
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 61
    .local v0, "defaultPath":Ljava/lang/String;
    const/16 v2, 0x2f

    #@7
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@a
    move-result v1

    #@b
    .line 62
    .local v1, "lastSlashIndex":I
    if-ltz v1, :cond_1

    #@d
    .line 63
    if-nez v1, :cond_0

    #@f
    .line 65
    const/4 v1, 0x1

    #@10
    .line 67
    :cond_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 69
    :cond_1
    return-object v0
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;

    #@0
    .prologue
    .line 122
    if-nez p1, :cond_0

    #@2
    .line 123
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Cookie may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 125
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "Cookie origin may not be null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 128
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "handler$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_3

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lorg/apache/http/cookie/CookieAttributeHandler;

    #@2a
    .line 129
    .local v0, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_2

    #@30
    .line 130
    const/4 v2, 0x0

    #@31
    return v2

    #@32
    .line 133
    .end local v0    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    :cond_3
    const/4 v2, 0x1

    #@33
    return v2
.end method

.method protected parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 14
    .param p1, "elems"    # [Lorg/apache/http/HeaderElement;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/HeaderElement;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    new-instance v3, Ljava/util/ArrayList;

    #@2
    array-length v10, p1

    #@3
    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 79
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const/4 v10, 0x0

    #@7
    array-length v11, p1

    #@8
    :goto_0
    if-ge v10, v11, :cond_4

    #@a
    aget-object v5, p1, v10

    #@c
    .line 80
    .local v5, "headerelement":Lorg/apache/http/HeaderElement;
    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@f
    move-result-object v7

    #@10
    .line 81
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    #@13
    move-result-object v9

    #@14
    .line 82
    .local v9, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@16
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@19
    move-result v12

    #@1a
    if-nez v12, :cond_1

    #@1c
    .line 83
    :cond_0
    new-instance v10, Lorg/apache/http/cookie/MalformedCookieException;

    #@1e
    const-string/jumbo v11, "Cookie name may not be empty"

    #@21
    invoke-direct {v10, v11}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@24
    throw v10

    #@25
    .line 86
    :cond_1
    new-instance v2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    #@27
    invoke-direct {v2, v7, v9}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 87
    .local v2, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    #@2d
    move-result-object v12

    #@2e
    invoke-virtual {v2, v12}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    #@31
    .line 88
    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    #@34
    move-result-object v12

    #@35
    invoke-virtual {v2, v12}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    #@38
    .line 91
    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    #@3b
    move-result-object v1

    #@3c
    .line 92
    .local v1, "attribs":[Lorg/apache/http/NameValuePair;
    array-length v12, v1

    #@3d
    add-int/lit8 v6, v12, -0x1

    #@3f
    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_3

    #@41
    .line 93
    aget-object v0, v1, v6

    #@43
    .line 94
    .local v0, "attrib":Lorg/apache/http/NameValuePair;
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@46
    move-result-object v12

    #@47
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@49
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@4c
    move-result-object v8

    #@4d
    .line 96
    .local v8, "s":Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@50
    move-result-object v12

    #@51
    invoke-virtual {v2, v8, v12}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    .line 98
    invoke-virtual {p0, v8}, Lorg/apache/http/impl/cookie/CookieSpecBase;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    #@57
    move-result-object v4

    #@58
    .line 99
    .local v4, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    if-eqz v4, :cond_2

    #@5a
    .line 100
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@5d
    move-result-object v12

    #@5e
    invoke-interface {v4, v2, v12}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    #@61
    .line 92
    :cond_2
    add-int/lit8 v6, v6, -0x1

    #@63
    goto :goto_1

    #@64
    .line 103
    .end local v0    # "attrib":Lorg/apache/http/NameValuePair;
    .end local v4    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@67
    .line 79
    add-int/lit8 v10, v10, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 105
    .end local v1    # "attribs":[Lorg/apache/http/NameValuePair;
    .end local v2    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v5    # "headerelement":Lorg/apache/http/HeaderElement;
    .end local v6    # "j":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 4
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "origin"    # Lorg/apache/http/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    if-nez p1, :cond_0

    #@2
    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Cookie may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 113
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "Cookie origin may not be null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 116
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "handler$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lorg/apache/http/cookie/CookieAttributeHandler;

    #@2a
    .line 117
    .local v0, "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    #@2d
    goto :goto_0

    #@2e
    .line 109
    .end local v0    # "handler":Lorg/apache/http/cookie/CookieAttributeHandler;
    :cond_2
    return-void
.end method

.class public Lorg/apache/http/client/protocol/ResponseProcessCookies;
.super Ljava/lang/Object;
.source "ResponseProcessCookies.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    invoke-virtual {p0}, Lorg/apache/http/client/protocol/ResponseProcessCookies;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 71
    return-void
.end method

.method private cookieToString(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    #@0
    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 161
    const-string/jumbo v1, "[version="

    #@14
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 161
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    #@1b
    move-result v1

    #@1c
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 162
    const-string/jumbo v1, ",name="

    #@23
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 162
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 163
    const-string/jumbo v1, ",domain="

    #@32
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 163
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 164
    const-string/jumbo v1, ",path="

    #@41
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 164
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 165
    const-string/jumbo v1, ",expiry="

    #@50
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 165
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    #@57
    move-result-object v1

    #@58
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    .line 166
    const-string/jumbo v1, "]"

    #@5f
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    return-object v0
.end method

.method private processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V
    .locals 8
    .param p1, "iterator"    # Lorg/apache/http/HeaderIterator;
    .param p2, "cookieSpec"    # Lorg/apache/http/cookie/CookieSpec;
    .param p3, "cookieOrigin"    # Lorg/apache/http/cookie/CookieOrigin;
    .param p4, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    #@0
    .prologue
    .line 122
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_2

    #@6
    .line 123
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    #@9
    move-result-object v4

    #@a
    .line 125
    .local v4, "header":Lorg/apache/http/Header;
    :try_start_0
    invoke-interface {p2, v4, p3}, Lorg/apache/http/cookie/CookieSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    #@d
    move-result-object v2

    #@e
    .line 126
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_0

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lorg/apache/http/cookie/Cookie;
    :try_end_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_1

    #@1e
    .line 128
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    :try_start_1
    invoke-interface {p2, v0, p3}, Lorg/apache/http/cookie/CookieSpec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    #@21
    .line 129
    invoke-interface {p4, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    #@24
    .line 131
    iget-object v5, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    #@26
    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_1

    #@2c
    .line 133
    iget-object v5, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    #@2e
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "Cookie accepted: \""

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    .line 134
    invoke-direct {p0, v0}, Lorg/apache/http/client/protocol/ResponseProcessCookies;->cookieToString(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    .line 134
    const-string/jumbo v7, "\". "

    #@45
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_1 .. :try_end_1} :catch_0

    #@50
    goto :goto_1

    #@51
    .line 137
    :catch_0
    move-exception v3

    #@52
    .line 138
    .local v3, "ex":Lorg/apache/http/cookie/MalformedCookieException;
    :try_start_2
    iget-object v5, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    #@54
    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    #@57
    move-result v5

    #@58
    if-eqz v5, :cond_1

    #@5a
    .line 140
    iget-object v5, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    #@5c
    new-instance v6, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v7, "Cookie rejected: \""

    #@64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    .line 141
    invoke-direct {p0, v0}, Lorg/apache/http/client/protocol/ResponseProcessCookies;->cookieToString(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    .line 141
    const-string/jumbo v7, "\". "

    #@73
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    .line 141
    invoke-virtual {v3}, Lorg/apache/http/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_2 .. :try_end_2} :catch_1

    #@86
    goto :goto_1

    #@87
    .line 146
    .end local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v1    # "cookie$iterator":Ljava/util/Iterator;
    .end local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v3    # "ex":Lorg/apache/http/cookie/MalformedCookieException;
    :catch_1
    move-exception v3

    #@88
    .line 147
    .restart local v3    # "ex":Lorg/apache/http/cookie/MalformedCookieException;
    iget-object v5, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    #@8a
    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    #@8d
    move-result v5

    #@8e
    if-eqz v5, :cond_0

    #@90
    .line 148
    iget-object v5, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    #@92
    new-instance v6, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v7, "Invalid cookie header: \""

    #@9a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v6

    #@9e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v6

    #@a2
    .line 149
    const-string/jumbo v7, "\". "

    #@a5
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v6

    #@a9
    .line 149
    invoke-virtual {v3}, Lorg/apache/http/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    #@ac
    move-result-object v7

    #@ad
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v6

    #@b1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v6

    #@b5
    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    #@b8
    goto/16 :goto_0

    #@ba
    .line 121
    .end local v3    # "ex":Lorg/apache/http/cookie/MalformedCookieException;
    .end local v4    # "header":Lorg/apache/http/Header;
    :cond_2
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    if-nez p1, :cond_0

    #@2
    .line 78
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "HTTP request may not be null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 80
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 81
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v5, "HTTP context may not be null"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 86
    :cond_1
    const-string/jumbo v4, "http.cookie-store"

    #@19
    .line 85
    invoke-interface {p2, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lorg/apache/http/client/CookieStore;

    #@1f
    .line 87
    .local v2, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-nez v2, :cond_2

    #@21
    .line 88
    iget-object v4, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    #@23
    const-string/jumbo v5, "Cookie store not available in HTTP context"

    #@26
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    #@29
    .line 89
    return-void

    #@2a
    .line 93
    :cond_2
    const-string/jumbo v4, "http.cookie-spec"

    #@2d
    .line 92
    invoke-interface {p2, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Lorg/apache/http/cookie/CookieSpec;

    #@33
    .line 94
    .local v1, "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    if-nez v1, :cond_3

    #@35
    .line 95
    iget-object v4, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    #@37
    const-string/jumbo v5, "CookieSpec not available in HTTP context"

    #@3a
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    #@3d
    .line 96
    return-void

    #@3e
    .line 100
    :cond_3
    const-string/jumbo v4, "http.cookie-origin"

    #@41
    .line 99
    invoke-interface {p2, v4}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Lorg/apache/http/cookie/CookieOrigin;

    #@47
    .line 101
    .local v0, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    if-nez v0, :cond_4

    #@49
    .line 102
    iget-object v4, p0, Lorg/apache/http/client/protocol/ResponseProcessCookies;->log:Lorg/apache/commons/logging/Log;

    #@4b
    const-string/jumbo v5, "CookieOrigin not available in HTTP context"

    #@4e
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    #@51
    .line 103
    return-void

    #@52
    .line 105
    :cond_4
    const-string/jumbo v4, "Set-Cookie"

    #@55
    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    #@58
    move-result-object v3

    #@59
    .line 106
    .local v3, "it":Lorg/apache/http/HeaderIterator;
    invoke-direct {p0, v3, v1, v0, v2}, Lorg/apache/http/client/protocol/ResponseProcessCookies;->processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    #@5c
    .line 109
    invoke-interface {v1}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    #@5f
    move-result v4

    #@60
    if-lez v4, :cond_5

    #@62
    .line 112
    const-string/jumbo v4, "Set-Cookie2"

    #@65
    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    #@68
    move-result-object v3

    #@69
    .line 113
    invoke-direct {p0, v3, v1, v0, v2}, Lorg/apache/http/client/protocol/ResponseProcessCookies;->processCookies(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    #@6c
    .line 76
    :cond_5
    return-void
.end method

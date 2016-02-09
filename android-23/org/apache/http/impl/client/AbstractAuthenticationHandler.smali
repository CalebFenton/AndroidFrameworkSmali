.class public abstract Lorg/apache/http/impl/client/AbstractAuthenticationHandler;
.super Ljava/lang/Object;
.source "AbstractAuthenticationHandler.java"

# interfaces
.implements Lorg/apache/http/client/AuthenticationHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 67
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 68
    const-string/jumbo v1, "ntlm"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 69
    const-string/jumbo v1, "digest"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 70
    const-string/jumbo v1, "basic"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 67
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    #@1b
    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 73
    return-void
.end method


# virtual methods
.method protected getAuthPreferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 111
    sget-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    #@2
    return-object v0
.end method

.method protected parseChallenges([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 10
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    new-instance v4, Ljava/util/HashMap;

    #@2
    array-length v7, p1

    #@3
    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    #@6
    .line 81
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    const/4 v7, 0x0

    #@7
    array-length v9, p1

    #@8
    move v8, v7

    #@9
    :goto_0
    if-ge v8, v9, :cond_5

    #@b
    aget-object v3, p1, v8

    #@d
    .line 84
    .local v3, "header":Lorg/apache/http/Header;
    instance-of v7, v3, Lorg/apache/http/FormattedHeader;

    #@f
    if-eqz v7, :cond_0

    #@11
    move-object v7, v3

    #@12
    .line 85
    check-cast v7, Lorg/apache/http/FormattedHeader;

    #@14
    invoke-interface {v7}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    #@17
    move-result-object v1

    #@18
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    move-object v7, v3

    #@19
    .line 86
    check-cast v7, Lorg/apache/http/FormattedHeader;

    #@1b
    invoke-interface {v7}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    #@1e
    move-result v5

    #@1f
    .line 96
    .local v5, "pos":I
    :goto_1
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@22
    move-result v7

    #@23
    if-ge v5, v7, :cond_2

    #@25
    invoke-virtual {v1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@28
    move-result v7

    #@29
    invoke-static {v7}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_2

    #@2f
    .line 97
    add-int/lit8 v5, v5, 0x1

    #@31
    goto :goto_1

    #@32
    .line 88
    .end local v1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v5    # "pos":I
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    .line 89
    .local v6, "s":Ljava/lang/String;
    if-nez v6, :cond_1

    #@38
    .line 90
    new-instance v7, Lorg/apache/http/auth/MalformedChallengeException;

    #@3a
    const-string/jumbo v8, "Header value is null"

    #@3d
    invoke-direct {v7, v8}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    #@40
    throw v7

    #@41
    .line 92
    :cond_1
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    #@43
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@46
    move-result v7

    #@47
    invoke-direct {v1, v7}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@4a
    .line 93
    .restart local v1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v1, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@4d
    .line 94
    const/4 v5, 0x0

    #@4e
    .restart local v5    # "pos":I
    goto :goto_1

    #@4f
    .line 99
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    move v0, v5

    #@50
    .line 100
    .local v0, "beginIndex":I
    :goto_2
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@53
    move-result v7

    #@54
    if-ge v5, v7, :cond_3

    #@56
    invoke-virtual {v1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    #@59
    move-result v7

    #@5a
    invoke-static {v7}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    #@5d
    move-result v7

    #@5e
    if-eqz v7, :cond_4

    #@60
    .line 103
    :cond_3
    move v2, v5

    #@61
    .line 104
    .local v2, "endIndex":I
    invoke-virtual {v1, v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    .line 105
    .restart local v6    # "s":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    .line 81
    add-int/lit8 v7, v8, 0x1

    #@70
    move v8, v7

    #@71
    goto :goto_0

    #@72
    .line 101
    .end local v2    # "endIndex":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@74
    goto :goto_2

    #@75
    .line 107
    .end local v0    # "beginIndex":I
    .end local v1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v3    # "header":Lorg/apache/http/Header;
    .end local v5    # "pos":I
    :cond_5
    return-object v4
.end method

.method public selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;
    .locals 10
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/http/auth/AuthScheme;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    .local p1, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    const-string/jumbo v7, "http.authscheme-registry"

    #@3
    .line 119
    invoke-interface {p3, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v6

    #@7
    check-cast v6, Lorg/apache/http/auth/AuthSchemeRegistry;

    #@9
    .line 121
    .local v6, "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    if-nez v6, :cond_0

    #@b
    .line 122
    new-instance v7, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v8, "AuthScheme registry not set in HTTP context"

    #@10
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v7

    #@14
    .line 126
    :cond_0
    const-string/jumbo v7, "http.auth.scheme-pref"

    #@17
    .line 125
    invoke-interface {p3, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/List;

    #@1d
    .line 127
    .local v0, "authPrefs":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v0, :cond_1

    #@1f
    .line 128
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->getAuthPreferences()Ljava/util/List;

    #@22
    move-result-object v0

    #@23
    .line 131
    :cond_1
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    #@25
    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_2

    #@2b
    .line 132
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    #@2d
    new-instance v8, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v9, "Authentication schemes in the order of preference: "

    #@35
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v8

    #@41
    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@44
    .line 136
    :cond_2
    const/4 v1, 0x0

    #@45
    .line 137
    .local v1, "authScheme":Lorg/apache/http/auth/AuthScheme;
    const/4 v4, 0x0

    #@46
    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@49
    move-result v7

    #@4a
    if-ge v4, v7, :cond_4

    #@4c
    .line 138
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v5

    #@50
    check-cast v5, Ljava/lang/String;

    #@52
    .line 139
    .local v5, "id":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@54
    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v2

    #@5c
    check-cast v2, Lorg/apache/http/Header;

    #@5e
    .line 141
    .local v2, "challenge":Lorg/apache/http/Header;
    if-eqz v2, :cond_6

    #@60
    .line 142
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    #@62
    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@65
    move-result v7

    #@66
    if-eqz v7, :cond_3

    #@68
    .line 143
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    #@6a
    new-instance v8, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v8

    #@73
    const-string/jumbo v9, " authentication scheme selected"

    #@76
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v8

    #@7a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v8

    #@7e
    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@81
    .line 146
    :cond_3
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v6, v5, v7}, Lorg/apache/http/auth/AuthSchemeRegistry;->getAuthScheme(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@88
    move-result-object v1

    #@89
    .line 161
    .end local v1    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v2    # "challenge":Lorg/apache/http/Header;
    .end local v5    # "id":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_7

    #@8b
    .line 163
    new-instance v7, Lorg/apache/http/auth/AuthenticationException;

    #@8d
    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v9, "Unable to respond to any of these challenges: "

    #@95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v8

    #@a1
    .line 163
    invoke-direct {v7, v8}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v7

    #@a5
    .line 148
    .restart local v1    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .restart local v2    # "challenge":Lorg/apache/http/Header;
    .restart local v5    # "id":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@a6
    .line 149
    .local v3, "e":Ljava/lang/IllegalStateException;
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    #@a8
    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    #@ab
    move-result v7

    #@ac
    if-eqz v7, :cond_5

    #@ae
    .line 150
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    #@b0
    new-instance v8, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v9, "Authentication scheme "

    #@b8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v8

    #@bc
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v8

    #@c0
    const-string/jumbo v9, " not supported"

    #@c3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v8

    #@c7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v8

    #@cb
    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    #@ce
    .line 137
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@d0
    goto/16 :goto_0

    #@d2
    .line 155
    :cond_6
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    #@d4
    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@d7
    move-result v7

    #@d8
    if-eqz v7, :cond_5

    #@da
    .line 156
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    #@dc
    new-instance v8, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v9, "Challenge for "

    #@e4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v8

    #@e8
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v8

    #@ec
    const-string/jumbo v9, " authentication scheme not available"

    #@ef
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v8

    #@f3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v8

    #@f7
    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@fa
    goto :goto_1

    #@fb
    .line 167
    .end local v1    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v2    # "challenge":Lorg/apache/http/Header;
    .end local v5    # "id":Ljava/lang/String;
    :cond_7
    return-object v1
.end method

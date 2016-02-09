.class public Ljava/net/CookieManager;
.super Ljava/net/CookieHandler;
.source "CookieManager.java"


# static fields
.field private static final VERSION_ONE_HEADER:Ljava/lang/String; = "Set-cookie2"

.field private static final VERSION_ZERO_HEADER:Ljava/lang/String; = "Set-cookie"


# instance fields
.field private policy:Ljava/net/CookiePolicy;

.field private store:Ljava/net/CookieStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 72
    invoke-direct {p0, v0, v0}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    #@4
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V
    .locals 0
    .param p1, "store"    # Ljava/net/CookieStore;
    .param p2, "cookiePolicy"    # Ljava/net/CookiePolicy;

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    #@3
    .line 87
    if-nez p1, :cond_0

    #@5
    new-instance p1, Ljava/net/CookieStoreImpl;

    #@7
    .end local p1    # "store":Ljava/net/CookieStore;
    invoke-direct {p1}, Ljava/net/CookieStoreImpl;-><init>()V

    #@a
    :cond_0
    iput-object p1, p0, Ljava/net/CookieManager;->store:Ljava/net/CookieStore;

    #@c
    .line 88
    if-nez p2, :cond_1

    #@e
    sget-object p2, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    #@10
    .end local p2    # "cookiePolicy":Ljava/net/CookiePolicy;
    :cond_1
    iput-object p2, p0, Ljava/net/CookieManager;->policy:Ljava/net/CookiePolicy;

    #@12
    .line 86
    return-void
.end method

.method private static cookiesToHeaders(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@9
    move-result-object v5

    #@a
    return-object v5

    #@b
    .line 128
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 131
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    #@11
    .line 132
    .local v3, "minVersion":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/net/HttpCookie;

    #@21
    .line 133
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    #@24
    move-result v5

    #@25
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    #@28
    move-result v3

    #@29
    goto :goto_0

    #@2a
    .line 135
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_1
    const/4 v5, 0x1

    #@2b
    if-ne v3, v5, :cond_2

    #@2d
    .line 136
    const-string/jumbo v5, "$Version=\"1\"; "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 139
    :cond_2
    const/4 v5, 0x0

    #@34
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    check-cast v5, Ljava/net/HttpCookie;

    #@3a
    invoke-virtual {v5}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 140
    const/4 v2, 0x1

    #@42
    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@45
    move-result v5

    #@46
    if-ge v2, v5, :cond_3

    #@48
    .line 141
    const-string/jumbo v5, "; "

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v5

    #@53
    check-cast v5, Ljava/net/HttpCookie;

    #@55
    invoke-virtual {v5}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 140
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 144
    :cond_3
    const-string/jumbo v5, "Cookie"

    #@62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@69
    move-result-object v6

    #@6a
    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    #@6d
    move-result-object v5

    #@6e
    return-object v5
.end method

.method private static parseCookie(Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 207
    .local p0, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 208
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v9

    #@9
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v6

    #@d
    .local v6, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v9

    #@11
    if-eqz v9, :cond_3

    #@13
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Ljava/util/Map$Entry;

    #@19
    .line 209
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v8

    #@1d
    check-cast v8, Ljava/lang/String;

    #@1f
    .line 211
    .local v8, "key":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@21
    const-string/jumbo v9, "Set-cookie"

    #@24
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v9

    #@28
    if-nez v9, :cond_1

    #@2a
    .line 212
    const-string/jumbo v9, "Set-cookie2"

    #@2d
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@30
    move-result v9

    #@31
    .line 211
    if-eqz v9, :cond_0

    #@33
    .line 214
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@36
    move-result-object v9

    #@37
    check-cast v9, Ljava/util/List;

    #@39
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v3

    #@3d
    .local v3, "cookieStr$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v9

    #@41
    if-eqz v9, :cond_0

    #@43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Ljava/lang/String;

    #@49
    .line 216
    .local v2, "cookieStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    #@4c
    move-result-object v9

    #@4d
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v1

    #@51
    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v9

    #@55
    if-eqz v9, :cond_2

    #@57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Ljava/net/HttpCookie;

    #@5d
    .line 217
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    goto :goto_1

    #@61
    .line 219
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "cookie$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    #@62
    .local v7, "ignored":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@63
    .line 225
    .end local v2    # "cookieStr":Ljava/lang/String;
    .end local v3    # "cookieStr$iterator":Ljava/util/Iterator;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v8    # "key":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method static pathToCookiePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    if-nez p0, :cond_0

    #@2
    .line 200
    const-string/jumbo v1, "/"

    #@5
    return-object v1

    #@6
    .line 202
    :cond_0
    const/16 v1, 0x2f

    #@8
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@b
    move-result v0

    #@c
    .line 203
    .local v0, "lastSlash":I
    add-int/lit8 v1, v0, 0x1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 108
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v3

    #@a
    .line 111
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 112
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v3, p0, Ljava/net/CookieManager;->store:Ljava/net/CookieStore;

    #@11
    invoke-interface {v3, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_3

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/net/HttpCookie;

    #@25
    .line 113
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-static {v0, p1}, Ljava/net/HttpCookie;->pathMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_2

    #@2b
    .line 114
    invoke-static {v0, p1}, Ljava/net/HttpCookie;->secureMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z

    #@2e
    move-result v3

    #@2f
    .line 113
    if-eqz v3, :cond_2

    #@31
    .line 115
    invoke-static {v0, p1}, Ljava/net/HttpCookie;->portMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z

    #@34
    move-result v3

    #@35
    .line 113
    if-eqz v3, :cond_2

    #@37
    .line 116
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 120
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_3
    invoke-static {v2}, Ljava/net/CookieManager;->cookiesToHeaders(Ljava/util/List;)Ljava/util/Map;

    #@3e
    move-result-object v3

    #@3f
    return-object v3
.end method

.method public getCookieStore()Ljava/net/CookieStore;
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Ljava/net/CookieManager;->store:Ljava/net/CookieStore;

    #@2
    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 160
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v3

    #@a
    .line 164
    :cond_1
    invoke-static {p2}, Ljava/net/CookieManager;->parseCookie(Ljava/util/Map;)Ljava/util/List;

    #@d
    move-result-object v2

    #@e
    .line 165
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_8

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/net/HttpCookie;

    #@1e
    .line 168
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    if-nez v3, :cond_3

    #@24
    .line 169
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    #@2b
    .line 173
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    if-nez v3, :cond_6

    #@31
    .line 174
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v3}, Ljava/net/CookieManager;->pathToCookiePath(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    #@3c
    .line 180
    :cond_4
    const-string/jumbo v3, ""

    #@3f
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_7

    #@49
    .line 181
    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    #@4c
    move-result v3

    #@4d
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v0, v3}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    #@54
    .line 187
    :cond_5
    :goto_1
    iget-object v3, p0, Ljava/net/CookieManager;->policy:Ljava/net/CookiePolicy;

    #@56
    invoke-interface {v3, p1, v0}, Ljava/net/CookiePolicy;->shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    #@59
    move-result v3

    #@5a
    if-eqz v3, :cond_2

    #@5c
    .line 188
    iget-object v3, p0, Ljava/net/CookieManager;->store:Ljava/net/CookieStore;

    #@5e
    invoke-interface {v3, p1, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    #@61
    goto :goto_0

    #@62
    .line 175
    :cond_6
    invoke-static {v0, p1}, Ljava/net/HttpCookie;->pathMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z

    #@65
    move-result v3

    #@66
    if-nez v3, :cond_4

    #@68
    goto :goto_0

    #@69
    .line 182
    :cond_7
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    if-eqz v3, :cond_5

    #@6f
    invoke-static {v0, p1}, Ljava/net/HttpCookie;->portMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z

    #@72
    move-result v3

    #@73
    if-eqz v3, :cond_2

    #@75
    goto :goto_1

    #@76
    .line 158
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_8
    return-void
.end method

.method public setCookiePolicy(Ljava/net/CookiePolicy;)V
    .locals 0
    .param p1, "cookiePolicy"    # Ljava/net/CookiePolicy;

    #@0
    .prologue
    .line 238
    if-eqz p1, :cond_0

    #@2
    .line 239
    iput-object p1, p0, Ljava/net/CookieManager;->policy:Ljava/net/CookiePolicy;

    #@4
    .line 237
    :cond_0
    return-void
.end method

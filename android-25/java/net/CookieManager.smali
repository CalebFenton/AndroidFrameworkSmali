.class public Ljava/net/CookieManager;
.super Ljava/net/CookieHandler;
.source "CookieManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/CookieManager$CookiePathComparator;
    }
.end annotation


# instance fields
.field private cookieJar:Ljava/net/CookieStore;

.field private policyCallback:Ljava/net/CookiePolicy;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 138
    invoke-direct {p0, v0, v0}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    #@4
    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V
    .locals 1
    .param p1, "store"    # Ljava/net/CookieStore;
    .param p2, "cookiePolicy"    # Ljava/net/CookiePolicy;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 153
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    #@4
    .line 125
    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    #@6
    .line 157
    if-nez p2, :cond_0

    #@8
    sget-object p2, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    #@a
    .end local p2    # "cookiePolicy":Ljava/net/CookiePolicy;
    :cond_0
    iput-object p2, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    #@c
    .line 161
    if-nez p1, :cond_1

    #@e
    .line 162
    new-instance v0, Ljava/net/InMemoryCookieStore;

    #@10
    invoke-direct {v0}, Ljava/net/InMemoryCookieStore;-><init>()V

    #@13
    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    #@15
    .line 154
    :goto_0
    return-void

    #@16
    .line 164
    :cond_1
    iput-object p1, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    #@18
    goto :goto_0
.end method

.method private static isInPortList(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "lst"    # Ljava/lang/String;
    .param p1, "port"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 365
    const-string/jumbo v3, ","

    #@5
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 366
    .local v0, "i":I
    const/4 v2, -0x1

    #@a
    .line 367
    .local v2, "val":I
    :goto_0
    if-lez v0, :cond_1

    #@c
    .line 369
    const/4 v3, 0x0

    #@d
    :try_start_0
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v2

    #@15
    .line 370
    if-ne v2, p1, :cond_0

    #@17
    .line 371
    return v5

    #@18
    .line 373
    :catch_0
    move-exception v1

    #@19
    .line 375
    :cond_0
    add-int/lit8 v3, v0, 0x1

    #@1b
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    .line 376
    const-string/jumbo v3, ","

    #@22
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    .line 378
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_2

    #@2d
    .line 380
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@30
    move-result v2

    #@31
    .line 381
    if-ne v2, p1, :cond_2

    #@33
    .line 382
    return v5

    #@34
    .line 384
    :catch_1
    move-exception v1

    #@35
    .line 387
    :cond_2
    return v4
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
    if-nez p0, :cond_0

    #@2
    .line 399
    const-string/jumbo p0, ""

    #@5
    .line 402
    :cond_0
    const-string/jumbo v0, "/"

    #@8
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, "/"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    .line 406
    :cond_1
    return-object p0
.end method

.method private static pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    #@0
    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method private shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    #@0
    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    #@2
    invoke-interface {v1, p1, p2}, Ljava/net/CookiePolicy;->shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 358
    :catch_0
    move-exception v0

    #@8
    .line 359
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method private sortByPath(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 415
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    new-instance v6, Ljava/net/CookieManager$CookiePathComparator;

    #@2
    invoke-direct {v6}, Ljava/net/CookieManager$CookiePathComparator;-><init>()V

    #@5
    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@8
    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 423
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    #@e
    .line 424
    .local v4, "minVersion":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_1

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/net/HttpCookie;

    #@1e
    .line 425
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    #@21
    move-result v6

    #@22
    if-ge v6, v4, :cond_0

    #@24
    .line 426
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    #@27
    move-result v4

    #@28
    goto :goto_0

    #@29
    .line 430
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_1
    const/4 v6, 0x1

    #@2a
    if-ne v4, v6, :cond_2

    #@2c
    .line 431
    const-string/jumbo v6, "$Version=\"1\"; "

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 434
    :cond_2
    const/4 v3, 0x0

    #@33
    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@36
    move-result v6

    #@37
    if-ge v3, v6, :cond_4

    #@39
    .line 435
    if-eqz v3, :cond_3

    #@3b
    .line 436
    const-string/jumbo v6, "; "

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 439
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v6

    #@45
    check-cast v6, Ljava/net/HttpCookie;

    #@47
    invoke-virtual {v6}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 434
    add-int/lit8 v3, v3, 0x1

    #@50
    goto :goto_1

    #@51
    .line 442
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    #@53
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@56
    .line 443
    .local v2, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5d
    .line 444
    return-object v2
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
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
    .line 201
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 202
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v9, "Argument is null"

    #@9
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v8

    #@d
    .line 206
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    #@f
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@12
    .line 208
    .local v3, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v8, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    #@14
    if-nez v8, :cond_2

    #@16
    .line 209
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@19
    move-result-object v8

    #@1a
    return-object v8

    #@1b
    .line 212
    :cond_2
    const-string/jumbo v8, "https"

    #@1e
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@21
    move-result-object v9

    #@22
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v7

    #@26
    .line 213
    .local v7, "secureLink":Z
    new-instance v4, Ljava/util/ArrayList;

    #@28
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@2b
    .line 214
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v8, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    #@2d
    invoke-interface {v8, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    #@30
    move-result-object v8

    #@31
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v1

    #@35
    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v8

    #@39
    if-eqz v8, :cond_9

    #@3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/net/HttpCookie;

    #@41
    .line 218
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-static {p1, v0}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    #@44
    move-result v8

    #@45
    if-eqz v8, :cond_3

    #@47
    .line 219
    if-nez v7, :cond_4

    #@49
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    #@4c
    move-result v8

    #@4d
    if-nez v8, :cond_3

    #@4f
    .line 222
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    .line 223
    .local v6, "ports":Ljava/lang/String;
    if-eqz v6, :cond_5

    #@55
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@58
    move-result v8

    #@59
    if-eqz v8, :cond_6

    #@5b
    .line 232
    :cond_5
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5e
    goto :goto_0

    #@5f
    .line 224
    :cond_6
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    #@62
    move-result v5

    #@63
    .line 225
    .local v5, "port":I
    const/4 v8, -0x1

    #@64
    if-ne v5, v8, :cond_7

    #@66
    .line 226
    const-string/jumbo v8, "https"

    #@69
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@6c
    move-result-object v9

    #@6d
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v8

    #@71
    if-eqz v8, :cond_8

    #@73
    const/16 v5, 0x1bb

    #@75
    .line 228
    :cond_7
    :goto_1
    invoke-static {v6, v5}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    #@78
    move-result v8

    #@79
    if-eqz v8, :cond_3

    #@7b
    .line 229
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7e
    goto :goto_0

    #@7f
    .line 226
    :cond_8
    const/16 v5, 0x50

    #@81
    goto :goto_1

    #@82
    .line 236
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v5    # "port":I
    .end local v6    # "ports":Ljava/lang/String;
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@85
    move-result v8

    #@86
    if-eqz v8, :cond_a

    #@88
    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@8b
    move-result-object v8

    #@8c
    return-object v8

    #@8d
    .line 241
    :cond_a
    invoke-direct {p0, v4}, Ljava/net/CookieManager;->sortByPath(Ljava/util/List;)Ljava/util/List;

    #@90
    move-result-object v2

    #@91
    .line 243
    .local v2, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v8, "Cookie"

    #@94
    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    .line 244
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@9a
    move-result-object v8

    #@9b
    return-object v8
.end method

.method public getCookieStore()Ljava/net/CookieStore;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    #@2
    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 17
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
    .line 253
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 254
    :cond_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v16, "Argument is null"

    #@9
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v15

    #@d
    .line 259
    :cond_1
    move-object/from16 v0, p0

    #@f
    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    #@11
    if-nez v15, :cond_2

    #@13
    .line 260
    return-void

    #@14
    .line 262
    :cond_2
    const-string/jumbo v15, "java.net.CookieManager"

    #@17
    invoke-static {v15}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    #@1a
    move-result-object v11

    #@1b
    .line 263
    .local v11, "logger":Lsun/util/logging/PlatformLogger;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1e
    move-result-object v15

    #@1f
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v7

    #@23
    .local v7, "headerKey$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v15

    #@27
    if-eqz v15, :cond_11

    #@29
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v6

    #@2d
    check-cast v6, Ljava/lang/String;

    #@2f
    .line 266
    .local v6, "headerKey":Ljava/lang/String;
    if-eqz v6, :cond_3

    #@31
    .line 267
    const-string/jumbo v15, "Set-Cookie2"

    #@34
    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@37
    move-result v15

    #@38
    if-nez v15, :cond_4

    #@3a
    .line 268
    const-string/jumbo v15, "Set-Cookie"

    #@3d
    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@40
    move-result v15

    #@41
    .line 267
    if-eqz v15, :cond_3

    #@43
    .line 275
    :cond_4
    move-object/from16 v0, p2

    #@45
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v15

    #@49
    check-cast v15, Ljava/util/List;

    #@4b
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v9

    #@4f
    .local v9, "headerValue$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v15

    #@53
    if-eqz v15, :cond_3

    #@55
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v8

    #@59
    check-cast v8, Ljava/lang/String;

    #@5b
    .line 279
    .local v8, "headerValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    #@5e
    move-result-object v4

    #@5f
    .line 287
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_6
    :goto_1
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@62
    move-result-object v3

    #@63
    .local v3, "cookie$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@66
    move-result v15

    #@67
    if-eqz v15, :cond_5

    #@69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6c
    move-result-object v2

    #@6d
    check-cast v2, Ljava/net/HttpCookie;

    #@6f
    .line 288
    .local v2, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    #@72
    move-result-object v15

    #@73
    if-nez v15, :cond_d

    #@75
    .line 291
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@78
    move-result-object v12

    #@79
    .line 292
    .local v12, "path":Ljava/lang/String;
    const-string/jumbo v15, "/"

    #@7c
    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7f
    move-result v15

    #@80
    if-nez v15, :cond_8

    #@82
    .line 293
    const-string/jumbo v15, "/"

    #@85
    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@88
    move-result v10

    #@89
    .line 294
    .local v10, "i":I
    if-lez v10, :cond_c

    #@8b
    .line 295
    add-int/lit8 v15, v10, 0x1

    #@8d
    const/16 v16, 0x0

    #@8f
    move/from16 v0, v16

    #@91
    invoke-virtual {v12, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@94
    move-result-object v12

    #@95
    .line 300
    .end local v10    # "i":I
    :cond_8
    :goto_3
    invoke-virtual {v2, v12}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    #@98
    .line 312
    .end local v12    # "path":Ljava/lang/String;
    :cond_9
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    #@9b
    move-result-object v15

    #@9c
    if-nez v15, :cond_a

    #@9e
    .line 313
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@a1
    move-result-object v15

    #@a2
    invoke-virtual {v2, v15}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    #@a5
    .line 315
    :cond_a
    invoke-virtual {v2}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    #@a8
    move-result-object v14

    #@a9
    .line 316
    .local v14, "ports":Ljava/lang/String;
    if-eqz v14, :cond_10

    #@ab
    .line 317
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPort()I

    #@ae
    move-result v13

    #@af
    .line 318
    .local v13, "port":I
    const/4 v15, -0x1

    #@b0
    if-ne v13, v15, :cond_b

    #@b2
    .line 319
    const-string/jumbo v15, "https"

    #@b5
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@b8
    move-result-object v16

    #@b9
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v15

    #@bd
    if-eqz v15, :cond_e

    #@bf
    const/16 v13, 0x1bb

    #@c1
    .line 321
    :cond_b
    :goto_4
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@c4
    move-result v15

    #@c5
    if-eqz v15, :cond_f

    #@c7
    .line 324
    new-instance v15, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v16, ""

    #@cf
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v15

    #@d3
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v15

    #@d7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v15

    #@db
    invoke-virtual {v2, v15}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    #@de
    .line 325
    move-object/from16 v0, p0

    #@e0
    move-object/from16 v1, p1

    #@e2
    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    #@e5
    move-result v15

    #@e6
    if-eqz v15, :cond_7

    #@e8
    .line 326
    move-object/from16 v0, p0

    #@ea
    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    #@ec
    move-object/from16 v0, p1

    #@ee
    invoke-interface {v15, v0, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    #@f1
    goto/16 :goto_2

    #@f3
    .line 343
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    .end local v3    # "cookie$iterator":Ljava/util/Iterator;
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v13    # "port":I
    .end local v14    # "ports":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@f4
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_0

    #@f6
    .line 280
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    #@f7
    .line 282
    .restart local v5    # "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@f9
    .line 283
    .restart local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/16 v15, 0x3e8

    #@fb
    invoke-virtual {v11, v15}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    #@fe
    move-result v15

    #@ff
    if-eqz v15, :cond_6

    #@101
    .line 284
    new-instance v15, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v16, "Invalid cookie for "

    #@109
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v15

    #@10d
    move-object/from16 v0, p1

    #@10f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v15

    #@113
    const-string/jumbo v16, ": "

    #@116
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v15

    #@11a
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v15

    #@11e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v15

    #@122
    invoke-virtual {v11, v15}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    #@125
    goto/16 :goto_1

    #@127
    .line 297
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "cookie":Ljava/net/HttpCookie;
    .restart local v3    # "cookie$iterator":Ljava/util/Iterator;
    .restart local v10    # "i":I
    .restart local v12    # "path":Ljava/lang/String;
    :cond_c
    const-string/jumbo v12, "/"

    #@12a
    goto/16 :goto_3

    #@12c
    .line 303
    .end local v10    # "i":I
    .end local v12    # "path":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p1

    #@12e
    invoke-static {v0, v2}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    #@131
    move-result v15

    #@132
    if-nez v15, :cond_9

    #@134
    goto/16 :goto_2

    #@136
    .line 319
    .restart local v13    # "port":I
    .restart local v14    # "ports":Ljava/lang/String;
    :cond_e
    const/16 v13, 0x50

    #@138
    goto :goto_4

    #@139
    .line 332
    :cond_f
    invoke-static {v14, v13}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    #@13c
    move-result v15

    #@13d
    if-eqz v15, :cond_7

    #@13f
    .line 333
    move-object/from16 v0, p0

    #@141
    move-object/from16 v1, p1

    #@143
    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    #@146
    move-result v15

    #@147
    .line 332
    if-eqz v15, :cond_7

    #@149
    .line 334
    move-object/from16 v0, p0

    #@14b
    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    #@14d
    move-object/from16 v0, p1

    #@14f
    invoke-interface {v15, v0, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    #@152
    goto/16 :goto_2

    #@154
    .line 338
    .end local v13    # "port":I
    :cond_10
    move-object/from16 v0, p0

    #@156
    move-object/from16 v1, p1

    #@158
    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    #@15b
    move-result v15

    #@15c
    if-eqz v15, :cond_7

    #@15e
    .line 339
    move-object/from16 v0, p0

    #@160
    iget-object v15, v0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    #@162
    move-object/from16 v0, p1

    #@164
    invoke-interface {v15, v0, v2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@167
    goto/16 :goto_2

    #@169
    .line 250
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    .end local v3    # "cookie$iterator":Ljava/util/Iterator;
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v6    # "headerKey":Ljava/lang/String;
    .end local v8    # "headerValue":Ljava/lang/String;
    .end local v9    # "headerValue$iterator":Ljava/util/Iterator;
    .end local v14    # "ports":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method public setCookiePolicy(Ljava/net/CookiePolicy;)V
    .locals 0
    .param p1, "cookiePolicy"    # Ljava/net/CookiePolicy;

    #@0
    .prologue
    .line 182
    if-eqz p1, :cond_0

    #@2
    iput-object p1, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    #@4
    .line 181
    :cond_0
    return-void
.end method

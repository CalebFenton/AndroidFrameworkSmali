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
.field private greylist-max-o cookieJar:Ljava/net/CookieStore;

.field private greylist-max-o policyCallback:Ljava/net/CookiePolicy;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnormalizePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 139
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V
    .registers 4
    .param p1, "store"    # Ljava/net/CookieStore;
    .param p2, "cookiePolicy"    # Ljava/net/CookiePolicy;

    .line 155
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    .line 157
    if-nez p2, :cond_b

    sget-object v0, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    goto :goto_c

    .line 158
    :cond_b
    move-object v0, p2

    :goto_c
    iput-object v0, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    .line 161
    if-nez p1, :cond_18

    .line 162
    new-instance v0, Ljava/net/InMemoryCookieStore;

    invoke-direct {v0}, Ljava/net/InMemoryCookieStore;-><init>()V

    iput-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    goto :goto_1a

    .line 164
    :cond_18
    iput-object p1, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    .line 166
    :goto_1a
    return-void
.end method

.method private static greylist-max-o isInPortList(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "lst"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 383
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 384
    .local v1, "i":I
    const/4 v2, -0x1

    .line 385
    .local v2, "val":I
    :goto_7
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_24

    .line 387
    :try_start_b
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_13} :catch_18

    .line 388
    .end local v2    # "val":I
    .local v3, "val":I
    if-ne v3, p1, :cond_16

    .line 389
    return v4

    .line 392
    :cond_16
    move v2, v3

    goto :goto_19

    .line 391
    .end local v3    # "val":I
    .restart local v2    # "val":I
    :catch_18
    move-exception v3

    .line 393
    :goto_19
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 394
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto :goto_7

    .line 396
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 398
    :try_start_2a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2e} :catch_33

    move v2, v0

    .line 399
    if-ne v2, p1, :cond_32

    .line 400
    return v4

    .line 403
    :cond_32
    goto :goto_34

    .line 402
    :catch_33
    move-exception v0

    .line 405
    :cond_34
    :goto_34
    return v3
.end method

.method private static greylist-max-o normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 417
    if-nez p0, :cond_4

    .line 418
    const-string p0, ""

    .line 421
    :cond_4
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 425
    :cond_1d
    return-object p0
.end method

.method private static greylist-max-o pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 4
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .line 413
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/CookieManager;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .line 375
    :try_start_0
    iget-object v0, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    invoke-interface {v0, p1, p2}, Ljava/net/CookiePolicy;->shouldAccept(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 376
    :catch_7
    move-exception v0

    .line 377
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o sortByPath(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 434
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    new-instance v0, Ljava/net/CookieManager$CookiePathComparator;

    invoke-direct {v0}, Ljava/net/CookieManager$CookiePathComparator;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 441
    .local v1, "minVersion":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/HttpCookie;

    .line 442
    .local v3, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v3}, Ljava/net/HttpCookie;->getVersion()I

    move-result v4

    if-ge v4, v1, :cond_28

    .line 443
    invoke-virtual {v3}, Ljava/net/HttpCookie;->getVersion()I

    move-result v1

    .line 445
    .end local v3    # "cookie":Ljava/net/HttpCookie;
    :cond_28
    goto :goto_12

    .line 447
    :cond_29
    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 448
    const-string v2, "$Version=\"1\"; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_31
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 452
    if-eqz v2, :cond_3f

    .line 453
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_3f
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/HttpCookie;

    invoke-virtual {v3}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 459
    .end local v2    # "i":I
    :cond_4f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v2, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    return-object v2
.end method


# virtual methods
.method public whitelist test-api get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .registers 11
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_87

    if-eqz p2, :cond_87

    .line 206
    iget-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    if-nez v0, :cond_d

    .line 207
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 209
    :cond_d
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 210
    .local v0, "secureLink":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v3, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v3, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/HttpCookie;

    .line 223
    .local v4, "cookie":Ljava/net/HttpCookie;
    invoke-static {p1, v4}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v5

    if-eqz v5, :cond_70

    if-nez v0, :cond_40

    .line 224
    invoke-virtual {v4}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v5

    if-nez v5, :cond_70

    .line 237
    :cond_40
    invoke-virtual {v4}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "ports":Ljava/lang/String;
    if-eqz v5, :cond_6d

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6d

    .line 239
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v6

    .line 240
    .local v6, "port":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_63

    .line 241
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    const/16 v7, 0x1bb

    goto :goto_62

    :cond_60
    const/16 v7, 0x50

    :goto_62
    move v6, v7

    .line 243
    :cond_63
    invoke-static {v5, v6}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 244
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v6    # "port":I
    :cond_6c
    goto :goto_70

    .line 247
    :cond_6d
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v4    # "cookie":Ljava/net/HttpCookie;
    .end local v5    # "ports":Ljava/lang/String;
    :cond_70
    :goto_70
    goto :goto_26

    .line 252
    :cond_71
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 257
    :cond_7c
    invoke-direct {p0, v2}, Ljava/net/CookieManager;->sortByPath(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 259
    .local v1, "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "Cookie"

    invoke-static {v3, v1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    return-object v3

    .line 202
    .end local v0    # "secureLink":Z
    .end local v1    # "cookieHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getCookieStore()Ljava/net/CookieStore;
    .registers 2

    .line 192
    iget-object v0, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    return-object v0
.end method

.method public whitelist test-api put(Ljava/net/URI;Ljava/util/Map;)V
    .registers 16
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "/"

    if-eqz p1, :cond_156

    if-eqz p2, :cond_156

    .line 273
    iget-object v1, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    if-nez v1, :cond_b

    .line 274
    return-void

    .line 276
    :cond_b
    const-string v1, "java.net.CookieManager"

    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v1

    .line 277
    .local v1, "logger":Lsun/util/logging/PlatformLogger;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_155

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 280
    .local v3, "headerKey":Ljava/lang/String;
    if-eqz v3, :cond_19

    .line 281
    const-string v4, "Set-Cookie2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 282
    const-string v4, "Set-Cookie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 286
    goto :goto_19

    .line 289
    :cond_38
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_153

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 293
    .local v5, "headerValue":Ljava/lang/String;
    :try_start_4e
    invoke-static {v5}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_52} :catch_53

    .line 300
    .local v6, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    goto :goto_81

    .line 294
    .end local v6    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :catch_53
    move-exception v6

    .line 296
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 297
    .local v7, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v1, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid cookie for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 301
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_80
    move-object v6, v7

    .end local v7    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .local v6, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :goto_81
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_85
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/HttpCookie;

    .line 302
    .local v8, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v8}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b7

    .line 305
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 306
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b3

    .line 307
    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 308
    .local v10, "i":I
    if-lez v10, :cond_b2

    .line 309
    add-int/lit8 v11, v10, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    goto :goto_b3

    .line 311
    :cond_b2
    move-object v9, v0

    .line 314
    .end local v10    # "i":I
    :cond_b3
    :goto_b3
    invoke-virtual {v8, v9}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 316
    .end local v9    # "path":Ljava/lang/String;
    goto :goto_be

    .line 318
    :cond_b7
    invoke-static {p1, v8}, Ljava/net/CookieManager;->pathMatches(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v9

    if-nez v9, :cond_be

    .line 319
    goto :goto_85

    .line 327
    :cond_be
    :goto_be
    invoke-virtual {v8}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e9

    .line 328
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v9, "host":Ljava/lang/String;
    if-eqz v9, :cond_e6

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e6

    .line 330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".local"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 331
    :cond_e6
    invoke-virtual {v8, v9}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 333
    .end local v9    # "host":Ljava/lang/String;
    :cond_e9
    invoke-virtual {v8}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, "ports":Ljava/lang/String;
    if-eqz v9, :cond_142

    .line 335
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v10

    .line 336
    .local v10, "port":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_108

    .line 337
    const-string v11, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_105

    const/16 v11, 0x1bb

    goto :goto_107

    :cond_105
    const/16 v11, 0x50

    :goto_107
    move v10, v11

    .line 339
    :cond_108
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_130

    .line 342
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, p1, v8}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v11

    if-eqz v11, :cond_141

    .line 344
    iget-object v11, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v11, p1, v8}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_141

    .line 350
    :cond_130
    invoke-static {v9, v10}, Ljava/net/CookieManager;->isInPortList(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_141

    .line 351
    invoke-direct {p0, p1, v8}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v11

    if-eqz v11, :cond_141

    .line 352
    iget-object v11, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v11, p1, v8}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    .line 355
    .end local v10    # "port":I
    :cond_141
    :goto_141
    goto :goto_14d

    .line 356
    :cond_142
    invoke-direct {p0, p1, v8}, Ljava/net/CookieManager;->shouldAcceptInternal(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result v10

    if-eqz v10, :cond_14d

    .line 357
    iget-object v10, p0, Ljava/net/CookieManager;->cookieJar:Ljava/net/CookieStore;

    invoke-interface {v10, p1, v8}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_14d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_14d} :catch_150

    .line 360
    .end local v8    # "cookie":Ljava/net/HttpCookie;
    .end local v9    # "ports":Ljava/lang/String;
    :cond_14d
    :goto_14d
    goto/16 :goto_85

    .line 364
    .end local v6    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_14f
    goto :goto_151

    .line 361
    :catch_150
    move-exception v6

    .line 365
    .end local v5    # "headerValue":Ljava/lang/String;
    :goto_151
    goto/16 :goto_42

    .line 366
    .end local v3    # "headerKey":Ljava/lang/String;
    :cond_153
    goto/16 :goto_19

    .line 367
    :cond_155
    return-void

    .line 268
    .end local v1    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setCookiePolicy(Ljava/net/CookiePolicy;)V
    .registers 2
    .param p1, "cookiePolicy"    # Ljava/net/CookiePolicy;

    .line 182
    if-eqz p1, :cond_4

    iput-object p1, p0, Ljava/net/CookieManager;->policyCallback:Ljava/net/CookiePolicy;

    .line 183
    :cond_4
    return-void
.end method

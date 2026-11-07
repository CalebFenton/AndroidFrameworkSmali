.class public Ljava/net/InMemoryCookieStore;
.super Ljava/lang/Object;
.source "InMemoryCookieStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# instance fields
.field private final greylist-max-o applyMCompatibility:Z

.field private greylist-max-o lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private greylist-max-o uriIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/URI;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 78
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/net/InMemoryCookieStore;-><init>(I)V

    .line 79
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "targetSdkVersion"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    .line 69
    iput-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    const/16 v0, 0x17

    if-gt p1, v0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    iput-boolean v1, p0, Ljava/net/InMemoryCookieStore;->applyMCompatibility:Z

    .line 85
    return-void
.end method

.method private greylist-max-o addIndex(Ljava/util/Map;Ljava/lang/Object;Ljava/net/HttpCookie;)V
    .registers 6
    .param p3, "cookie"    # Ljava/net/HttpCookie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;>;TT;",
            "Ljava/net/HttpCookie;",
            ")V"
        }
    .end annotation

    .line 396
    .local p1, "indexStore":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .local p2, "index":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 397
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v0, :cond_f

    .line 399
    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 403
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 404
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :goto_1b
    return-void
.end method

.method private greylist-max-o getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;
    .registers 10
    .param p1, "uri"    # Ljava/net/URI;

    .line 415
    const/4 v1, 0x0

    .line 417
    .local v1, "effectiveURI":Ljava/net/URI;
    if-nez p1, :cond_5

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 421
    :cond_5
    :try_start_5
    new-instance v2, Ljava/net/URI;

    const-string v3, "http"

    .line 422
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_13} :catch_14

    .line 429
    .end local v1    # "effectiveURI":Ljava/net/URI;
    .local v2, "effectiveURI":Ljava/net/URI;
    goto :goto_16

    .line 427
    .end local v2    # "effectiveURI":Ljava/net/URI;
    .restart local v1    # "effectiveURI":Ljava/net/URI;
    :catch_14
    move-exception v0

    .line 428
    .local v0, "ignored":Ljava/net/URISyntaxException;
    move-object v2, p1

    .line 431
    .end local v0    # "ignored":Ljava/net/URISyntaxException;
    .end local v1    # "effectiveURI":Ljava/net/URI;
    .restart local v2    # "effectiveURI":Ljava/net/URI;
    :goto_16
    return-object v2
.end method

.method private greylist-max-o getInternal1(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 13
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/net/URI;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 325
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .local p2, "cookieIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/HttpCookie;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 327
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 328
    .local v3, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/HttpCookie;

    .line 329
    .local v5, "c":Ljava/net/HttpCookie;
    invoke-virtual {v5}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "domain":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/HttpCookie;->getVersion()I

    move-result v7

    if-nez v7, :cond_3f

    invoke-direct {p0, v6, p3}, Ljava/net/InMemoryCookieStore;->netscapeDomainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 331
    :cond_3f
    invoke-virtual {v5}, Ljava/net/HttpCookie;->getVersion()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5f

    invoke-static {v6, p3}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 334
    :cond_4c
    invoke-virtual {v5}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v7

    if-nez v7, :cond_5c

    .line 336
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 337
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 340
    :cond_5c
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v5    # "c":Ljava/net/HttpCookie;
    .end local v6    # "domain":Ljava/lang/String;
    :cond_5f
    :goto_5f
    goto :goto_23

    .line 345
    :cond_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/HttpCookie;

    .line 346
    .restart local v5    # "c":Ljava/net/HttpCookie;
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 348
    .end local v5    # "c":Ljava/net/HttpCookie;
    goto :goto_64

    .line 349
    :cond_74
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .end local v3    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    goto :goto_d

    .line 352
    :cond_78
    return-void
.end method

.method private greylist-max-o getInternal2(Ljava/util/List;Ljava/util/Map;Ljava/lang/Comparable;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;>;TT;)V"
        }
    .end annotation

    .line 364
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .local p2, "cookieIndex":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .local p3, "comparator":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 365
    .local v1, "index":Ljava/lang/Comparable;, "TT;"
    if-eq v1, p3, :cond_1e

    if-eqz v1, :cond_4a

    invoke-interface {p3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_4a

    .line 366
    :cond_1e
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 368
    .local v2, "indexedCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v2, :cond_4a

    .line 369
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 370
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 371
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/HttpCookie;

    .line 373
    .local v4, "ck":Ljava/net/HttpCookie;
    invoke-virtual {v4}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-nez v5, :cond_46

    .line 375
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 376
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 378
    :cond_46
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 380
    .end local v4    # "ck":Ljava/net/HttpCookie;
    :cond_49
    :goto_49
    goto :goto_2a

    .line 383
    .end local v1    # "index":Ljava/lang/Comparable;, "TT;"
    .end local v2    # "indexedCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_4a
    goto :goto_8

    .line 385
    :cond_4b
    return-void
.end method

.method private greylist-max-o netscapeDomainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    if-eqz p1, :cond_6e

    if-nez p2, :cond_6

    goto :goto_6e

    .line 278
    :cond_6
    const-string v1, ".local"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 279
    .local v1, "isLocalDomain":Z
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 280
    .local v3, "embeddedDotInDomain":I
    const/4 v4, 0x1

    if-nez v3, :cond_19

    .line 281
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 283
    :cond_19
    const/4 v5, -0x1

    if-nez v1, :cond_26

    if-eq v3, v5, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v3, v6, :cond_26

    .line 284
    :cond_25
    return v0

    .line 288
    :cond_26
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 289
    .local v6, "firstDotInHost":I
    if-ne v6, v5, :cond_2f

    if-eqz v1, :cond_2f

    .line 290
    return v4

    .line 293
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 294
    .local v7, "domainLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    .line 295
    .local v8, "lengthDiff":I
    if-nez v8, :cond_3f

    .line 297
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 298
    :cond_3f
    if-lez v8, :cond_57

    .line 300
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "D":Ljava/lang/String;
    iget-boolean v4, p0, Ljava/net/InMemoryCookieStore;->applyMCompatibility:Z

    if-eqz v4, :cond_52

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 307
    return v0

    .line 310
    :cond_52
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 311
    .end local v2    # "D":Ljava/lang/String;
    :cond_57
    if-ne v8, v5, :cond_6d

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_6b

    .line 314
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    move v0, v4

    goto :goto_6c

    :cond_6b
    nop

    .line 313
    :goto_6c
    return v0

    .line 317
    :cond_6d
    return v0

    .line 274
    .end local v1    # "isLocalDomain":Z
    .end local v3    # "embeddedDotInDomain":I
    .end local v6    # "firstDotInHost":I
    .end local v7    # "domainLength":I
    .end local v8    # "lengthDiff":I
    :cond_6e
    :goto_6e
    return v0
.end method


# virtual methods
.method public whitelist test-api add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .line 93
    if-eqz p2, :cond_1e

    .line 97
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 102
    :try_start_7
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Ljava/net/InMemoryCookieStore;->addIndex(Ljava/util/Map;Ljava/lang/Object;Ljava/net/HttpCookie;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_17

    .line 105
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    nop

    .line 107
    return-void

    .line 105
    :catchall_17
    move-exception v0

    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    throw v0

    .line 94
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookie is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api get(Ljava/net/URI;)Ljava/util/List;
    .registers 5
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 119
    if-eqz p1, :cond_2c

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 128
    :try_start_c
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljava/net/InMemoryCookieStore;->getInternal1(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljava/net/InMemoryCookieStore;->getInternal2(Ljava/util/List;Ljava/util/Map;Ljava/lang/Comparable;)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_25

    .line 132
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    nop

    .line 135
    return-object v0

    .line 132
    :catchall_25
    move-exception v1

    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    throw v1

    .line 120
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getCookies()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "rt":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 147
    :try_start_a
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 148
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 149
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 150
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/HttpCookie;

    .line 151
    .local v4, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v4}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 152
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_43

    .line 153
    :cond_3a
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 154
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_50

    .line 156
    .end local v4    # "cookie":Ljava/net/HttpCookie;
    :cond_43
    :goto_43
    goto :goto_24

    .line 157
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_44
    goto :goto_14

    .line 159
    :cond_45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 160
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    nop

    .line 164
    return-object v0

    .line 159
    :catchall_50
    move-exception v1

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 160
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    throw v1
.end method

.method public whitelist test-api getURIs()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 197
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    .line 201
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 199
    return-object v1

    .line 201
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 202
    throw v0
.end method

.method public whitelist test-api remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "ck"    # Ljava/net/HttpCookie;

    .line 212
    if-eqz p2, :cond_3e

    .line 217
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 219
    :try_start_7
    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    move-object p1, v0

    .line 220
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_37

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 221
    nop

    .line 231
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    return v1

    .line 223
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 224
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v0, :cond_30

    .line 225
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_37

    .line 231
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 225
    return v1

    .line 227
    :cond_30
    nop

    .line 231
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 227
    return v1

    .line 231
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :catchall_37
    move-exception v0

    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 232
    throw v0

    .line 213
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookie is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api removeAll()Z
    .registers 4

    .line 241
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 243
    const/4 v0, 0x0

    .line 246
    .local v0, "result":Z
    :try_start_6
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move v0, v1

    .line 247
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1e

    .line 249
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 250
    nop

    .line 252
    return v0

    .line 249
    :catchall_1e
    move-exception v1

    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 250
    throw v1
.end method

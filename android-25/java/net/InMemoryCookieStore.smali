.class public Ljava/net/InMemoryCookieStore;
.super Ljava/lang/Object;
.source "InMemoryCookieStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# instance fields
.field private final applyMCompatibility:Z

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private uriIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    #@7
    move-result v0

    #@8
    invoke-direct {p0, v0}, Ljava/net/InMemoryCookieStore;-><init>(I)V

    #@b
    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "targetSdkVersion"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 48
    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@7
    .line 51
    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@9
    .line 63
    new-instance v1, Ljava/util/HashMap;

    #@b
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@e
    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@10
    .line 64
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@12
    invoke-direct {v1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    #@15
    iput-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@17
    .line 65
    const/16 v1, 0x17

    #@19
    if-gt p1, v1, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    :cond_0
    iput-boolean v0, p0, Ljava/net/InMemoryCookieStore;->applyMCompatibility:Z

    #@1e
    .line 62
    return-void
.end method

.method private addIndex(Ljava/util/Map;Ljava/lang/Object;Ljava/net/HttpCookie;)V
    .locals 1
    .param p3, "cookie"    # Ljava/net/HttpCookie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;TT;",
            "Ljava/net/HttpCookie;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 340
    .local p1, "indexStore":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .local p2, "index":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/List;

    #@6
    .line 341
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v0, :cond_0

    #@8
    .line 343
    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@b
    .line 345
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    .line 335
    :goto_0
    return-void

    #@f
    .line 347
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@11
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 348
    .restart local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 349
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    goto :goto_0
.end method

.method private getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 359
    const/4 v0, 0x0

    #@2
    .line 360
    .local v0, "effectiveURI":Ljava/net/URI;
    if-nez p1, :cond_0

    #@4
    .line 361
    return-object v1

    #@5
    .line 364
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    #@7
    .end local v0    # "effectiveURI":Ljava/net/URI;
    const-string/jumbo v1, "http"

    #@a
    .line 365
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 366
    const/4 v3, 0x0

    #@f
    .line 367
    const/4 v4, 0x0

    #@10
    .line 368
    const/4 v5, 0x0

    #@11
    .line 364
    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 374
    .local v0, "effectiveURI":Ljava/net/URI;
    :goto_0
    return-object v0

    #@15
    .line 370
    .end local v0    # "effectiveURI":Ljava/net/URI;
    :catch_0
    move-exception v6

    #@16
    .line 371
    .local v6, "ignored":Ljava/net/URISyntaxException;
    move-object v0, p1

    #@17
    .restart local v0    # "effectiveURI":Ljava/net/URI;
    goto :goto_0
.end method

.method private getInternal1(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 273
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .local p2, "cookieIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    #@2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 274
    .local v6, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/HttpCookie;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v7

    #@9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v4

    #@d
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v7

    #@11
    if-eqz v7, :cond_6

    #@13
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljava/util/Map$Entry;

    #@19
    .line 275
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Ljava/util/List;

    #@1f
    .line 276
    .local v5, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v1

    #@23
    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_4

    #@29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/net/HttpCookie;

    #@2f
    .line 277
    .local v0, "c":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 278
    .local v2, "domain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    #@36
    move-result v7

    #@37
    if-nez v7, :cond_1

    #@39
    invoke-direct {p0, v2, p3}, Ljava/net/InMemoryCookieStore;->netscapeDomainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    #@3c
    move-result v7

    #@3d
    if-nez v7, :cond_2

    #@3f
    .line 279
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    #@42
    move-result v7

    #@43
    const/4 v8, 0x1

    #@44
    if-ne v7, v8, :cond_0

    #@46
    invoke-static {v2, p3}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    #@49
    move-result v7

    #@4a
    .line 278
    if-eqz v7, :cond_0

    #@4c
    .line 282
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    #@4f
    move-result v7

    #@50
    if-nez v7, :cond_3

    #@52
    .line 284
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@55
    move-result v7

    #@56
    if-nez v7, :cond_0

    #@58
    .line 285
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_1

    #@5c
    .line 288
    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    goto :goto_1

    #@60
    .line 293
    .end local v0    # "c":Ljava/net/HttpCookie;
    .end local v2    # "domain":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@63
    move-result-object v1

    #@64
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@67
    move-result v7

    #@68
    if-eqz v7, :cond_5

    #@6a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6d
    move-result-object v0

    #@6e
    check-cast v0, Ljava/net/HttpCookie;

    #@70
    .line 294
    .restart local v0    # "c":Ljava/net/HttpCookie;
    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@73
    goto :goto_2

    #@74
    .line 297
    .end local v0    # "c":Ljava/net/HttpCookie;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@77
    goto :goto_0

    #@78
    .line 270
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .end local v5    # "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_6
    return-void
.end method

.method private getInternal2(Ljava/util/List;Ljava/util/Map;Ljava/lang/Comparable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 310
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .local p2, "cookieIndex":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .local p3, "comparator":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@3
    move-result-object v5

    #@4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "index$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_4

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/Comparable;

    #@14
    .line 311
    .local v1, "index":Ljava/lang/Comparable;, "TT;"
    if-eq v1, p3, :cond_1

    #@16
    if-eqz v1, :cond_0

    #@18
    invoke-interface {p3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 312
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/util/List;

    #@24
    .line 314
    .local v3, "indexedCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v3, :cond_0

    #@26
    .line 315
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v4

    #@2a
    .line 316
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_0

    #@30
    .line 317
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/net/HttpCookie;

    #@36
    .line 319
    .local v0, "ck":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    #@39
    move-result v5

    #@3a
    if-nez v5, :cond_3

    #@3c
    .line 321
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@3f
    move-result v5

    #@40
    if-nez v5, :cond_2

    #@42
    .line 322
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_0

    #@46
    .line 324
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    #@49
    goto :goto_0

    #@4a
    .line 307
    .end local v0    # "ck":Ljava/net/HttpCookie;
    .end local v1    # "index":Ljava/lang/Comparable;, "TT;"
    .end local v3    # "indexedCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_4
    return-void
.end method

.method private netscapeDomainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    const/16 v8, 0x2e

    #@4
    const/4 v6, 0x0

    #@5
    .line 223
    if-eqz p1, :cond_0

    #@7
    if-nez p2, :cond_1

    #@9
    .line 224
    :cond_0
    return v6

    #@a
    .line 228
    :cond_1
    const-string/jumbo v7, ".local"

    #@d
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v4

    #@11
    .line 229
    .local v4, "isLocalDomain":Z
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    #@14
    move-result v2

    #@15
    .line 230
    .local v2, "embeddedDotInDomain":I
    if-nez v2, :cond_2

    #@17
    .line 231
    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->indexOf(II)I

    #@1a
    move-result v2

    #@1b
    .line 233
    :cond_2
    if-nez v4, :cond_4

    #@1d
    if-eq v2, v9, :cond_3

    #@1f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@22
    move-result v7

    #@23
    add-int/lit8 v7, v7, -0x1

    #@25
    if-ne v2, v7, :cond_4

    #@27
    .line 234
    :cond_3
    return v6

    #@28
    .line 238
    :cond_4
    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(I)I

    #@2b
    move-result v3

    #@2c
    .line 239
    .local v3, "firstDotInHost":I
    if-ne v3, v9, :cond_5

    #@2e
    if-eqz v4, :cond_5

    #@30
    .line 240
    return v10

    #@31
    .line 243
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@34
    move-result v1

    #@35
    .line 244
    .local v1, "domainLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@38
    move-result v7

    #@39
    sub-int v5, v7, v1

    #@3b
    .line 245
    .local v5, "lengthDiff":I
    if-nez v5, :cond_6

    #@3d
    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@40
    move-result v6

    #@41
    return v6

    #@42
    .line 248
    :cond_6
    if-lez v5, :cond_9

    #@44
    .line 250
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    .line 255
    .local v0, "D":Ljava/lang/String;
    iget-boolean v7, p0, Ljava/net/InMemoryCookieStore;->applyMCompatibility:Z

    #@4a
    if-eqz v7, :cond_7

    #@4c
    const-string/jumbo v7, "."

    #@4f
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@52
    move-result v7

    #@53
    if-eqz v7, :cond_8

    #@55
    .line 259
    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@58
    move-result v6

    #@59
    return v6

    #@5a
    .line 256
    :cond_8
    return v6

    #@5b
    .line 260
    .end local v0    # "D":Ljava/lang/String;
    :cond_9
    if-ne v5, v9, :cond_b

    #@5d
    .line 262
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@60
    move-result v7

    #@61
    if-ne v7, v8, :cond_a

    #@63
    .line 263
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6a
    move-result v6

    #@6b
    .line 262
    :cond_a
    return v6

    #@6c
    .line 266
    :cond_b
    return v6
.end method


# virtual methods
.method public add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    #@0
    .prologue
    .line 73
    if-nez p2, :cond_0

    #@2
    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "cookie is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 77
    :cond_0
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@10
    .line 79
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getMaxAge()J

    #@13
    move-result-wide v0

    #@14
    const-wide/16 v2, 0x0

    #@16
    cmp-long v0, v0, v2

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 80
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@1c
    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v0, v1, p2}, Ljava/net/InMemoryCookieStore;->addIndex(Ljava/util/Map;Ljava/lang/Object;Ljava/net/HttpCookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 83
    :cond_1
    iget-object v0, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@28
    .line 71
    return-void

    #@29
    .line 82
    :catchall_0
    move-exception v0

    #@2a
    .line 83
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 82
    throw v0
.end method

.method public get(Ljava/net/URI;)Ljava/util/List;
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 97
    if-nez p1, :cond_0

    #@2
    .line 98
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "uri is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 102
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@12
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@15
    .line 105
    :try_start_0
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@17
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {p0, v0, v1, v2}, Ljava/net/InMemoryCookieStore;->getInternal1(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    #@1e
    .line 107
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@20
    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    #@23
    move-result-object v2

    #@24
    invoke-direct {p0, v0, v1, v2}, Ljava/net/InMemoryCookieStore;->getInternal2(Ljava/util/List;Ljava/util/Map;Ljava/lang/Comparable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 109
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@29
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 112
    return-object v0

    #@2d
    .line 108
    :catchall_0
    move-exception v1

    #@2e
    .line 109
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@30
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@33
    .line 108
    throw v1
.end method

.method public getCookies()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 119
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 121
    .local v4, "rt":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v5, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@a
    .line 123
    :try_start_0
    iget-object v5, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@c
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@f
    move-result-object v5

    #@10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .local v3, "list$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_3

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/util/List;

    #@20
    .line 124
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .line 125
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_0

    #@2a
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/net/HttpCookie;

    #@30
    .line 127
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_2

    #@36
    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 134
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v3    # "list$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@3b
    .line 135
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@3e
    move-result-object v4

    #@3f
    .line 136
    iget-object v6, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@41
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@44
    .line 134
    throw v5

    #@45
    .line 129
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v3    # "list$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@48
    move-result v5

    #@49
    if-nez v5, :cond_1

    #@4b
    .line 130
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 135
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@52
    move-result-object v4

    #@53
    .line 136
    iget-object v5, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@55
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@58
    .line 139
    return-object v4
.end method

.method public getURIs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 149
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@a
    .line 151
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@c
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@e
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@11
    move-result-object v2

    #@12
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@15
    .line 152
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    const/4 v2, 0x0

    #@16
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@19
    .line 153
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 155
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@1f
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@22
    move-result-object v3

    #@23
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@26
    .line 156
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@28
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2b
    .line 153
    return-object v2

    #@2c
    .line 154
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :catchall_0
    move-exception v2

    #@2d
    .line 155
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@2f
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@32
    move-result-object v3

    #@33
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@36
    .line 156
    iget-object v3, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@38
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3b
    .line 154
    throw v2
.end method

.method public remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "ck"    # Ljava/net/HttpCookie;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 166
    if-nez p2, :cond_0

    #@3
    .line 167
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "cookie is null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 170
    :cond_0
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@11
    .line 172
    :try_start_0
    invoke-direct {p0, p1}, Ljava/net/InMemoryCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    #@14
    move-result-object p1

    #@15
    .line 173
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@17
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 184
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1f
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 174
    return v2

    #@23
    .line 176
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@25
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/util/List;

    #@2b
    .line 177
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v0, :cond_2

    #@2d
    .line 178
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result v1

    #@31
    .line 184
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@33
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@36
    .line 178
    return v1

    #@37
    .line 184
    :cond_2
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@3c
    .line 180
    return v2

    #@3d
    .line 183
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :catchall_0
    move-exception v1

    #@3e
    .line 184
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@40
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@43
    .line 183
    throw v1
.end method

.method public removeAll()Z
    .locals 3

    #@0
    .prologue
    .line 193
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 194
    const/4 v0, 0x0

    #@6
    .line 197
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    .line 198
    :goto_0
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->uriIndex:Ljava/util/Map;

    #@11
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 200
    iget-object v1, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@16
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 203
    return v0

    #@1a
    .line 197
    :cond_0
    const/4 v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 199
    :catchall_0
    move-exception v1

    #@1d
    .line 200
    iget-object v2, p0, Ljava/net/InMemoryCookieStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@22
    .line 199
    throw v1
.end method

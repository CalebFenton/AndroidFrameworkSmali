.class final Ljava/net/CookieStoreImpl;
.super Ljava/lang/Object;
.source "CookieStoreImpl.java"

# interfaces
.implements Ljava/net/CookieStore;


# instance fields
.field private final map:Ljava/util/Map;
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
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Ljava/net/CookieStoreImpl;->map:Ljava/util/Map;

    #@a
    .line 29
    return-void
.end method

.method private cookiesUri(Ljava/net/URI;)Ljava/net/URI;
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 51
    if-nez p1, :cond_0

    #@3
    .line 52
    return-object v1

    #@4
    .line 55
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    #@6
    const-string/jumbo v2, "http"

    #@9
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    const/4 v4, 0x0

    #@e
    const/4 v5, 0x0

    #@f
    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    return-object v1

    #@13
    .line 56
    :catch_0
    move-exception v0

    #@14
    .line 57
    .local v0, "e":Ljava/net/URISyntaxException;
    return-object p1
.end method


# virtual methods
.method public declared-synchronized add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 35
    if-nez p2, :cond_0

    #@3
    .line 36
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "cookie == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v1

    #@d
    monitor-exit p0

    #@e
    throw v1

    #@f
    .line 39
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Ljava/net/CookieStoreImpl;->cookiesUri(Ljava/net/URI;)Ljava/net/URI;

    #@12
    move-result-object p1

    #@13
    .line 40
    iget-object v1, p0, Ljava/net/CookieStoreImpl;->map:Ljava/util/Map;

    #@15
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/List;

    #@1b
    .line 41
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-nez v0, :cond_1

    #@1d
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    .line 43
    .restart local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v1, p0, Ljava/net/CookieStoreImpl;->map:Ljava/util/Map;

    #@24
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 47
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 34
    return-void

    #@2c
    .line 45
    :cond_1
    :try_start_2
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    goto :goto_0
.end method

.method public declared-synchronized get(Ljava/net/URI;)Ljava/util/List;
    .locals 9
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
    monitor-enter p0

    #@1
    .line 62
    if-nez p1, :cond_0

    #@3
    .line 63
    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v8, "uri == null"

    #@8
    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v7

    #@d
    monitor-exit p0

    #@e
    throw v7

    #@f
    .line 66
    :cond_0
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    #@11
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 69
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v7, p0, Ljava/net/CookieStoreImpl;->map:Ljava/util/Map;

    #@16
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/util/List;

    #@1c
    .line 70
    .local v1, "cookiesForUri":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v1, :cond_2

    #@1e
    .line 71
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v5

    #@22
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_2

    #@28
    .line 72
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/net/HttpCookie;

    #@2e
    .line 73
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_1

    #@34
    .line 74
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    #@37
    goto :goto_0

    #@38
    .line 76
    :cond_1
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 82
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_2
    iget-object v7, p0, Ljava/net/CookieStoreImpl;->map:Ljava/util/Map;

    #@3e
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@41
    move-result-object v7

    #@42
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@45
    move-result-object v3

    #@46
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@49
    move-result v7

    #@4a
    if-eqz v7, :cond_6

    #@4c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v2

    #@50
    check-cast v2, Ljava/util/Map$Entry;

    #@52
    .line 83
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {p1, v7}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v7

    #@5a
    if-nez v7, :cond_3

    #@5c
    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5f
    move-result-object v4

    #@60
    check-cast v4, Ljava/util/List;

    #@62
    .line 88
    .local v4, "entryCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v5

    #@66
    .restart local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v7

    #@6a
    if-eqz v7, :cond_3

    #@6c
    .line 89
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v0

    #@70
    check-cast v0, Ljava/net/HttpCookie;

    #@72
    .line 90
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    #@79
    move-result-object v8

    #@7a
    invoke-static {v7, v8}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    #@7d
    move-result v7

    #@7e
    if-eqz v7, :cond_4

    #@80
    .line 93
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    #@83
    move-result v7

    #@84
    if-eqz v7, :cond_5

    #@86
    .line 94
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    #@89
    goto :goto_1

    #@8a
    .line 95
    :cond_5
    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@8d
    move-result v7

    #@8e
    if-nez v7, :cond_4

    #@90
    .line 96
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@93
    goto :goto_1

    #@94
    .line 101
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URI;Ljava/util/List<Ljava/net/HttpCookie;>;>;"
    .end local v4    # "entryCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_6
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@97
    move-result-object v7

    #@98
    monitor-exit p0

    #@99
    return-object v7
.end method

.method public declared-synchronized getCookies()Ljava/util/List;
    .locals 6
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
    monitor-enter p0

    #@1
    .line 105
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    #@3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 106
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    iget-object v5, p0, Ljava/net/CookieStoreImpl;->map:Ljava/util/Map;

    #@8
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@b
    move-result-object v5

    #@c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v3

    #@10
    .local v3, "list$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_3

    #@16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/util/List;

    #@1c
    .line 107
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_0

    #@26
    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Ljava/net/HttpCookie;

    #@2c
    .line 109
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_2

    #@32
    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    goto :goto_0

    #@36
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v3    # "list$iterator":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :catchall_0
    move-exception v5

    #@37
    monitor-exit p0

    #@38
    throw v5

    #@39
    .line 111
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v3    # "list$iterator":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_2
    :try_start_1
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_1

    #@3f
    .line 112
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@42
    goto :goto_0

    #@43
    .line 116
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/HttpCookie;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    move-result-object v5

    #@47
    monitor-exit p0

    #@48
    return-object v5
.end method

.method public declared-synchronized getURIs()Ljava/util/List;
    .locals 2
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
    monitor-enter p0

    #@1
    .line 120
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@3
    iget-object v1, p0, Ljava/net/CookieStoreImpl;->map:Ljava/util/Map;

    #@5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@c
    .line 121
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    const/4 v1, 0x0

    #@d
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@10
    .line 122
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v1

    #@14
    monitor-exit p0

    #@15
    return-object v1

    #@16
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1
.end method

.method public declared-synchronized remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 126
    if-nez p2, :cond_0

    #@3
    .line 127
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "cookie == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v1

    #@d
    monitor-exit p0

    #@e
    throw v1

    #@f
    .line 130
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/net/CookieStoreImpl;->map:Ljava/util/Map;

    #@11
    invoke-direct {p0, p1}, Ljava/net/CookieStoreImpl;->cookiesUri(Ljava/net/URI;)Ljava/net/URI;

    #@14
    move-result-object v2

    #@15
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/List;

    #@1b
    .line 131
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz v0, :cond_1

    #@1d
    .line 132
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v1

    #@21
    monitor-exit p0

    #@22
    return v1

    #@23
    .line 134
    :cond_1
    const/4 v1, 0x0

    #@24
    monitor-exit p0

    #@25
    return v1
.end method

.method public declared-synchronized removeAll()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 139
    :try_start_0
    iget-object v1, p0, Ljava/net/CookieStoreImpl;->map:Ljava/util/Map;

    #@3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    .line 140
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Ljava/net/CookieStoreImpl;->map:Ljava/util/Map;

    #@c
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 141
    return v0

    #@11
    .line 139
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x1

    #@12
    .restart local v0    # "result":Z
    goto :goto_0

    #@13
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

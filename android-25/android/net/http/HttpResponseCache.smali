.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/android/okhttp/OkCacheContainer;


# instance fields
.field private final delegate:Lcom/android/okhttp/AndroidShimResponseCache;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/AndroidShimResponseCache;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/okhttp/AndroidShimResponseCache;

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    #@3
    .line 157
    iput-object p1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@5
    .line 156
    return-void
.end method

.method public static getInstalled()Landroid/net/http/HttpResponseCache;
    .locals 2

    #@0
    .prologue
    .line 165
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    #@3
    move-result-object v0

    #@4
    .line 166
    .local v0, "installed":Ljava/net/ResponseCache;
    instance-of v1, v0, Landroid/net/http/HttpResponseCache;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 167
    check-cast v0, Landroid/net/http/HttpResponseCache;

    #@a
    .end local v0    # "installed":Ljava/net/ResponseCache;
    return-object v0

    #@b
    .line 169
    .restart local v0    # "installed":Ljava/net/ResponseCache;
    :cond_0
    const/4 v1, 0x0

    #@c
    return-object v1
.end method

.method public static declared-synchronized install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .locals 7
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-class v6, Landroid/net/http/HttpResponseCache;

    #@2
    monitor-enter v6

    #@3
    .line 184
    :try_start_0
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    #@6
    move-result-object v1

    #@7
    .line 185
    .local v1, "installed":Ljava/net/ResponseCache;
    instance-of v5, v1, Landroid/net/http/HttpResponseCache;

    #@9
    if-eqz v5, :cond_1

    #@b
    .line 186
    move-object v0, v1

    #@c
    check-cast v0, Landroid/net/http/HttpResponseCache;

    #@e
    move-object v2, v0

    #@f
    .line 188
    .local v2, "installedResponseCache":Landroid/net/http/HttpResponseCache;
    iget-object v4, v2, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@11
    .line 189
    .local v4, "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    invoke-virtual {v4, p0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->isEquivalent(Ljava/io/File;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    monitor-exit v6

    #@18
    .line 190
    return-object v2

    #@19
    .line 193
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/okhttp/AndroidShimResponseCache;->close()V

    #@1c
    .line 198
    .end local v2    # "installedResponseCache":Landroid/net/http/HttpResponseCache;
    .end local v4    # "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->create(Ljava/io/File;J)Lcom/android/okhttp/AndroidShimResponseCache;

    #@1f
    move-result-object v4

    #@20
    .line 199
    .restart local v4    # "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    new-instance v3, Landroid/net/http/HttpResponseCache;

    #@22
    invoke-direct {v3, v4}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/AndroidShimResponseCache;)V

    #@25
    .line 200
    .local v3, "newResponseCache":Landroid/net/http/HttpResponseCache;
    invoke-static {v3}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v6

    #@29
    .line 201
    return-object v3

    #@2a
    .end local v1    # "installed":Ljava/net/ResponseCache;
    .end local v3    # "newResponseCache":Landroid/net/http/HttpResponseCache;
    .end local v4    # "trueResponseCache":Lcom/android/okhttp/AndroidShimResponseCache;
    :catchall_0
    move-exception v5

    #@2b
    monitor-exit v6

    #@2c
    throw v5
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    #@3
    move-result-object v0

    #@4
    if-ne v0, p0, :cond_0

    #@6
    .line 279
    const/4 v0, 0x0

    #@7
    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    #@a
    .line 281
    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@c
    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->close()V

    #@f
    .line 277
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    #@3
    move-result-object v0

    #@4
    if-ne v0, p0, :cond_0

    #@6
    .line 289
    const/4 v0, 0x0

    #@7
    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    #@a
    .line 291
    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@c
    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->delete()V

    #@f
    .line 287
    return-void
.end method

.method public flush()V
    .locals 2

    #@0
    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@2
    invoke-virtual {v1}, Lcom/android/okhttp/AndroidShimResponseCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 240
    :goto_0
    return-void

    #@6
    .line 243
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/AndroidShimResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCache()Lcom/android/okhttp/Cache;
    .locals 1

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getCache()Lcom/android/okhttp/Cache;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHitCount()I
    .locals 1

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getHitCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNetworkCount()I
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getNetworkCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRequestCount()I
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getRequestCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public maxSize()J
    .locals 2

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->maxSize()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public size()J
    .locals 4

    #@0
    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    #@2
    invoke-virtual {v1}, Lcom/android/okhttp/AndroidShimResponseCache;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-wide v2

    #@6
    return-wide v2

    #@7
    .line 221
    :catch_0
    move-exception v0

    #@8
    .line 223
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v2, -0x1

    #@a
    return-wide v2
.end method

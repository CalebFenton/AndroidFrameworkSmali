.class public final Lcom/android/okhttp/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Cache$CacheRequestImpl;,
        Lcom/android/okhttp/Cache$Entry;,
        Lcom/android/okhttp/Cache$CacheResponseBody;,
        Lcom/android/okhttp/Cache$1;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/android/okhttp/internal/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lcom/android/okhttp/internal/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/internal/DiskLruCache;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/Cache;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/Cache;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/Cache;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/okhttp/Cache;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .locals 1
    .param p1, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/okio/BufferedSource;)I
    .locals 1
    .param p0, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/okhttp/Cache;->readInt(Lcom/android/okhttp/okio/BufferedSource;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->remove(Lcom/android/okhttp/Request;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/okhttp/Cache;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/okhttp/Cache;->trackConditionalCacheHit()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .locals 0
    .param p1, "cacheStrategy"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .locals 0
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/Cache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    #@0
    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 137
    new-instance v0, Lcom/android/okhttp/Cache$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/okhttp/Cache$1;-><init>(Lcom/android/okhttp/Cache;)V

    #@8
    iput-object v0, p0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    #@a
    .line 168
    sget-object v0, Lcom/android/okhttp/internal/io/FileSystem;->SYSTEM:Lcom/android/okhttp/internal/io/FileSystem;

    #@c
    const v2, 0x31191

    #@f
    const/4 v3, 0x2

    #@10
    move-object v1, p1

    #@11
    move-wide v4, p2

    #@12
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/internal/DiskLruCache;->create(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/android/okhttp/internal/DiskLruCache;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@18
    .line 167
    return-void
.end method

.method private abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .locals 1
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@0
    .prologue
    .line 265
    if-eqz p1, :cond_0

    #@2
    .line 266
    :try_start_0
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 262
    :cond_0
    :goto_0
    return-void

    #@6
    .line 268
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .locals 8
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 207
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@4
    move-result-object v5

    #@5
    invoke-virtual {v5}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 209
    .local v4, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-static {v5}, Lcom/android/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 211
    :try_start_0
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@1a
    move-result-object v5

    #@1b
    invoke-direct {p0, v5}, Lcom/android/okhttp/Cache;->remove(Lcom/android/okhttp/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1e
    .line 215
    :goto_0
    return-object v7

    #@1f
    .line 217
    :cond_0
    const-string/jumbo v5, "GET"

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-nez v5, :cond_1

    #@28
    .line 221
    return-object v7

    #@29
    .line 224
    :cond_1
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Response;)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_2

    #@2f
    .line 225
    return-object v7

    #@30
    .line 228
    :cond_2
    new-instance v2, Lcom/android/okhttp/Cache$Entry;

    #@32
    invoke-direct {v2, p1}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/Response;)V

    #@35
    .line 229
    .local v2, "entry":Lcom/android/okhttp/Cache$Entry;
    const/4 v1, 0x0

    #@36
    .line 231
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_start_1
    iget-object v5, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@38
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@3b
    move-result-object v6

    #@3c
    invoke-static {v6}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@43
    move-result-object v1

    #@44
    .line 232
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    if-nez v1, :cond_3

    #@46
    .line 233
    return-object v7

    #@47
    .line 235
    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Cache$Entry;->writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    #@4a
    .line 236
    new-instance v5, Lcom/android/okhttp/Cache$CacheRequestImpl;

    #@4c
    invoke-direct {v5, p0, v1}, Lcom/android/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@4f
    return-object v5

    #@50
    .line 237
    .end local v1    # "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :catch_0
    move-exception v0

    #@51
    .line 238
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/android/okhttp/Cache;->abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    #@54
    .line 239
    return-object v7

    #@55
    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "entry":Lcom/android/okhttp/Cache$Entry;
    :catch_1
    move-exception v3

    #@56
    .local v3, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static readInt(Lcom/android/okhttp/okio/BufferedSource;)I
    .locals 7
    .param p0, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 660
    :try_start_0
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readDecimalLong()J

    #@3
    move-result-wide v2

    #@4
    .line 661
    .local v2, "result":J
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 662
    .local v1, "line":Ljava/lang/String;
    const-wide/16 v4, 0x0

    #@a
    cmp-long v4, v2, v4

    #@c
    if-ltz v4, :cond_0

    #@e
    const-wide/32 v4, 0x7fffffff

    #@11
    cmp-long v4, v2, v4

    #@13
    if-lez v4, :cond_1

    #@15
    .line 663
    :cond_0
    new-instance v4, Ljava/io/IOException;

    #@17
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "expected an int but was \""

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    const-string/jumbo v6, "\""

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@39
    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 666
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    #@3b
    .line 667
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    #@3d
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v4

    #@45
    .line 662
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "result":J
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_0

    #@4b
    .line 665
    long-to-int v4, v2

    #@4c
    return v4
.end method

.method private remove(Lcom/android/okhttp/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-static {p1}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    #@9
    .line 243
    return-void
.end method

.method private declared-synchronized trackConditionalCacheHit()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 387
    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 386
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method private declared-synchronized trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 374
    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Cache;->requestCount:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/okhttp/Cache;->requestCount:I

    #@7
    .line 376
    iget-object v0, p1, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 378
    iget v0, p0, Lcom/android/okhttp/Cache;->networkCount:I

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    iput v0, p0, Lcom/android/okhttp/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    :goto_0
    monitor-exit p0

    #@12
    .line 373
    return-void

    #@13
    .line 380
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 382
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    iput v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method private update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .locals 5
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 248
    new-instance v2, Lcom/android/okhttp/Cache$Entry;

    #@2
    invoke-direct {v2, p2}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/Response;)V

    #@5
    .line 249
    .local v2, "entry":Lcom/android/okhttp/Cache$Entry;
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@8
    move-result-object v4

    #@9
    check-cast v4, Lcom/android/okhttp/Cache$CacheResponseBody;

    #@b
    invoke-static {v4}, Lcom/android/okhttp/Cache$CacheResponseBody;->-get0(Lcom/android/okhttp/Cache$CacheResponseBody;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@e
    move-result-object v3

    #@f
    .line 250
    .local v3, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    const/4 v1, 0x0

    #@10
    .line 252
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->edit()Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@13
    move-result-object v1

    #@14
    .line 253
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    if-eqz v1, :cond_0

    #@16
    .line 254
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Cache$Entry;->writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    #@19
    .line 255
    invoke-virtual {v1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 247
    .end local v1    # "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 257
    :catch_0
    move-exception v0

    #@1e
    .line 258
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/android/okhttp/Cache;->abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    #@21
    goto :goto_0
.end method

.method private static urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
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
    .line 362
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->close()V

    #@5
    .line 361
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
    .line 278
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->delete()V

    #@5
    .line 277
    return-void
.end method

.method public evictAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->evictAll()V

    #@5
    .line 285
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->flush()V

    #@5
    .line 357
    return-void
.end method

.method get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .locals 7
    .param p1, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 176
    invoke-static {p1}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 180
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@7
    invoke-virtual {v5, v2}, Lcom/android/okhttp/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v4

    #@b
    .line 181
    .local v4, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v4, :cond_0

    #@d
    .line 182
    return-object v6

    #@e
    .line 184
    .end local v4    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    #@f
    .line 186
    .local v0, "e":Ljava/io/IOException;
    return-object v6

    #@10
    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/okhttp/Cache$Entry;

    #@12
    const/4 v5, 0x0

    #@13
    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    #@16
    move-result-object v5

    #@17
    invoke-direct {v1, v5}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/okio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@1a
    .line 196
    .local v1, "entry":Lcom/android/okhttp/Cache$Entry;
    invoke-virtual {v1, p1, v4}, Lcom/android/okhttp/Cache$Entry;->response(Lcom/android/okhttp/Request;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Lcom/android/okhttp/Response;

    #@1d
    move-result-object v3

    #@1e
    .line 198
    .local v3, "response":Lcom/android/okhttp/Response;
    invoke-virtual {v1, p1, v3}, Lcom/android/okhttp/Cache$Entry;->matches(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_1

    #@24
    .line 199
    invoke-virtual {v3}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    #@27
    move-result-object v5

    #@28
    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@2b
    .line 200
    return-object v6

    #@2c
    .line 191
    .end local v1    # "entry":Lcom/android/okhttp/Cache$Entry;
    .end local v3    # "response":Lcom/android/okhttp/Response;
    :catch_1
    move-exception v0

    #@2d
    .line 192
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@30
    .line 193
    return-object v6

    #@31
    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "entry":Lcom/android/okhttp/Cache$Entry;
    .restart local v3    # "response":Lcom/android/okhttp/Response;
    :cond_1
    return-object v3
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 395
    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getMaxSize()J
    .locals 2

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->getMaxSize()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public declared-synchronized getNetworkCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 391
    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 399
    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Cache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->size()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 342
    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 346
    :try_start_0
    iget v0, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->isClosed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    new-instance v0, Lcom/android/okhttp/Cache$2;

    #@2
    invoke-direct {v0, p0}, Lcom/android/okhttp/Cache$2;-><init>(Lcom/android/okhttp/Cache;)V

    #@5
    return-object v0
.end method

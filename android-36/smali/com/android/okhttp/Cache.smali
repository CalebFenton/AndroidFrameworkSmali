.class public final Lcom/android/okhttp/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Cache$Entry;,
        Lcom/android/okhttp/Cache$CacheRequestImpl;,
        Lcom/android/okhttp/Cache$CacheResponseBody;
    }
.end annotation


# static fields
.field private static final greylist-max-o ENTRY_BODY:I = 0x1

.field private static final greylist-max-o ENTRY_COUNT:I = 0x2

.field private static final greylist-max-o ENTRY_METADATA:I = 0x0

.field private static final greylist-max-o VERSION:I = 0x31191


# instance fields
.field private final greylist-max-o cache:Lcom/android/okhttp/internal/DiskLruCache;

.field private greylist-max-o hitCount:I

.field public final greylist-max-o internalCache:Lcom/android/okhttp/internal/InternalCache;

.field private greylist-max-o networkCount:I

.field private greylist-max-o requestCount:I

.field private greylist-max-o writeAbortCount:I

.field private greylist-max-o writeSuccessCount:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/io/File;J)V
    .registers 5

    .line 171
    sget-object v0, Lcom/android/okhttp/internal/io/FileSystem;->SYSTEM:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/Cache;-><init>(Ljava/io/File;JLcom/android/okhttp/internal/io/FileSystem;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/File;JLcom/android/okhttp/internal/io/FileSystem;)V
    .registers 12

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/android/okhttp/Cache$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/Cache$1;-><init>(Lcom/android/okhttp/Cache;)V

    iput-object v0, p0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v2, p1

    move-wide v5, p2

    move-object v1, p4

    .line 175
    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/internal/DiskLruCache;->create(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/android/okhttp/internal/DiskLruCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    return-void
.end method

.method private greylist-max-o abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 273
    :try_start_2
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Request;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->remove(Lcom/android/okhttp/Request;)V

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/android/okhttp/Cache;->readInt(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/Cache;Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .registers 3

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/Cache;->update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/Cache;)V
    .registers 1

    .line 133
    invoke-direct {p0}, Lcom/android/okhttp/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 2

    .line 133
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/internal/DiskLruCache;
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    return-object p0
.end method

.method static synthetic blacklist access$808(Lcom/android/okhttp/Cache;)I
    .registers 3

    .line 133
    iget v0, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic blacklist access$908(Lcom/android/okhttp/Cache;)I
    .registers 3

    .line 133
    iget v0, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I

    return v0
.end method

.method private greylist-max-o put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 218
    :try_start_17
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->remove(Lcom/android/okhttp/Request;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_1e

    :catch_1e
    return-object v2

    .line 224
    :cond_1f
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    return-object v2

    .line 231
    :cond_28
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->hasVaryAll(Lcom/android/okhttp/Response;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return-object v2

    .line 235
    :cond_2f
    new-instance v0, Lcom/android/okhttp/Cache$Entry;

    invoke-direct {v0, p1}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/Response;)V

    .line 238
    :try_start_34
    iget-object v1, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object p1

    invoke-static {p1}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object p1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_42} :catch_4e

    if-nez p1, :cond_45

    return-object v2

    .line 242
    :cond_45
    :try_start_45
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Cache$Entry;->writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 243
    new-instance v0, Lcom/android/okhttp/Cache$CacheRequestImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4d} :catch_4f

    return-object v0

    :catch_4e
    move-object p1, v2

    .line 245
    :catch_4f
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    return-object v2
.end method

.method private static greylist-max-o readInt(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    :try_start_0
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readDecimalLong()J

    move-result-wide v0

    .line 685
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1d

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1d

    .line 686
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    long-to-int p0, v0

    return p0

    .line 687
    :cond_1d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception p0

    .line 691
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o remove(Lcom/android/okhttp/Request;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {p1}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method private declared-synchronized greylist-max-o trackConditionalCacheHit()V
    .registers 2

    monitor-enter p0

    .line 411
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 412
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method private declared-synchronized greylist-max-o trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 3

    monitor-enter p0

    .line 398
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/okhttp/Cache;->requestCount:I

    .line 400
    iget-object v0, p1, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    if-eqz v0, :cond_14

    .line 402
    iget p1, p0, Lcom/android/okhttp/Cache;->networkCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/okhttp/Cache;->networkCount:I

    goto :goto_1e

    :catchall_12
    move-exception p1

    goto :goto_20

    .line 404
    :cond_14
    iget-object p1, p1, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    if-eqz p1, :cond_1e

    .line 406
    iget p1, p0, Lcom/android/okhttp/Cache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_12

    .line 408
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_12

    throw p1
.end method

.method private greylist-max-o update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .registers 4

    .line 255
    new-instance v0, Lcom/android/okhttp/Cache$Entry;

    invoke-direct {v0, p2}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/Response;)V

    .line 256
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object p1

    check-cast p1, Lcom/android/okhttp/Cache$CacheResponseBody;

    # getter for: Lcom/android/okhttp/Cache$CacheResponseBody;->snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    invoke-static {p1}, Lcom/android/okhttp/Cache$CacheResponseBody;->access$500(Lcom/android/okhttp/Cache$CacheResponseBody;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object p1

    .line 259
    :try_start_f
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->edit()Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_1c

    if-eqz p1, :cond_20

    .line 261
    :try_start_15
    invoke-virtual {v0, p1}, Lcom/android/okhttp/Cache$Entry;->writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 262
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->commit()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_1d

    return-void

    :catch_1c
    const/4 p1, 0x0

    .line 265
    :catch_1d
    invoke-direct {p0, p1}, Lcom/android/okhttp/Cache;->abortQuietly(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    :cond_20
    return-void
.end method

.method private static greylist-max-o urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->close()V

    return-void
.end method

.method public greylist-max-o delete()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->delete()V

    return-void
.end method

.method public greylist-max-o evictAll()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->evictAll()V

    return-void
.end method

.method public greylist-max-o flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->flush()V

    return-void
.end method

.method greylist-max-o get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 5

    .line 183
    invoke-static {p1}, Lcom/android/okhttp/Cache;->urlToKey(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 187
    :try_start_5
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_2e

    if-nez p0, :cond_e

    return-object v1

    .line 197
    :cond_e
    :try_start_e
    new-instance v0, Lcom/android/okhttp/Cache$Entry;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/okhttp/Cache$Entry;-><init>(Lcom/android/okhttp/okio/Source;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_2b

    .line 203
    invoke-virtual {v0, p1, p0}, Lcom/android/okhttp/Cache$Entry;->response(Lcom/android/okhttp/Request;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Lcom/android/okhttp/Response;

    move-result-object p0

    .line 205
    invoke-virtual {v0, p1, p0}, Lcom/android/okhttp/Cache$Entry;->matches(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 206
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->body()Lcom/android/okhttp/ResponseBody;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_2a
    return-object p0

    .line 199
    :catch_2b
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :catch_2e
    return-object v1
.end method

.method public greylist-max-o getDirectory()Ljava/io/File;
    .registers 1

    .line 390
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized greylist-max-o getHitCount()I
    .registers 2

    monitor-enter p0

    .line 419
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public greylist-max-o getMaxSize()J
    .registers 3

    .line 378
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized greylist-max-o getNetworkCount()I
    .registers 2

    monitor-enter p0

    .line 415
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->networkCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized greylist-max-o getRequestCount()I
    .registers 2

    monitor-enter p0

    .line 423
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->requestCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public greylist-max-o getSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized greylist-max-o getWriteAbortCount()I
    .registers 2

    monitor-enter p0

    .line 366
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->writeAbortCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized greylist-max-o getWriteSuccessCount()I
    .registers 2

    monitor-enter p0

    .line 370
    :try_start_1
    iget v0, p0, Lcom/android/okhttp/Cache;->writeSuccessCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public greylist-max-o initialize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    return-void
.end method

.method public greylist-max-o isClosed()Z
    .registers 1

    .line 394
    iget-object p0, p0, Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result p0

    return p0
.end method

.method public greylist-max-o urls()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    new-instance v0, Lcom/android/okhttp/Cache$2;

    invoke-direct {v0, p0}, Lcom/android/okhttp/Cache$2;-><init>(Lcom/android/okhttp/Cache;)V

    return-object v0
.end method

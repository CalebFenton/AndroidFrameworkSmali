.class final Lcom/android/okhttp/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private greylist-max-o body:Lcom/android/okhttp/okio/Sink;

.field private greylist-max-o cacheOut:Lcom/android/okhttp/okio/Sink;

.field private greylist-max-o done:Z

.field private final greylist-max-o editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field final synthetic blacklist this$0:Lcom/android/okhttp/Cache;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p2, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    const/4 v0, 0x1

    .line 434
    invoke-virtual {p2, v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/android/okhttp/okio/Sink;

    .line 435
    new-instance v1, Lcom/android/okhttp/Cache$CacheRequestImpl$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/okhttp/Cache$CacheRequestImpl$1;-><init>(Lcom/android/okhttp/Cache$CacheRequestImpl;Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    iput-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->body:Lcom/android/okhttp/okio/Sink;

    return-void
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/Cache$CacheRequestImpl;)Z
    .registers 1

    .line 426
    iget-boolean p0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    return p0
.end method

.method static synthetic blacklist access$702(Lcom/android/okhttp/Cache$CacheRequestImpl;Z)Z
    .registers 2

    .line 426
    iput-boolean p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    return p1
.end method


# virtual methods
.method public greylist-max-o abort()V
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    monitor-enter v0

    .line 452
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_b

    .line 453
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_1f

    :cond_b
    const/4 v1, 0x1

    .line 455
    iput-boolean v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    .line 456
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    # operator++ for: Lcom/android/okhttp/Cache;->writeAbortCount:I
    invoke-static {v1}, Lcom/android/okhttp/Cache;->access$908(Lcom/android/okhttp/Cache;)I

    .line 457
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_9

    .line 458
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/android/okhttp/okio/Sink;

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 460
    :try_start_19
    iget-object p0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void

    .line 457
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_9

    throw p0
.end method

.method public greylist-max-o body()Lcom/android/okhttp/okio/Sink;
    .registers 1

    .line 466
    iget-object p0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->body:Lcom/android/okhttp/okio/Sink;

    return-object p0
.end method

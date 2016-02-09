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
.field private body:Lcom/android/okhttp/okio/Sink;

.field private cacheOut:Lcom/android/okhttp/okio/Sink;

.field private done:Z

.field private final editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field final synthetic this$0:Lcom/android/okhttp/Cache;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Cache$CacheRequestImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/Cache$CacheRequestImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    #@2
    return p1
.end method

.method public constructor <init>(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/okhttp/Cache;
    .param p2, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 409
    iput-object p2, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@7
    .line 410
    const/4 v0, 0x1

    #@8
    invoke-virtual {p2, v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/android/okhttp/okio/Sink;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/android/okhttp/okio/Sink;

    #@e
    .line 411
    new-instance v0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;

    #@10
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/android/okhttp/okio/Sink;

    #@12
    invoke-direct {v0, p0, v1, p2}, Lcom/android/okhttp/Cache$CacheRequestImpl$1;-><init>(Lcom/android/okhttp/Cache$CacheRequestImpl;Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    #@15
    iput-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->body:Lcom/android/okhttp/okio/Sink;

    #@17
    .line 408
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 4

    #@0
    .prologue
    .line 427
    iget-object v2, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    #@2
    monitor-enter v2

    #@3
    .line 428
    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    .line 429
    return-void

    #@9
    .line 431
    :cond_0
    const/4 v1, 0x1

    #@a
    :try_start_1
    iput-boolean v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    #@c
    .line 432
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    #@e
    invoke-static {v1}, Lcom/android/okhttp/Cache;->-get1(Lcom/android/okhttp/Cache;)I

    #@11
    move-result v3

    #@12
    add-int/lit8 v3, v3, 0x1

    #@14
    invoke-static {v1, v3}, Lcom/android/okhttp/Cache;->-set0(Lcom/android/okhttp/Cache;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 434
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/android/okhttp/okio/Sink;

    #@1a
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@1d
    .line 436
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@1f
    invoke-virtual {v1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@22
    .line 426
    :goto_0
    return-void

    #@23
    .line 427
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1

    #@26
    .line 437
    :catch_0
    move-exception v0

    #@27
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public body()Lcom/android/okhttp/okio/Sink;
    .locals 1

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->body:Lcom/android/okhttp/okio/Sink;

    #@2
    return-object v0
.end method

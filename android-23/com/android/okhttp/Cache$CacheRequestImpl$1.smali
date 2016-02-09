.class Lcom/android/okhttp/Cache$CacheRequestImpl$1;
.super Lcom/android/okhttp/okio/ForwardingSink;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Cache$CacheRequestImpl;Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/okhttp/Cache$CacheRequestImpl;
    .param p2, "$anonymous0"    # Lcom/android/okhttp/okio/Sink;
    .param p3, "val$editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@0
    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    #@2
    iput-object p3, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@4
    invoke-direct {p0, p2}, Lcom/android/okhttp/okio/ForwardingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    #@2
    iget-object v1, v0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    #@4
    monitor-enter v1

    #@5
    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    #@7
    invoke-static {v0}, Lcom/android/okhttp/Cache$CacheRequestImpl;->-get0(Lcom/android/okhttp/Cache$CacheRequestImpl;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    monitor-exit v1

    #@e
    .line 415
    return-void

    #@f
    .line 417
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    #@11
    const/4 v2, 0x1

    #@12
    invoke-static {v0, v2}, Lcom/android/okhttp/Cache$CacheRequestImpl;->-set0(Lcom/android/okhttp/Cache$CacheRequestImpl;Z)Z

    #@15
    .line 418
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    #@17
    iget-object v0, v0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    #@19
    invoke-static {v0}, Lcom/android/okhttp/Cache;->-get2(Lcom/android/okhttp/Cache;)I

    #@1c
    move-result v2

    #@1d
    add-int/lit8 v2, v2, 0x1

    #@1f
    invoke-static {v0, v2}, Lcom/android/okhttp/Cache;->-set1(Lcom/android/okhttp/Cache;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit v1

    #@23
    .line 420
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->close()V

    #@26
    .line 421
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@28
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->commit()V

    #@2b
    .line 412
    return-void

    #@2c
    .line 413
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

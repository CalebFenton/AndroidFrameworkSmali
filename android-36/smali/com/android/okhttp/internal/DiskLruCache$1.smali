.class Lcom/android/okhttp/internal/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$000(Lcom/android/okhttp/internal/DiskLruCache;)Z

    move-result v1

    const/4 v2, 0x0

    xor-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache;->access$100(Lcom/android/okhttp/internal/DiskLruCache;)Z

    move-result v3

    or-int/2addr v1, v3

    if-eqz v1, :cond_19

    .line 174
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p0

    goto :goto_3b

    .line 177
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$200(Lcom/android/okhttp/internal/DiskLruCache;)V

    .line 178
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$300(Lcom/android/okhttp/internal/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 179
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$400(Lcom/android/okhttp/internal/DiskLruCache;)V

    .line 180
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # setter for: Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I
    invoke-static {p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$502(Lcom/android/okhttp/internal/DiskLruCache;I)I
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_30} :catch_31
    .catchall {:try_start_19 .. :try_end_30} :catchall_17

    goto :goto_33

    :catch_31
    move-exception p0

    goto :goto_35

    .line 185
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v0

    return-void

    .line 183
    :goto_35
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 185
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_17

    throw p0
.end method

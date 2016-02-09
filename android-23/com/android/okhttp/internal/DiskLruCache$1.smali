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
.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;

    #@0
    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 170
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@3
    monitor-enter v2

    #@4
    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@6
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache;->-get4(Lcom/android/okhttp/internal/DiskLruCache;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    :goto_0
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@e
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache;->-get1(Lcom/android/okhttp/internal/DiskLruCache;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v3

    #@12
    or-int/2addr v1, v3

    #@13
    if-eqz v1, :cond_1

    #@15
    monitor-exit v2

    #@16
    .line 172
    return-void

    #@17
    .line 171
    :cond_0
    const/4 v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 175
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@1b
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap5(Lcom/android/okhttp/internal/DiskLruCache;)V

    #@1e
    .line 176
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@20
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap0(Lcom/android/okhttp/internal/DiskLruCache;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 177
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@28
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap4(Lcom/android/okhttp/internal/DiskLruCache;)V

    #@2b
    .line 178
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2d
    const/4 v3, 0x0

    #@2e
    invoke-static {v1, v3}, Lcom/android/okhttp/internal/DiskLruCache;->-set1(Lcom/android/okhttp/internal/DiskLruCache;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    :cond_2
    monitor-exit v2

    #@32
    .line 169
    return-void

    #@33
    .line 180
    :catch_0
    move-exception v0

    #@34
    .line 181
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    #@36
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@39
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
    throw v1
.end method

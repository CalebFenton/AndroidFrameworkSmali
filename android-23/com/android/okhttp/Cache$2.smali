.class Lcom/android/okhttp/Cache$2;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/okhttp/Cache;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Cache;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/okhttp/Cache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/okhttp/Cache$2;->this$0:Lcom/android/okhttp/Cache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 300
    iget-object v0, p0, Lcom/android/okhttp/Cache$2;->this$0:Lcom/android/okhttp/Cache;

    #@7
    invoke-static {v0}, Lcom/android/okhttp/Cache;->-get0(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/internal/DiskLruCache;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    #@11
    .line 299
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 306
    iget-object v3, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    #@4
    if-eqz v3, :cond_0

    #@6
    return v5

    #@7
    .line 308
    :cond_0
    iput-boolean v4, p0, Lcom/android/okhttp/Cache$2;->canRemove:Z

    #@9
    .line 309
    :goto_0
    iget-object v3, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    #@b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 310
    iget-object v3, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@19
    .line 312
    .local v2, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    const/4 v3, 0x0

    #@1a
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@21
    move-result-object v1

    #@22
    .line 313
    .local v1, "metadata":Lcom/android/okhttp/okio/BufferedSource;
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    iput-object v3, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 319
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    #@2b
    .line 314
    return v5

    #@2c
    .line 315
    .end local v1    # "metadata":Lcom/android/okhttp/okio/BufferedSource;
    :catch_0
    move-exception v0

    #@2d
    .line 319
    .local v0, "ignored":Ljava/io/IOException;
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    #@30
    goto :goto_0

    #@31
    .line 318
    .end local v0    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@32
    .line 319
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    #@35
    .line 318
    throw v3

    #@36
    .line 323
    .end local v2    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_1
    return v4
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/okhttp/Cache$2;->next()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/okhttp/Cache$2;->hasNext()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    new-instance v1, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v1

    #@c
    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    #@e
    .line 329
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    #@f
    iput-object v1, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    #@11
    .line 330
    const/4 v1, 0x1

    #@12
    iput-boolean v1, p0, Lcom/android/okhttp/Cache$2;->canRemove:Z

    #@14
    .line 331
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/okhttp/Cache$2;->canRemove:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "remove() before next()"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    #@f
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@12
    .line 334
    return-void
.end method

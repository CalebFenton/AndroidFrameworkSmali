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
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist canRemove:Z

.field final blacklist delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field blacklist nextUrl:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/okhttp/Cache;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/Cache;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/android/okhttp/Cache$2;->this$0:Lcom/android/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    # getter for: Lcom/android/okhttp/Cache;->cache:Lcom/android/okhttp/internal/DiskLruCache;
    invoke-static {p1}, Lcom/android/okhttp/Cache;->access$600(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/internal/DiskLruCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/android/okhttp/Cache$2;->canRemove:Z

    .line 333
    :goto_9
    iget-object v2, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 334
    iget-object v2, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 336
    :try_start_19
    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v3

    .line 337
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_30
    .catchall {:try_start_19 .. :try_end_27} :catchall_2b

    .line 343
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    return v1

    :catchall_2b
    move-exception p0

    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    .line 344
    throw p0

    .line 343
    :catch_30
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    goto :goto_9

    :cond_34
    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 1

    .line 323
    invoke-virtual {p0}, Lcom/android/okhttp/Cache$2;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 3

    .line 351
    invoke-virtual {p0}, Lcom/android/okhttp/Cache$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 352
    iget-object v0, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 353
    iput-object v1, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x1

    .line 354
    iput-boolean v1, p0, Lcom/android/okhttp/Cache$2;->canRemove:Z

    return-object v0

    .line 351
    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 359
    iget-boolean v0, p0, Lcom/android/okhttp/Cache$2;->canRemove:Z

    if-eqz v0, :cond_a

    .line 360
    iget-object p0, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 359
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() before next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

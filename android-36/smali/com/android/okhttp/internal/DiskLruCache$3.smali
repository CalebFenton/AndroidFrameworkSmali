.class Lcom/android/okhttp/internal/DiskLruCache$3;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final blacklist delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/android/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field blacklist nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

.field blacklist removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 717
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$1900(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 5

    .line 728
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 730
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 732
    :try_start_9
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$100(Lcom/android/okhttp/internal/DiskLruCache;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    monitor-exit v0

    return v3

    :catchall_14
    move-exception p0

    goto :goto_33

    .line 734
    :cond_16
    :goto_16
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 735
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 736
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v2

    if-nez v2, :cond_2d

    goto :goto_16

    .line 738
    :cond_2d
    iput-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 739
    monitor-exit v0

    return v1

    .line 741
    :cond_31
    monitor-exit v0

    return v3

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_14

    throw p0
.end method

.method public blacklist next()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 3

    .line 747
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 748
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    const/4 v1, 0x0

    .line 749
    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0

    .line 747
    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 1

    .line 717
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$3;->next()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 754
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 756
    :try_start_5
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->access$2000(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_15
    .catchall {:try_start_5 .. :try_end_e} :catchall_11

    .line 761
    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    return-void

    :catchall_11
    move-exception v0

    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 762
    throw v0

    .line 761
    :catch_15
    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    return-void

    .line 754
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() before next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

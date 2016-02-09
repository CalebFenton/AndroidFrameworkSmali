.class Lcom/android/okhttp/internal/DiskLruCache$4;
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
        "Ljava/util/Iterator",
        "<",
        "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

.field removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;

    #@0
    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 718
    new-instance v0, Ljava/util/ArrayList;

    #@7
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@9
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get5(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->delegate:Ljava/util/Iterator;

    #@1a
    .line 716
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
    .line 727
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@4
    if-eqz v2, :cond_0

    #@6
    return v5

    #@7
    .line 729
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@9
    monitor-enter v3

    #@a
    .line 731
    :try_start_0
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@c
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->-get1(Lcom/android/okhttp/internal/DiskLruCache;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    monitor-exit v3

    #@13
    return v4

    #@14
    .line 733
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->delegate:Ljava/util/Iterator;

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 734
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->delegate:Ljava/util/Iterator;

    #@1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    #@24
    .line 735
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@27
    move-result-object v1

    #@28
    .line 736
    .local v1, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    if-eqz v1, :cond_1

    #@2a
    .line 737
    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit v3

    #@2d
    .line 738
    return v5

    #@2e
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local v1    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_2
    monitor-exit v3

    #@2f
    .line 742
    return v4

    #@30
    .line 729
    :catchall_0
    move-exception v2

    #@31
    monitor-exit v3

    #@32
    throw v2
.end method

.method public next()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .locals 1

    #@0
    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$4;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@e
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@10
    .line 748
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@13
    .line 749
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@15
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$4;->next()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 753
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@3
    if-nez v1, :cond_0

    #@5
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "remove() before next()"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 755
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@10
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@12
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 760
    :goto_0
    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@1b
    .line 752
    return-void

    #@1c
    .line 759
    :catchall_0
    move-exception v1

    #@1d
    .line 760
    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@1f
    .line 759
    throw v1

    #@20
    .line 756
    :catch_0
    move-exception v0

    #@21
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

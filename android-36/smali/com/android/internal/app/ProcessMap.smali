.class public Lcom/android/internal/app/ProcessMap;
.super Ljava/lang/Object;
.source "ProcessMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final blacklist mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 68
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 69
    return-void
.end method

.method public blacklist get(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 34
    .local v0, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    return-object v0
.end method

.method public blacklist get(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 28
    .local v0, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    .line 29
    :cond_c
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TE;>;>;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITE;)TE;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 39
    .local v0, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-nez v0, :cond_16

    .line 40
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    move-object v0, v1

    .line 41
    iget-object v1, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_16
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    return-object p3
.end method

.method public blacklist putAll(Lcom/android/internal/app/ProcessMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ProcessMap<",
            "TE;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    .local p1, "other":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public blacklist remove(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 49
    .local v0, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-eqz v0, :cond_1a

    .line 50
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "old":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_19

    .line 52
    iget-object v2, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_19
    return-object v1

    .line 56
    .end local v1    # "old":Ljava/lang/Object;, "TE;"
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist size()I
    .registers 2

    .line 64
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

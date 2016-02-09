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
.field final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 22
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 23
    iput-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    #@a
    .line 22
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 27
    iget-object v1, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/util/SparseArray;

    #@9
    .line 28
    .local v0, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-nez v0, :cond_0

    #@b
    return-object v2

    #@c
    .line 29
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<TE;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 33
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/SparseArray;

    #@8
    .line 34
    .local v0, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-nez v0, :cond_0

    #@a
    .line 35
    new-instance v0, Landroid/util/SparseArray;

    #@c
    .end local v0    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x2

    #@d
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@10
    .line 36
    .restart local v0    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v1, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 38
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@18
    .line 39
    return-object p3
.end method

.method public remove(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 43
    iget-object v2, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/util/SparseArray;

    #@9
    .line 44
    .local v1, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    if-eqz v1, :cond_1

    #@b
    .line 45
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 46
    .local v0, "old":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    .line 47
    iget-object v2, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 49
    :cond_0
    return-object v0

    #@1b
    .line 51
    .end local v0    # "old":Ljava/lang/Object;, "TE;"
    :cond_1
    return-object v3
.end method

.class public Landroid/util/SparseSetArray;
.super Ljava/lang/Object;
.source "SparseSetArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 29
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/SparseSetArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseSetArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    .local p1, "src":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    .line 38
    .local v0, "arraySize":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 40
    invoke-virtual {p1, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    .line 41
    .local v2, "key":I
    invoke-virtual {p1, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 42
    .local v3, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    invoke-virtual {p0, v2, v3}, Landroid/util/SparseSetArray;->addAll(ILandroid/util/ArraySet;)V

    .line 39
    .end local v2    # "key":I
    .end local v3    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 44
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method


# virtual methods
.method public greylist-max-o add(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 51
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 52
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-nez v0, :cond_15

    .line 53
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 54
    iget-object v1, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 57
    const/4 v1, 0x0

    return v1

    .line 59
    :cond_1d
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 60
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist addAll(ILandroid/util/ArraySet;)V
    .registers 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    .local p2, "values":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 68
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-nez v0, :cond_15

    .line 69
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 70
    .end local v0    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local v1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    return-void

    .line 73
    .end local v1    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .restart local v0    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 74
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 80
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 81
    return-void
.end method

.method public greylist-max-o contains(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 87
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 88
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-nez v0, :cond_c

    .line 89
    const/4 v1, 0x0

    return v1

    .line 91
    :cond_c
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist get(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public greylist-max-o keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 129
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o remove(I)V
    .registers 3
    .param p1, "n"    # I

    .line 121
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 122
    return-void
.end method

.method public greylist-max-o remove(ILjava/lang/Object;)Z
    .registers 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 106
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 107
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-nez v0, :cond_c

    .line 108
    const/4 v1, 0x0

    return v1

    .line 110
    :cond_c
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 111
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1b

    .line 112
    iget-object v2, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 114
    :cond_1b
    return v1
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 125
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-o sizeAt(I)I
    .registers 4
    .param p1, "index"    # I

    .line 133
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 134
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-nez v0, :cond_c

    .line 135
    const/4 v1, 0x0

    return v1

    .line 137
    :cond_c
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    return v1
.end method

.method public greylist-max-o valueAt(II)Ljava/lang/Object;
    .registers 4
    .param p1, "intIndex"    # I
    .param p2, "valueIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 141
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist valuesAt(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "intIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 146
    .local p0, "this":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<TT;>;"
    iget-object v0, p0, Landroid/util/SparseSetArray;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

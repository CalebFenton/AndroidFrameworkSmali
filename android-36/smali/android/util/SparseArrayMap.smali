.class public Landroid/util/SparseArrayMap;
.super Ljava/lang/Object;
.source "SparseArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/SparseArrayMap$TriConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)TV;"
        }
    .end annotation

    .line 46
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    .local p3, "obj":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 47
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez v0, :cond_15

    .line 48
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 49
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    :cond_15
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public blacklist clear()V
    .registers 3

    .line 56
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 57
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public blacklist contains(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)Z"
        }
    .end annotation

    .line 63
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public blacklist delete(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)TV;"
        }
    .end annotation

    .line 86
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 87
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 88
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 90
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist delete(I)V
    .registers 3
    .param p1, "key"    # I

    .line 68
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 69
    return-void
.end method

.method public blacklist deleteAt(I)V
    .registers 3
    .param p1, "keyIndex"    # I

    .line 76
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 77
    return-void
.end method

.method public blacklist deleteAt(II)V
    .registers 4
    .param p1, "keyIndex"    # I
    .param p2, "mapIndex"    # I

    .line 98
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public blacklist forEach(Landroid/util/SparseArrayMap$TriConsumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArrayMap$TriConsumer<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 208
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p1, "consumer":Landroid/util/SparseArrayMap$TriConsumer;, "Landroid/util/SparseArrayMap$TriConsumer<TK;TV;>;"
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "iIdx":I
    :goto_6
    if-ltz v0, :cond_2f

    .line 209
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 210
    .local v1, "i":I
    iget-object v2, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 211
    .local v2, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "kIdx":I
    :goto_1c
    if-ltz v3, :cond_2c

    .line 212
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v1, v4, v5}, Landroid/util/SparseArrayMap$TriConsumer;->accept(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 211
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 208
    .end local v1    # "i":I
    .end local v2    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .end local v3    # "kIdx":I
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 215
    .end local v0    # "iIdx":I
    :cond_2f
    return-void
.end method

.method public blacklist forEach(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TV;>;)V"
        }
    .end annotation

    .line 185
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TV;>;"
    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_25

    .line 186
    iget-object v1, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 187
    .local v1, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_16
    if-ltz v2, :cond_22

    .line 188
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 187
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 185
    .end local v1    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .end local v2    # "j":I
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 191
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method public blacklist get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)TV;"
        }
    .end annotation

    .line 106
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 107
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 108
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 110
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)TV;"
        }
    .end annotation

    .line 119
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 120
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 121
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 122
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 125
    .end local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    :cond_1d
    return-object p3
.end method

.method public blacklist indexOfKey(I)I
    .registers 3
    .param p1, "key"    # I

    .line 130
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public blacklist indexOfKey(ILjava/lang/Object;)I
    .registers 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)I"
        }
    .end annotation

    .line 139
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    .local p2, "mapKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 140
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 141
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 143
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 148
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public blacklist keyAt(II)Ljava/lang/Object;
    .registers 4
    .param p1, "keyIndex"    # I
    .param p2, "mapIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation

    .line 154
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist numElementsForKey(I)I
    .registers 4
    .param p1, "key"    # I

    .line 164
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 165
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_10
    return v1
.end method

.method public blacklist numElementsForKeyAt(I)I
    .registers 4
    .param p1, "keyIndex"    # I

    .line 173
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 174
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_10
    return v1
.end method

.method public blacklist numMaps()I
    .registers 2

    .line 159
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public blacklist valueAt(II)Ljava/lang/Object;
    .registers 4
    .param p1, "keyIndex"    # I
    .param p2, "mapIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .line 180
    .local p0, "this":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/SparseArrayMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

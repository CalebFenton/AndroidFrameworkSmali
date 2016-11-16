.class public Landroid/bluetooth/le/BluetoothLeUtils;
.super Ljava/lang/Object;
.source "BluetoothLeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    #@0
    .prologue
    .line 135
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 134
    return-void

    #@9
    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v1, "BT Adapter is not turned ON"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method static equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Landroid/util/SparseArray",
            "<[B>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p1, "otherArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 83
    if-ne p0, p1, :cond_0

    #@4
    .line 84
    return v4

    #@5
    .line 86
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 87
    :cond_1
    return v3

    #@a
    .line 89
    :cond_2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    #@11
    move-result v2

    #@12
    if-eq v1, v2, :cond_3

    #@14
    .line 90
    return v3

    #@15
    .line 94
    :cond_3
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@19
    move-result v1

    #@1a
    if-ge v0, v1, :cond_5

    #@1c
    .line 95
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@23
    move-result v2

    #@24
    if-ne v1, v2, :cond_4

    #@26
    .line 96
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, [B

    #@2c
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, [B

    #@32
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_4

    #@38
    .line 94
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 97
    :cond_4
    return v3

    #@3c
    .line 100
    :cond_5
    return v4
.end method

.method static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;[B>;",
            "Ljava/util/Map",
            "<TT;[B>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    .local p1, "otherMap":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 107
    if-ne p0, p1, :cond_0

    #@4
    .line 108
    return v6

    #@5
    .line 110
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 111
    :cond_1
    return v5

    #@a
    .line 113
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@d
    move-result v3

    #@e
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@11
    move-result v4

    #@12
    if-eq v3, v4, :cond_3

    #@14
    .line 114
    return v5

    #@15
    .line 116
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@18
    move-result-object v2

    #@19
    .line 117
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_4

    #@23
    .line 118
    return v5

    #@24
    .line 120
    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_6

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    .line 121
    .local v0, "key":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v3

    #@3e
    if-nez v3, :cond_5

    #@40
    .line 122
    return v5

    #@41
    .line 125
    .end local v0    # "key":Ljava/lang/Object;, "TT;"
    :cond_6
    return v6
.end method

.method static toString(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 39
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    if-nez p0, :cond_0

    #@2
    .line 40
    const-string/jumbo v2, "null"

    #@5
    return-object v2

    #@6
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 43
    const-string/jumbo v2, "{}"

    #@f
    return-object v2

    #@10
    .line 45
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 46
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 47
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@1e
    move-result v2

    #@1f
    if-ge v1, v2, :cond_2

    #@21
    .line 48
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@24
    move-result v2

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    const-string/jumbo v3, "="

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, [B

    #@36
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 47
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 50
    :cond_2
    const/16 v2, 0x7d

    #@42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    return-object v2
.end method

.method static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    if-nez p0, :cond_0

    #@2
    .line 59
    const-string/jumbo v4, "null"

    #@5
    return-object v4

    #@6
    .line 61
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 62
    const-string/jumbo v4, "{}"

    #@f
    return-object v4

    #@10
    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 65
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    #@17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 66
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1d
    move-result-object v4

    #@1e
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .line 67
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;[B>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_3

    #@28
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/util/Map$Entry;

    #@2e
    .line 69
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    .line 70
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    const-string/jumbo v5, "="

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    check-cast v4, [B

    #@43
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_2

    #@50
    .line 72
    const-string/jumbo v4, ", "

    #@53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    goto :goto_0

    #@57
    .line 75
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    .end local v3    # "key":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    #@59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    return-object v4
.end method

.class public Landroid/bluetooth/le/BluetoothLeUtils;
.super Ljava/lang/Object;
.source "BluetoothLeUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 3
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 147
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    return-void

    .line 148
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BT Adapter is not turned ON"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Landroid/util/SparseArray<",
            "[B>;)Z"
        }
    .end annotation

    .line 97
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p1, "otherArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 98
    return v0

    .line 100
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_3e

    if-nez p1, :cond_a

    goto :goto_3e

    .line 103
    :cond_a
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 104
    return v1

    .line 108
    :cond_15
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 109
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-ne v3, v4, :cond_3c

    .line 110
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_3c

    .line 108
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 111
    :cond_3c
    :goto_3c
    return v1

    .line 114
    .end local v2    # "i":I
    :cond_3d
    return v0

    .line 101
    :cond_3e
    :goto_3e
    return v1
.end method

.method static blacklist equals(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;[B>;",
            "Ljava/util/Map<",
            "TT;[B>;)Z"
        }
    .end annotation

    .line 119
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    .local p1, "otherMap":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 120
    return v0

    .line 122
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_43

    if-nez p1, :cond_a

    goto :goto_43

    .line 125
    :cond_a
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 126
    return v1

    .line 128
    :cond_15
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 129
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 130
    return v1

    .line 132
    :cond_24
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 133
    .local v4, "key":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 134
    return v1

    .line 136
    .end local v4    # "key":Ljava/lang/Object;, "TT;"
    :cond_41
    goto :goto_28

    .line 137
    :cond_42
    return v0

    .line 123
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :cond_43
    :goto_43
    return v1
.end method

.method static blacklist maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 9
    .param p0, "data"    # Ljava/util/UUID;
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mask"    # Ljava/util/UUID;

    .line 158
    if-nez p2, :cond_7

    .line 159
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 161
    :cond_7
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v0, v2

    .line 162
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    .line 163
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    and-long/2addr v0, v2

    .line 164
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    .line 161
    :goto_36
    return v0
.end method

.method static blacklist toString(Landroid/util/SparseArray;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 57
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    if-nez p0, :cond_5

    .line 58
    const-string v0, "null"

    return-object v0

    .line 60
    :cond_5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 61
    const-string v0, "{}"

    return-object v0

    .line 63
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 66
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 68
    .end local v1    # "i":I
    :cond_3d
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist toString(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 74
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    if-nez p0, :cond_5

    .line 75
    const-string v0, "null"

    return-object v0

    .line 77
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 78
    const-string v0, "{}"

    return-object v0

    .line 80
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;[B>;>;"
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 86
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 88
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    .end local v3    # "key":Ljava/lang/Object;
    :cond_52
    goto :goto_20

    .line 91
    :cond_53
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static blacklist toString([B)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B

    .line 37
    if-nez p0, :cond_5

    .line 38
    const-string v0, "null"

    return-object v0

    .line 40
    :cond_5
    array-length v0, p0

    if-nez v0, :cond_b

    .line 41
    const-string v0, "{}"

    return-object v0

    .line 43
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    array-length v2, p0

    if-ge v1, v2, :cond_2b

    .line 46
    aget-byte v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_28

    .line 48
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 51
    .end local v1    # "i":I
    :cond_2b
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

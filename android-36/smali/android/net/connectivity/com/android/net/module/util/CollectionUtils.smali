.class public final Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist all(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 87
    .local p0, "elem":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v0, 0x0

    return v0

    .line 89
    .end local v1    # "e":Ljava/lang/Object;, "TT;"
    :cond_16
    goto :goto_4

    .line 90
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist any(Landroid/util/SparseArray;Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 120
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 121
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 122
    const/4 v1, 0x1

    return v1

    .line 120
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist any(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 99
    .local p0, "elem":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->indexOf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static varargs blacklist appendArray([B[B)[B
    .registers 3
    .param p0, "prefix"    # [B
    .param p1, "suffixes"    # [B

    .line 471
    filled-new-array {p0, p1}, [[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->concatArrays([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist appendArray(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 479
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "prefix":[Ljava/lang/Object;, "[TT;"
    .local p2, "suffixes":[Ljava/lang/Object;, "[TT;"
    filled-new-array {p1, p2}, [[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->concatArrays(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist assoc(Ljava/util/List;Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TR;>;)",
            "Landroid/util/ArrayMap<",
            "TT;TR;>;"
        }
    .end annotation

    .line 378
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<TR;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 379
    .local v0, "size":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2f

    .line 382
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 383
    .local v1, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TT;TR;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_2e

    .line 384
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 385
    .local v3, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 389
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .end local v3    # "key":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 386
    .restart local v3    # "key":Ljava/lang/Object;, "TT;"
    :cond_26
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "assoc : keys may not contain the same value twice"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 391
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/Object;, "TT;"
    :cond_2e
    return-object v1

    .line 380
    .end local v1    # "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TT;TR;>;"
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "assoc : collections must be the same size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs blacklist concatArrays([[B)[B
    .registers 9
    .param p0, "arr"    # [[B

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "size":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_d

    aget-object v4, p0, v3

    .line 424
    .local v4, "a":[B
    array-length v5, v4

    add-int/2addr v0, v5

    .line 423
    .end local v4    # "a":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 426
    :cond_d
    new-array v1, v0, [B

    .line 427
    .local v1, "result":[B
    const/4 v3, 0x0

    .line 428
    .local v3, "offset":I
    array-length v4, p0

    move v5, v2

    :goto_12
    if-ge v5, v4, :cond_1f

    aget-object v6, p0, v5

    .line 429
    .local v6, "a":[B
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    array-length v7, v6

    add-int/2addr v3, v7

    .line 428
    .end local v6    # "a":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 432
    :cond_1f
    return-object v1
.end method

.method public static varargs blacklist concatArrays(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[[TT;)[TT;"
        }
    .end annotation

    .line 439
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "arr":[[Ljava/lang/Object;, "[[TT;"
    const/4 v0, 0x0

    .line 440
    .local v0, "size":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_d

    aget-object v4, p1, v3

    .line 441
    .local v4, "a":[Ljava/lang/Object;, "[TT;"
    array-length v5, v4

    add-int/2addr v0, v5

    .line 440
    .end local v4    # "a":[Ljava/lang/Object;, "[TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 443
    :cond_d
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 444
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 445
    .local v3, "offset":I
    array-length v4, p1

    move v5, v2

    :goto_16
    if-ge v5, v4, :cond_23

    aget-object v6, p1, v5

    .line 446
    .local v6, "a":[Ljava/lang/Object;, "[TT;"
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    array-length v7, v6

    add-int/2addr v3, v7

    .line 445
    .end local v6    # "a":[Ljava/lang/Object;, "[TT;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 449
    :cond_23
    return-object v1
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 295
    .local p0, "haystack":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    const/4 v0, -0x1

    invoke-static {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->indexOf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist contains([II)Z
    .registers 6
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 145
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 146
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 147
    .local v3, "element":I
    if-ne v3, p1, :cond_e

    .line 148
    const/4 v0, 0x1

    return v0

    .line 146
    .end local v3    # "element":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 151
    :cond_11
    return v0
.end method

.method public static blacklist contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 158
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist contains([SS)Z
    .registers 6
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .line 132
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 133
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-short v3, p0, v2

    .line 134
    .local v3, "element":I
    if-ne v3, p1, :cond_e

    .line 135
    const/4 v0, 0x1

    return v0

    .line 133
    .end local v3    # "element":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 138
    :cond_11
    return v0
.end method

.method public static blacklist containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 246
    .local p0, "haystack":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "needles":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static blacklist containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 231
    .local p0, "haystack":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "needles":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, "needle":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    return v0

    .line 233
    .end local v1    # "needle":Ljava/lang/Object;, "TT;"
    :cond_16
    goto :goto_4

    .line 234
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist filter(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 200
    .local p0, "source":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "test":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 202
    .local v2, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 203
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "e":Ljava/lang/Object;, "TT;"
    :cond_1c
    goto :goto_9

    .line 206
    :cond_1d
    return-object v0
.end method

.method public static blacklist findFirst(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 259
    .local p0, "haystack":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 260
    .local v1, "needle":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v1

    .line 261
    .end local v1    # "needle":Ljava/lang/Object;, "TT;"
    :cond_15
    goto :goto_4

    .line 262
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist findLast(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 279
    .local p0, "haystack":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "condition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 280
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 281
    .local v1, "needle":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v1

    .line 279
    .end local v1    # "needle":Ljava/lang/Object;, "TT;"
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 283
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getIndexForValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 405
    .local p0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "nsize":I
    :goto_5
    if-ge v0, v1, :cond_1a

    .line 406
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 407
    .local v2, "valueAt":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_10

    .line 408
    if-nez p1, :cond_17

    .line 409
    return v0

    .line 411
    :cond_10
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 412
    return v0

    .line 405
    .end local v2    # "valueAt":Ljava/lang/Object;, "TT;"
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 415
    .end local v0    # "i":I
    .end local v1    # "nsize":I
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist indexOf(Ljava/util/Collection;Ljava/util/function/Predicate;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)I"
        }
    .end annotation

    .line 107
    .local p0, "elem":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    const/4 v0, 0x0

    .line 108
    .local v0, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 109
    .local v2, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    return v0

    .line 110
    :cond_16
    nop

    .end local v2    # "e":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, 0x1

    .line 111
    goto :goto_5

    .line 112
    :cond_1a
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 165
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 166
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 167
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 166
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 169
    .end local v1    # "i":I
    :cond_14
    return v0
.end method

.method public static blacklist indexOfSubArray([B[B)I
    .registers 7
    .param p0, "haystack"    # [B
    .param p1, "needle"    # [B

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_20

    .line 178
    const/4 v1, 0x1

    .line 179
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a
    array-length v3, p1

    if-ge v2, v3, :cond_1a

    .line 180
    add-int v3, v0, v2

    aget-byte v3, p0, v3

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_17

    .line 181
    const/4 v1, 0x0

    .line 182
    goto :goto_1a

    .line 179
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 185
    .end local v2    # "j":I
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_1d

    .line 186
    return v0

    .line 177
    .end local v1    # "found":Z
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "i":I
    :cond_20
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 51
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 44
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static blacklist map(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;)",
            "Ljava/util/ArrayList<",
            "TR;>;"
        }
    .end annotation

    .line 319
    .local p0, "source":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "transform":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TR;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .local v0, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 321
    .local v2, "e":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v2    # "e":Ljava/lang/Object;, "TT;"
    goto :goto_d

    .line 323
    :cond_1f
    return-object v0
.end method

.method public static varargs blacklist prependArray([B[B)[B
    .registers 3
    .param p0, "suffix"    # [B
    .param p1, "prefixes"    # [B

    .line 456
    filled-new-array {p1, p0}, [[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->concatArrays([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist prependArray(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 464
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "suffix":[Ljava/lang/Object;, "[TT;"
    .local p2, "prefixes":[Ljava/lang/Object;, "[TT;"
    filled-new-array {p2, p1}, [[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->concatArrays(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toIntArray(Ljava/util/Collection;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 59
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 60
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 61
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 62
    .local v3, "item":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v1

    .line 63
    nop

    .end local v3    # "item":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_b

    .line 65
    :cond_21
    return-object v0
.end method

.method public static blacklist toLongArray(Ljava/util/Collection;)[J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 73
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 74
    .local v0, "array":[J
    const/4 v1, 0x0

    .line 75
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 76
    .local v3, "item":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 77
    nop

    .end local v3    # "item":Ljava/lang/Long;
    add-int/lit8 v1, v1, 0x1

    .line 78
    goto :goto_b

    .line 79
    :cond_21
    return-object v0
.end method

.method public static blacklist total([J)J
    .registers 7
    .param p0, "array"    # [J

    .line 213
    const-wide/16 v0, 0x0

    .line 214
    .local v0, "total":J
    if-eqz p0, :cond_e

    .line 215
    array-length v2, p0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_e

    aget-wide v4, p0, v3

    .line 216
    .local v4, "value":J
    add-long/2addr v0, v4

    .line 215
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 219
    :cond_e
    return-wide v0
.end method

.method public static blacklist zip(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TR;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "TT;TR;>;>;"
        }
    .end annotation

    .line 348
    .local p0, "first":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "second":Ljava/util/List;, "Ljava/util/List<TR;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 349
    .local v0, "size":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_26

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v1, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<TT;TR;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_25

    .line 354
    new-instance v3, Landroid/util/Pair;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 356
    .end local v2    # "i":I
    :cond_25
    return-object v1

    .line 350
    .end local v1    # "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<TT;TR;>;>;"
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "zip : collections must be the same size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

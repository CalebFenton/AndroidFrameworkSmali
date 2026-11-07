.class public Lcom/android/internal/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 333
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-ne p0, v0, :cond_e

    .line 334
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 336
    :cond_e
    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 337
    return-object p0
.end method

.method public static blacklist add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 321
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-ne p0, v0, :cond_e

    .line 322
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 324
    :cond_e
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    return-object p0
.end method

.method public static blacklist add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 370
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    if-ne p0, v0, :cond_e

    .line 371
    :cond_8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object p0, v0

    .line 373
    :cond_e
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    return-object p0
.end method

.method public static blacklist add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 359
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-ne p0, v0, :cond_e

    .line 360
    :cond_8
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 362
    :cond_e
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    return-object p0
.end method

.method public static blacklist addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 345
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 346
    if-eqz p0, :cond_a

    move-object v0, p0

    goto :goto_e

    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_e
    return-object v0

    .line 348
    :cond_f
    if-eqz p0, :cond_17

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-ne p0, v0, :cond_1d

    .line 349
    :cond_17
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 351
    :cond_1d
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 352
    return-object p0
.end method

.method public static blacklist addIf(Ljava/util/List;Ljava/util/Collection;Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 104
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "dest":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 105
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 106
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 107
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public static blacklist any(Ljava/util/List;Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 259
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist any(Ljava/util/Set;Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    .line 268
    .local p0, "items":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 54
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_a

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist copyOf(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 404
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_10

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_10
    return-object v0
.end method

.method public static blacklist copyOf(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 411
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_10
    return-object v0
.end method

.method public static blacklist emptyIfNull(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 185
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public static blacklist emptyIfNull(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 207
    .local p0, "cur":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public static blacklist emptyIfNull(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 196
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public static blacklist filter(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 242
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 243
    :cond_b
    const/4 v0, 0x0

    .line 244
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_11
    if-ge v1, v2, :cond_24

    .line 245
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 246
    .local v3, "item":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 247
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 244
    .end local v3    # "item":Ljava/lang/Object;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 250
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_24
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 65
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    const/4 v0, 0x0

    .line 66
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 67
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 68
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 69
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 72
    .end local v1    # "i":I
    :cond_19
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist filter(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 80
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    if-eqz p0, :cond_48

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_48

    .line 81
    :cond_9
    const/4 v0, 0x0

    .line 82
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    instance-of v1, p0, Landroid/util/ArraySet;

    if-eqz v1, :cond_2a

    .line 83
    move-object v1, p0

    check-cast v1, Landroid/util/ArraySet;

    .line 84
    .local v1, "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 85
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_29

    .line 86
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 87
    .local v4, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 88
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 85
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 91
    .end local v1    # "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_29
    goto :goto_43

    .line 92
    :cond_2a
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 93
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 94
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 96
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_42
    goto :goto_2e

    .line 98
    :cond_43
    :goto_43
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 80
    .end local v0    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    :cond_48
    :goto_48
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 277
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 278
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_d
    if-ge v0, v2, :cond_1d

    .line 279
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 280
    .local v3, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    .line 278
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 282
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_1d
    return-object v1
.end method

.method public static blacklist find(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 291
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_44

    if-nez p1, :cond_6

    goto :goto_44

    .line 292
    :cond_6
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    .line 293
    .local v1, "size":I
    if-nez v1, :cond_d

    return-object v0

    .line 295
    :cond_d
    :try_start_d
    instance-of v2, p0, Landroid/util/ArraySet;

    if-eqz v2, :cond_26

    .line 296
    move-object v2, p0

    check-cast v2, Landroid/util/ArraySet;

    .line 297
    .local v2, "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_25

    .line 298
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 299
    .local v4, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 300
    return-object v4

    .line 297
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 303
    .end local v2    # "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .end local v3    # "i":I
    :cond_25
    goto :goto_3c

    .line 304
    :cond_26
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 305
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_38} :catch_3e

    if-eqz v4, :cond_3b

    .line 306
    return-object v3

    .line 308
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_3b
    goto :goto_2a

    .line 312
    :cond_3c
    :goto_3c
    nop

    .line 313
    return-object v0

    .line 310
    :catch_3e
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "size":I
    :cond_44
    :goto_44
    return-object v0
.end method

.method public static blacklist firstOrNull(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 484
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public static blacklist firstOrNull(Ljava/util/List;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 477
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public static blacklist forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/function/BiConsumer<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 453
    .local p0, "cur":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TK;TV;>;"
    if-eqz p0, :cond_40

    if-nez p1, :cond_5

    goto :goto_40

    .line 456
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 457
    .local v0, "size":I
    if-nez v0, :cond_c

    .line 458
    return-void

    .line 461
    :cond_c
    instance-of v1, p0, Landroid/util/ArrayMap;

    if-eqz v1, :cond_25

    .line 462
    move-object v1, p0

    check-cast v1, Landroid/util/ArrayMap;

    .line 463
    .local v1, "arrayMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_24

    .line 464
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 466
    .end local v1    # "arrayMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .end local v2    # "i":I
    :cond_24
    goto :goto_3f

    .line 467
    :cond_25
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 468
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_2d

    .line 471
    :cond_3f
    :goto_3f
    return-void

    .line 454
    .end local v0    # "size":I
    :cond_40
    :goto_40
    return-void
.end method

.method public static blacklist forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 427
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<TT;>;"
    if-eqz p0, :cond_3b

    if-nez p1, :cond_5

    goto :goto_3b

    .line 428
    :cond_5
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    .line 429
    .local v0, "size":I
    if-nez v0, :cond_c

    return-void

    .line 431
    :cond_c
    :try_start_c
    instance-of v1, p0, Landroid/util/ArraySet;

    if-eqz v1, :cond_21

    .line 432
    move-object v1, p0

    check-cast v1, Landroid/util/ArraySet;

    .line 433
    .local v1, "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_20

    .line 434
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 436
    .end local v1    # "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .end local v2    # "i":I
    :cond_20
    goto :goto_33

    .line 437
    :cond_21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 438
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_32} :catch_35

    .line 439
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_25

    .line 443
    :cond_33
    :goto_33
    nop

    .line 444
    return-void

    .line 441
    :catch_35
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 427
    .end local v0    # "size":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3b
    :goto_3b
    return-void
.end method

.method public static blacklist isEmpty(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 228
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 235
    .local p0, "cur":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist map(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 123
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TI;>;"
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TI;+TO;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 124
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 125
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TO;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_25

    .line 127
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 129
    .end local v2    # "i":I
    :cond_25
    return-object v1
.end method

.method public static blacklist map(Ljava/util/Set;Ljava/util/function/Function;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/Set<",
            "TO;>;"
        }
    .end annotation

    .line 137
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TI;>;"
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TI;+TO;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 138
    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 139
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TO;>;"
    instance-of v1, p0, Landroid/util/ArraySet;

    if-eqz v1, :cond_31

    .line 140
    move-object v1, p0

    check-cast v1, Landroid/util/ArraySet;

    .line 141
    .local v1, "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TI;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 142
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_30

    .line 143
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 145
    .end local v1    # "arraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TI;>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_30
    goto :goto_47

    .line 146
    :cond_31
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 147
    .local v2, "item":Ljava/lang/Object;, "TI;"
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v2    # "item":Ljava/lang/Object;, "TI;"
    goto :goto_35

    .line 150
    :cond_47
    :goto_47
    return-object v0
.end method

.method public static blacklist mapNotNull(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 166
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TI;>;"
    .local p1, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<-TI;+TO;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 167
    :cond_b
    const/4 v0, 0x0

    .line 168
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TO;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_11
    if-ge v1, v2, :cond_24

    .line 169
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 170
    .local v3, "transformed":Ljava/lang/Object;, "TO;"
    if-eqz v3, :cond_21

    .line 171
    invoke-static {v0, v3}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 168
    .end local v3    # "transformed":Ljava/lang/Object;, "TO;"
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 174
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_24
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 382
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 383
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 385
    :cond_b
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 386
    return-object p0
.end method

.method public static blacklist remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 393
    .local p0, "cur":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 394
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 396
    :cond_b
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 397
    return-object p0
.end method

.method public static blacklist singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 491
    .local p0, "item":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public static blacklist size(Ljava/util/Collection;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    .line 214
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist size(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    .line 221
    .local p0, "cur":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist toSet(Ljava/util/Collection;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 418
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_10
    return-object v0
.end method

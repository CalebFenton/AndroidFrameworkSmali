.class public Landroid/icu/impl/Relation;
.super Ljava/lang/Object;
.source "Relation.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Relation$SimpleEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/impl/Relation<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field volatile greylist-max-o frozen:Z

.field greylist-max-o setComparatorParam:[Ljava/lang/Object;

.field greylist-max-o setCreator:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Map;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p2, "setCreator":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/Relation;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Comparator;)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Comparator<",
            "TV;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p2, "setCreator":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "setComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/Relation;->frozen:Z

    .line 56
    if-nez p3, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    :try_start_a
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    :goto_e
    iput-object v1, p0, Landroid/icu/impl/Relation;->setComparatorParam:[Ljava/lang/Object;

    .line 57
    if-nez p3, :cond_22

    .line 58
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Relation;->setCreator:Ljava/lang/reflect/Constructor;

    .line 59
    iget-object v0, p0, Landroid/icu/impl/Relation;->setCreator:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Landroid/icu/impl/Relation;->setComparatorParam:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 61
    :cond_22
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/Comparator;

    aput-object v2, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Relation;->setCreator:Ljava/lang/reflect/Constructor;

    .line 62
    iget-object v0, p0, Landroid/icu/impl/Relation;->setCreator:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Landroid/icu/impl/Relation;->setComparatorParam:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_36
    if-nez p1, :cond_3e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_3f

    :cond_3e
    move-object v0, p1

    :goto_3f
    iput-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_41} :catch_43

    .line 67
    nop

    .line 68
    return-void

    .line 65
    :catch_43
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t create new set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method private greylist-max-o newSet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/Relation;->setCreator:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Landroid/icu/impl/Relation;->setComparatorParam:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 171
    :catch_b
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t create new set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method public static blacklist of(Ljava/util/Map;Ljava/lang/Class;)Landroid/icu/impl/Relation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/icu/impl/Relation<",
            "TK;TV;>;"
        }
    .end annotation

    .line 42
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p1, "setCreator":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/icu/impl/Relation;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Relation;-><init>(Ljava/util/Map;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static blacklist of(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Comparator;)Landroid/icu/impl/Relation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Comparator<",
            "TV;>;)",
            "Landroid/icu/impl/Relation<",
            "TK;TV;>;"
        }
    .end annotation

    .line 46
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p1, "setCreator":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "setComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TV;>;"
    new-instance v0, Landroid/icu/impl/Relation;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Relation;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public blacklist addAllInverted(Landroid/icu/impl/Relation;)Landroid/icu/impl/Relation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/Relation<",
            "TV;TK;>;)",
            "Landroid/icu/impl/Relation<",
            "TK;TV;>;"
        }
    .end annotation

    .line 268
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "source":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TV;TK;>;"
    iget-object v0, p1, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 269
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p1, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 270
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3, v1}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_20

    .line 272
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_2e
    goto :goto_a

    .line 273
    :cond_2f
    return-object p0
.end method

.method public blacklist addAllInverted(Ljava/util/Map;)Landroid/icu/impl/Relation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TV;TK;>;)",
            "Landroid/icu/impl/Relation<",
            "TK;TV;>;"
        }
    .end annotation

    .line 277
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<TV;TK;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 278
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;TK;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;TK;>;"
    goto :goto_8

    .line 280
    :cond_20
    return-object p0
.end method

.method public blacklist clear()V
    .registers 2

    .line 71
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    return-void
.end method

.method public blacklist cloneAsThawed()Landroid/icu/impl/Relation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Relation<",
            "TK;TV;>;"
        }
    .end annotation

    .line 307
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 35
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Relation;->cloneAsThawed()Landroid/icu/impl/Relation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 75
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 79
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 80
    .local v1, "values":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    .end local v1    # "values":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    :cond_1e
    goto :goto_a

    .line 84
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Relation;->keyValueSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 108
    return v0

    .line 109
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    .line 110
    return v0

    .line 111
    :cond_f
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/Relation;

    iget-object v1, v1, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist freeze()Landroid/icu/impl/Relation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Relation<",
            "TK;TV;>;"
        }
    .end annotation

    .line 292
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-boolean v0, p0, Landroid/icu/impl/Relation;->frozen:Z

    if-nez v0, :cond_35

    .line 294
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 295
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    iget-object v3, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_e

    .line 298
    :cond_2a
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/Relation;->frozen:Z

    .line 301
    :cond_35
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 35
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Relation;->freeze()Landroid/icu/impl/Relation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 122
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 131
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 135
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 287
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-boolean v0, p0, Landroid/icu/impl/Relation;->frozen:Z

    return v0
.end method

.method public blacklist keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 139
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist keyValueSet()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 97
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 98
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 99
    .local v4, "value":Ljava/lang/Object;, "TV;"
    new-instance v5, Landroid/icu/impl/Relation$SimpleEntry;

    invoke-direct {v5, v2, v4}, Landroid/icu/impl/Relation$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_25

    .line 101
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_38
    goto :goto_f

    .line 102
    :cond_39
    return-object v0
.end method

.method public blacklist keyValuesSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 92
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 143
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 144
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_14

    .line 145
    iget-object v1, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-direct {p0}, Landroid/icu/impl/Relation;->newSet()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    return-object p2
.end method

.method public blacklist putAll(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "+TV;>;)TV;"
        }
    .end annotation

    .line 152
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 153
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_14

    .line 154
    iget-object v1, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-direct {p0}, Landroid/icu/impl/Relation;->newSet()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 157
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    goto :goto_27

    :cond_1f
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_27
    return-object v1
.end method

.method public blacklist putAll(Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TK;>;TV;)TV;"
        }
    .end annotation

    .line 161
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 162
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 163
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2, p2}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_5

    .line 165
    :cond_14
    return-object v0
.end method

.method public blacklist putAll(Landroid/icu/impl/Relation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/Relation<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "t":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<+TK;+TV;>;"
    invoke-virtual {p1}, Landroid/icu/impl/Relation;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 184
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v1}, Landroid/icu/impl/Relation;->getAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 185
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1, v3}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1a

    .line 187
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_28
    goto :goto_8

    .line 188
    :cond_29
    return-void
.end method

.method public blacklist putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_8

    .line 180
    :cond_20
    return-void
.end method

.method public blacklist remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 200
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 201
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v1, :cond_c

    .line 202
    return v0

    .line 204
    :cond_c
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 205
    .local v2, "result":Z
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1b

    .line 206
    iget-object v3, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1b} :catch_1c

    .line 208
    :cond_1b
    return v2

    .line 209
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    .end local v2    # "result":Z
    :catch_1c
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0
.end method

.method public blacklist removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 192
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 193
    :catch_9
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist removeAll(Ljava/util/Collection;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TK;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 340
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "toBeRemoved":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 341
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 343
    .local v2, "key":Ljava/lang/Object;, "TK;"
    :try_start_13
    iget-object v3, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 344
    .local v3, "removals":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-eqz v3, :cond_20

    .line 345
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_20} :catch_21

    .line 349
    .end local v3    # "removals":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    :cond_20
    goto :goto_22

    .line 347
    :catch_21
    move-exception v3

    .line 350
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :goto_22
    goto :goto_9

    .line 351
    :cond_23
    return-object v0
.end method

.method public final varargs blacklist removeAll([Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 328
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Relation;->removeAll(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeAll(Landroid/icu/impl/Relation;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/Relation<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 311
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "toBeRemoved":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    const/4 v0, 0x0

    .line 312
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/icu/impl/Relation;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 314
    .local v2, "key":Ljava/lang/Object;, "TK;"
    :try_start_13
    invoke-virtual {p1, v2}, Landroid/icu/impl/Relation;->getAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 315
    .local v3, "values":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-eqz v3, :cond_1e

    .line 316
    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/Relation;->removeAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v4
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_1d} :catch_1f

    or-int/2addr v0, v4

    .line 320
    .end local v3    # "values":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    :cond_1e
    goto :goto_20

    .line 318
    :catch_1f
    move-exception v3

    .line 321
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :goto_20
    goto :goto_9

    .line 322
    :cond_21
    return v0
.end method

.method public blacklist removeAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "TV;>;)Z"
        }
    .end annotation

    .line 332
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "toBeRemoved":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    const/4 v0, 0x0

    .line 333
    .local v0, "result":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 334
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v2}, Landroid/icu/impl/Relation;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 335
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_5

    .line 336
    :cond_15
    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 215
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 231
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist values(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "TV;>;>(TC;)TC;"
        }
    .end annotation

    .line 223
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "result":Ljava/util/Collection;, "TC;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    .local v1, "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Set<TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 225
    .end local v1    # "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Set<TV;>;>;"
    goto :goto_a

    .line 226
    :cond_20
    return-object p1
.end method

.method public blacklist values()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 219
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p0, v0}, Landroid/icu/impl/Relation;->values(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

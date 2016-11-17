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
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/impl/Relation",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Set",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field volatile frozen:Z

.field setComparatorParam:[Ljava/lang/Object;

.field setCreator:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Ljava/util/Set",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Set",
            "<TV;>;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p2, "setCreator":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/Relation;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Comparator;)V

    #@4
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Set",
            "<TV;>;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Comparator",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p2, "setCreator":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "setComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TV;>;"
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 275
    iput-boolean v2, p0, Landroid/icu/impl/Relation;->frozen:Z

    #@7
    .line 54
    if-nez p3, :cond_1

    #@9
    :goto_0
    :try_start_0
    iput-object v1, p0, Landroid/icu/impl/Relation;->setComparatorParam:[Ljava/lang/Object;

    #@b
    .line 55
    if-nez p3, :cond_2

    #@d
    .line 56
    const/4 v1, 0x0

    #@e
    new-array v1, v1, [Ljava/lang/Class;

    #@10
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/icu/impl/Relation;->setCreator:Ljava/lang/reflect/Constructor;

    #@16
    .line 57
    iget-object v1, p0, Landroid/icu/impl/Relation;->setCreator:Ljava/lang/reflect/Constructor;

    #@18
    iget-object v2, p0, Landroid/icu/impl/Relation;->setComparatorParam:[Ljava/lang/Object;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 62
    :goto_1
    if-nez p1, :cond_0

    #@1f
    new-instance p1, Ljava/util/HashMap;

    #@21
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    #@24
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@26
    .line 52
    return-void

    #@27
    .line 54
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    :cond_1
    const/4 v1, 0x1

    #@28
    new-array v1, v1, [Ljava/lang/Object;

    #@2a
    const/4 v2, 0x0

    #@2b
    aput-object p3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    goto :goto_0

    #@2e
    .line 63
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    :catch_0
    move-exception v0

    #@2f
    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v2, "Can\'t create new set"

    #@34
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Ljava/lang/RuntimeException;

    #@3d
    throw v1

    #@3e
    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    :cond_2
    const/4 v1, 0x1

    #@3f
    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    #@41
    const-class v2, Ljava/util/Comparator;

    #@43
    const/4 v3, 0x0

    #@44
    aput-object v2, v1, v3

    #@46
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@49
    move-result-object v1

    #@4a
    iput-object v1, p0, Landroid/icu/impl/Relation;->setCreator:Ljava/lang/reflect/Constructor;

    #@4c
    .line 60
    iget-object v1, p0, Landroid/icu/impl/Relation;->setCreator:Ljava/lang/reflect/Constructor;

    #@4e
    iget-object v2, p0, Landroid/icu/impl/Relation;->setComparatorParam:[Ljava/lang/Object;

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@53
    goto :goto_1
.end method

.method private newSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 166
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/Relation;->setCreator:Ljava/lang/reflect/Constructor;

    #@2
    iget-object v2, p0, Landroid/icu/impl/Relation;->setComparatorParam:[Ljava/lang/Object;

    #@4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return-object v1

    #@b
    .line 167
    :catch_0
    move-exception v0

    #@c
    .line 168
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v2, "Can\'t create new set"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/RuntimeException;

    #@1a
    throw v1
.end method

.method public static of(Ljava/util/Map;Ljava/lang/Class;)Landroid/icu/impl/Relation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Set",
            "<TV;>;>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/icu/impl/Relation",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p1, "setCreator":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/icu/impl/Relation;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Relation;-><init>(Ljava/util/Map;Ljava/lang/Class;)V

    #@5
    return-object v0
.end method

.method public static of(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Comparator;)Landroid/icu/impl/Relation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Set",
            "<TV;>;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Comparator",
            "<TV;>;)",
            "Landroid/icu/impl/Relation",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p1, "setCreator":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "setComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TV;>;"
    new-instance v0, Landroid/icu/impl/Relation;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Relation;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Comparator;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public addAllInverted(Landroid/icu/impl/Relation;)Landroid/icu/impl/Relation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/Relation",
            "<TV;TK;>;)",
            "Landroid/icu/impl/Relation",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 260
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "source":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TV;TK;>;"
    iget-object v4, p1, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v4

    #@6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "value$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    .line 261
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v4, p1, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@16
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Ljava/util/Set;

    #@1c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_0

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    .line 262
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    goto :goto_0

    #@2e
    .line 265
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    return-object p0
.end method

.method public addAllInverted(Ljava/util/Map;)Landroid/icu/impl/Relation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TV;TK;>;)",
            "Landroid/icu/impl/Relation",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 269
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<TV;TK;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 270
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p0, v2, v0}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    goto :goto_0

    #@1a
    .line 272
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object p0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 69
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 68
    return-void
.end method

.method public cloneAsThawed()Landroid/icu/impl/Relation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Relation",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 296
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 294
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Relation;->cloneAsThawed()Landroid/icu/impl/Relation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 73
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 77
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v2, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "values$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Set;

    #@16
    .line 78
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 79
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 82
    .end local v0    # "values":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    :cond_1
    const/4 v2, 0x0

    #@1f
    return v2
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Relation;->keyValueSet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 104
    if-nez p1, :cond_0

    #@3
    .line 105
    return v2

    #@4
    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    if-eq v0, v1, :cond_1

    #@e
    .line 107
    return v2

    #@f
    .line 108
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@11
    check-cast p1, Landroid/icu/impl/Relation;

    #@13
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@15
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public freeze()Landroid/icu/impl/Relation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Relation",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 282
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-boolean v2, p0, Landroid/icu/impl/Relation;->frozen:Z

    #@2
    if-nez v2, :cond_1

    #@4
    .line 284
    iget-object v2, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@6
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    .line 285
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@1a
    iget-object v2, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@1c
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/util/Set;

    #@22
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    goto :goto_0

    #@2a
    .line 288
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2c
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@2f
    move-result-object v2

    #@30
    iput-object v2, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@32
    .line 289
    const/4 v2, 0x1

    #@33
    iput-boolean v2, p0, Landroid/icu/impl/Relation;->frozen:Z

    #@35
    .line 291
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 281
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    invoke-virtual {p0}, Landroid/icu/impl/Relation;->freeze()Landroid/icu/impl/Relation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Set;

    #@8
    return-object v0
.end method

.method public getAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 119
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Set;

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 127
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 131
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 278
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-boolean v0, p0, Landroid/icu/impl/Relation;->frozen:Z

    #@2
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 135
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public keyValueSet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 94
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    .line 95
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v5, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@7
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@a
    move-result-object v5

    #@b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    .line 96
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@1b
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, Ljava/util/Set;

    #@21
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v4

    #@25
    .local v4, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_0

    #@2b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    .line 97
    .local v3, "value":Ljava/lang/Object;, "TV;"
    new-instance v5, Landroid/icu/impl/Relation$SimpleEntry;

    #@31
    invoke-direct {v5, v0, v3}, Landroid/icu/impl/Relation$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@34
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_0

    #@38
    .line 100
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    .end local v4    # "value$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public keyValuesSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Set",
            "<TV;>;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 90
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 139
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Set;

    #@8
    .line 140
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_0

    #@a
    .line 141
    iget-object v1, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@c
    invoke-direct {p0}, Landroid/icu/impl/Relation;->newSet()Ljava/util/Set;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 143
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@16
    .line 144
    return-object p2
.end method

.method public putAll(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    const/4 v1, 0x0

    #@1
    .line 148
    iget-object v2, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@3
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/Set;

    #@9
    .line 149
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_0

    #@b
    .line 150
    iget-object v2, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@d
    invoke-direct {p0}, Landroid/icu/impl/Relation;->newSet()Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 152
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@17
    .line 153
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_1

    #@1d
    :goto_0
    return-object v1

    #@1e
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    goto :goto_0
.end method

.method public putAll(Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TK;>;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 157
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    #@1
    .line 158
    .local v2, "result":Ljava/lang/Object;, "TV;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .end local v2    # "result":Ljava/lang/Object;, "TV;"
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 159
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    .restart local v2    # "result":Ljava/lang/Object;, "TV;"
    goto :goto_0

    #@14
    .line 161
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "result":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object v2
.end method

.method public putAll(Landroid/icu/impl/Relation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/Relation",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 179
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "t":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<+TK;+TV;>;"
    invoke-virtual {p1}, Landroid/icu/impl/Relation;->keySet()Ljava/util/Set;

    #@3
    move-result-object v4

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 180
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v0}, Landroid/icu/impl/Relation;->getAll(Ljava/lang/Object;)Ljava/util/Set;

    #@15
    move-result-object v4

    #@16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v3

    #@1a
    .local v3, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    .line 181
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    goto :goto_0

    #@28
    .line 178
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    .end local v3    # "value$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 174
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    goto :goto_0

    #@1a
    .line 172
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    #@1
    .line 196
    :try_start_0
    iget-object v3, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@3
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Ljava/util/Set;

    #@9
    .line 197
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v2, :cond_0

    #@b
    .line 198
    return v4

    #@c
    .line 200
    :cond_0
    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    .line 201
    .local v1, "result":Z
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    .line 202
    iget-object v3, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@18
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 204
    :cond_1
    return v1

    #@1c
    .line 205
    .end local v1    # "result":Z
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    :catch_0
    move-exception v0

    #@1d
    .line 206
    .local v0, "e":Ljava/lang/NullPointerException;
    return v4
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 188
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 189
    :catch_0
    move-exception v0

    #@a
    .line 190
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public removeAll(Ljava/util/Collection;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TK;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 327
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "toBeRemoved":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    new-instance v4, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    .line 328
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 330
    .local v1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@15
    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Ljava/util/Set;

    #@1b
    .line 331
    .local v3, "removals":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-eqz v3, :cond_0

    #@1d
    .line 332
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    goto :goto_0

    #@21
    .line 334
    .end local v3    # "removals":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    :catch_0
    move-exception v0

    #@22
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    #@23
    .line 338
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-object v4
.end method

.method public varargs removeAll([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 315
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/impl/Relation;->removeAll(Ljava/util/Collection;)Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public removeAll(Landroid/icu/impl/Relation;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/Relation",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 300
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "toBeRemoved":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 301
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/icu/impl/Relation;->keySet()Ljava/util/Set;

    #@4
    move-result-object v5

    #@5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .end local v3    # "result":Z
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 303
    .local v1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/icu/impl/Relation;->getAll(Ljava/lang/Object;)Ljava/util/Set;

    #@16
    move-result-object v4

    #@17
    .line 304
    .local v4, "values":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-eqz v4, :cond_0

    #@19
    .line 305
    invoke-virtual {p0, v1, v4}, Landroid/icu/impl/Relation;->removeAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result v5

    #@1d
    or-int/2addr v3, v5

    #@1e
    .local v3, "result":Z
    goto :goto_0

    #@1f
    .line 311
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "result":Z
    .end local v4    # "values":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    :cond_1
    return v3

    #@20
    .line 307
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    :catch_0
    move-exception v0

    #@21
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 319
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "toBeRemoved":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    const/4 v0, 0x0

    #@1
    .line 320
    .local v0, "result":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v2

    #@5
    .end local v0    # "result":Z
    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 321
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/Relation;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    or-int/2addr v0, v3

    #@14
    .local v0, "result":Z
    goto :goto_0

    #@15
    .line 323
    .end local v0    # "result":Z
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 211
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 226
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public values(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<TV;>;>(TC;)TC;"
        }
    .end annotation

    #@0
    .prologue
    .line 219
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    .local p1, "result":Ljava/util/Collection;, "TC;"
    iget-object v2, p0, Landroid/icu/impl/Relation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "keyValue$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Map$Entry;

    #@16
    .line 220
    .local v0, "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Set<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/util/Collection;

    #@1c
    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@1f
    goto :goto_0

    #@20
    .line 222
    .end local v0    # "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Set<TV;>;>;"
    :cond_0
    return-object p1
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 215
    .local p0, "this":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Landroid/icu/impl/Relation;->values(Ljava/util/Collection;)Ljava/util/Collection;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/Set;

    #@b
    return-object v0
.end method

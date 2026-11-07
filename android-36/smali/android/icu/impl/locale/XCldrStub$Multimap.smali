.class public Landroid/icu/impl/locale/XCldrStub$Multimap;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Multimap"
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
.field private final greylist-max-o map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o setClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Ljava/util/Map;Ljava/lang/Class;)V
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

    .line 46
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Set<TV;>;>;"
    .local p2, "setClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    .line 48
    if-eqz p2, :cond_9

    .line 49
    move-object v0, p2

    goto :goto_b

    .line 50
    :cond_9
    const-class v0, Ljava/util/HashSet;

    :goto_b
    iput-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->setClass:Ljava/lang/Class;

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Ljava/lang/Class;Landroid/icu/impl/locale/XCldrStub-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/locale/XCldrStub$Multimap;-><init>(Ljava/util/Map;Ljava/lang/Class;)V

    return-void
.end method

.method private greylist-max-o createSetIfMissing(Ljava/lang/Object;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 80
    .local v0, "old":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_14

    .line 81
    iget-object v1, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-direct {p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->getInstance()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_14
    return-object v0
.end method

.method private greylist-max-o getInstance()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->setClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 88
    :catch_9
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/icu/util/ICUException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist asMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist entries()Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    new-instance v0, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;

    iget-object v1, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/XCldrStub$MultimapIterator;-><init>(Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub-IA;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 121
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    if-eq p0, p1, :cond_1e

    if-eqz p1, :cond_1c

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/locale/XCldrStub$Multimap;

    iget-object v1, v1, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    .line 124
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 121
    :goto_1f
    return v0
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 94
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 129
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

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

    .line 97
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->createSetIfMissing(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public final varargs blacklist putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 55
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    array-length v0, p2

    if-eqz v0, :cond_e

    .line 56
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->createSetIfMissing(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_e
    return-object p0
.end method

.method public blacklist putAll(Landroid/icu/impl/locale/XCldrStub$Multimap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    .local p1, "source":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    iget-object v0, p1, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Set<TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 73
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Set<TV;>;>;"
    goto :goto_a

    .line 74
    :cond_24
    return-void
.end method

.method public blacklist putAll(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 62
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->createSetIfMissing(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 64
    :cond_d
    return-void
.end method

.method public blacklist putAll(Ljava/util/Collection;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1, p2}, Landroid/icu/impl/locale/XCldrStub$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_4

    .line 69
    :cond_12
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 114
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public blacklist values()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Multimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 104
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Set<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 107
    :cond_11
    invoke-direct {p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->getInstance()Ljava/util/Set;

    move-result-object v1

    .line 108
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 109
    .local v3, "valueSet":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 110
    .end local v3    # "valueSet":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    goto :goto_19

    .line 111
    :cond_29
    return-object v1
.end method

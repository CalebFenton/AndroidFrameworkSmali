.class public Landroid/icu/impl/locale/XCldrStub$ImmutableMultimap;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmutableMultimap"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist copyOf(Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "TK;TV;>;)",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 365
    .local p0, "values":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 366
    .local v0, "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;Ljava/util/Set<TV;>;>;"
    invoke-virtual {p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 367
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Set<TV;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 368
    .local v3, "value":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3b

    .line 369
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    goto :goto_44

    .line 370
    :cond_3b
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 368
    :goto_44
    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Set<TV;>;>;"
    .end local v3    # "value":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    goto :goto_11

    .line 372
    :cond_48
    new-instance v1, Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/icu/impl/locale/XCldrStub$Multimap;-><init>(Ljava/util/Map;Ljava/lang/Class;Landroid/icu/impl/locale/XCldrStub-IA;)V

    return-object v1
.end method

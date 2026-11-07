.class public Landroid/icu/impl/locale/XCldrStub$Multimaps;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Multimaps"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist forMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 1
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

    .line 153
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    return-object p0
.end method

.method public static blacklist invertFrom(Landroid/icu/impl/locale/XCldrStub$Multimap;Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "TK;TV;>;>(",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "TV;TK;>;TR;)TR;"
        }
    .end annotation

    .line 138
    .local p0, "source":Landroid/icu/impl/locale/XCldrStub$Multimap;, "Landroid/icu/impl/locale/XCldrStub$Multimap<TV;TK;>;"
    .local p1, "target":Landroid/icu/impl/locale/XCldrStub$Multimap;, "TR;"
    invoke-virtual {p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 139
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;Ljava/util/Set<TK;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 140
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;Ljava/util/Set<TK;>;>;"
    goto :goto_c

    .line 141
    :cond_26
    return-object p1
.end method

.method public static blacklist invertFrom(Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "TK;TV;>;>(",
            "Ljava/util/Map<",
            "TV;TK;>;TR;)TR;"
        }
    .end annotation

    .line 144
    .local p0, "source":Ljava/util/Map;, "Ljava/util/Map<TV;TK;>;"
    .local p1, "target":Landroid/icu/impl/locale/XCldrStub$Multimap;, "TR;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 145
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;TK;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/icu/impl/locale/XCldrStub$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TV;TK;>;"
    goto :goto_8

    .line 147
    :cond_20
    return-object p1
.end method

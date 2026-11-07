.class public interface abstract Ljava/util/Map;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Map$Entry;
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


# direct methods
.method public static whitelist test-api copyOf(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1743
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v0, p0, Ljava/util/ImmutableCollections$AbstractImmutableMap;

    if-eqz v0, :cond_5

    .line 1744
    return-object p0

    .line 1745
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1746
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1748
    :cond_10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1721
    .local p0, "k":Ljava/lang/Object;, "TK;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/KeyValueHolder;

    invoke-direct {v0, p0, p1}, Ljava/util/KeyValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1348
    sget-object v0, Ljava/util/ImmutableCollections;->EMPTY_MAP:Ljava/util/ImmutableCollections$MapN;

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1365
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/ImmutableCollections$Map1;

    invoke-direct {v0, p0, p1}, Ljava/util/ImmutableCollections$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1385
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1407
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1431
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1457
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    filled-new-array/range {p0 .. p9}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1486
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    .local p10, "k6":Ljava/lang/Object;, "TK;"
    .local p11, "v6":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    filled-new-array/range {p0 .. p11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1518
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    .local p10, "k6":Ljava/lang/Object;, "TK;"
    .local p11, "v6":Ljava/lang/Object;, "TV;"
    .local p12, "k7":Ljava/lang/Object;, "TK;"
    .local p13, "v7":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    filled-new-array/range {p0 .. p13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1552
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    .local p10, "k6":Ljava/lang/Object;, "TK;"
    .local p11, "v6":Ljava/lang/Object;, "TV;"
    .local p12, "k7":Ljava/lang/Object;, "TK;"
    .local p13, "v7":Ljava/lang/Object;, "TV;"
    .local p14, "k8":Ljava/lang/Object;, "TK;"
    .local p15, "v8":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    filled-new-array/range {p0 .. p15}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1588
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    .local p10, "k6":Ljava/lang/Object;, "TK;"
    .local p11, "v6":Ljava/lang/Object;, "TV;"
    .local p12, "k7":Ljava/lang/Object;, "TK;"
    .local p13, "v7":Ljava/lang/Object;, "TV;"
    .local p14, "k8":Ljava/lang/Object;, "TK;"
    .local p15, "v8":Ljava/lang/Object;, "TV;"
    .local p16, "k9":Ljava/lang/Object;, "TK;"
    .local p17, "v9":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    filled-new-array/range {p0 .. p17}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1626
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    .local p10, "k6":Ljava/lang/Object;, "TK;"
    .local p11, "v6":Ljava/lang/Object;, "TV;"
    .local p12, "k7":Ljava/lang/Object;, "TK;"
    .local p13, "v7":Ljava/lang/Object;, "TV;"
    .local p14, "k8":Ljava/lang/Object;, "TK;"
    .local p15, "v8":Ljava/lang/Object;, "TV;"
    .local p16, "k9":Ljava/lang/Object;, "TK;"
    .local p17, "v9":Ljava/lang/Object;, "TV;"
    .local p18, "k10":Ljava/lang/Object;, "TK;"
    .local p19, "v10":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    filled-new-array/range {p0 .. p19}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs whitelist test-api ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1664
    .local p0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<+TK;+TV;>;"
    array-length v0, p0

    if-nez v0, :cond_6

    .line 1666
    sget-object v0, Ljava/util/ImmutableCollections;->EMPTY_MAP:Ljava/util/ImmutableCollections$MapN;

    .line 1667
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    return-object v0

    .line 1668
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    .line 1670
    new-instance v0, Ljava/util/ImmutableCollections$Map1;

    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aget-object v1, p0, v1

    .line 1671
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/util/ImmutableCollections$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1670
    return-object v0

    .line 1673
    :cond_1d
    array-length v0, p0

    shl-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1674
    .local v0, "kva":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1675
    .local v2, "a":I
    array-length v3, p0

    :goto_23
    if-ge v1, v3, :cond_3a

    aget-object v4, p0, v1

    .line 1677
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "a":I
    .local v5, "a":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v2

    .line 1678
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "a":I
    .restart local v2    # "a":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v5

    .line 1675
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1680
    :cond_3a
    new-instance v1, Ljava/util/ImmutableCollections$MapN;

    invoke-direct {v1, v0}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public abstract whitelist test-api clear()V
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1225
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1228
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1229
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1c

    .line 1231
    const/4 v2, 0x0

    if-nez v0, :cond_18

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_18

    .line 1237
    :cond_17
    return-object v2

    .line 1233
    :cond_18
    :goto_18
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    return-object v2

    .line 1241
    :cond_1c
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    return-object v1
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1062
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_15

    .line 1066
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_15

    .line 1067
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    return-object v2

    .line 1072
    .end local v2    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_15
    return-object v1
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1139
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 1142
    invoke-interface {p2, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1143
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_15

    .line 1144
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    return-object v0

    .line 1147
    :cond_15
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    return-object v2

    .line 1151
    .end local v0    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_19
    return-object v2
.end method

.method public abstract whitelist test-api containsKey(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api containsValue(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 722
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 727
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :try_start_17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 728
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_1f} :catch_24

    .line 732
    .local v3, "v":Ljava/lang/Object;, "TV;"
    nop

    .line 733
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 734
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_b

    .line 729
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :catch_24
    move-exception v0

    .line 731
    .local v0, "ise":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 735
    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2b
    return-void
.end method

.method public abstract whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 691
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_10

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    .line 693
    :cond_e
    move-object v0, p2

    goto :goto_11

    .line 692
    :cond_10
    :goto_10
    move-object v0, v1

    .line 691
    :goto_11
    return-object v0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public abstract whitelist test-api isEmpty()Z
.end method

.method public abstract whitelist test-api keySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1323
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1326
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_e

    move-object v1, p2

    goto :goto_12

    .line 1327
    :cond_e
    invoke-interface {p3, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_12
    nop

    .line 1328
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_19

    .line 1329
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 1331
    :cond_19
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    :goto_1c
    return-object v1
.end method

.method public abstract whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api putAll(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 838
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 839
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_a

    .line 840
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 843
    :cond_a
    return-object v0
.end method

.method public abstract whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 881
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 882
    .local v0, "curValue":Ljava/lang/Object;
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-nez v0, :cond_13

    .line 883
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_18

    .line 886
    :cond_13
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const/4 v1, 0x1

    return v1

    .line 884
    :cond_18
    :goto_18
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 980
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "curValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_d

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 981
    :cond_d
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 983
    :cond_11
    return-object v1
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 931
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 932
    .local v0, "curValue":Ljava/lang/Object;
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-nez v0, :cond_13

    .line 933
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_18

    .line 936
    :cond_13
    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const/4 v1, 0x1

    return v1

    .line 934
    :cond_18
    :goto_18
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 772
    .local p0, "this":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 777
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :try_start_17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 778
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_1f} :catch_30

    .line 782
    .local v3, "v":Ljava/lang/Object;, "TV;"
    nop

    .line 785
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 788
    :try_start_24
    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_27} :catch_29

    .line 792
    nop

    .line 793
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_b

    .line 789
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v2    # "k":Ljava/lang/Object;, "TK;"
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    :catch_29
    move-exception v0

    .line 791
    .local v0, "ise":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 779
    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :catch_30
    move-exception v0

    .line 781
    .restart local v0    # "ise":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 794
    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_37
    return-void
.end method

.method public abstract whitelist test-api size()I
.end method

.method public abstract whitelist test-api values()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

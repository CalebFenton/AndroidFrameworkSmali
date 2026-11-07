.class Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
.super Ljava/util/Collections$UnmodifiableSet;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;,
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6d0066a59f08eab5L


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    .line 1818
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    .line 1819
    return-void
.end method

.method static greylist-max-o entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;"
        }
    .end annotation

    .line 1823
    .local p0, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$entryConsumer$0(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .registers 3
    .param p0, "action"    # Ljava/util/function/Consumer;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 1823
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v0, p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1956
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    .line 1957
    const/4 v0, 0x0

    return v0

    .line 1958
    :cond_6
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    new-instance v1, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1968
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1969
    .local v1, "e":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1970
    const/4 v0, 0x0

    return v0

    .line 1971
    .end local v1    # "e":Ljava/lang/Object;
    :cond_16
    goto :goto_4

    .line 1972
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1975
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    if-ne p1, p0, :cond_4

    .line 1976
    const/4 v0, 0x1

    return v0

    .line 1984
    :cond_4
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1985
    return v1

    .line 1986
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 1987
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 1988
    return v1

    .line 1989
    :cond_1a
    invoke-virtual {p0, v0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1827
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1829
    return-void
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1902
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;-><init>(Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;)V

    return-object v0
.end method

.method public whitelist test-api parallelStream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1898
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1887
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    .line 1888
    invoke-interface {v1}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;-><init>(Ljava/util/Spliterator;)V

    .line 1887
    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1893
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 5

    .line 1924
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1925
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 1926
    new-instance v2, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, v3}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v2, v0, v1

    .line 1925
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1927
    .end local v1    # "i":I
    :cond_18
    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1935
    .local p0, "this":Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move-object v1, p1

    goto :goto_c

    :cond_8
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 1937
    .local v0, "arr":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v3, v0

    if-ge v1, v3, :cond_22

    .line 1938
    new-instance v3, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, v4}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v3, v0, v1

    .line 1937
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1940
    .end local v1    # "i":I
    :cond_22
    array-length v1, v0

    array-length v3, p1

    if-le v1, v3, :cond_27

    .line 1941
    return-object v0

    .line 1943
    :cond_27
    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1944
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_33

    .line 1945
    array-length v1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 1946
    :cond_33
    return-object p1
.end method

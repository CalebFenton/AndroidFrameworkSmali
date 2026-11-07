.class Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reversed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;,
        Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final blacklist base:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field final blacklist lock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3
    .param p2, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1750
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "base":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1751
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    .line 1752
    iput-object p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    .line 1753
    return-void
.end method

.method static synthetic blacklist lambda$toArray$0([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "i"    # I

    .line 1930
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1957
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1958
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-interface {v1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1959
    monitor-exit v0

    .line 1960
    return-void

    .line 1959
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1835
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1836
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1972
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1973
    .local v0, "es":[Ljava/lang/Object;, "[TE;"
    array-length v1, v0

    if-lez v1, :cond_23

    .line 1974
    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1975
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1976
    :try_start_d
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1977
    monitor-exit v1

    .line 1978
    const/4 v1, 0x1

    return v1

    .line 1977
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_20

    throw v2

    .line 1980
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1841
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1842
    .local v0, "es":[Ljava/lang/Object;, "[TE;"
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_16

    .line 1843
    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1844
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1845
    const/4 v1, 0x1

    return v1

    .line 1847
    :cond_16
    return v2
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1963
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1964
    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1967
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1968
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 1852
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1853
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1856
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1860
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 1865
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1866
    return v0

    .line 1867
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1868
    return v2

    .line 1870
    :cond_a
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1871
    .local v1, "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 1872
    .local v3, "e2":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1873
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1874
    .local v4, "o1":Ljava/lang/Object;, "TE;"
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1875
    .local v5, "o2":Ljava/lang/Object;
    if-nez v4, :cond_2e

    if-nez v5, :cond_34

    goto :goto_35

    :cond_2e
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 1876
    :cond_34
    return v2

    .line 1877
    .end local v4    # "o1":Ljava/lang/Object;, "TE;"
    .end local v5    # "o2":Ljava/lang/Object;
    :cond_35
    :goto_35
    goto :goto_15

    .line 1878
    :cond_36
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_44

    :cond_43
    move v0, v2

    :goto_44
    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1820
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1821
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_4

    .line 1822
    :cond_12
    return-void
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1985
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1986
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1987
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1991
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1992
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1993
    .local v1, "size":I
    if-eqz v1, :cond_15

    .line 1996
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1994
    :cond_15
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    throw v2

    .line 1997
    .end local v1    # "size":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2001
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2002
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_14

    .line 2005
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2003
    :cond_14
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    throw v1

    .line 2006
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1883
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    const/4 v0, 0x1

    .line 1884
    .local v0, "hashCode":I
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1885
    .local v2, "e":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_15

    const/4 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_19
    add-int v0, v3, v4

    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_5

    .line 1886
    :cond_1c
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 2010
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2011
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2012
    .local v1, "i":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    goto :goto_16

    :cond_d
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_16
    monitor-exit v0

    return v2

    .line 2013
    .end local v1    # "i":I
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1890
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1825
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingIterator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;)V

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 2017
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2018
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2019
    .local v1, "i":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    goto :goto_16

    :cond_d
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_16
    monitor-exit v0

    return v2

    .line 2020
    .end local v1    # "i":I
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2024
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;I)V

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2028
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;I)V

    return-object v0
.end method

.method public whitelist test-api parallelStream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 1894
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 2032
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2033
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2034
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1898
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1899
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1900
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 1901
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1902
    :cond_d
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->remove(I)Ljava/lang/Object;

    .line 1903
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1904
    .end local v1    # "index":I
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1908
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2038
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2039
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2040
    .local v1, "size":I
    if-eqz v1, :cond_15

    .line 2043
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2041
    :cond_15
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    throw v2

    .line 2044
    .end local v1    # "size":I
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 2057
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2048
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2049
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_14

    .line 2052
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2050
    :cond_14
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    throw v1

    .line 2053
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 2061
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 2062
    return-void
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1912
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api reversed()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 2083
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 1746
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->reversed()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 2069
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2070
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2071
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1916
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 2065
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 2066
    return-void
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1829
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 1920
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 2075
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2076
    :try_start_3
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2077
    .local v1, "size":I
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    sub-int v3, v1, p2

    sub-int v4, v1, p1

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 2078
    .local v2, "sub":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;

    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    invoke-direct {v3, v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v3

    .line 2079
    .end local v1    # "size":I
    .end local v2    # "sub":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 1924
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1934
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1930
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1939
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1940
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1941
    const-string v1, "[]"

    return-object v1

    .line 1943
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1944
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1946
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1947
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-ne v2, p0, :cond_20

    const-string v3, "(this Collection)"

    goto :goto_21

    :cond_20
    move-object v3, v2

    :goto_21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1948
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_35

    .line 1949
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1950
    :cond_35
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1951
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_17
.end method

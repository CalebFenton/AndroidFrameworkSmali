.class final Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
.super Ljava/util/concurrent/ConcurrentHashMap$CollectionView;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValuesView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<",
        "TK;TV;TV;>;",
        "Ljava/util/Collection<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1f364c905893293dL


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4730
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 4755
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 4758
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 4732
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 4786
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_1f

    .line 4788
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1e

    .line 4789
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 4790
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_1e

    .line 4791
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_11

    .line 4793
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1e
    return-void

    .line 4786
    .end local v1    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api iterator()Ljava/util/Iterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 4748
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4750
    .local v5, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v1

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    array-length v0, v1

    :goto_a
    move v2, v0

    .line 4751
    .local v2, "f":I
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    const/4 v3, 0x0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public final whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 4736
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    if-eqz p1, :cond_1b

    .line 4737
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4738
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4739
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 4740
    const/4 v1, 0x1

    return v1

    .line 4744
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4762
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_1d

    .line 4763
    const/4 v0, 0x0

    .line 4764
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4765
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4766
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4767
    const/4 v0, 0x1

    goto :goto_7

    .line 4770
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1c
    return v0

    .line 4762
    .end local v0    # "modified":Z
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 4774
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->removeValueIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 4779
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap$ValuesView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4780
    .local v0, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v1

    .line 4781
    .local v1, "n":J
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v3

    .local v5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v3, :cond_d

    const/4 v3, 0x0

    goto :goto_e

    :cond_d
    array-length v3, v5

    :goto_e
    move v6, v3

    .line 4782
    .local v6, "f":I
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    const-wide/16 v7, 0x0

    cmp-long v3, v1, v7

    if-gez v3, :cond_19

    move-wide v9, v7

    goto :goto_1a

    :cond_19
    move-wide v9, v1

    :goto_1a
    const/4 v7, 0x0

    move v8, v6

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    return-object v4
.end method

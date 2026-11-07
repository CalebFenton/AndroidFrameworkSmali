.class public final Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
.super Ljava/util/concurrent/ConcurrentHashMap$CollectionView;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$CollectionView<",
        "TK;TV;TK;>;",
        "Ljava/util/Set<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private final greylist-max-o value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 4609
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 4610
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    .line 4611
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 4661
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_11

    .line 4663
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2

    .line 4662
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 4678
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v0, 0x0

    .line 4680
    .local v0, "added":Z
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_20

    .line 4682
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4683
    .local v3, "e":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1e

    .line 4684
    const/4 v0, 0x1

    .line 4685
    .end local v3    # "e":Ljava/lang/Object;, "TK;"
    :cond_1e
    goto :goto_a

    .line 4686
    :cond_1f
    return v0

    .line 4681
    :cond_20
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 4626
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 4698
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    move-object v1, v0

    .local v1, "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    if-eq v0, p0, :cond_16

    .line 4700
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    .end local v1    # "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_18
    const/4 v0, 0x0

    .line 4698
    :goto_19
    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 4712
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_1f

    .line 4714
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1e

    .line 4715
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    .line 4716
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_1e

    .line 4717
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_11

    .line 4719
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v3    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1e
    return-void

    .line 4712
    .end local v1    # "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api getMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .line 4603
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->getMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMappedValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 4620
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 4690
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    const/4 v0, 0x0

    .line 4691
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4692
    .local v2, "e":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "e":Ljava/lang/Object;, "TK;"
    goto :goto_5

    .line 4693
    :cond_15
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 4644
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4645
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

    .line 4646
    .local v2, "f":I
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    const/4 v3, 0x0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 4637
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public bridge synthetic whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4603
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 4705
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4706
    .local v0, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v1

    .line 4707
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

    .line 4708
    .local v6, "f":I
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;

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

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ConcurrentHashMap$KeySpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    return-object v4
.end method

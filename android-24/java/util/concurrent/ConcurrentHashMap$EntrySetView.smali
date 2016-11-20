.class final Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;
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
    accessFlags = 0x18
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$CollectionView",
        "<TK;TV;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4754
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4783
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    #@2
    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->add(Ljava/util/Map$Entry;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 4784
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4788
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v0, 0x0

    #@1
    .line 4789
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v2

    #@5
    .local v2, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/util/Map$Entry;

    #@11
    .line 4790
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->add(Ljava/util/Map$Entry;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 4791
    const/4 v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 4793
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4758
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    instance-of v4, p1, Ljava/util/Map$Entry;

    #@2
    if-eqz v4, :cond_1

    #@4
    move-object v0, p1

    #@5
    .line 4759
    check-cast v0, Ljava/util/Map$Entry;

    #@7
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    .local v1, "k":Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@d
    .line 4760
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@f
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    .local v2, "r":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@15
    .line 4761
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    .local v3, "v":Ljava/lang/Object;
    if-eqz v3, :cond_1

    #@1b
    .line 4762
    if-eq v3, v2, :cond_0

    #@1d
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    .line 4758
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "r":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :goto_0
    return v4

    #@22
    .line 4762
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v1    # "k":Ljava/lang/Object;
    .restart local v2    # "r":Ljava/lang/Object;
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x1

    #@23
    goto :goto_0

    #@24
    .line 4758
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "r":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    #@25
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 4814
    instance-of v2, p1, Ljava/util/Set;

    #@3
    if-eqz v2, :cond_0

    #@5
    move-object v0, p1

    #@6
    .line 4815
    check-cast v0, Ljava/util/Set;

    #@8
    .local v0, "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    if-eq v0, p0, :cond_1

    #@a
    .line 4816
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->containsAll(Ljava/util/Collection;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    #@13
    move-result v1

    #@14
    .line 4814
    .end local v0    # "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_0
    :goto_0
    return v1

    #@15
    .line 4815
    .restart local v0    # "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_1
    const/4 v1, 0x1

    #@16
    goto :goto_0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4828
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 4830
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@c
    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_1

    #@e
    .line 4831
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@10
    array-length v3, v2

    #@11
    array-length v4, v2

    #@12
    const/4 v5, 0x0

    #@13
    invoke-direct {v0, v2, v3, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@16
    .line 4832
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@19
    move-result-object v1

    #@1a
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_1

    #@1c
    .line 4833
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;

    #@1e
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@20
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@22
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@24
    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;)V

    #@27
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 4827
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    return-void
.end method

.method public final hashCode()I
    .locals 7

    #@0
    .prologue
    .line 4801
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 4803
    .local v0, "h":I
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    iget-object v3, v4, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@5
    .local v3, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_0

    #@7
    .line 4804
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    #@9
    array-length v4, v3

    #@a
    array-length v5, v3

    #@b
    const/4 v6, 0x0

    #@c
    invoke-direct {v1, v3, v4, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    #@f
    .line 4805
    .local v1, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@12
    move-result-object v2

    #@13
    .local v2, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_0

    #@15
    .line 4806
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap$Node;->hashCode()I

    #@18
    move-result v4

    #@19
    add-int/2addr v0, v4

    #@1a
    goto :goto_0

    #@1b
    .line 4809
    .end local v1    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4777
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    .line 4779
    .local v5, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@4
    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    .line 4780
    .local v2, "f":I
    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;

    #@9
    const/4 v3, 0x0

    #@a
    move v4, v2

    #@b
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    #@e
    return-object v0

    #@f
    .line 4779
    .end local v2    # "f":I
    :cond_0
    array-length v2, v1

    #@10
    .restart local v2    # "f":I
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4767
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@2
    if-eqz v3, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 4768
    check-cast v0, Ljava/util/Map$Entry;

    #@7
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    .local v1, "k":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@d
    .line 4769
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_0

    #@13
    .line 4770
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@15
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    .line 4767
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "v":Ljava/lang/Object;
    :goto_0
    return v3

    #@1a
    :cond_0
    const/4 v3, 0x0

    #@1b
    goto :goto_0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4797
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->removeEntryIf(Ljava/util/function/Predicate;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.EntrySetView<TK;TV;>;"
    const-wide/16 v6, 0x0

    #@2
    .line 4821
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$EntrySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@4
    .line 4822
    .local v8, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@7
    move-result-wide v10

    #@8
    .line 4823
    .local v10, "n":J
    iget-object v2, v8, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a
    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v2, :cond_0

    #@c
    const/4 v3, 0x0

    #@d
    .line 4824
    .local v3, "f":I
    :goto_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    #@f
    cmp-long v0, v10, v6

    #@11
    if-gez v0, :cond_1

    #@13
    :goto_1
    const/4 v4, 0x0

    #@14
    move v5, v3

    #@15
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$EntrySpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJLjava/util/concurrent/ConcurrentHashMap;)V

    #@18
    return-object v1

    #@19
    .line 4823
    .end local v3    # "f":I
    :cond_0
    array-length v3, v2

    #@1a
    .restart local v3    # "f":I
    goto :goto_0

    #@1b
    :cond_1
    move-wide v6, v10

    #@1c
    .line 4824
    goto :goto_1
.end method

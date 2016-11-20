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
        "Ljava/util/concurrent/ConcurrentHashMap$CollectionView",
        "<TK;TV;TV;>;",
        "Ljava/util/Collection",
        "<TV;>;",
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
    .line 4692
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4717
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4720
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4694
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4736
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 4738
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@c
    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_1

    #@e
    .line 4739
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
    .line 4740
    .local v0, "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@19
    move-result-object v1

    #@1a
    .local v1, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_1

    #@1c
    .line 4741
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    #@1e
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@21
    goto :goto_0

    #@22
    .line 4735
    .end local v0    # "it":Ljava/util/concurrent/ConcurrentHashMap$Traverser;, "Ljava/util/concurrent/ConcurrentHashMap$Traverser<TK;TV;>;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_1
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4710
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    .line 4712
    .local v5, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@4
    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    .line 4713
    .local v2, "f":I
    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    #@9
    const/4 v3, 0x0

    #@a
    move v4, v2

    #@b
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    #@e
    return-object v0

    #@f
    .line 4712
    .end local v2    # "f":I
    :cond_0
    array-length v2, v1

    #@10
    .restart local v2    # "f":I
    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4698
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    if-eqz p1, :cond_1

    #@2
    .line 4699
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 4700
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 4701
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@19
    .line 4702
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 4706
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1
    const/4 v1, 0x0

    #@1c
    return v1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4724
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->removeValueIf(Ljava/util/function/Predicate;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    const-wide/16 v6, 0x0

    #@2
    .line 4729
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@4
    .line 4730
    .local v0, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    #@7
    move-result-wide v8

    #@8
    .line 4731
    .local v8, "n":J
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@a
    .local v2, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v2, :cond_0

    #@c
    const/4 v3, 0x0

    #@d
    .line 4732
    .local v3, "f":I
    :goto_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    #@f
    cmp-long v4, v8, v6

    #@11
    if-gez v4, :cond_1

    #@13
    :goto_1
    const/4 v4, 0x0

    #@14
    move v5, v3

    #@15
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    #@18
    return-object v1

    #@19
    .line 4731
    .end local v3    # "f":I
    :cond_0
    array-length v3, v2

    #@1a
    .restart local v3    # "f":I
    goto :goto_0

    #@1b
    :cond_1
    move-wide v6, v8

    #@1c
    .line 4732
    goto :goto_1
.end method

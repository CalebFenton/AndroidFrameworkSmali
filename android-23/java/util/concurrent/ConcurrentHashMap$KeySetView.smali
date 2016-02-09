.class public Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
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
    accessFlags = 0x9
    name = "KeySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$CollectionView",
        "<TK;TV;TK;>;",
        "Ljava/util/Set",
        "<TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2944
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySetView<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    #@3
    .line 2945
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    #@5
    .line 2943
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySetView<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x1

    #@1
    .line 2996
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    #@3
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    #@5
    .line 2997
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@7
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@a
    throw v1

    #@b
    .line 2998
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    if-nez v2, :cond_1

    #@13
    :goto_0
    return v1

    #@14
    :cond_1
    const/4 v1, 0x0

    #@15
    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3013
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySetView<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v0, 0x0

    #@1
    .line 3015
    .local v0, "added":Z
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    #@3
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_0

    #@5
    .line 3016
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@7
    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@a
    throw v4

    #@b
    .line 3017
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "e$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_2

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    .line 3018
    .local v1, "e":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@1b
    const/4 v5, 0x1

    #@1c
    invoke-virtual {v4, v1, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    if-nez v4, :cond_1

    #@22
    .line 3019
    const/4 v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 3021
    .end local v1    # "e":Ljava/lang/Object;, "TK;"
    :cond_2
    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2961
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySetView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySetView<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 3033
    instance-of v2, p1, Ljava/util/Set;

    #@3
    if-eqz v2, :cond_0

    #@5
    move-object v0, p1

    #@6
    .line 3034
    check-cast v0, Ljava/util/Set;

    #@8
    .local v0, "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    if-eq v0, p0, :cond_1

    #@a
    .line 3035
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->containsAll(Ljava/util/Collection;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    #@13
    move-result v1

    #@14
    .line 3033
    .end local v0    # "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_0
    :goto_0
    return v1

    #@15
    .line 3034
    .restart local v0    # "c":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_1
    const/4 v1, 0x1

    #@16
    goto :goto_0
.end method

.method public bridge synthetic getMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySetView<TK;TV;>;"
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;->getMap()Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getMappedValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2955
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySetView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 3025
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySetView<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 3026
    .local v2, "h":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 3027
    .local v0, "e":Ljava/lang/Object;, "TK;"
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@12
    move-result v3

    #@13
    add-int/2addr v2, v3

    #@14
    goto :goto_0

    #@15
    .line 3028
    .end local v0    # "e":Ljava/lang/Object;, "TK;"
    :cond_0
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2979
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySetView<TK;TV;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    .line 2980
    .local v5, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@4
    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    .line 2981
    .local v2, "f":I
    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    #@9
    const/4 v3, 0x0

    #@a
    move v4, v2

    #@b
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    #@e
    return-object v0

    #@f
    .line 2980
    .end local v2    # "f":I
    :cond_0
    array-length v2, v1

    #@10
    .restart local v2    # "f":I
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2972
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$KeySetView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.KeySetView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

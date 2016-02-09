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
    .line 3048
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
    .line 3073
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
    .line 3076
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
    .line 3050
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
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
    .line 3066
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    .line 3068
    .local v5, "m":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@4
    .local v1, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-nez v1, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    .line 3069
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
    .line 3068
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
    .line 3054
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ValuesView;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.ValuesView<TK;TV;>;"
    if-eqz p1, :cond_1

    #@2
    .line 3055
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
    .line 3056
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
    .line 3057
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@19
    .line 3058
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 3062
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1
    const/4 v1, 0x0

    #@1c
    return v1
.end method

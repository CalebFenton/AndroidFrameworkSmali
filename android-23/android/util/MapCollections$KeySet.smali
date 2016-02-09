.class final Landroid/util/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/util/MapCollections;)V
    .locals 0

    #@0
    .prologue
    .line 267
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "this$0":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iput-object p1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 271
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 276
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 281
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    #@5
    .line 280
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    #@1
    .line 286
    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 291
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 341
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    const/4 v4, 0x0

    #@1
    .line 346
    const/4 v2, 0x0

    #@2
    .line 347
    .local v2, "result":I
    iget-object v3, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@4
    invoke-virtual {v3}, Landroid/util/MapCollections;->colGetSize()I

    #@7
    move-result v3

    #@8
    add-int/lit8 v0, v3, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@c
    .line 348
    iget-object v3, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@e
    invoke-virtual {v3, v0, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .line 349
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@14
    move v3, v4

    #@15
    :goto_1
    add-int/2addr v2, v3

    #@16
    .line 347
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 349
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@1c
    move-result v3

    #@1d
    goto :goto_1

    #@1e
    .line 351
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    #@1
    .line 296
    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@3
    invoke-virtual {v1}, Landroid/util/MapCollections;->colGetSize()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 301
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    new-instance v0, Landroid/util/MapCollections$ArrayIterator;

    #@2
    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroid/util/MapCollections$ArrayIterator;-><init>(Landroid/util/MapCollections;I)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    const/4 v2, 0x0

    #@1
    .line 306
    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 307
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@9
    .line 308
    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@b
    invoke-virtual {v1, v0}, Landroid/util/MapCollections;->colRemoveAt(I)V

    #@e
    .line 309
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 311
    :cond_0
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 316
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 321
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 326
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 331
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 336
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

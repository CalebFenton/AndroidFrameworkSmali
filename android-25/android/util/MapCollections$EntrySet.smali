.class final Landroid/util/MapCollections$EntrySet;
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
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/util/MapCollections;)V
    .locals 0

    #@0
    .prologue
    .line 165
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "this$0":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iput-object p1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 167
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/util/MapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 168
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "object":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
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
    .line 173
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v3, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-virtual {v3}, Landroid/util/MapCollections;->colGetSize()I

    #@5
    move-result v2

    #@6
    .line 174
    .local v2, "oldSize":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Map$Entry;

    #@16
    .line 175
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v3, v4, v5}, Landroid/util/MapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    #@23
    goto :goto_0

    #@24
    .line 177
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    iget-object v3, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@26
    invoke-virtual {v3}, Landroid/util/MapCollections;->colGetSize()I

    #@29
    move-result v3

    #@2a
    if-eq v2, v3, :cond_1

    #@2c
    const/4 v3, 0x1

    #@2d
    :goto_1
    return v3

    #@2e
    :cond_1
    const/4 v3, 0x0

    #@2f
    goto :goto_1
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 182
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    #@5
    .line 181
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    const/4 v5, 0x0

    #@1
    .line 187
    instance-of v3, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 188
    return v5

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 189
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 190
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v3, v4}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    #@12
    move-result v2

    #@13
    .line 191
    .local v2, "index":I
    if-gez v2, :cond_1

    #@15
    .line 192
    return v5

    #@16
    .line 194
    :cond_1
    iget-object v3, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@18
    const/4 v4, 0x1

    #@19
    invoke-virtual {v3, v2, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    .line 195
    .local v1, "foundVal":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    invoke-static {v1, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    return v3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 200
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 201
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Landroid/util/MapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 203
    const/4 v1, 0x0

    #@15
    return v1

    #@16
    .line 206
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 251
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    const/4 v5, 0x0

    #@1
    .line 256
    const/4 v2, 0x0

    #@2
    .line 257
    .local v2, "result":I
    iget-object v4, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@4
    invoke-virtual {v4}, Landroid/util/MapCollections;->colGetSize()I

    #@7
    move-result v4

    #@8
    add-int/lit8 v0, v4, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@c
    .line 258
    iget-object v4, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@e
    invoke-virtual {v4, v0, v5}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .line 259
    .local v1, "key":Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@14
    const/4 v6, 0x1

    #@15
    invoke-virtual {v4, v0, v6}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    .line 260
    .local v3, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@1b
    move v6, v5

    #@1c
    .line 261
    :goto_1
    if-nez v3, :cond_1

    #@1e
    move v4, v5

    #@1f
    .line 260
    :goto_2
    xor-int/2addr v4, v6

    #@20
    add-int/2addr v2, v4

    #@21
    .line 257
    add-int/lit8 v0, v0, -0x1

    #@23
    goto :goto_0

    #@24
    .line 260
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@27
    move-result v4

    #@28
    move v6, v4

    #@29
    goto :goto_1

    #@2a
    .line 261
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    #@2d
    move-result v4

    #@2e
    goto :goto_2

    #@2f
    .line 263
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return v2
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    #@1
    .line 211
    iget-object v1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

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
    .locals 2
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
    .line 216
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Landroid/util/MapCollections$MapIterator;

    #@2
    iget-object v1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@4
    invoke-direct {v0, v1}, Landroid/util/MapCollections$MapIterator;-><init>(Landroid/util/MapCollections;)V

    #@7
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 221
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
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
    .line 226
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
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
    .line 231
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 236
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    #@2
    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 241
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

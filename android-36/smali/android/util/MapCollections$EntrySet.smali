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
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/MapCollections;


# direct methods
.method constructor blacklist <init>(Landroid/util/MapCollections;)V
    .registers 2
    .param p1, "this$0"    # Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    iput-object p1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 170
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroid/util/MapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o add(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 173
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "object":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
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
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 178
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 179
    .local v0, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 180
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/MapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_a

    .line 182
    :cond_24
    iget-object v1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 187
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    .line 188
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 192
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 193
    return v1

    .line 194
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 196
    .local v2, "index":I
    if-gez v2, :cond_16

    .line 197
    return v1

    .line 199
    :cond_16
    iget-object v1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 200
    .local v1, "foundVal":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 205
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/MapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 208
    const/4 v1, 0x0

    return v1

    .line 211
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 256
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 261
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    .line 262
    .local v0, "result":I
    iget-object v1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2c

    .line 263
    iget-object v3, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 264
    .local v3, "key":Ljava/lang/Object;
    iget-object v5, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v5, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v5

    .line 265
    .local v5, "value":Ljava/lang/Object;
    if-nez v3, :cond_1c

    move v6, v4

    goto :goto_20

    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 266
    :goto_20
    if-nez v5, :cond_23

    goto :goto_27

    :cond_23
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_27
    xor-int/2addr v4, v6

    add-int/2addr v0, v4

    .line 262
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 268
    .end local v1    # "i":I
    :cond_2c
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 216
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Landroid/util/MapCollections$MapIterator;

    iget-object v1, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-direct {v0, v1}, Landroid/util/MapCollections$MapIterator;-><init>(Landroid/util/MapCollections;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 226
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 231
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 236
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 241
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroid/util/MapCollections$EntrySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 246
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 251
    .local p0, "this":Landroid/util/MapCollections$EntrySet;, "Landroid/util/MapCollections<TK;TV;>.EntrySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

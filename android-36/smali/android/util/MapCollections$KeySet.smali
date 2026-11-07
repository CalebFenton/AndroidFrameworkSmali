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
        "Ljava/util/Set<",
        "TK;>;"
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

    .line 272
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iput-object p1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 276
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 281
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 286
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    .line 287
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 291
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
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

    .line 296
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 346
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 351
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    .line 352
    .local v0, "result":I
    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 353
    iget-object v2, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    .line 354
    .local v2, "obj":Ljava/lang/Object;
    if-nez v2, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_19
    add-int/2addr v0, v3

    .line 352
    .end local v2    # "obj":Ljava/lang/Object;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 356
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 301
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    new-instance v0, Landroid/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/MapCollections$ArrayIterator;-><init>(Landroid/util/MapCollections;I)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 311
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 312
    .local v0, "index":I
    if-ltz v0, :cond_f

    .line 313
    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1, v0}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 314
    const/4 v1, 0x1

    return v1

    .line 316
    :cond_f
    const/4 v1, 0x0

    return v1
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

    .line 321
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
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

    .line 326
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 331
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 336
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 341
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 361
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x0

    const-string v2, "KeySet"

    invoke-static {v0, v1, p0, v2}, Landroid/util/MapCollections;->-$$Nest$mtoStringHelper(Landroid/util/MapCollections;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

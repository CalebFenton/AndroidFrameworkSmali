.class final Landroid/util/MapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuesCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
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

    .line 365
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iput-object p1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 369
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
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
            "+TV;>;)Z"
        }
    .end annotation

    .line 374
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 379
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    .line 380
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 384
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 389
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 390
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/MapCollections$ValuesCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 392
    const/4 v1, 0x0

    return v1

    .line 395
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 400
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

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
            "TV;>;"
        }
    .end annotation

    .line 405
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    new-instance v0, Landroid/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/MapCollections$ArrayIterator;-><init>(Landroid/util/MapCollections;I)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 410
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 411
    .local v0, "index":I
    if-ltz v0, :cond_f

    .line 412
    iget-object v1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1, v0}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 413
    const/4 v1, 0x1

    return v1

    .line 415
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 420
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 421
    .local v0, "N":I
    const/4 v1, 0x0

    .line 422
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_23

    .line 423
    iget-object v3, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 424
    .local v3, "cur":Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 425
    iget-object v5, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v5, v2}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 426
    add-int/lit8 v2, v2, -0x1

    .line 427
    add-int/lit8 v0, v0, -0x1

    .line 428
    const/4 v1, 0x1

    .line 422
    .end local v3    # "cur":Ljava/lang/Object;
    :cond_21
    add-int/2addr v2, v4

    goto :goto_8

    .line 431
    .end local v2    # "i":I
    :cond_23
    return v1
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 436
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 437
    .local v0, "N":I
    const/4 v1, 0x0

    .line 438
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_23

    .line 439
    iget-object v3, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 440
    .local v3, "cur":Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 441
    iget-object v5, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v5, v2}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 442
    add-int/lit8 v2, v2, -0x1

    .line 443
    add-int/lit8 v0, v0, -0x1

    .line 444
    const/4 v1, 0x1

    .line 438
    .end local v3    # "cur":Ljava/lang/Object;
    :cond_21
    add-int/2addr v2, v4

    goto :goto_8

    .line 447
    .end local v2    # "i":I
    :cond_23
    return v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 452
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 457
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x1

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

    .line 462
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 467
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x1

    const-string v2, "ValuesCollection"

    invoke-static {v0, v1, p0, v2}, Landroid/util/MapCollections;->-$$Nest$mtoStringHelper(Landroid/util/MapCollections;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

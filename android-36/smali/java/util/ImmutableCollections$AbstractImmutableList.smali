.class abstract Ljava/util/ImmutableCollections$AbstractImmutableList;
.super Ljava/util/ImmutableCollections$AbstractImmutableCollection;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 261
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableCollection;-><init>()V

    return-void
.end method

.method static blacklist subListRangeCheck(III)V
    .registers 6
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "size"    # I

    .line 280
    if-ltz p0, :cond_49

    .line 282
    if-gt p1, p2, :cond_30

    .line 284
    if-gt p0, p1, :cond_7

    .line 287
    return-void

    .line 285
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_30
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_49
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 265
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 266
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 338
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ImmutableCollections$AbstractImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 310
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 311
    return v0

    .line 314
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 315
    return v2

    .line 318
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 319
    .local v1, "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v4

    .local v4, "s":I
    :goto_16
    if-ge v3, v4, :cond_31

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {p0, v3}, Ljava/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_30

    .line 319
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 321
    :cond_30
    :goto_30
    return v2

    .line 324
    .end local v3    # "i":I
    .end local v4    # "s":I
    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 329
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    const/4 v0, 0x1

    .line 330
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_6
    if-ge v1, v2, :cond_17

    .line 331
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 333
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_17
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 291
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    new-instance v0, Ljava/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljava/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 296
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ImmutableCollections$AbstractImmutableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 301
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v0

    .line 302
    .local v0, "size":I
    if-ltz p1, :cond_e

    if-gt p1, v0, :cond_e

    .line 305
    new-instance v1, Ljava/util/ImmutableCollections$ListItr;

    invoke-direct {v1, p0, v0, p1}, Ljava/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;II)V

    return-object v1

    .line 303
    :cond_e
    invoke-virtual {p0, p1}, Ljava/util/ImmutableCollections$AbstractImmutableList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method blacklist outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;
    .registers 5
    .param p1, "index"    # I

    .line 347
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 267
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api reversed()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 343
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/ReverseOrderListView;->of(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 260
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;->reversed()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 269
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api sort(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 270
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {}, Ljava/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Ljava/util/ImmutableCollections$AbstractImmutableList;, "Ljava/util/ImmutableCollections$AbstractImmutableList<TE;>;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v0

    .line 275
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Ljava/util/ImmutableCollections$AbstractImmutableList;->subListRangeCheck(III)V

    .line 276
    invoke-static {p0, p1, p2}, Ljava/util/ImmutableCollections$SubList;->fromList(Ljava/util/ImmutableCollections$AbstractImmutableList;II)Ljava/util/ImmutableCollections$SubList;

    move-result-object v1

    return-object v1
.end method

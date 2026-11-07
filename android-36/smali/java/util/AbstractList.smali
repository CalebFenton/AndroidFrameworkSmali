.class public abstract Ljava/util/AbstractList;
.super Ljava/util/AbstractCollection;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractList$Itr;,
        Ljava/util/AbstractList$ListItr;,
        Ljava/util/AbstractList$RandomAccessSubList;,
        Ljava/util/AbstractList$SubList;,
        Ljava/util/AbstractList$RandomAccessSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected transient whitelist test-api modCount:I


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 80
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 630
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 81
    return-void
.end method

.method private greylist-max-o outOfBoundsMsg(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 638
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o rangeCheckForAdd(I)V
    .registers 4
    .param p1, "index"    # I

    .line 633
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    if-gt p1, v0, :cond_9

    .line 635
    return-void

    .line 634
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/AbstractList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist subListRangeCheck(III)V
    .registers 6
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "size"    # I

    .line 506
    if-ltz p0, :cond_49

    .line 508
    if-gt p1, p2, :cond_30

    .line 510
    if-gt p0, p1, :cond_7

    .line 513
    return-void

    .line 511
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

    .line 509
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

    .line 507
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

    .line 155
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 113
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 269
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList;->rangeCheckForAdd(I)V

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "modified":Z
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 272
    .local v2, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, p1, v2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 273
    const/4 v0, 0x1

    .line 274
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    move p1, v3

    goto :goto_8

    .line 275
    .end local v3    # "index":I
    .restart local p1    # "index":I
    :cond_1a
    return v0
.end method

.method public whitelist test-api clear()V
    .registers 3

    .line 245
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractList;->removeRange(II)V

    .line 246
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 540
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 541
    return v0

    .line 542
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 543
    return v2

    .line 545
    :cond_a
    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 546
    .local v1, "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 547
    .local v3, "e2":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 548
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 549
    .local v4, "o1":Ljava/lang/Object;, "TE;"
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 550
    .local v5, "o2":Ljava/lang/Object;
    if-nez v4, :cond_2e

    if-nez v5, :cond_34

    goto :goto_35

    :cond_2e
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 551
    :cond_34
    return v2

    .line 552
    .end local v4    # "o1":Ljava/lang/Object;, "TE;"
    .end local v5    # "o2":Ljava/lang/Object;
    :cond_35
    :goto_35
    goto :goto_15

    .line 553
    :cond_36
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_44

    :cond_43
    move v0, v2

    :goto_44
    return v0
.end method

.method public abstract whitelist test-api get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 567
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x1

    .line 568
    .local v0, "hashCode":I
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 569
    .local v2, "e":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_15

    const/4 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_19
    add-int v0, v3, v4

    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_5

    .line 570
    :cond_1c
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 187
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 188
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    if-nez p1, :cond_17

    .line 189
    :cond_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 190
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 191
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    return v1

    .line 193
    :cond_17
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 194
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 195
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    return v1

    .line 197
    :cond_2c
    const/4 v1, -0x1

    return v1
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

    .line 301
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/util/AbstractList$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/AbstractList$Itr;-><init>(Ljava/util/AbstractList;Ljava/util/AbstractList-IA;)V

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 213
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 214
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    if-nez p1, :cond_1b

    .line 215
    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 216
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    .line 217
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    return v1

    .line 219
    :cond_1b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 220
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 221
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    return v1

    .line 223
    :cond_30
    const/4 v1, -0x1

    return v1
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

    .line 313
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 340
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList;->rangeCheckForAdd(I)V

    .line 342
    new-instance v0, Ljava/util/AbstractList$ListItr;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractList$ListItr;-><init>(Ljava/util/AbstractList;I)V

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

    .line 169
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api removeRange(II)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 597
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 598
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    sub-int v2, p2, p1

    .local v2, "n":I
    :goto_7
    if-ge v1, v2, :cond_12

    .line 599
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 600
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 602
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_12
    return-void
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 138
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 499
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/AbstractList;->subListRangeCheck(III)V

    .line 500
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_11

    .line 501
    new-instance v0, Ljava/util/AbstractList$RandomAccessSubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$RandomAccessSubList;-><init>(Ljava/util/AbstractList;II)V

    goto :goto_16

    .line 502
    :cond_11
    new-instance v0, Ljava/util/AbstractList$SubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$SubList;-><init>(Ljava/util/AbstractList;II)V

    .line 500
    :goto_16
    return-object v0
.end method

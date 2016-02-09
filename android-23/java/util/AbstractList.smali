.class public abstract Ljava/util/AbstractList;
.super Ljava/util/AbstractCollection;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractList$SimpleListIterator;,
        Ljava/util/AbstractList$FullListIterator;,
        Ljava/util/AbstractList$SubAbstractListRandomAccess;,
        Ljava/util/AbstractList$SubAbstractList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected transient modCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 376
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 404
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 425
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    #@7
    .line 426
    const/4 v0, 0x1

    #@8
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 449
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 450
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 451
    add-int/lit8 v1, p1, 0x1

    #@c
    .end local p1    # "location":I
    .local v1, "location":I
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p0, p1, v2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    #@13
    move p1, v1

    #@14
    .end local v1    # "location":I
    .restart local p1    # "location":I
    goto :goto_0

    #@15
    .line 453
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    const/4 v2, 0x0

    #@1c
    :goto_1
    return v2

    #@1d
    :cond_1
    const/4 v2, 0x1

    #@1e
    goto :goto_1
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 466
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractList;->removeRange(II)V

    #@8
    .line 465
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 482
    if-ne p0, p1, :cond_0

    #@4
    .line 483
    return v6

    #@5
    .line 485
    :cond_0
    instance-of v5, p1, Ljava/util/List;

    #@7
    if-eqz v5, :cond_6

    #@9
    move-object v4, p1

    #@a
    .line 486
    check-cast v4, Ljava/util/List;

    #@c
    .line 487
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@f
    move-result v5

    #@10
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    #@13
    move-result v8

    #@14
    if-eq v5, v8, :cond_1

    #@16
    .line 488
    return v7

    #@17
    .line 491
    :cond_1
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    .local v2, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v3

    #@1f
    .line 492
    .local v3, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_5

    #@25
    .line 493
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    .local v0, "e1":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    .line 494
    .local v1, "e2":Ljava/lang/Object;
    if-nez v0, :cond_4

    #@2f
    if-nez v1, :cond_3

    #@31
    move v5, v6

    #@32
    :goto_0
    if-nez v5, :cond_2

    #@34
    .line 495
    return v7

    #@35
    :cond_3
    move v5, v7

    #@36
    .line 494
    goto :goto_0

    #@37
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v5

    #@3b
    goto :goto_0

    #@3c
    .line 498
    .end local v0    # "e1":Ljava/lang/Object;
    .end local v1    # "e2":Ljava/lang/Object;
    :cond_5
    return v6

    #@3d
    .line 500
    .end local v2    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_6
    return v7
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 524
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 525
    .local v2, "result":I
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    .line 526
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 527
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 528
    .local v1, "object":Ljava/lang/Object;
    mul-int/lit8 v4, v2, 0x1f

    #@11
    if-nez v1, :cond_0

    #@13
    const/4 v3, 0x0

    #@14
    :goto_1
    add-int v2, v4, v3

    #@16
    goto :goto_0

    #@17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@1a
    move-result v3

    #@1b
    goto :goto_1

    #@1c
    .line 530
    .end local v1    # "object":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 543
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    #@3
    move-result-object v0

    #@4
    .line 544
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    if-eqz p1, :cond_1

    #@6
    .line 545
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 546
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 547
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    #@19
    move-result v1

    #@1a
    return v1

    #@1b
    .line 551
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 552
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    if-nez v1, :cond_1

    #@27
    .line 553
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    #@2a
    move-result v1

    #@2b
    return v1

    #@2c
    .line 557
    :cond_2
    const/4 v1, -0x1

    #@2d
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 569
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/util/AbstractList$SimpleListIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/util/AbstractList$SimpleListIterator;-><init>(Ljava/util/AbstractList;)V

    #@5
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 582
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    #@7
    move-result-object v0

    #@8
    .line 583
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    if-eqz p1, :cond_1

    #@a
    .line 584
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 585
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 586
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    #@1d
    move-result v1

    #@1e
    return v1

    #@1f
    .line 590
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 591
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    if-nez v1, :cond_1

    #@2b
    .line 592
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    #@2e
    move-result v1

    #@2f
    return v1

    #@30
    .line 596
    :cond_2
    const/4 v1, -0x1

    #@31
    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 607
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 623
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/util/AbstractList$FullListIterator;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/AbstractList$FullListIterator;-><init>(Ljava/util/AbstractList;I)V

    #@5
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 638
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected removeRange(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 655
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    #@3
    move-result-object v1

    #@4
    .line 656
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move v0, p1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@7
    .line 657
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a
    .line 658
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@d
    .line 656
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 654
    :cond_0
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 681
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 729
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    if-ltz p1, :cond_2

    #@2
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    #@5
    move-result v0

    #@6
    if-gt p2, v0, :cond_2

    #@8
    .line 730
    if-gt p1, p2, :cond_1

    #@a
    .line 731
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 732
    new-instance v0, Ljava/util/AbstractList$SubAbstractListRandomAccess;

    #@10
    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$SubAbstractListRandomAccess;-><init>(Ljava/util/AbstractList;II)V

    #@13
    return-object v0

    #@14
    .line 734
    :cond_0
    new-instance v0, Ljava/util/AbstractList$SubAbstractList;

    #@16
    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$SubAbstractList;-><init>(Ljava/util/AbstractList;II)V

    #@19
    return-object v0

    #@1a
    .line 736
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1f
    throw v0

    #@20
    .line 738
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@22
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@25
    throw v0
.end method

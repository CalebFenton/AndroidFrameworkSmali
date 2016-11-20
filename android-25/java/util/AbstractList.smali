.class public abstract Ljava/util/AbstractList;
.super Ljava/util/AbstractCollection;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractList$Itr;,
        Ljava/util/AbstractList$ListItr;
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
    .locals 1

    #@0
    .prologue
    .line 76
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    .line 601
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    #@6
    .line 76
    return-void
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 609
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Index: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ", Size: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method private rangeCheckForAdd(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 604
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    #@5
    move-result v0

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 605
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {p0, p1}, Ljava/util/AbstractList;->outOfBoundsMsg(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 603
    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 148
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
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
    .line 108
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    #@7
    .line 109
    const/4 v0, 0x1

    #@8
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 257
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList;->rangeCheckForAdd(I)V

    #@3
    .line 258
    const/4 v3, 0x0

    #@4
    .line 259
    .local v3, "modified":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 260
    .local v0, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, p1, 0x1

    #@14
    .end local p1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    #@17
    .line 261
    const/4 v3, 0x1

    #@18
    move p1, v2

    #@19
    .end local v2    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    #@1a
    .line 263
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return v3
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 234
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractList;->removeRange(II)V

    #@8
    .line 233
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 513
    if-ne p1, p0, :cond_0

    #@4
    .line 514
    return v4

    #@5
    .line 515
    :cond_0
    instance-of v6, p1, Ljava/util/List;

    #@7
    if-nez v6, :cond_1

    #@9
    .line 516
    return v5

    #@a
    .line 518
    :cond_1
    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    #@d
    move-result-object v0

    #@e
    .line 519
    .local v0, "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    check-cast p1, Ljava/util/List;

    #@10
    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@13
    move-result-object v1

    #@14
    .line 520
    .local v1, "e2":Ljava/util/ListIterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_5

    #@1a
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_5

    #@20
    .line 521
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    .line 522
    .local v2, "o1":Ljava/lang/Object;, "TE;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    .line 523
    .local v3, "o2":Ljava/lang/Object;
    if-nez v2, :cond_4

    #@2a
    if-nez v3, :cond_3

    #@2c
    move v6, v4

    #@2d
    :goto_0
    if-nez v6, :cond_2

    #@2f
    .line 524
    return v5

    #@30
    :cond_3
    move v6, v5

    #@31
    .line 523
    goto :goto_0

    #@32
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v6

    #@36
    goto :goto_0

    #@37
    .line 526
    .end local v2    # "o1":Ljava/lang/Object;, "TE;"
    .end local v3    # "o2":Ljava/lang/Object;
    :cond_5
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@3a
    move-result v6

    #@3b
    if-nez v6, :cond_6

    #@3d
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_7

    #@43
    :cond_6
    move v4, v5

    #@44
    :cond_7
    return v4
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
    .line 539
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    const/4 v2, 0x1

    #@1
    .line 540
    .local v2, "hashCode":I
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
    if-eqz v3, :cond_1

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .line 541
    .local v0, "e":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v4, v2, 0x1f

    #@11
    if-nez v0, :cond_0

    #@13
    const/4 v3, 0x0

    #@14
    :goto_1
    add-int v2, v4, v3

    #@16
    goto :goto_0

    #@17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@1a
    move-result v3

    #@1b
    goto :goto_1

    #@1c
    .line 542
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 178
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    #@3
    move-result-object v0

    #@4
    .line 179
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    if-nez p1, :cond_1

    #@6
    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 181
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 182
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 184
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 185
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 186
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    #@2a
    move-result v1

    #@2b
    return v1

    #@2c
    .line 188
    :cond_2
    const/4 v1, -0x1

    #@2d
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 288
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/util/AbstractList$Itr;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/AbstractList$Itr;-><init>(Ljava/util/AbstractList;Ljava/util/AbstractList$Itr;)V

    #@6
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 203
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    #@7
    move-result-object v0

    #@8
    .line 204
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    if-nez p1, :cond_1

    #@a
    .line 205
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 206
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 207
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    #@19
    move-result v1

    #@1a
    return v1

    #@1b
    .line 209
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 210
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 211
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    #@2e
    move-result v1

    #@2f
    return v1

    #@30
    .line 213
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
    .line 299
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
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList;->rangeCheckForAdd(I)V

    #@3
    .line 327
    new-instance v0, Ljava/util/AbstractList$ListItr;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/AbstractList$ListItr;-><init>(Ljava/util/AbstractList;I)V

    #@8
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 161
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected removeRange(II)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 568
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    #@3
    move-result-object v1

    #@4
    .line 569
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    sub-int v2, p2, p1

    #@7
    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@9
    .line 570
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@c
    .line 571
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    #@f
    .line 569
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 567
    :cond_0
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 132
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 484
    .local p0, "this":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 485
    new-instance v0, Ljava/util/RandomAccessSubList;

    #@6
    invoke-direct {v0, p0, p1, p2}, Ljava/util/RandomAccessSubList;-><init>(Ljava/util/AbstractList;II)V

    #@9
    .line 484
    :goto_0
    return-object v0

    #@a
    .line 486
    :cond_0
    new-instance v0, Ljava/util/SubList;

    #@c
    invoke-direct {v0, p0, p1, p2}, Ljava/util/SubList;-><init>(Ljava/util/AbstractList;II)V

    #@f
    goto :goto_0
.end method

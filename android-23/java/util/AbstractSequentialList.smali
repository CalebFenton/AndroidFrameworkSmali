.class public abstract Ljava/util/AbstractSequentialList;
.super Ljava/util/AbstractList;
.source "AbstractSequentialList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

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
    .line 37
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@7
    .line 36
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
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
    .line 42
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    #@3
    move-result-object v1

    #@4
    .line 43
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    .line 44
    .local v0, "colIt":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    #@b
    move-result v2

    #@c
    .line 45
    .local v2, "next":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@19
    goto :goto_0

    #@1a
    .line 48
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    #@1d
    move-result v3

    #@1e
    if-eq v2, v3, :cond_1

    #@20
    const/4 v3, 0x1

    #@21
    :goto_1
    return v3

    #@22
    :cond_1
    const/4 v3, 0x0

    #@23
    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 55
    :catch_0
    move-exception v0

    #@a
    .line 56
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@c
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@f
    throw v1
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
    .line 62
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public abstract listIterator(I)Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    #@3
    move-result-object v1

    #@4
    .line 72
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    .line 73
    .local v2, "result":Ljava/lang/Object;, "TE;"
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 74
    return-object v2

    #@c
    .line 75
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .end local v2    # "result":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    #@d
    .line 76
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@12
    throw v3
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    #@3
    move-result-object v0

    #@4
    .line 83
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 84
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@c
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@f
    throw v2

    #@10
    .line 86
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 87
    .local v1, "result":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    #@17
    .line 88
    return-object v1
.end method

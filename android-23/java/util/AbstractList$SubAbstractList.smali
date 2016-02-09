.class Ljava/util/AbstractList$SubAbstractList;
.super Ljava/util/AbstractList;
.source "AbstractList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubAbstractList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final fullList:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private offset:I

.field private size:I


# direct methods
.method constructor <init>(Ljava/util/AbstractList;II)V
    .locals 1
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 236
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    .local p1, "list":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    .line 237
    iput-object p1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@5
    .line 238
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@7
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@9
    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@b
    .line 239
    iput p2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@d
    .line 240
    sub-int v0, p3, p2

    #@f
    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@11
    .line 236
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@2
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@4
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 246
    if-ltz p1, :cond_0

    #@a
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@c
    if-gt p1, v0, :cond_0

    #@e
    .line 247
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@10
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@12
    add-int/2addr v1, p1

    #@13
    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    #@16
    .line 248
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@1c
    .line 249
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@1e
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@20
    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@22
    .line 244
    return-void

    #@23
    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@25
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@28
    throw v0

    #@29
    .line 254
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@2b
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2e
    throw v0
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
    .line 260
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@2
    iget-object v2, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@4
    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v1, v2, :cond_2

    #@8
    .line 261
    if-ltz p1, :cond_1

    #@a
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@c
    if-gt p1, v1, :cond_1

    #@e
    .line 262
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@10
    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@12
    add-int/2addr v2, p1

    #@13
    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    #@16
    move-result v0

    #@17
    .line 264
    .local v0, "result":Z
    if-eqz v0, :cond_0

    #@19
    .line 265
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@1b
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    #@1e
    move-result v2

    #@1f
    add-int/2addr v1, v2

    #@20
    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@22
    .line 266
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@24
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@26
    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@28
    .line 268
    :cond_0
    return v0

    #@29
    .line 270
    .end local v0    # "result":Z
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@2b
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@2e
    throw v1

    #@2f
    .line 272
    :cond_2
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@31
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@34
    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 277
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@2
    iget-object v2, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@4
    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 278
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@a
    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@c
    iget v3, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@e
    add-int/2addr v2, v3

    #@f
    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    #@12
    move-result v0

    #@13
    .line 279
    .local v0, "result":Z
    if-eqz v0, :cond_0

    #@15
    .line 280
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@17
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@1a
    move-result v2

    #@1b
    add-int/2addr v1, v2

    #@1c
    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@1e
    .line 281
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@20
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@22
    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@24
    .line 283
    :cond_0
    return v0

    #@25
    .line 285
    .end local v0    # "result":Z
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@27
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2a
    throw v1
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
    .line 290
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@2
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@4
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 291
    if-ltz p1, :cond_0

    #@a
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@c
    if-ge p1, v0, :cond_0

    #@e
    .line 292
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@10
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@12
    add-int/2addr v1, p1

    #@13
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 294
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1a
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1d
    throw v0

    #@1e
    .line 296
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@20
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@23
    throw v0
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
    .line 301
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/AbstractList$SubAbstractList;->listIterator(I)Ljava/util/ListIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 4
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
    .line 306
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@2
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@4
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 307
    if-ltz p1, :cond_0

    #@a
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@c
    if-gt p1, v0, :cond_0

    #@e
    .line 308
    new-instance v0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;

    #@10
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@12
    .line 309
    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@14
    add-int/2addr v2, p1

    #@15
    .line 308
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    #@18
    move-result-object v1

    #@19
    .line 309
    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@1b
    .line 310
    iget v3, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@1d
    .line 308
    invoke-direct {v0, v1, p0, v2, v3}, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/AbstractList$SubAbstractList;II)V

    #@20
    return-object v0

    #@21
    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@23
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@26
    throw v0

    #@27
    .line 314
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@29
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2c
    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 319
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@2
    iget-object v2, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@4
    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 320
    if-ltz p1, :cond_0

    #@a
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@c
    if-ge p1, v1, :cond_0

    #@e
    .line 321
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@10
    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@12
    add-int/2addr v2, p1

    #@13
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .line 322
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@19
    add-int/lit8 v1, v1, -0x1

    #@1b
    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@1d
    .line 323
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@1f
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@21
    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@23
    .line 324
    return-object v0

    #@24
    .line 326
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@26
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@29
    throw v1

    #@2a
    .line 328
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@2c
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2f
    throw v1
.end method

.method protected removeRange(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 333
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    if-eq p1, p2, :cond_0

    #@2
    .line 334
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@4
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@6
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 335
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@c
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@e
    add-int/2addr v1, p1

    #@f
    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@11
    add-int/2addr v2, p2

    #@12
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->removeRange(II)V

    #@15
    .line 336
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@17
    sub-int v1, p2, p1

    #@19
    sub-int/2addr v0, v1

    #@1a
    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@1c
    .line 337
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@1e
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@20
    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@22
    .line 332
    :cond_0
    return-void

    #@23
    .line 339
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@25
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@28
    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 346
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@2
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@4
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 347
    if-ltz p1, :cond_0

    #@a
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@c
    if-ge p1, v0, :cond_0

    #@e
    .line 348
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@10
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    #@12
    add-int/2addr v1, p1

    #@13
    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 350
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1a
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@1d
    throw v0

    #@1e
    .line 352
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@20
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@23
    throw v0
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 357
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@2
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@4
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 358
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@a
    return v0

    #@b
    .line 360
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@d
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@10
    throw v0
.end method

.method sizeChanged(Z)V
    .locals 1
    .param p1, "increment"    # Z

    #@0
    .prologue
    .line 364
    .local p0, "this":Ljava/util/AbstractList$SubAbstractList;, "Ljava/util/AbstractList<TE;>.SubAbstractList<TE;>;"
    if-eqz p1, :cond_0

    #@2
    .line 365
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@4
    add-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@8
    .line 369
    :goto_0
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    #@a
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    #@c
    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    #@e
    .line 363
    return-void

    #@f
    .line 367
    :cond_0
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    #@15
    goto :goto_0
.end method

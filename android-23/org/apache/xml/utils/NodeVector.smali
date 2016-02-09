.class public Lorg/apache/xml/utils/NodeVector;
.super Ljava/lang/Object;
.source "NodeVector.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x9e6c3ff496c94deL


# instance fields
.field private m_blocksize:I

.field protected m_firstFree:I

.field private m_map:[I

.field private m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@6
    .line 64
    const/16 v0, 0x20

    #@8
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@a
    .line 65
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@c
    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "blocksize"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@6
    .line 75
    iput p1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@8
    .line 76
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@a
    .line 73
    return-void
.end method


# virtual methods
.method public RemoveAllNoClear()V
    .locals 1

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 449
    return-void

    #@5
    .line 451
    :cond_0
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@8
    .line 445
    return-void
.end method

.method public addElement(I)V
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 119
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 121
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@b
    if-nez v1, :cond_1

    #@d
    .line 123
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@f
    new-array v1, v1, [I

    #@11
    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@13
    .line 124
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@15
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@17
    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@19
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@1b
    aput p1, v1, v2

    #@1d
    .line 140
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@23
    .line 116
    return-void

    #@24
    .line 128
    :cond_1
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@26
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@28
    add-int/2addr v1, v2

    #@29
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@2b
    .line 130
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@2d
    new-array v0, v1, [I

    #@2f
    .line 132
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@31
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@33
    add-int/lit8 v2, v2, 0x1

    #@35
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@38
    .line 134
    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@3a
    goto :goto_0
.end method

.method public appendNodes(Lorg/apache/xml/utils/NodeVector;)V
    .locals 6
    .param p1, "nodes"    # Lorg/apache/xml/utils/NodeVector;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 399
    invoke-virtual {p1}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@4
    move-result v0

    #@5
    .line 401
    .local v0, "nNodes":I
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@7
    if-nez v2, :cond_1

    #@9
    .line 403
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@b
    add-int/2addr v2, v0

    #@c
    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@e
    .line 404
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@10
    new-array v2, v2, [I

    #@12
    iput-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@14
    .line 417
    :cond_0
    :goto_0
    iget-object v2, p1, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@16
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@18
    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@1a
    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@1d
    .line 419
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@1f
    add-int/2addr v2, v0

    #@20
    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@22
    .line 396
    return-void

    #@23
    .line 406
    :cond_1
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@25
    add-int/2addr v2, v0

    #@26
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@28
    if-lt v2, v3, :cond_0

    #@2a
    .line 408
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@2c
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@2e
    add-int/2addr v3, v0

    #@2f
    add-int/2addr v2, v3

    #@30
    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@32
    .line 410
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@34
    new-array v1, v2, [I

    #@36
    .line 412
    .local v1, "newMap":[I
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@38
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@3a
    add-int/2addr v3, v0

    #@3b
    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@3e
    .line 414
    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@40
    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 89
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lorg/apache/xml/utils/NodeVector;

    #@7
    .line 91
    .local v0, "clone":Lorg/apache/xml/utils/NodeVector;
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@d
    iget-object v2, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 93
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@13
    array-length v1, v1

    #@14
    new-array v1, v1, [I

    #@16
    iput-object v1, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@18
    .line 95
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@1a
    iget-object v2, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@1c
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@1e
    array-length v3, v3

    #@1f
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@22
    .line 98
    :cond_0
    return-object v0
.end method

.method public contains(I)Z
    .locals 4
    .param p1, "s"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 562
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 563
    return v3

    #@6
    .line 565
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@9
    if-ge v0, v2, :cond_2

    #@b
    .line 567
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@d
    aget v1, v2, v0

    #@f
    .line 569
    .local v1, "node":I
    if-ne v1, p1, :cond_1

    #@11
    .line 570
    const/4 v2, 0x1

    #@12
    return v2

    #@13
    .line 565
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 573
    .end local v1    # "node":I
    :cond_2
    return v3
.end method

.method public elementAt(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 546
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 547
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 549
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@8
    aget v0, v0, p1

    #@a
    return v0
.end method

.method public indexOf(I)I
    .locals 4
    .param p1, "elem"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 617
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 618
    return v3

    #@6
    .line 620
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@9
    if-ge v0, v2, :cond_2

    #@b
    .line 622
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@d
    aget v1, v2, v0

    #@f
    .line 624
    .local v1, "node":I
    if-ne v1, p1, :cond_1

    #@11
    .line 625
    return v0

    #@12
    .line 620
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 628
    .end local v1    # "node":I
    :cond_2
    return v3
.end method

.method public indexOf(II)I
    .locals 4
    .param p1, "elem"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 590
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 591
    return v3

    #@6
    .line 593
    :cond_0
    move v0, p2

    #@7
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@9
    if-ge v0, v2, :cond_2

    #@b
    .line 595
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@d
    aget v1, v2, v0

    #@f
    .line 597
    .local v1, "node":I
    if-ne v1, p1, :cond_1

    #@11
    .line 598
    return v0

    #@12
    .line 593
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 601
    .end local v1    # "node":I
    :cond_2
    return v3
.end method

.method public insertElementAt(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "at"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 365
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@3
    if-nez v1, :cond_2

    #@5
    .line 367
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@7
    new-array v1, v1, [I

    #@9
    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@b
    .line 368
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@d
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@f
    .line 381
    :cond_0
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    if-gt p2, v1, :cond_1

    #@15
    .line 383
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@17
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@19
    add-int/lit8 v3, p2, 0x1

    #@1b
    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@1d
    sub-int/2addr v4, p2

    #@1e
    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@21
    .line 386
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@23
    aput p1, v1, p2

    #@25
    .line 388
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@2b
    .line 362
    return-void

    #@2c
    .line 370
    :cond_2
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@2e
    add-int/lit8 v1, v1, 0x1

    #@30
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@32
    if-lt v1, v2, :cond_0

    #@34
    .line 372
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@36
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@38
    add-int/2addr v1, v2

    #@39
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@3b
    .line 374
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@3d
    new-array v0, v1, [I

    #@3f
    .line 376
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@41
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@43
    add-int/lit8 v2, v2, 0x1

    #@45
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@48
    .line 378
    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@4a
    goto :goto_0
.end method

.method public insertInOrder(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 340
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 342
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ge p1, v1, :cond_0

    #@b
    .line 344
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    #@e
    .line 346
    return-void

    #@f
    .line 340
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 350
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    #@15
    .line 337
    return-void
.end method

.method public final peepOrNull()I
    .locals 2

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@6
    if-lez v0, :cond_0

    #@8
    .line 233
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@a
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@c
    add-int/lit8 v1, v1, -0x1

    #@e
    aget v0, v0, v1

    #@10
    .line 232
    :goto_0
    return v0

    #@11
    .line 233
    :cond_0
    const/4 v0, -0x1

    #@12
    goto :goto_0
.end method

.method public final peepTail()I
    .locals 2

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public final peepTailSub1()I
    .locals 2

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@4
    add-int/lit8 v1, v1, -0x2

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public final pop()I
    .locals 4

    #@0
    .prologue
    .line 187
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@2
    add-int/lit8 v1, v1, -0x1

    #@4
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@6
    .line 189
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@8
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@a
    aget v0, v1, v2

    #@c
    .line 191
    .local v0, "n":I
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@e
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@10
    const/4 v3, -0x1

    #@11
    aput v3, v1, v2

    #@13
    .line 193
    return v0
.end method

.method public final popAndTop()I
    .locals 3

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 205
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@3
    add-int/lit8 v1, v1, -0x1

    #@5
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@7
    .line 207
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@9
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@b
    aput v0, v1, v2

    #@d
    .line 209
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@f
    if-nez v1, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@14
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    aget v0, v0, v1

    #@1a
    goto :goto_0
.end method

.method public final popPair()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 279
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@3
    add-int/lit8 v0, v0, -0x2

    #@5
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@7
    .line 280
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@9
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@b
    aput v2, v0, v1

    #@d
    .line 281
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@f
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    aput v2, v0, v1

    #@15
    .line 276
    return-void
.end method

.method public final popQuick()V
    .locals 3

    #@0
    .prologue
    .line 218
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@6
    .line 220
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@8
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@a
    const/4 v2, -0x1

    #@b
    aput v2, v0, v1

    #@d
    .line 215
    return-void
.end method

.method public final push(I)V
    .locals 5
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 151
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@3
    .line 153
    .local v0, "ff":I
    add-int/lit8 v2, v0, 0x1

    #@5
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@7
    if-lt v2, v3, :cond_0

    #@9
    .line 155
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@b
    if-nez v2, :cond_1

    #@d
    .line 157
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@f
    new-array v2, v2, [I

    #@11
    iput-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@13
    .line 158
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@15
    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@17
    .line 172
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@19
    aput p1, v2, v0

    #@1b
    .line 174
    add-int/lit8 v0, v0, 0x1

    #@1d
    .line 176
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@1f
    .line 148
    return-void

    #@20
    .line 162
    :cond_1
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@22
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@24
    add-int/2addr v2, v3

    #@25
    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@27
    .line 164
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@29
    new-array v1, v2, [I

    #@2b
    .line 166
    .local v1, "newMap":[I
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2d
    add-int/lit8 v3, v0, 0x1

    #@2f
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@32
    .line 168
    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@34
    goto :goto_0
.end method

.method public final pushPair(II)V
    .locals 4
    .param p1, "v1"    # I
    .param p2, "v2"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 247
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@3
    if-nez v1, :cond_1

    #@5
    .line 249
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@7
    new-array v1, v1, [I

    #@9
    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@b
    .line 250
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@d
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@f
    .line 266
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@11
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@13
    aput p1, v1, v2

    #@15
    .line 267
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@17
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    aput p2, v1, v2

    #@1d
    .line 268
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@1f
    add-int/lit8 v1, v1, 0x2

    #@21
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@23
    .line 244
    return-void

    #@24
    .line 254
    :cond_1
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@26
    add-int/lit8 v1, v1, 0x2

    #@28
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@2a
    if-lt v1, v2, :cond_0

    #@2c
    .line 256
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@2e
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@30
    add-int/2addr v1, v2

    #@31
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@33
    .line 258
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@35
    new-array v0, v1, [I

    #@37
    .line 260
    .local v0, "newMap":[I
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@39
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@3b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@3e
    .line 262
    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@40
    goto :goto_0
.end method

.method public removeAllElements()V
    .locals 3

    #@0
    .prologue
    .line 431
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 432
    return-void

    #@5
    .line 434
    :cond_0
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 436
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@c
    const/4 v2, -0x1

    #@d
    aput v2, v1, v0

    #@f
    .line 434
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 439
    :cond_1
    const/4 v1, 0x0

    #@13
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@15
    .line 428
    return-void
.end method

.method public removeElement(I)Z
    .locals 7
    .param p1, "s"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 468
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 469
    return v3

    #@6
    .line 471
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@9
    if-ge v0, v2, :cond_3

    #@b
    .line 473
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@d
    aget v1, v2, v0

    #@f
    .line 475
    .local v1, "node":I
    if-ne v1, p1, :cond_2

    #@11
    .line 477
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@13
    if-le v0, v2, :cond_1

    #@15
    .line 478
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@17
    add-int/lit8 v3, v0, 0x1

    #@19
    iget-object v4, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@1b
    add-int/lit8 v5, v0, -0x1

    #@1d
    iget v6, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@1f
    sub-int/2addr v6, v0

    #@20
    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@23
    .line 482
    :goto_1
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@25
    add-int/lit8 v2, v2, -0x1

    #@27
    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@29
    .line 484
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 480
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2d
    const/4 v3, -0x1

    #@2e
    aput v3, v2, v0

    #@30
    goto :goto_1

    #@31
    .line 471
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 488
    .end local v1    # "node":I
    :cond_3
    return v3
.end method

.method public removeElementAt(I)V
    .locals 5
    .param p1, "i"    # I

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 503
    return-void

    #@5
    .line 505
    :cond_0
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@7
    if-le p1, v0, :cond_1

    #@9
    .line 506
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@b
    add-int/lit8 v1, p1, 0x1

    #@d
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@f
    add-int/lit8 v3, p1, -0x1

    #@11
    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@13
    sub-int/2addr v4, p1

    #@14
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@17
    .line 499
    :goto_0
    return-void

    #@18
    .line 508
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@1a
    const/4 v1, -0x1

    #@1b
    aput v1, v0, p1

    #@1d
    goto :goto_0
.end method

.method public setElementAt(II)V
    .locals 1
    .param p1, "node"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 524
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 526
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@6
    new-array v0, v0, [I

    #@8
    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@a
    .line 527
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    #@c
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    #@e
    .line 530
    :cond_0
    const/4 v0, -0x1

    #@f
    if-ne p2, v0, :cond_1

    #@11
    .line 531
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    #@14
    .line 533
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@16
    aput p1, v0, p2

    #@18
    .line 521
    return-void
.end method

.method public final setTail(I)V
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    aput p1, v0, v1

    #@8
    .line 291
    return-void
.end method

.method public final setTailSub1(I)V
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@4
    add-int/lit8 v1, v1, -0x2

    #@6
    aput p1, v0, v1

    #@8
    .line 303
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@2
    return v0
.end method

.method public sort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 737
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    #@2
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    #@a
    .line 735
    return-void
.end method

.method public sort([III)V
    .locals 6
    .param p1, "a"    # [I
    .param p2, "lo0"    # I
    .param p3, "hi0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 643
    move v2, p2

    #@1
    .line 644
    .local v2, "lo":I
    move v1, p3

    #@2
    .line 647
    .local v1, "hi":I
    if-lt v2, v1, :cond_0

    #@4
    .line 649
    return-void

    #@5
    .line 651
    :cond_0
    add-int/lit8 v4, v1, -0x1

    #@7
    if-ne v2, v4, :cond_2

    #@9
    .line 657
    aget v4, p1, v2

    #@b
    aget v5, p1, v1

    #@d
    if-le v4, v5, :cond_1

    #@f
    .line 659
    aget v0, p1, v2

    #@11
    .line 661
    .local v0, "T":I
    aget v4, p1, v1

    #@13
    aput v4, p1, v2

    #@15
    .line 662
    aput v0, p1, v1

    #@17
    .line 665
    .end local v0    # "T":I
    :cond_1
    return-void

    #@18
    .line 671
    :cond_2
    add-int v4, v2, v1

    #@1a
    div-int/lit8 v4, v4, 0x2

    #@1c
    aget v3, p1, v4

    #@1e
    .line 673
    .local v3, "pivot":I
    add-int v4, v2, v1

    #@20
    div-int/lit8 v4, v4, 0x2

    #@22
    aget v5, p1, v1

    #@24
    aput v5, p1, v4

    #@26
    .line 674
    aput v3, p1, v1

    #@28
    .line 676
    :cond_3
    :goto_0
    if-ge v2, v1, :cond_6

    #@2a
    .line 683
    :goto_1
    aget v4, p1, v2

    #@2c
    if-gt v4, v3, :cond_4

    #@2e
    if-ge v2, v1, :cond_4

    #@30
    .line 685
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_1

    #@33
    .line 692
    :cond_4
    :goto_2
    aget v4, p1, v1

    #@35
    if-gt v3, v4, :cond_5

    #@37
    if-ge v2, v1, :cond_5

    #@39
    .line 694
    add-int/lit8 v1, v1, -0x1

    #@3b
    goto :goto_2

    #@3c
    .line 700
    :cond_5
    if-ge v2, v1, :cond_3

    #@3e
    .line 702
    aget v0, p1, v2

    #@40
    .line 704
    .restart local v0    # "T":I
    aget v4, p1, v1

    #@42
    aput v4, p1, v2

    #@44
    .line 705
    aput v0, p1, v1

    #@46
    goto :goto_0

    #@47
    .line 718
    .end local v0    # "T":I
    :cond_6
    aget v4, p1, v1

    #@49
    aput v4, p1, p3

    #@4b
    .line 719
    aput v3, p1, v1

    #@4d
    .line 726
    add-int/lit8 v4, v2, -0x1

    #@4f
    invoke-virtual {p0, p1, p2, v4}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    #@52
    .line 727
    add-int/lit8 v4, v1, 0x1

    #@54
    invoke-virtual {p0, p1, v4, p3}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    #@57
    .line 640
    return-void
.end method

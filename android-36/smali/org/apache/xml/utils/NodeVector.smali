.class public Lorg/apache/xml/utils/NodeVector;
.super Ljava/lang/Object;
.source "NodeVector.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final whitelist serialVersionUID:J = -0x9e6c3ff496c94deL


# instance fields
.field private greylist m_blocksize:I

.field protected greylist m_firstFree:I

.field private greylist m_map:[I

.field private greylist m_mapSize:I


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    const/16 v1, 0x20

    .line 64
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    .line 65
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 75
    iput p1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    .line 76
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    return-void
.end method


# virtual methods
.method public greylist RemoveAllNoClear()V
    .registers 2

    .line 448
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 451
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public greylist addElement(I)V
    .registers 6

    .line 119
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v1, v2, :cond_24

    .line 121
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v1, :cond_15

    .line 123
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 124
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    goto :goto_24

    .line 128
    :cond_15
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 130
    new-array v2, v2, [I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 132
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iput-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 138
    :cond_24
    :goto_24
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 140
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public greylist appendNodes(Lorg/apache/xml/utils/NodeVector;)V
    .registers 8

    .line 399
    invoke-virtual {p1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v0

    .line 401
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 403
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 404
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_29

    .line 406
    :cond_13
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int v4, v3, v0

    iget v5, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v4, v5, :cond_29

    .line 408
    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v4, v0

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 410
    new-array v4, v5, [I

    add-int/2addr v3, v0

    .line 412
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iput-object v4, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 417
    :cond_29
    :goto_29
    iget-object p1, p1, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    iget p1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 89
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/NodeVector;

    .line 91
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-eqz v1, :cond_1a

    iget-object v2, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-ne v1, v2, :cond_1a

    .line 93
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 95
    iget-object p0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    return-object v0
.end method

.method public greylist contains(I)Z
    .registers 5

    .line 562
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    .line 565
    :goto_7
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v2, :cond_16

    .line 567
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return v1
.end method

.method public greylist elementAt(I)I
    .registers 2

    .line 546
    iget-object p0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 549
    :cond_6
    aget p0, p0, p1

    return p0
.end method

.method public greylist indexOf(I)I
    .registers 5

    .line 617
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 620
    :goto_7
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v2, :cond_15

    .line 622
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_12

    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return v1
.end method

.method public greylist indexOf(II)I
    .registers 5

    .line 590
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 593
    :cond_6
    :goto_6
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge p2, v0, :cond_14

    .line 595
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v0, v0, p2

    if-ne v0, p1, :cond_11

    return p2

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_14
    return v1
.end method

.method public greylist insertElementAt(II)V
    .registers 7

    .line 365
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_d

    .line 367
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 368
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    goto :goto_24

    .line 370
    :cond_d
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v2, v3, :cond_24

    .line 372
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 374
    new-array v2, v3, [I

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    .line 376
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iput-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 381
    :cond_24
    :goto_24
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v0, -0x1

    if-gt p2, v1, :cond_32

    .line 383
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    :cond_32
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aput p1, v0, p2

    .line 388
    iget p1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public greylist insertInOrder(I)V
    .registers 4

    const/4 v0, 0x0

    .line 340
    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v1, :cond_12

    .line 342
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_f

    .line 344
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    return-void

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    :cond_12
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    return-void
.end method

.method public final greylist peepOrNull()I
    .registers 2

    .line 232
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-eqz v0, :cond_d

    iget p0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-lez p0, :cond_d

    add-int/lit8 p0, p0, -0x1

    .line 233
    aget p0, v0, p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public final greylist peepTail()I
    .registers 2

    .line 317
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget p0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0
.end method

.method public final greylist peepTailSub1()I
    .registers 2

    .line 329
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget p0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x2

    aget p0, v0, p0

    return p0
.end method

.method public final greylist pop()I
    .registers 4

    .line 187
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 189
    iget-object p0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, p0, v0

    const/4 v2, -0x1

    .line 191
    aput v2, p0, v0

    return v1
.end method

.method public final greylist popAndTop()I
    .registers 4

    .line 205
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 207
    iget-object p0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v2, -0x1

    aput v2, p0, v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    add-int/lit8 v0, v0, -0x2

    .line 209
    aget p0, p0, v0

    return p0
.end method

.method public final greylist popPair()V
    .registers 4

    .line 279
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v0, -0x2

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 280
    iget-object p0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v2, -0x1

    aput v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    .line 281
    aput v2, p0, v0

    return-void
.end method

.method public final greylist popQuick()V
    .registers 3

    .line 218
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    .line 220
    iget-object p0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v1, -0x1

    aput v1, p0, v0

    return-void
.end method

.method public final greylist push(I)V
    .registers 7

    .line 151
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    .line 153
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v1, v2, :cond_22

    .line 155
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v3, :cond_15

    .line 157
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v3, v2, [I

    iput-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 158
    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    goto :goto_22

    .line 162
    :cond_15
    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 164
    new-array v2, v2, [I

    const/4 v4, 0x0

    .line 166
    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 172
    :cond_22
    :goto_22
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aput p1, v2, v0

    .line 176
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public final greylist pushPair(II)V
    .registers 7

    .line 247
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_d

    .line 249
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 250
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    goto :goto_22

    .line 254
    :cond_d
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v1, 0x2

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v2, v3, :cond_22

    .line 256
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    .line 258
    new-array v2, v3, [I

    const/4 v3, 0x0

    .line 260
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iput-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 266
    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 267
    aput p2, v0, p1

    add-int/lit8 v1, v1, 0x2

    .line 268
    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public greylist removeAllElements()V
    .registers 5

    .line 431
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 434
    :goto_7
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v1, v2, :cond_13

    .line 436
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 439
    :cond_13
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void
.end method

.method public greylist removeElement(I)Z
    .registers 7

    .line 468
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    .line 471
    :goto_7
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v2, :cond_29

    .line 473
    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v4, v3, v0

    if-ne v4, p1, :cond_26

    if-le v0, v2, :cond_1c

    add-int/lit8 p1, v0, 0x1

    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v2, v0

    .line 478
    invoke-static {v3, p1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    :cond_1c
    const/4 p1, -0x1

    .line 480
    aput p1, v3, v0

    .line 482
    :goto_1f
    iget p1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return v0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_29
    return v1
.end method

.method public greylist removeElementAt(I)V
    .registers 5

    .line 502
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_5

    return-void

    .line 505
    :cond_5
    iget p0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-le p1, p0, :cond_12

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p1, -0x1

    sub-int/2addr p0, p1

    .line 506
    invoke-static {v0, v1, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_12
    const/4 p0, -0x1

    .line 508
    aput p0, v0, p1

    return-void
.end method

.method public greylist setElementAt(II)V
    .registers 5

    .line 524
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_c

    .line 526
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    .line 527
    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    :cond_c
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    .line 531
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    .line 533
    :cond_12
    iget-object p0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aput p1, p0, p2

    return-void
.end method

.method public final greylist setTail(I)V
    .registers 3

    .line 293
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget p0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aput p1, v0, p0

    return-void
.end method

.method public final greylist setTailSub1(I)V
    .registers 3

    .line 305
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget p0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 p0, p0, -0x2

    aput p1, v0, p0

    return-void
.end method

.method public greylist size()I
    .registers 1

    .line 108
    iget p0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return p0
.end method

.method public greylist sort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    return-void
.end method

.method public greylist sort([III)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-lt p2, p3, :cond_3

    goto :goto_11

    :cond_3
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_12

    .line 657
    aget p0, p1, p2

    aget v0, p1, p3

    if-le p0, v0, :cond_11

    .line 661
    aput v0, p1, p2

    .line 662
    aput p0, p1, p3

    :cond_11
    :goto_11
    return-void

    :cond_12
    add-int v0, p2, p3

    .line 671
    div-int/lit8 v0, v0, 0x2

    aget v1, p1, v0

    .line 673
    aget v2, p1, p3

    aput v2, p1, v0

    .line 674
    aput v1, p1, p3

    move v0, p2

    move v2, p3

    :cond_20
    :goto_20
    if-ge v0, v2, :cond_3d

    .line 683
    :goto_22
    aget v3, p1, v0

    if-gt v3, v1, :cond_2b

    if-ge v0, v2, :cond_2b

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 692
    :cond_2b
    :goto_2b
    aget v3, p1, v2

    if-gt v1, v3, :cond_34

    if-ge v0, v2, :cond_34

    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    :cond_34
    if-ge v0, v2, :cond_20

    .line 702
    aget v4, p1, v0

    .line 704
    aput v3, p1, v0

    .line 705
    aput v4, p1, v2

    goto :goto_20

    .line 718
    :cond_3d
    aget v3, p1, v2

    aput v3, p1, p3

    .line 719
    aput v1, p1, v2

    add-int/lit8 v0, v0, -0x1

    .line 726
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    add-int/lit8 v2, v2, 0x1

    .line 727
    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    return-void
.end method

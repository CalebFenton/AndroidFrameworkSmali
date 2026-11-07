.class public Lorg/apache/xml/utils/SuballocatedIntVector;
.super Ljava/lang/Object;
.source "SuballocatedIntVector.java"


# static fields
.field protected static final greylist NUMBLOCKS_DEFAULT:I = 0x20


# instance fields
.field protected greylist m_MASK:I

.field protected greylist m_SHIFT:I

.field protected greylist m_blocksize:I

.field protected greylist m_buildCache:[I

.field protected greylist m_buildCacheStartIndex:I

.field protected greylist m_firstFree:I

.field protected greylist m_map:[[I

.field protected greylist m_map0:[I

.field protected greylist m_numblocks:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    const/16 v0, 0x800

    .line 81
    invoke-direct {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 3

    const/16 v0, 0x20

    .line 115
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    return-void
.end method

.method public constructor greylist <init>(II)V
    .registers 6

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 55
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 95
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    :goto_c
    const/4 v1, 0x1

    ushr-int/2addr p1, v1

    if-eqz p1, :cond_16

    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    goto :goto_c

    .line 97
    :cond_16
    iget p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    shl-int p1, v1, p1

    iput p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    add-int/lit8 v1, p1, -0x1

    .line 98
    iput v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    .line 99
    iput p2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    .line 101
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    .line 102
    new-array p2, p2, [[I

    iput-object p2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    .line 103
    aput-object p1, p2, v0

    .line 104
    iput-object p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    .line 105
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    return-void
.end method

.method private greylist addElements(I)V
    .registers 6

    .line 233
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int v1, v0, p1

    .line 234
    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-le v1, v2, :cond_1c

    .line 236
    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, v0, v2

    add-int/2addr v0, p1

    ushr-int p1, v0, v2

    :goto_f
    add-int/lit8 v3, v3, 0x1

    if-gt v3, p1, :cond_1c

    .line 239
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v2, v2, [I

    aput-object v2, v0, v3

    goto :goto_f

    .line 241
    :cond_1c
    iput v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    return-void
.end method

.method private greylist addElements(II)V
    .registers 9

    .line 192
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int v1, v0, p2

    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_18

    :goto_9
    if-ge v3, p2, :cond_59

    .line 195
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    aput p1, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 199
    :cond_18
    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, v0, v1

    .line 200
    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v2, v0

    add-int/2addr v0, p2

    .line 201
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    :goto_22
    if-lez p2, :cond_59

    .line 204
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v4, v0

    if-lt v1, v4, :cond_34

    .line 206
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int/2addr v4, v1

    .line 207
    new-array v4, v4, [[I

    .line 208
    array-length v5, v0

    invoke-static {v0, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iput-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    .line 211
    :cond_34
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v4, v0, v1

    if-nez v4, :cond_40

    .line 213
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v4, v4, [I

    aput-object v4, v0, v1

    .line 214
    :cond_40
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int v5, v0, v2

    if-ge v5, p2, :cond_48

    sub-int/2addr v0, v2

    goto :goto_49

    :cond_48
    move v0, p2

    :goto_49
    sub-int/2addr p2, v0

    :goto_4a
    add-int/lit8 v5, v0, -0x1

    if-lez v0, :cond_55

    add-int/lit8 v0, v2, 0x1

    .line 218
    aput p1, v4, v2

    move v2, v0

    move v0, v5

    goto :goto_4a

    :cond_55
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_22

    :cond_59
    return-void
.end method

.method private greylist contains(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 454
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    move-result p0

    if-ltz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    return v0
.end method

.method private greylist insertElementAt(II)V
    .registers 10

    .line 257
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-ne p2, v0, :cond_8

    .line 258
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    return-void

    :cond_8
    const/4 v1, 0x0

    if-le p2, v0, :cond_35

    .line 261
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v0, p2, v0

    .line 262
    iget-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v3, v2

    if-lt v0, v3, :cond_1f

    .line 264
    iget v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int/2addr v3, v0

    .line 265
    new-array v3, v3, [[I

    .line 266
    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iput-object v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    .line 269
    :cond_1f
    iget-object v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v2, v1, v0

    if-nez v2, :cond_2b

    .line 271
    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v2, v2, [I

    aput-object v2, v1, v0

    .line 272
    :cond_2b
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr p2, v0

    .line 273
    aput p1, v2, p2

    add-int/lit8 p2, p2, 0x1

    .line 274
    iput p2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    return-void

    .line 278
    :cond_35
    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, p2, v2

    ushr-int v2, v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 280
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 281
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr p2, v0

    :goto_42
    if-gt v3, v2, :cond_66

    .line 287
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int v4, v0, p2

    add-int/lit8 v4, v4, -0x1

    .line 288
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v6, v5, v3

    if-nez v6, :cond_56

    .line 292
    new-array v6, v0, [I

    aput-object v6, v5, v3

    move v0, v1

    goto :goto_5f

    :cond_56
    add-int/lit8 v0, v0, -0x1

    .line 296
    aget v0, v6, v0

    add-int/lit8 v5, p2, 0x1

    .line 297
    invoke-static {v6, p2, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    :goto_5f
    aput p1, v6, p2

    add-int/lit8 v3, v3, 0x1

    move p1, v0

    move p2, v1

    goto :goto_42

    :cond_66
    return-void
.end method

.method private greylist lastIndexOf(I)I
    .registers 6

    .line 524
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v1, v0

    .line 525
    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int/2addr v0, v2

    :goto_8
    if-ltz v0, :cond_22

    .line 529
    iget-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_1e

    :goto_10
    if-ltz v1, :cond_1e

    .line 532
    aget v3, v2, v1

    if-ne v3, p1, :cond_1b

    .line 533
    iget p0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    mul-int/2addr v0, p0

    add-int/2addr v1, v0

    return v1

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    goto :goto_8

    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method private greylist removeElement(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    move-result p1

    if-gez p1, :cond_8

    return v0

    .line 333
    :cond_8
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->removeElementAt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private greylist removeElementAt(I)V
    .registers 8

    .line 348
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-ge p1, v0, :cond_41

    .line 350
    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, p1, v1

    ushr-int/2addr v0, v1

    .line 352
    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr p1, v1

    :goto_c
    if-gt v2, v0, :cond_41

    .line 356
    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    .line 357
    iget-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v5, v4, v2

    if-nez v5, :cond_1f

    .line 359
    new-array v5, v1, [I

    aput-object v5, v4, v2

    goto :goto_24

    :cond_1f
    add-int/lit8 v1, p1, 0x1

    .line 361
    invoke-static {v5, v1, v5, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_24
    const/4 p1, 0x0

    if-ge v2, v0, :cond_38

    .line 364
    iget-object v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    add-int/lit8 v3, v2, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_3e

    .line 366
    iget v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v1, p1

    aput v1, v5, v3

    goto :goto_3e

    .line 369
    :cond_38
    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v5, v1

    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 374
    :cond_41
    iget p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    return-void
.end method


# virtual methods
.method public greylist addElement(I)V
    .registers 8

    .line 147
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    sub-int v1, v0, v1

    if-ltz v1, :cond_15

    .line 150
    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge v1, v2, :cond_15

    .line 151
    iget-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    aput p1, v2, v1

    add-int/lit8 v0, v0, 0x1

    .line 152
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    return-void

    .line 161
    :cond_15
    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, v0, v1

    .line 162
    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v0, v2

    .line 164
    iget-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v3, v2

    if-lt v1, v3, :cond_2d

    .line 166
    iget v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int/2addr v3, v1

    .line 167
    new-array v3, v3, [[I

    .line 168
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    .line 171
    :cond_2d
    iget-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v3, v2, v1

    if-nez v3, :cond_39

    .line 173
    iget v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v3, v3, [I

    aput-object v3, v2, v1

    .line 174
    :cond_39
    aput p1, v3, v0

    .line 178
    iput-object v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    .line 179
    iget p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    sub-int v0, p1, v0

    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    add-int/lit8 p1, p1, 0x1

    .line 181
    iput p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    return-void
.end method

.method public greylist elementAt(I)I
    .registers 4

    .line 439
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 440
    iget-object p0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    aget p0, p0, p1

    return p0

    .line 442
    :cond_9
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final greylist getMap()[[I
    .registers 1

    .line 554
    iget-object p0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    return-object p0
.end method

.method public final greylist getMap0()[I
    .registers 1

    .line 545
    iget-object p0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    return-object p0
.end method

.method public greylist indexOf(I)I
    .registers 3

    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(II)I
    .registers 9

    .line 470
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_6

    return v1

    .line 473
    :cond_6
    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, p2, v2

    .line 474
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr p2, v4

    ushr-int/2addr v0, v2

    :goto_e
    if-ge v3, v0, :cond_28

    .line 480
    iget-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v2, v2, v3

    if-eqz v2, :cond_24

    .line 482
    :goto_16
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge p2, v4, :cond_24

    .line 483
    aget v5, v2, p2

    if-ne v5, p1, :cond_21

    mul-int/2addr v3, v4

    add-int/2addr p2, v3

    return p2

    :cond_21
    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    :cond_24
    add-int/lit8 v3, v3, 0x1

    const/4 p2, 0x0

    goto :goto_e

    .line 488
    :cond_28
    iget v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v2, v3

    .line 489
    iget-object v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v3, v3, v0

    :goto_31
    if-ge p2, v2, :cond_3f

    .line 491
    aget v4, v3, p2

    if-ne v4, p1, :cond_3c

    .line 492
    iget p0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    mul-int/2addr v0, p0

    add-int/2addr p2, v0

    return p2

    :cond_3c
    add-int/lit8 p2, p2, 0x1

    goto :goto_31

    :cond_3f
    return v1
.end method

.method public greylist removeAllElements()V
    .registers 3

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    .line 313
    iget-object v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    iput-object v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    .line 314
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    return-void
.end method

.method public greylist setElementAt(II)V
    .registers 9

    .line 389
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge p2, v0, :cond_9

    .line 390
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    aput p1, v0, p2

    goto :goto_2f

    .line 393
    :cond_9
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v0, p2, v0

    .line 394
    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v1, p2

    .line 396
    iget-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v3, v2

    if-lt v0, v3, :cond_21

    .line 398
    iget v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int/2addr v3, v0

    .line 399
    new-array v3, v3, [[I

    .line 400
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    iput-object v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    .line 404
    :cond_21
    iget-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v3, v2, v0

    if-nez v3, :cond_2d

    .line 406
    iget v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v3, v3, [I

    aput-object v3, v2, v0

    .line 407
    :cond_2d
    aput p1, v3, v1

    .line 410
    :goto_2f
    iget p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-lt p2, p1, :cond_37

    add-int/lit8 p2, p2, 0x1

    .line 411
    iput p2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    :cond_37
    return-void
.end method

.method public greylist setSize(I)V
    .registers 3

    .line 136
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-le v0, p1, :cond_6

    .line 137
    iput p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    :cond_6
    return-void
.end method

.method public greylist size()I
    .registers 1

    .line 125
    iget p0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    return p0
.end method

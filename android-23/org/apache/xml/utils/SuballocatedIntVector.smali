.class public Lorg/apache/xml/utils/SuballocatedIntVector;
.super Ljava/lang/Object;
.source "SuballocatedIntVector.java"


# static fields
.field protected static final NUMBLOCKS_DEFAULT:I = 0x20


# instance fields
.field protected m_MASK:I

.field protected m_SHIFT:I

.field protected m_blocksize:I

.field protected m_buildCache:[I

.field protected m_buildCacheStartIndex:I

.field protected m_firstFree:I

.field protected m_map:[[I

.field protected m_map0:[I

.field protected m_numblocks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 81
    const/16 v0, 0x800

    #@2
    invoke-direct {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    #@5
    .line 79
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "blocksize"    # I

    #@0
    .prologue
    .line 115
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@5
    .line 113
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "blocksize"    # I
    .param p2, "numblocks"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 55
    const/16 v0, 0x20

    #@6
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    #@8
    .line 61
    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@a
    .line 95
    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@c
    :goto_0
    ushr-int/lit8 p1, p1, 0x1

    #@e
    if-eqz p1, :cond_0

    #@10
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@16
    goto :goto_0

    #@17
    .line 97
    :cond_0
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@19
    const/4 v1, 0x1

    #@1a
    shl-int v0, v1, v0

    #@1c
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@1e
    .line 98
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@20
    add-int/lit8 v0, v0, -0x1

    #@22
    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@24
    .line 99
    iput p2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    #@26
    .line 101
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@28
    new-array v0, v0, [I

    #@2a
    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    #@2c
    .line 102
    new-array v0, p2, [[I

    #@2e
    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@30
    .line 103
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@32
    iget-object v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    #@34
    aput-object v1, v0, v2

    #@36
    .line 104
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    #@38
    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    #@3a
    .line 105
    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    #@3c
    .line 92
    return-void
.end method

.method private addElements(I)V
    .locals 6
    .param p1, "numberOfElements"    # I

    #@0
    .prologue
    .line 233
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@2
    add-int v3, v4, p1

    #@4
    .line 234
    .local v3, "newlen":I
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@6
    if-le v3, v4, :cond_0

    #@8
    .line 236
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@a
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@c
    ushr-int v1, v4, v5

    #@e
    .line 237
    .local v1, "index":I
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@10
    add-int/2addr v4, p1

    #@11
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@13
    ushr-int v2, v4, v5

    #@15
    .line 238
    .local v2, "newindex":I
    add-int/lit8 v0, v1, 0x1

    #@17
    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_0

    #@19
    .line 239
    iget-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@1b
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@1d
    new-array v5, v5, [I

    #@1f
    aput-object v5, v4, v0

    #@21
    .line 238
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 241
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "newindex":I
    :cond_0
    iput v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@26
    .line 231
    return-void
.end method

.method private addElements(II)V
    .locals 12
    .param p1, "value"    # I
    .param p2, "numberOfElements"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 192
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@3
    add-int/2addr v9, p2

    #@4
    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@6
    if-ge v9, v10, :cond_0

    #@8
    .line 193
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_5

    #@b
    .line 195
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    #@d
    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@f
    add-int/lit8 v11, v10, 0x1

    #@11
    iput v11, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@13
    aput p1, v9, v10

    #@15
    .line 193
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_0

    #@18
    .line 199
    .end local v3    # "i":I
    :cond_0
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@1a
    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@1c
    ushr-int v4, v9, v10

    #@1e
    .line 200
    .local v4, "index":I
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@20
    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@22
    and-int v7, v9, v10

    #@24
    .line 201
    .local v7, "offset":I
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@26
    add-int/2addr v9, p2

    #@27
    iput v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@29
    .line 202
    :goto_1
    if-lez p2, :cond_5

    #@2b
    .line 204
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@2d
    array-length v9, v9

    #@2e
    if-lt v4, v9, :cond_1

    #@30
    .line 206
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    #@32
    add-int v6, v4, v9

    #@34
    .line 207
    .local v6, "newsize":I
    new-array v5, v6, [[I

    #@36
    .line 208
    .local v5, "newMap":[[I
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@38
    iget-object v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@3a
    array-length v10, v10

    #@3b
    invoke-static {v9, v11, v5, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3e
    .line 209
    iput-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@40
    .line 211
    .end local v5    # "newMap":[[I
    .end local v6    # "newsize":I
    :cond_1
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@42
    aget-object v0, v9, v4

    #@44
    .line 212
    .local v0, "block":[I
    if-nez v0, :cond_2

    #@46
    .line 213
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@48
    new-array v0, v9, [I

    #@4a
    .end local v0    # "block":[I
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@4c
    aput-object v0, v9, v4

    #@4e
    .line 214
    .restart local v0    # "block":[I
    :cond_2
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@50
    sub-int/2addr v9, v7

    #@51
    if-ge v9, p2, :cond_3

    #@53
    .line 215
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@55
    sub-int v1, v9, v7

    #@57
    .line 216
    .local v1, "copied":I
    :goto_2
    sub-int/2addr p2, v1

    #@58
    move v2, v1

    #@59
    .end local v1    # "copied":I
    .local v2, "copied":I
    move v8, v7

    #@5a
    .line 217
    .end local v7    # "offset":I
    .local v8, "offset":I
    :goto_3
    add-int/lit8 v1, v2, -0x1

    #@5c
    .end local v2    # "copied":I
    .restart local v1    # "copied":I
    if-lez v2, :cond_4

    #@5e
    .line 218
    add-int/lit8 v7, v8, 0x1

    #@60
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    aput p1, v0, v8

    #@62
    move v2, v1

    #@63
    .end local v1    # "copied":I
    .restart local v2    # "copied":I
    move v8, v7

    #@64
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_3

    #@65
    .line 215
    .end local v2    # "copied":I
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_3
    move v1, p2

    #@66
    .restart local v1    # "copied":I
    goto :goto_2

    #@67
    .line 220
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@69
    const/4 v7, 0x0

    #@6a
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_1

    #@6b
    .line 190
    .end local v0    # "block":[I
    .end local v1    # "copied":I
    .end local v4    # "index":I
    .end local v7    # "offset":I
    :cond_5
    return-void
.end method

.method private contains(I)Z
    .locals 2
    .param p1, "s"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 454
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    #@4
    move-result v1

    #@5
    if-ltz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private insertElementAt(II)V
    .locals 11
    .param p1, "value"    # I
    .param p2, "at"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 257
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@3
    if-ne p2, v8, :cond_1

    #@5
    .line 258
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@8
    .line 255
    :cond_0
    :goto_0
    return-void

    #@9
    .line 259
    :cond_1
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@b
    if-le p2, v8, :cond_4

    #@d
    .line 261
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@f
    ushr-int v2, p2, v8

    #@11
    .line 262
    .local v2, "index":I
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@13
    array-length v8, v8

    #@14
    if-lt v2, v8, :cond_2

    #@16
    .line 264
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    #@18
    add-int v5, v2, v8

    #@1a
    .line 265
    .local v5, "newsize":I
    new-array v4, v5, [[I

    #@1c
    .line 266
    .local v4, "newMap":[[I
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@1e
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@20
    array-length v9, v9

    #@21
    invoke-static {v8, v10, v4, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 267
    iput-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@26
    .line 269
    .end local v4    # "newMap":[[I
    .end local v5    # "newsize":I
    :cond_2
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@28
    aget-object v0, v8, v2

    #@2a
    .line 270
    .local v0, "block":[I
    if-nez v0, :cond_3

    #@2c
    .line 271
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@2e
    new-array v0, v8, [I

    #@30
    .end local v0    # "block":[I
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@32
    aput-object v0, v8, v2

    #@34
    .line 272
    .restart local v0    # "block":[I
    :cond_3
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@36
    and-int v6, p2, v8

    #@38
    .line 273
    .local v6, "offset":I
    aput p1, v0, v6

    #@3a
    .line 274
    add-int/lit8 v8, v6, 0x1

    #@3c
    iput v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@3e
    goto :goto_0

    #@3f
    .line 278
    .end local v0    # "block":[I
    .end local v2    # "index":I
    .end local v6    # "offset":I
    :cond_4
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@41
    ushr-int v2, p2, v8

    #@43
    .line 279
    .restart local v2    # "index":I
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@45
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@47
    ushr-int v3, v8, v9

    #@49
    .line 280
    .local v3, "maxindex":I
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@4b
    add-int/lit8 v8, v8, 0x1

    #@4d
    iput v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@4f
    .line 281
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@51
    and-int v6, p2, v8

    #@53
    .line 285
    .restart local v6    # "offset":I
    :goto_1
    if-gt v2, v3, :cond_0

    #@55
    .line 287
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@57
    sub-int/2addr v8, v6

    #@58
    add-int/lit8 v1, v8, -0x1

    #@5a
    .line 288
    .local v1, "copylen":I
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@5c
    aget-object v0, v8, v2

    #@5e
    .line 289
    .restart local v0    # "block":[I
    if-nez v0, :cond_5

    #@60
    .line 291
    const/4 v7, 0x0

    #@61
    .line 292
    .local v7, "push":I
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@63
    new-array v0, v8, [I

    #@65
    .end local v0    # "block":[I
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@67
    aput-object v0, v8, v2

    #@69
    .line 299
    .restart local v0    # "block":[I
    :goto_2
    aput p1, v0, v6

    #@6b
    .line 300
    move p1, v7

    #@6c
    .line 301
    const/4 v6, 0x0

    #@6d
    .line 302
    add-int/lit8 v2, v2, 0x1

    #@6f
    goto :goto_1

    #@70
    .line 296
    .end local v7    # "push":I
    :cond_5
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@72
    add-int/lit8 v8, v8, -0x1

    #@74
    aget v7, v0, v8

    #@76
    .line 297
    .restart local v7    # "push":I
    add-int/lit8 v8, v6, 0x1

    #@78
    invoke-static {v0, v6, v0, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@7b
    goto :goto_2
.end method

.method private lastIndexOf(I)I
    .locals 6
    .param p1, "elem"    # I

    #@0
    .prologue
    .line 524
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@2
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@4
    and-int v1, v4, v5

    #@6
    .line 525
    .local v1, "boffset":I
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@8
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@a
    ushr-int v2, v4, v5

    #@c
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_2

    #@e
    .line 529
    iget-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@10
    aget-object v0, v4, v2

    #@12
    .line 530
    .local v0, "block":[I
    if-eqz v0, :cond_1

    #@14
    .line 531
    move v3, v1

    #@15
    .local v3, "offset":I
    :goto_1
    if-ltz v3, :cond_1

    #@17
    .line 532
    aget v4, v0, v3

    #@19
    if-ne v4, p1, :cond_0

    #@1b
    .line 533
    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@1d
    mul-int/2addr v4, v2

    #@1e
    add-int/2addr v4, v3

    #@1f
    return v4

    #@20
    .line 531
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@22
    goto :goto_1

    #@23
    .line 534
    .end local v3    # "offset":I
    :cond_1
    const/4 v1, 0x0

    #@24
    .line 527
    add-int/lit8 v2, v2, -0x1

    #@26
    goto :goto_0

    #@27
    .line 536
    .end local v0    # "block":[I
    :cond_2
    const/4 v4, -0x1

    #@28
    return v4
.end method

.method private removeElement(I)Z
    .locals 2
    .param p1, "s"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 330
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    #@4
    move-result v0

    #@5
    .line 331
    .local v0, "at":I
    if-gez v0, :cond_0

    #@7
    .line 332
    return v1

    #@8
    .line 333
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->removeElementAt(I)V

    #@b
    .line 334
    const/4 v1, 0x1

    #@c
    return v1
.end method

.method private removeElementAt(I)V
    .locals 9
    .param p1, "at"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 348
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@3
    if-ge p1, v6, :cond_4

    #@5
    .line 350
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@7
    ushr-int v2, p1, v6

    #@9
    .line 351
    .local v2, "index":I
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@b
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@d
    ushr-int v3, v6, v8

    #@f
    .line 352
    .local v3, "maxindex":I
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@11
    and-int v5, p1, v6

    #@13
    .line 354
    .local v5, "offset":I
    :goto_0
    if-gt v2, v3, :cond_4

    #@15
    .line 356
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@17
    sub-int/2addr v6, v5

    #@18
    add-int/lit8 v1, v6, -0x1

    #@1a
    .line 357
    .local v1, "copylen":I
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@1c
    aget-object v0, v6, v2

    #@1e
    .line 358
    .local v0, "block":[I
    if-nez v0, :cond_1

    #@20
    .line 359
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@22
    new-array v0, v6, [I

    #@24
    .end local v0    # "block":[I
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@26
    aput-object v0, v6, v2

    #@28
    .line 362
    .restart local v0    # "block":[I
    :goto_1
    if-ge v2, v3, :cond_3

    #@2a
    .line 364
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@2c
    add-int/lit8 v8, v2, 0x1

    #@2e
    aget-object v4, v6, v8

    #@30
    .line 365
    .local v4, "next":[I
    if-eqz v4, :cond_0

    #@32
    .line 366
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@34
    add-int/lit8 v8, v6, -0x1

    #@36
    if-eqz v4, :cond_2

    #@38
    aget v6, v4, v7

    #@3a
    :goto_2
    aput v6, v0, v8

    #@3c
    .line 370
    .end local v4    # "next":[I
    :cond_0
    :goto_3
    const/4 v5, 0x0

    #@3d
    .line 371
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 361
    :cond_1
    add-int/lit8 v6, v5, 0x1

    #@42
    invoke-static {v0, v6, v0, v5, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@45
    goto :goto_1

    #@46
    .restart local v4    # "next":[I
    :cond_2
    move v6, v7

    #@47
    .line 366
    goto :goto_2

    #@48
    .line 369
    .end local v4    # "next":[I
    :cond_3
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@4a
    add-int/lit8 v6, v6, -0x1

    #@4c
    aput v7, v0, v6

    #@4e
    goto :goto_3

    #@4f
    .line 374
    .end local v0    # "block":[I
    .end local v1    # "copylen":I
    .end local v2    # "index":I
    .end local v3    # "maxindex":I
    .end local v5    # "offset":I
    :cond_4
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@51
    add-int/lit8 v6, v6, -0x1

    #@53
    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@55
    .line 345
    return-void
.end method


# virtual methods
.method public addElement(I)V
    .locals 9
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 147
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@3
    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    #@5
    sub-int v2, v6, v7

    #@7
    .line 150
    .local v2, "indexRelativeToCache":I
    if-ltz v2, :cond_0

    #@9
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@b
    if-ge v2, v6, :cond_0

    #@d
    .line 151
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    #@f
    aput p1, v6, v2

    #@11
    .line 152
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@13
    add-int/lit8 v6, v6, 0x1

    #@15
    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@17
    .line 145
    :goto_0
    return-void

    #@18
    .line 161
    :cond_0
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@1a
    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@1c
    ushr-int v1, v6, v7

    #@1e
    .line 162
    .local v1, "index":I
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@20
    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@22
    and-int v5, v6, v7

    #@24
    .line 164
    .local v5, "offset":I
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@26
    array-length v6, v6

    #@27
    if-lt v1, v6, :cond_1

    #@29
    .line 166
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    #@2b
    add-int v4, v1, v6

    #@2d
    .line 167
    .local v4, "newsize":I
    new-array v3, v4, [[I

    #@2f
    .line 168
    .local v3, "newMap":[[I
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@31
    iget-object v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@33
    array-length v7, v7

    #@34
    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@37
    .line 169
    iput-object v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@39
    .line 171
    .end local v3    # "newMap":[[I
    .end local v4    # "newsize":I
    :cond_1
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@3b
    aget-object v0, v6, v1

    #@3d
    .line 172
    .local v0, "block":[I
    if-nez v0, :cond_2

    #@3f
    .line 173
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@41
    new-array v0, v6, [I

    #@43
    .end local v0    # "block":[I
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@45
    aput-object v0, v6, v1

    #@47
    .line 174
    .restart local v0    # "block":[I
    :cond_2
    aput p1, v0, v5

    #@49
    .line 178
    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    #@4b
    .line 179
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@4d
    sub-int/2addr v6, v5

    #@4e
    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    #@50
    .line 181
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@52
    add-int/lit8 v6, v6, 0x1

    #@54
    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@56
    goto :goto_0
.end method

.method public elementAt(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 439
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 440
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    #@6
    aget v0, v0, p1

    #@8
    return v0

    #@9
    .line 442
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@b
    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@d
    ushr-int v1, p1, v1

    #@f
    aget-object v0, v0, v1

    #@11
    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@13
    and-int/2addr v1, p1

    #@14
    aget v0, v0, v1

    #@16
    return v0
.end method

.method public final getMap()[[I
    .locals 1

    #@0
    .prologue
    .line 554
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@2
    return-object v0
.end method

.method public final getMap0()[I
    .locals 1

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    #@2
    return-object v0
.end method

.method public indexOf(I)I
    .locals 1
    .param p1, "elem"    # I

    #@0
    .prologue
    .line 509
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public indexOf(II)I
    .locals 9
    .param p1, "elem"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 470
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@3
    if-lt p2, v6, :cond_0

    #@5
    .line 471
    return v8

    #@6
    .line 473
    :cond_0
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@8
    ushr-int v0, p2, v6

    #@a
    .line 474
    .local v0, "bindex":I
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@c
    and-int v2, p2, v6

    #@e
    .line 475
    .local v2, "boffset":I
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@10
    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@12
    ushr-int v3, v6, v7

    #@14
    .line 478
    .local v3, "maxindex":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@16
    .line 480
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@18
    aget-object v1, v6, v0

    #@1a
    .line 481
    .local v1, "block":[I
    if-eqz v1, :cond_2

    #@1c
    .line 482
    move v5, v2

    #@1d
    .local v5, "offset":I
    :goto_1
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@1f
    if-ge v5, v6, :cond_2

    #@21
    .line 483
    aget v6, v1, v5

    #@23
    if-ne v6, p1, :cond_1

    #@25
    .line 484
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@27
    mul-int/2addr v6, v0

    #@28
    add-int/2addr v6, v5

    #@29
    return v6

    #@2a
    .line 482
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 485
    .end local v5    # "offset":I
    :cond_2
    const/4 v2, 0x0

    #@2e
    .line 478
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 488
    .end local v1    # "block":[I
    :cond_3
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@33
    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@35
    and-int v4, v6, v7

    #@37
    .line 489
    .local v4, "maxoffset":I
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@39
    aget-object v1, v6, v3

    #@3b
    .line 490
    .restart local v1    # "block":[I
    move v5, v2

    #@3c
    .restart local v5    # "offset":I
    :goto_2
    if-ge v5, v4, :cond_5

    #@3e
    .line 491
    aget v6, v1, v5

    #@40
    if-ne v6, p1, :cond_4

    #@42
    .line 492
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@44
    mul-int/2addr v6, v3

    #@45
    add-int/2addr v6, v5

    #@46
    return v6

    #@47
    .line 490
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@49
    goto :goto_2

    #@4a
    .line 494
    :cond_5
    return v8
.end method

.method public removeAllElements()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 312
    iput v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@3
    .line 313
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    #@5
    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    #@7
    .line 314
    iput v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    #@9
    .line 310
    return-void
.end method

.method public setElementAt(II)V
    .locals 8
    .param p1, "value"    # I
    .param p2, "at"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 389
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@3
    if-ge p2, v5, :cond_1

    #@5
    .line 390
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    #@7
    aput p1, v5, p2

    #@9
    .line 410
    :goto_0
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@b
    if-lt p2, v5, :cond_0

    #@d
    .line 411
    add-int/lit8 v5, p2, 0x1

    #@f
    iput v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@11
    .line 387
    :cond_0
    return-void

    #@12
    .line 393
    :cond_1
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    #@14
    ushr-int v1, p2, v5

    #@16
    .line 394
    .local v1, "index":I
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    #@18
    and-int v4, p2, v5

    #@1a
    .line 396
    .local v4, "offset":I
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@1c
    array-length v5, v5

    #@1d
    if-lt v1, v5, :cond_2

    #@1f
    .line 398
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    #@21
    add-int v3, v1, v5

    #@23
    .line 399
    .local v3, "newsize":I
    new-array v2, v3, [[I

    #@25
    .line 400
    .local v2, "newMap":[[I
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@27
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@29
    array-length v6, v6

    #@2a
    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2d
    .line 401
    iput-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@2f
    .line 404
    .end local v2    # "newMap":[[I
    .end local v3    # "newsize":I
    :cond_2
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@31
    aget-object v0, v5, v1

    #@33
    .line 405
    .local v0, "block":[I
    if-nez v0, :cond_3

    #@35
    .line 406
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    #@37
    new-array v0, v5, [I

    #@39
    .end local v0    # "block":[I
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    #@3b
    aput-object v0, v5, v1

    #@3d
    .line 407
    .restart local v0    # "block":[I
    :cond_3
    aput p1, v0, v4

    #@3f
    goto :goto_0
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "sz"    # I

    #@0
    .prologue
    .line 136
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@2
    if-le v0, p1, :cond_0

    #@4
    .line 137
    iput p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@6
    .line 134
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    #@2
    return v0
.end method

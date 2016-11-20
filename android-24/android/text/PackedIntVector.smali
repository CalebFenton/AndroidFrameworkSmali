.class Landroid/text/PackedIntVector;
.super Ljava/lang/Object;
.source "PackedIntVector.java"


# instance fields
.field private final mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValueGap:[I

.field private mValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "columns"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 45
    iput p1, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@6
    .line 46
    iput v0, p0, Landroid/text/PackedIntVector;->mRows:I

    #@8
    .line 48
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@a
    .line 49
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    #@c
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@e
    .line 51
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@11
    .line 52
    mul-int/lit8 v0, p1, 0x2

    #@13
    new-array v0, v0, [I

    #@15
    iput-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    #@17
    .line 44
    return-void
.end method

.method private final growBuffer()V
    .locals 11

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 255
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@3
    .line 257
    .local v1, "columns":I
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    #@6
    move-result v7

    #@7
    invoke-static {v7}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    #@a
    move-result v7

    #@b
    mul-int/2addr v7, v1

    #@c
    .line 256
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@f
    move-result-object v4

    #@10
    .line 258
    .local v4, "newvalues":[I
    array-length v7, v4

    #@11
    div-int v3, v7, v1

    #@13
    .line 260
    .local v3, "newsize":I
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    #@15
    .line 261
    .local v6, "valuegap":[I
    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@17
    .line 263
    .local v5, "rowgapstart":I
    iget v7, p0, Landroid/text/PackedIntVector;->mRows:I

    #@19
    iget v8, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@1b
    add-int/2addr v8, v5

    #@1c
    sub-int v0, v7, v8

    #@1e
    .line 265
    .local v0, "after":I
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@20
    if-eqz v7, :cond_0

    #@22
    .line 266
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@24
    mul-int v8, v1, v5

    #@26
    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    #@29
    .line 267
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@2b
    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    #@2d
    sub-int/2addr v8, v0

    #@2e
    mul-int/2addr v8, v1

    #@2f
    .line 268
    sub-int v9, v3, v0

    #@31
    mul-int/2addr v9, v1

    #@32
    .line 269
    mul-int v10, v0, v1

    #@34
    .line 267
    invoke-static {v7, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy([II[III)V

    #@37
    .line 272
    :cond_0
    const/4 v2, 0x0

    #@38
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@3a
    .line 273
    aget v7, v6, v2

    #@3c
    if-lt v7, v5, :cond_1

    #@3e
    .line 274
    aget v7, v6, v2

    #@40
    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    #@42
    sub-int v8, v3, v8

    #@44
    add-int/2addr v7, v8

    #@45
    aput v7, v6, v2

    #@47
    .line 276
    aget v7, v6, v2

    #@49
    if-ge v7, v5, :cond_1

    #@4b
    .line 277
    aput v5, v6, v2

    #@4d
    .line 272
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 282
    :cond_2
    iget v7, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@52
    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    #@54
    sub-int v8, v3, v8

    #@56
    add-int/2addr v7, v8

    #@57
    iput v7, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@59
    .line 283
    iput v3, p0, Landroid/text/PackedIntVector;->mRows:I

    #@5b
    .line 284
    iput-object v4, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@5d
    .line 254
    return-void
.end method

.method private final moveRowGapTo(I)V
    .locals 12
    .param p1, "where"    # I

    #@0
    .prologue
    .line 315
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@2
    if-ne p1, v9, :cond_0

    #@4
    .line 316
    return-void

    #@5
    .line 317
    :cond_0
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@7
    if-le p1, v9, :cond_4

    #@9
    .line 318
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@b
    add-int/2addr v9, p1

    #@c
    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@e
    iget v11, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@10
    add-int/2addr v10, v11

    #@11
    sub-int v5, v9, v10

    #@13
    .line 319
    .local v5, "moving":I
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@15
    .line 320
    .local v0, "columns":I
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    #@17
    .line 321
    .local v7, "valuegap":[I
    iget-object v8, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@19
    .line 322
    .local v8, "values":[I
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@1b
    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@1d
    add-int v2, v9, v10

    #@1f
    .line 324
    .local v2, "gapend":I
    move v3, v2

    #@20
    .local v3, "i":I
    :goto_0
    add-int v9, v2, v5

    #@22
    if-ge v3, v9, :cond_8

    #@24
    .line 325
    sub-int v9, v3, v2

    #@26
    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@28
    add-int v1, v9, v10

    #@2a
    .line 327
    .local v1, "destrow":I
    const/4 v4, 0x0

    #@2b
    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_3

    #@2d
    .line 328
    mul-int v9, v3, v0

    #@2f
    add-int/2addr v9, v4

    #@30
    aget v6, v8, v9

    #@32
    .line 330
    .local v6, "val":I
    aget v9, v7, v4

    #@34
    if-lt v3, v9, :cond_1

    #@36
    .line 331
    add-int v9, v4, v0

    #@38
    aget v9, v7, v9

    #@3a
    add-int/2addr v6, v9

    #@3b
    .line 334
    :cond_1
    aget v9, v7, v4

    #@3d
    if-lt v1, v9, :cond_2

    #@3f
    .line 335
    add-int v9, v4, v0

    #@41
    aget v9, v7, v9

    #@43
    sub-int/2addr v6, v9

    #@44
    .line 338
    :cond_2
    mul-int v9, v1, v0

    #@46
    add-int/2addr v9, v4

    #@47
    aput v6, v8, v9

    #@49
    .line 327
    add-int/lit8 v4, v4, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 324
    .end local v6    # "val":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 342
    .end local v0    # "columns":I
    .end local v1    # "destrow":I
    .end local v2    # "gapend":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "moving":I
    .end local v7    # "valuegap":[I
    .end local v8    # "values":[I
    :cond_4
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@51
    sub-int v5, v9, p1

    #@53
    .line 343
    .restart local v5    # "moving":I
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@55
    .line 344
    .restart local v0    # "columns":I
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    #@57
    .line 345
    .restart local v7    # "valuegap":[I
    iget-object v8, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@59
    .line 346
    .restart local v8    # "values":[I
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@5b
    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@5d
    add-int v2, v9, v10

    #@5f
    .line 348
    .restart local v2    # "gapend":I
    add-int v9, p1, v5

    #@61
    add-int/lit8 v3, v9, -0x1

    #@63
    .restart local v3    # "i":I
    :goto_2
    if-lt v3, p1, :cond_8

    #@65
    .line 349
    sub-int v9, v3, p1

    #@67
    add-int/2addr v9, v2

    #@68
    sub-int v1, v9, v5

    #@6a
    .line 351
    .restart local v1    # "destrow":I
    const/4 v4, 0x0

    #@6b
    .restart local v4    # "j":I
    :goto_3
    if-ge v4, v0, :cond_7

    #@6d
    .line 352
    mul-int v9, v3, v0

    #@6f
    add-int/2addr v9, v4

    #@70
    aget v6, v8, v9

    #@72
    .line 354
    .restart local v6    # "val":I
    aget v9, v7, v4

    #@74
    if-lt v3, v9, :cond_5

    #@76
    .line 355
    add-int v9, v4, v0

    #@78
    aget v9, v7, v9

    #@7a
    add-int/2addr v6, v9

    #@7b
    .line 358
    :cond_5
    aget v9, v7, v4

    #@7d
    if-lt v1, v9, :cond_6

    #@7f
    .line 359
    add-int v9, v4, v0

    #@81
    aget v9, v7, v9

    #@83
    sub-int/2addr v6, v9

    #@84
    .line 362
    :cond_6
    mul-int v9, v1, v0

    #@86
    add-int/2addr v9, v4

    #@87
    aput v6, v8, v9

    #@89
    .line 351
    add-int/lit8 v4, v4, 0x1

    #@8b
    goto :goto_3

    #@8c
    .line 348
    .end local v6    # "val":I
    :cond_7
    add-int/lit8 v3, v3, -0x1

    #@8e
    goto :goto_2

    #@8f
    .line 367
    .end local v1    # "destrow":I
    .end local v4    # "j":I
    :cond_8
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@91
    .line 314
    return-void
.end method

.method private final moveValueGapTo(II)V
    .locals 7
    .param p1, "column"    # I
    .param p2, "where"    # I

    #@0
    .prologue
    .line 292
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    #@2
    .line 293
    .local v2, "valuegap":[I
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@4
    .line 294
    .local v3, "values":[I
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@6
    .line 296
    .local v0, "columns":I
    aget v4, v2, p1

    #@8
    if-ne p2, v4, :cond_0

    #@a
    .line 297
    return-void

    #@b
    .line 298
    :cond_0
    aget v4, v2, p1

    #@d
    if-le p2, v4, :cond_1

    #@f
    .line 299
    aget v1, v2, p1

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    #@13
    .line 300
    mul-int v4, v1, v0

    #@15
    add-int/2addr v4, p1

    #@16
    aget v5, v3, v4

    #@18
    add-int v6, p1, v0

    #@1a
    aget v6, v2, v6

    #@1c
    add-int/2addr v5, v6

    #@1d
    aput v5, v3, v4

    #@1f
    .line 299
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 303
    .end local v1    # "i":I
    :cond_1
    move v1, p2

    #@23
    .restart local v1    # "i":I
    :goto_1
    aget v4, v2, p1

    #@25
    if-ge v1, v4, :cond_2

    #@27
    .line 304
    mul-int v4, v1, v0

    #@29
    add-int/2addr v4, p1

    #@2a
    aget v5, v3, v4

    #@2c
    add-int v6, p1, v0

    #@2e
    aget v6, v2, v6

    #@30
    sub-int/2addr v5, v6

    #@31
    aput v5, v3, v4

    #@33
    .line 303
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_1

    #@36
    .line 308
    :cond_2
    aput p2, v2, p1

    #@38
    .line 291
    return-void
.end method

.method private setValueInternal(III)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 124
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@2
    if-lt p1, v1, :cond_0

    #@4
    .line 125
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@6
    add-int/2addr p1, v1

    #@7
    .line 128
    :cond_0
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    #@9
    .line 129
    .local v0, "valuegap":[I
    aget v1, v0, p2

    #@b
    if-lt p1, v1, :cond_1

    #@d
    .line 130
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@f
    add-int/2addr v1, p2

    #@10
    aget v1, v0, v1

    #@12
    sub-int/2addr p3, v1

    #@13
    .line 133
    :cond_1
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@15
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@17
    mul-int/2addr v2, p1

    #@18
    add-int/2addr v2, p2

    #@19
    aput p3, v1, v2

    #@1b
    .line 123
    return-void
.end method


# virtual methods
.method public adjustValuesBelow(III)V
    .locals 3
    .param p1, "startRow"    # I
    .param p2, "column"    # I
    .param p3, "delta"    # I

    #@0
    .prologue
    .line 150
    or-int v0, p1, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    #@7
    move-result v0

    #@8
    if-le p1, v0, :cond_1

    #@a
    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, ", "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    #@2b
    move-result v0

    #@2c
    if-ge p2, v0, :cond_0

    #@2e
    .line 155
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@30
    if-lt p1, v0, :cond_2

    #@32
    .line 156
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@34
    add-int/2addr p1, v0

    #@35
    .line 159
    :cond_2
    invoke-direct {p0, p2, p1}, Landroid/text/PackedIntVector;->moveValueGapTo(II)V

    #@38
    .line 160
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    #@3a
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@3c
    add-int/2addr v1, p2

    #@3d
    aget v2, v0, v1

    #@3f
    add-int/2addr v2, p3

    #@40
    aput v2, v0, v1

    #@42
    .line 149
    return-void
.end method

.method public deleteAt(II)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    .line 217
    or-int v0, p1, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    add-int v0, p1, p2

    #@6
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    #@9
    move-result v1

    #@a
    if-le v0, v1, :cond_1

    #@c
    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ", "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 221
    :cond_1
    add-int v0, p1, p2

    #@2c
    invoke-direct {p0, v0}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    #@2f
    .line 223
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@31
    sub-int/2addr v0, p2

    #@32
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@34
    .line 224
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@36
    add-int/2addr v0, p2

    #@37
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@39
    .line 216
    return-void
.end method

.method public getValue(II)I
    .locals 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    #@0
    .prologue
    .line 68
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@2
    .line 70
    .local v0, "columns":I
    or-int v3, p1, p2

    #@4
    if-ltz v3, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    #@9
    move-result v3

    #@a
    if-lt p1, v3, :cond_1

    #@c
    .line 71
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    const-string/jumbo v5, ", "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 70
    :cond_1
    if-ge p2, v0, :cond_0

    #@2c
    .line 74
    iget v3, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@2e
    if-lt p1, v3, :cond_2

    #@30
    .line 75
    iget v3, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@32
    add-int/2addr p1, v3

    #@33
    .line 78
    :cond_2
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@35
    mul-int v4, p1, v0

    #@37
    add-int/2addr v4, p2

    #@38
    aget v1, v3, v4

    #@3a
    .line 80
    .local v1, "value":I
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    #@3c
    .line 81
    .local v2, "valuegap":[I
    aget v3, v2, p2

    #@3e
    if-lt p1, v3, :cond_3

    #@40
    .line 82
    add-int v3, p2, v0

    #@42
    aget v3, v2, v3

    #@44
    add-int/2addr v1, v3

    #@45
    .line 85
    :cond_3
    return v1
.end method

.method public insertAt(I[I)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "values"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 177
    if-ltz p1, :cond_0

    #@3
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    #@6
    move-result v1

    #@7
    if-le p1, v1, :cond_1

    #@9
    .line 178
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "row "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 181
    :cond_1
    if-eqz p2, :cond_2

    #@25
    array-length v1, p2

    #@26
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    #@29
    move-result v2

    #@2a
    if-ge v1, v2, :cond_2

    #@2c
    .line 182
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "value count "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    array-length v3, p2

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@46
    throw v1

    #@47
    .line 185
    :cond_2
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    #@4a
    .line 187
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@4c
    if-nez v1, :cond_3

    #@4e
    .line 188
    invoke-direct {p0}, Landroid/text/PackedIntVector;->growBuffer()V

    #@51
    .line 191
    :cond_3
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@53
    add-int/lit8 v1, v1, 0x1

    #@55
    iput v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@57
    .line 192
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@59
    add-int/lit8 v1, v1, -0x1

    #@5b
    iput v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@5d
    .line 194
    if-nez p2, :cond_4

    #@5f
    .line 195
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@61
    add-int/lit8 v0, v1, -0x1

    #@63
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    #@65
    .line 196
    invoke-direct {p0, p1, v0, v3}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    #@68
    .line 195
    add-int/lit8 v0, v0, -0x1

    #@6a
    goto :goto_0

    #@6b
    .line 199
    .end local v0    # "i":I
    :cond_4
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@6d
    add-int/lit8 v0, v1, -0x1

    #@6f
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_5

    #@71
    .line 200
    aget v1, p2, v0

    #@73
    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    #@76
    .line 199
    add-int/lit8 v0, v0, -0x1

    #@78
    goto :goto_1

    #@79
    .line 176
    :cond_5
    return-void
.end method

.method public setValue(III)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 99
    or-int v1, p1, p2

    #@2
    if-ltz v1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    #@7
    move-result v1

    #@8
    if-lt p1, v1, :cond_1

    #@a
    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, ", "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 99
    :cond_1
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@2a
    if-ge p2, v1, :cond_0

    #@2c
    .line 103
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    #@2e
    if-lt p1, v1, :cond_2

    #@30
    .line 104
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@32
    add-int/2addr p1, v1

    #@33
    .line 107
    :cond_2
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    #@35
    .line 108
    .local v0, "valuegap":[I
    aget v1, v0, p2

    #@37
    if-lt p1, v1, :cond_3

    #@39
    .line 109
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@3b
    add-int/2addr v1, p2

    #@3c
    aget v1, v0, v1

    #@3e
    sub-int/2addr p3, v1

    #@3f
    .line 112
    :cond_3
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    #@41
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@43
    mul-int/2addr v2, p1

    #@44
    add-int/2addr v2, p2

    #@45
    aput p3, v1, v2

    #@47
    .line 98
    return-void
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 237
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    #@2
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public width()I
    .locals 1

    #@0
    .prologue
    .line 247
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    #@2
    return v0
.end method

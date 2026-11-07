.class public Landroid/text/PackedIntVector;
.super Ljava/lang/Object;
.source "PackedIntVector.java"


# instance fields
.field private final greylist-max-o mColumns:I

.field private greylist-max-o mRowGapLength:I

.field private greylist-max-o mRowGapStart:I

.field private greylist-max-o mRows:I

.field private greylist-max-o mValueGap:[I

.field private greylist-max-o mValues:[I


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "columns"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 53
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 54
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 57
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 58
    return-void
.end method

.method private final greylist-max-o growBuffer()V
    .registers 11

    .line 260
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 261
    .local v0, "columns":I
    nop

    .line 262
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 261
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 263
    .local v1, "newvalues":[I
    array-length v2, v1

    div-int/2addr v2, v0

    .line 265
    .local v2, "newsize":I
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 266
    .local v3, "valuegap":[I
    iget v4, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 268
    .local v4, "rowgapstart":I
    iget v5, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v6, v4

    sub-int/2addr v5, v6

    .line 270
    .local v5, "after":I
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    if-eqz v6, :cond_36

    .line 271
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v7, v0, v4

    const/4 v8, 0x0

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v7, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int/2addr v7, v5

    mul-int/2addr v7, v0

    sub-int v8, v2, v5

    mul-int/2addr v8, v0

    mul-int v9, v5, v0

    invoke-static {v6, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    :cond_36
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_37
    if-ge v6, v0, :cond_4f

    .line 278
    aget v7, v3, v6

    if-lt v7, v4, :cond_4c

    .line 279
    aget v7, v3, v6

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v8, v2, v8

    add-int/2addr v7, v8

    aput v7, v3, v6

    .line 281
    aget v7, v3, v6

    if-ge v7, v4, :cond_4c

    .line 282
    aput v4, v3, v6

    .line 277
    :cond_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 287
    .end local v6    # "i":I
    :cond_4f
    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    iget v7, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 288
    iput v2, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 289
    iput-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 290
    return-void
.end method

.method private final greylist-max-o moveRowGapTo(I)V
    .registers 12
    .param p1, "where"    # I

    .line 320
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-ne p1, v0, :cond_5

    .line 321
    return-void

    .line 322
    :cond_5
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-le p1, v0, :cond_4d

    .line 323
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v2, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 324
    .local v0, "moving":I
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 325
    .local v1, "columns":I
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 326
    .local v2, "valuegap":[I
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 327
    .local v3, "values":[I
    iget v4, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v4, v5

    .line 329
    .local v4, "gapend":I
    move v5, v4

    .local v5, "i":I
    :goto_1e
    add-int v6, v4, v0

    if-ge v5, v6, :cond_4c

    .line 330
    sub-int v6, v5, v4

    iget v7, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/2addr v6, v7

    .line 332
    .local v6, "destrow":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_28
    if-ge v7, v1, :cond_49

    .line 333
    mul-int v8, v5, v1

    add-int/2addr v8, v7

    aget v8, v3, v8

    .line 335
    .local v8, "val":I
    aget v9, v2, v7

    if-lt v5, v9, :cond_38

    .line 336
    add-int v9, v7, v1

    aget v9, v2, v9

    add-int/2addr v8, v9

    .line 339
    :cond_38
    aget v9, v2, v7

    if-lt v6, v9, :cond_41

    .line 340
    add-int v9, v7, v1

    aget v9, v2, v9

    sub-int/2addr v8, v9

    .line 343
    :cond_41
    mul-int v9, v6, v1

    add-int/2addr v9, v7

    aput v8, v3, v9

    .line 332
    .end local v8    # "val":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 329
    .end local v6    # "destrow":I
    .end local v7    # "j":I
    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 346
    .end local v0    # "moving":I
    .end local v1    # "columns":I
    .end local v2    # "valuegap":[I
    .end local v3    # "values":[I
    .end local v4    # "gapend":I
    .end local v5    # "i":I
    :cond_4c
    goto :goto_8a

    .line 347
    :cond_4d
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr v0, p1

    .line 348
    .restart local v0    # "moving":I
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 349
    .restart local v1    # "columns":I
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 350
    .restart local v2    # "valuegap":[I
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 351
    .restart local v3    # "values":[I
    iget v4, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v4, v5

    .line 353
    .restart local v4    # "gapend":I
    add-int v5, p1, v0

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "i":I
    :goto_5f
    if-lt v5, p1, :cond_8a

    .line 354
    sub-int v6, v5, p1

    add-int/2addr v6, v4

    sub-int/2addr v6, v0

    .line 356
    .restart local v6    # "destrow":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_66
    if-ge v7, v1, :cond_87

    .line 357
    mul-int v8, v5, v1

    add-int/2addr v8, v7

    aget v8, v3, v8

    .line 359
    .restart local v8    # "val":I
    aget v9, v2, v7

    if-lt v5, v9, :cond_76

    .line 360
    add-int v9, v7, v1

    aget v9, v2, v9

    add-int/2addr v8, v9

    .line 363
    :cond_76
    aget v9, v2, v7

    if-lt v6, v9, :cond_7f

    .line 364
    add-int v9, v7, v1

    aget v9, v2, v9

    sub-int/2addr v8, v9

    .line 367
    :cond_7f
    mul-int v9, v6, v1

    add-int/2addr v9, v7

    aput v8, v3, v9

    .line 356
    .end local v8    # "val":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 353
    .end local v6    # "destrow":I
    .end local v7    # "j":I
    :cond_87
    add-int/lit8 v5, v5, -0x1

    goto :goto_5f

    .line 372
    .end local v0    # "moving":I
    .end local v1    # "columns":I
    .end local v2    # "valuegap":[I
    .end local v3    # "values":[I
    .end local v4    # "gapend":I
    .end local v5    # "i":I
    :cond_8a
    :goto_8a
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 373
    return-void
.end method

.method private final greylist-max-o moveValueGapTo(II)V
    .registers 10
    .param p1, "column"    # I
    .param p2, "where"    # I

    .line 297
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 298
    .local v0, "valuegap":[I
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 299
    .local v1, "values":[I
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 301
    .local v2, "columns":I
    aget v3, v0, p1

    if-ne p2, v3, :cond_b

    .line 302
    return-void

    .line 303
    :cond_b
    aget v3, v0, p1

    if-le p2, v3, :cond_23

    .line 304
    aget v3, v0, p1

    .local v3, "i":I
    :goto_11
    if-ge v3, p2, :cond_22

    .line 305
    mul-int v4, v3, v2

    add-int/2addr v4, p1

    aget v5, v1, v4

    add-int v6, p1, v2

    aget v6, v0, v6

    add-int/2addr v5, v6

    aput v5, v1, v4

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .end local v3    # "i":I
    :cond_22
    goto :goto_37

    .line 308
    :cond_23
    move v3, p2

    .restart local v3    # "i":I
    :goto_24
    aget v4, v0, p1

    if-ge v3, v4, :cond_37

    .line 309
    mul-int v4, v3, v2

    add-int/2addr v4, p1

    aget v5, v1, v4

    add-int v6, p1, v2

    aget v6, v0, v6

    sub-int/2addr v5, v6

    aput v5, v1, v4

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 313
    .end local v3    # "i":I
    :cond_37
    :goto_37
    aput p2, v0, p1

    .line 314
    return-void
.end method

.method private greylist-max-o setValueInternal(III)V
    .registers 7
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .line 129
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_7

    .line 130
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 133
    :cond_7
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 134
    .local v0, "valuegap":[I
    aget v1, v0, p2

    if-lt p1, v1, :cond_13

    .line 135
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v1, v0, v1

    sub-int/2addr p3, v1

    .line 138
    :cond_13
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aput p3, v1, v2

    .line 139
    return-void
.end method


# virtual methods
.method public greylist-max-o adjustValuesBelow(III)V
    .registers 7
    .param p1, "startRow"    # I
    .param p2, "column"    # I
    .param p3, "delta"    # I

    .line 155
    or-int v0, p1, p2

    if-ltz v0, :cond_25

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_25

    .line 156
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v0

    if-ge p2, v0, :cond_25

    .line 160
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_17

    .line 161
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 164
    :cond_17
    invoke-direct {p0, p2, p1}, Landroid/text/PackedIntVector;->moveValueGapTo(II)V

    .line 165
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v2, v0, v1

    add-int/2addr v2, p3

    aput v2, v0, v1

    .line 166
    return-void

    .line 157
    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o deleteAt(II)V
    .registers 6
    .param p1, "row"    # I
    .param p2, "count"    # I

    .line 222
    or-int v0, p1, p2

    if-ltz v0, :cond_1c

    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-gt v0, v1, :cond_1c

    .line 226
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 228
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 229
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 233
    return-void

    .line 223
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getValue(II)I
    .registers 7
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 73
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 75
    .local v0, "columns":I
    or-int v1, p1, p2

    if-ltz v1, :cond_28

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-ge p1, v1, :cond_28

    if-ge p2, v0, :cond_28

    .line 79
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_15

    .line 80
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 83
    :cond_15
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v2, p1, v0

    add-int/2addr v2, p2

    aget v1, v1, v2

    .line 85
    .local v1, "value":I
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 86
    .local v2, "valuegap":[I
    aget v3, v2, p2

    if-lt p1, v3, :cond_27

    .line 87
    add-int v3, p2, v0

    aget v3, v2, v3

    add-int/2addr v1, v3

    .line 90
    :cond_27
    return v1

    .line 76
    .end local v1    # "value":I
    .end local v2    # "valuegap":[I
    :cond_28
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o insertAt(I[I)V
    .registers 6
    .param p1, "row"    # I
    .param p2, "values"    # [I

    .line 182
    if-ltz p1, :cond_62

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_62

    .line 186
    if-eqz p2, :cond_2d

    array-length v0, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v1

    if-lt v0, v1, :cond_12

    goto :goto_2d

    .line 187
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2d
    :goto_2d
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 192
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    if-nez v0, :cond_37

    .line 193
    invoke-direct {p0}, Landroid/text/PackedIntVector;->growBuffer()V

    .line 196
    :cond_37
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 197
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 199
    if-nez p2, :cond_53

    .line 200
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_49
    if-ltz v0, :cond_52

    .line 201
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 200
    add-int/lit8 v0, v0, -0x1

    goto :goto_49

    .end local v0    # "i":I
    :cond_52
    goto :goto_61

    .line 204
    :cond_53
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_57
    if-ltz v0, :cond_61

    .line 205
    aget v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 204
    add-int/lit8 v0, v0, -0x1

    goto :goto_57

    .line 208
    .end local v0    # "i":I
    :cond_61
    :goto_61
    return-void

    .line 183
    :cond_62
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setValue(III)V
    .registers 7
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .line 104
    or-int v0, p1, p2

    if-ltz v0, :cond_2a

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    if-ge p2, v0, :cond_2a

    .line 108
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_15

    .line 109
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 112
    :cond_15
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 113
    .local v0, "valuegap":[I
    aget v1, v0, p2

    if-lt p1, v1, :cond_21

    .line 114
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v1, v0, v1

    sub-int/2addr p3, v1

    .line 117
    :cond_21
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aput p3, v1, v2

    .line 118
    return-void

    .line 105
    .end local v0    # "valuegap":[I
    :cond_2a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o size()I
    .registers 3

    .line 242
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o width()I
    .registers 2

    .line 252
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    return v0
.end method

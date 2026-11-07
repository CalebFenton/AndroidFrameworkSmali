.class public final Landroid/icu/text/UnicodeDecompressor;
.super Ljava/lang/Object;
.source "UnicodeDecompressor.java"

# interfaces
.implements Landroid/icu/text/SCSU;


# static fields
.field private static final greylist-max-o BUFSIZE:I = 0x3


# instance fields
.field private greylist-max-o fBuffer:[B

.field private greylist-max-o fBufferLength:I

.field private greylist-max-o fCurrentWindow:I

.field private greylist-max-o fMode:I

.field private greylist-max-o fOffsets:[I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 85
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    .line 88
    iput v0, p0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    .line 94
    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    .line 97
    iput v0, p0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 106
    invoke-virtual {p0}, Landroid/icu/text/UnicodeDecompressor;->reset()V

    .line 107
    return-void
.end method

.method public static greylist-max-o decompress([B)Ljava/lang/String;
    .registers 3
    .param p0, "buffer"    # [B

    .line 116
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII)[C

    move-result-object v0

    .line 117
    .local v0, "buf":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static greylist-max-o decompress([BII)[C
    .registers 12
    .param p0, "buffer"    # [B
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 129
    new-instance v0, Landroid/icu/text/UnicodeDecompressor;

    invoke-direct {v0}, Landroid/icu/text/UnicodeDecompressor;-><init>()V

    move-object v1, v0

    .line 134
    .local v1, "comp":Landroid/icu/text/UnicodeDecompressor;
    sub-int v0, p2, p1

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 135
    .local v8, "len":I
    new-array v6, v8, [C

    .line 137
    .local v6, "temp":[C
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    .end local p0    # "buffer":[B
    .end local p1    # "start":I
    .end local p2    # "limit":I
    .local v2, "buffer":[B
    .local v3, "start":I
    .local v4, "limit":I
    invoke-virtual/range {v1 .. v8}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII[I[CII)I

    move-result p0

    .line 140
    .local p0, "charCount":I
    new-array p1, p0, [C

    .line 141
    .local p1, "result":[C
    const/4 p2, 0x0

    invoke-static {v6, p2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object p1
.end method


# virtual methods
.method public greylist-max-o decompress([BII[I[CII)I
    .registers 24
    .param p1, "byteBuffer"    # [B
    .param p2, "byteBufferStart"    # I
    .param p3, "byteBufferLimit"    # I
    .param p4, "bytesRead"    # [I
    .param p5, "charBuffer"    # [C
    .param p6, "charBufferStart"    # I
    .param p7, "charBufferLimit"    # I

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v5, p5

    move/from16 v11, p2

    .line 176
    .local v11, "bytePos":I
    move/from16 v12, p6

    .line 179
    .local v12, "ucPos":I
    const/4 v13, 0x0

    .line 183
    .local v13, "aByte":I
    array-length v1, v5

    const/4 v2, 0x2

    if-lt v1, v2, :cond_27f

    sub-int v1, p7, p6

    if-lt v1, v2, :cond_27f

    .line 188
    iget v1, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    const/4 v14, 0x0

    if-lez v1, :cond_4e

    .line 190
    const/4 v1, 0x0

    .line 193
    .local v1, "newBytes":I
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_39

    .line 194
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    array-length v2, v2

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    sub-int/2addr v2, v3

    .line 197
    .end local v1    # "newBytes":I
    .local v2, "newBytes":I
    sub-int v1, v10, v9

    if-ge v1, v2, :cond_2f

    .line 198
    sub-int v1, v10, v9

    .end local v2    # "newBytes":I
    .restart local v1    # "newBytes":I
    goto :goto_30

    .line 197
    .end local v1    # "newBytes":I
    .restart local v2    # "newBytes":I
    :cond_2f
    move v1, v2

    .line 200
    .end local v2    # "newBytes":I
    .restart local v1    # "newBytes":I
    :goto_30
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    invoke-static {v8, v9, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v15, v1

    goto :goto_3a

    .line 193
    :cond_39
    move v15, v1

    .line 205
    .end local v1    # "newBytes":I
    .local v15, "newBytes":I
    :goto_3a
    iput v14, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 208
    iget-object v1, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v2, 0x0

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII[I[CII)I

    move-result v1

    .line 213
    .local v1, "count":I
    add-int/2addr v12, v1

    .line 214
    add-int/2addr v11, v15

    goto :goto_50

    .line 188
    .end local v1    # "count":I
    .end local v15    # "newBytes":I
    :cond_4e
    move/from16 v7, p7

    .line 219
    :goto_50
    if-ge v11, v10, :cond_276

    if-ge v12, v7, :cond_276

    .line 220
    iget v1, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    const/high16 v2, 0x10000

    const/16 v3, 0x80

    packed-switch v1, :pswitch_data_28a

    goto/16 :goto_274

    .line 428
    :goto_5f
    :pswitch_5f
    if-ge v11, v10, :cond_274

    if-ge v12, v7, :cond_274

    .line 429
    add-int/lit8 v1, v11, 0x1

    .end local v11    # "bytePos":I
    .local v1, "bytePos":I
    aget-byte v4, v8, v11

    and-int/lit16 v13, v4, 0xff

    .line 430
    packed-switch v13, :pswitch_data_292

    .line 506
    if-lt v1, v10, :cond_120

    .line 507
    add-int/lit8 v1, v1, -0x1

    .line 508
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v10, v1

    invoke-static {v8, v1, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    sub-int v2, v10, v1

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 512
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int v11, v1, v2

    .line 513
    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_276

    .line 457
    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    :pswitch_81
    add-int/lit8 v4, v1, 0x1

    if-lt v4, v10, :cond_98

    .line 458
    add-int/lit8 v1, v1, -0x1

    .line 459
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v10, v1

    invoke-static {v8, v1, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    sub-int v2, v10, v1

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 463
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int v11, v1, v2

    .line 464
    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_276

    .line 467
    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_98
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bytePos":I
    .local v4, "bytePos":I
    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    .line 468
    .end local v13    # "aByte":I
    .local v1, "aByte":I
    and-int/lit16 v5, v1, 0xe0

    shr-int/lit8 v5, v5, 0x5

    iput v5, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 469
    iget-object v5, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v6, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    and-int/lit8 v11, v1, 0x1f

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "bytePos":I
    .local v13, "bytePos":I
    aget-byte v4, v8, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v11

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    aput v4, v5, v6

    .line 472
    iput v14, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    .line 473
    move v11, v13

    move v13, v1

    goto/16 :goto_274

    .line 488
    .local v1, "bytePos":I
    .local v13, "aByte":I
    :pswitch_bd
    add-int/lit8 v4, v10, -0x1

    if-lt v1, v4, :cond_d4

    .line 489
    add-int/lit8 v1, v1, -0x1

    .line 490
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v10, v1

    invoke-static {v8, v1, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    sub-int v2, v10, v1

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 494
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int v11, v1, v2

    .line 495
    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_276

    .line 498
    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_d4
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bytePos":I
    .restart local v4    # "bytePos":I
    aget-byte v13, v8, v1

    .line 499
    add-int/lit8 v1, v12, 0x1

    .end local v12    # "ucPos":I
    .local v1, "ucPos":I
    shl-int/lit8 v5, v13, 0x8

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v4, v8, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p5, v12

    .line 501
    move v12, v1

    goto/16 :goto_5f

    .line 436
    .end local v11    # "bytePos":I
    .local v1, "bytePos":I
    .restart local v12    # "ucPos":I
    :pswitch_e9
    if-lt v1, v10, :cond_fe

    .line 437
    add-int/lit8 v1, v1, -0x1

    .line 438
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v10, v1

    invoke-static {v8, v1, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    sub-int v2, v10, v1

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 442
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int v11, v1, v2

    .line 443
    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_276

    .line 446
    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_fe
    add-int/lit16 v2, v13, -0xe8

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 447
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    sget-object v4, Landroid/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "bytePos":I
    .local v5, "bytePos":I
    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v4, v1

    aput v1, v2, v3

    .line 449
    iput v14, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    .line 450
    move v11, v5

    goto/16 :goto_274

    .line 479
    .end local v5    # "bytePos":I
    .restart local v1    # "bytePos":I
    :pswitch_117
    add-int/lit16 v2, v13, -0xe0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 480
    iput v14, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    .line 481
    move v11, v1

    goto/16 :goto_274

    .line 516
    :cond_120
    add-int/lit8 v4, v12, 0x1

    .end local v12    # "ucPos":I
    .local v4, "ucPos":I
    shl-int/lit8 v5, v13, 0x8

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, p5, v12

    .line 518
    move v12, v4

    goto/16 :goto_5f

    .line 224
    .end local v4    # "ucPos":I
    .restart local v12    # "ucPos":I
    :goto_131
    :pswitch_131
    if-ge v11, v10, :cond_274

    if-ge v12, v7, :cond_274

    .line 225
    add-int/lit8 v1, v11, 0x1

    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    aget-byte v4, v8, v11

    and-int/lit16 v13, v4, 0xff

    .line 226
    packed-switch v13, :pswitch_data_2ba

    :pswitch_13e
    goto/16 :goto_271

    .line 259
    :pswitch_140
    iget-object v4, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v5, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    aget v4, v4, v5

    const v5, 0xffff

    if-gt v4, v5, :cond_15c

    .line 260
    add-int/lit8 v4, v12, 0x1

    .end local v12    # "ucPos":I
    .restart local v4    # "ucPos":I
    iget-object v5, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v6, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    aget v5, v5, v6

    add-int/2addr v5, v13

    sub-int/2addr v5, v3

    int-to-char v5, v5

    aput-char v5, p5, v12

    move v11, v1

    move v12, v4

    goto/16 :goto_272

    .line 272
    .end local v4    # "ucPos":I
    .restart local v12    # "ucPos":I
    :cond_15c
    add-int/lit8 v4, v12, 0x1

    if-lt v4, v7, :cond_173

    .line 273
    add-int/lit8 v1, v1, -0x1

    .line 274
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v10, v1

    invoke-static {v8, v1, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    sub-int v2, v10, v1

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 278
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int v11, v1, v2

    .line 279
    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_276

    .line 282
    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_173
    iget-object v4, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v5, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    aget v4, v4, v5

    sub-int/2addr v4, v2

    .line 284
    .local v4, "normalizedBase":I
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "ucPos":I
    .local v5, "ucPos":I
    shr-int/lit8 v6, v4, 0xa

    const v11, 0xd800

    add-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, p5, v12

    .line 286
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ucPos":I
    .local v6, "ucPos":I
    and-int/lit16 v11, v4, 0x3ff

    const v12, 0xdc00

    add-int/2addr v11, v12

    and-int/lit8 v12, v13, 0x7f

    add-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, p5, v5

    .line 289
    .end local v4    # "normalizedBase":I
    move v11, v1

    move v12, v6

    goto/16 :goto_272

    .line 381
    .end local v6    # "ucPos":I
    .restart local v12    # "ucPos":I
    :pswitch_197
    if-lt v1, v10, :cond_1ac

    .line 382
    add-int/lit8 v1, v1, -0x1

    .line 383
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v10, v1

    invoke-static {v8, v1, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    sub-int v2, v10, v1

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 387
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int v11, v1, v2

    .line 388
    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_276

    .line 391
    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_1ac
    add-int/lit8 v4, v13, -0x18

    iput v4, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 392
    iget-object v4, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v5, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    sget-object v6, Landroid/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v6, v1

    aput v1, v4, v5

    .line 394
    goto/16 :goto_272

    .line 373
    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    :pswitch_1c2
    add-int/lit8 v4, v13, -0x10

    iput v4, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 374
    goto/16 :goto_271

    .line 341
    :pswitch_1c8
    const/4 v2, 0x1

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    .line 342
    move v11, v1

    goto/16 :goto_274

    .line 324
    :pswitch_1ce
    add-int/lit8 v4, v1, 0x1

    if-lt v4, v10, :cond_1e5

    .line 325
    add-int/lit8 v1, v1, -0x1

    .line 326
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v10, v1

    invoke-static {v8, v1, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    sub-int v2, v10, v1

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 330
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int v11, v1, v2

    .line 331
    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_276

    .line 334
    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_1e5
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bytePos":I
    .local v4, "bytePos":I
    aget-byte v1, v8, v1

    .line 335
    .end local v13    # "aByte":I
    .local v1, "aByte":I
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "ucPos":I
    .restart local v5    # "ucPos":I
    shl-int/lit8 v6, v1, 0x8

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v4, v8, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, p5, v12

    .line 337
    move v13, v1

    move v12, v5

    goto/16 :goto_272

    .line 400
    .end local v5    # "ucPos":I
    .end local v11    # "bytePos":I
    .local v1, "bytePos":I
    .restart local v12    # "ucPos":I
    .restart local v13    # "aByte":I
    :pswitch_1fb
    add-int/lit8 v4, v1, 0x1

    if-lt v4, v10, :cond_212

    .line 401
    add-int/lit8 v1, v1, -0x1

    .line 402
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v10, v1

    invoke-static {v8, v1, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    sub-int v2, v10, v1

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 406
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int v11, v1, v2

    .line 407
    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_276

    .line 410
    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_212
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bytePos":I
    .restart local v4    # "bytePos":I
    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    .line 411
    .end local v13    # "aByte":I
    .local v1, "aByte":I
    and-int/lit16 v5, v1, 0xe0

    shr-int/lit8 v5, v5, 0x5

    iput v5, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 412
    iget-object v5, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v6, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    and-int/lit8 v11, v1, 0x1f

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "bytePos":I
    .local v13, "bytePos":I
    aget-byte v4, v8, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v11

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    aput v4, v5, v6

    .line 415
    move v11, v13

    move v13, v1

    goto :goto_272

    .line 350
    .local v1, "bytePos":I
    .local v13, "aByte":I
    :pswitch_234
    if-lt v1, v10, :cond_248

    .line 351
    add-int/lit8 v1, v1, -0x1

    .line 352
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v10, v1

    invoke-static {v8, v1, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    sub-int v2, v10, v1

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 356
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int v11, v1, v2

    .line 357
    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto :goto_276

    .line 362
    .end local v11    # "bytePos":I
    .restart local v1    # "bytePos":I
    :cond_248
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bytePos":I
    .restart local v4    # "bytePos":I
    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    .line 363
    .local v1, "dByte":I
    add-int/lit8 v5, v12, 0x1

    .line 364
    .end local v12    # "ucPos":I
    .restart local v5    # "ucPos":I
    if-ltz v1, :cond_25b

    if-ge v1, v3, :cond_25b

    .line 365
    sget-object v6, Landroid/icu/text/UnicodeDecompressor;->sOffsets:[I

    add-int/lit8 v11, v13, -0x1

    aget v6, v6, v11

    goto :goto_262

    .line 366
    :cond_25b
    iget-object v6, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    add-int/lit8 v11, v13, -0x1

    aget v6, v6, v11

    sub-int/2addr v6, v3

    :goto_262
    add-int/2addr v6, v1

    int-to-char v6, v6

    aput-char v6, p5, v12

    .line 368
    move v11, v4

    move v12, v5

    goto :goto_272

    .line 317
    .end local v4    # "bytePos":I
    .end local v5    # "ucPos":I
    .local v1, "bytePos":I
    .restart local v12    # "ucPos":I
    :pswitch_269
    add-int/lit8 v4, v12, 0x1

    .end local v12    # "ucPos":I
    .local v4, "ucPos":I
    int-to-char v5, v13

    aput-char v5, p5, v12

    .line 318
    move v11, v1

    move v12, v4

    goto :goto_272

    .line 419
    .end local v4    # "ucPos":I
    .restart local v12    # "ucPos":I
    :goto_271
    move v11, v1

    .end local v1    # "bytePos":I
    .restart local v11    # "bytePos":I
    :goto_272
    goto/16 :goto_131

    .line 522
    :cond_274
    :goto_274
    goto/16 :goto_50

    .line 528
    :cond_276
    :goto_276
    if-eqz p4, :cond_27c

    .line 529
    sub-int v1, v11, v9

    aput v1, p4, v14

    .line 532
    :cond_27c
    sub-int v1, v12, p6

    return v1

    .line 183
    :cond_27f
    move/from16 v7, p7

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "charBuffer.length < 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_28a
    .packed-switch 0x0
        :pswitch_131
        :pswitch_5f
    .end packed-switch

    :pswitch_data_292
    .packed-switch 0xe0
        :pswitch_117
        :pswitch_117
        :pswitch_117
        :pswitch_117
        :pswitch_117
        :pswitch_117
        :pswitch_117
        :pswitch_117
        :pswitch_e9
        :pswitch_e9
        :pswitch_e9
        :pswitch_e9
        :pswitch_e9
        :pswitch_e9
        :pswitch_e9
        :pswitch_e9
        :pswitch_bd
        :pswitch_81
    .end packed-switch

    :pswitch_data_2ba
    .packed-switch 0x0
        :pswitch_269
        :pswitch_234
        :pswitch_234
        :pswitch_234
        :pswitch_234
        :pswitch_234
        :pswitch_234
        :pswitch_234
        :pswitch_234
        :pswitch_269
        :pswitch_269
        :pswitch_1fb
        :pswitch_13e
        :pswitch_269
        :pswitch_1ce
        :pswitch_1c8
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_197
        :pswitch_197
        :pswitch_197
        :pswitch_197
        :pswitch_197
        :pswitch_197
        :pswitch_197
        :pswitch_197
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_140
    .end packed-switch
.end method

.method public greylist-max-o reset()V
    .registers 5

    .line 541
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/16 v1, 0x80

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 542
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/4 v1, 0x1

    const/16 v3, 0xc0

    aput v3, v0, v1

    .line 543
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/4 v1, 0x2

    const/16 v3, 0x400

    aput v3, v0, v1

    .line 544
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/4 v1, 0x3

    const/16 v3, 0x600

    aput v3, v0, v1

    .line 545
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/4 v1, 0x4

    const/16 v3, 0x900

    aput v3, v0, v1

    .line 546
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/4 v1, 0x5

    const/16 v3, 0x3040

    aput v3, v0, v1

    .line 547
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/4 v1, 0x6

    const/16 v3, 0x30a0

    aput v3, v0, v1

    .line 548
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/4 v1, 0x7

    const v3, 0xff00

    aput v3, v0, v1

    .line 551
    iput v2, p0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 552
    iput v2, p0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    .line 553
    iput v2, p0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 554
    return-void
.end method

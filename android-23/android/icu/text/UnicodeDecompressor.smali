.class public final Landroid/icu/text/UnicodeDecompressor;
.super Ljava/lang/Object;
.source "UnicodeDecompressor.java"

# interfaces
.implements Landroid/icu/text/SCSU;


# static fields
.field private static final BUFSIZE:I = 0x3


# instance fields
.field private fBuffer:[B

.field private fBufferLength:I

.field private fCurrentWindow:I

.field private fMode:I

.field private fOffsets:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@6
    .line 82
    const/16 v0, 0x8

    #@8
    new-array v0, v0, [I

    #@a
    iput-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@c
    .line 85
    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@e
    .line 91
    const/4 v0, 0x3

    #@f
    new-array v0, v0, [B

    #@11
    iput-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@13
    .line 94
    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@15
    .line 104
    invoke-virtual {p0}, Landroid/icu/text/UnicodeDecompressor;->reset()V

    #@18
    .line 103
    return-void
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # [B

    #@0
    .prologue
    .line 115
    array-length v1, p0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p0, v2, v1}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII)[C

    #@5
    move-result-object v0

    #@6
    .line 116
    .local v0, "buf":[C
    new-instance v1, Ljava/lang/String;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@b
    return-object v1
.end method

.method public static decompress([BII)[C
    .locals 10
    .param p0, "buffer"    # [B
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    .line 129
    new-instance v0, Landroid/icu/text/UnicodeDecompressor;

    #@4
    invoke-direct {v0}, Landroid/icu/text/UnicodeDecompressor;-><init>()V

    #@7
    .line 134
    .local v0, "comp":Landroid/icu/text/UnicodeDecompressor;
    sub-int v1, p2, p1

    #@9
    mul-int/lit8 v1, v1, 0x2

    #@b
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v7

    #@f
    .line 135
    .local v7, "len":I
    new-array v5, v7, [C

    #@11
    .line 137
    .local v5, "temp":[C
    const/4 v4, 0x0

    #@12
    move-object v1, p0

    #@13
    move v2, p1

    #@14
    move v3, p2

    #@15
    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII[I[CII)I

    #@18
    move-result v8

    #@19
    .line 140
    .local v8, "charCount":I
    new-array v9, v8, [C

    #@1b
    .line 141
    .local v9, "result":[C
    invoke-static {v5, v6, v9, v6, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1e
    .line 142
    return-object v9
.end method


# virtual methods
.method public decompress([BII[I[CII)I
    .locals 19
    .param p1, "byteBuffer"    # [B
    .param p2, "byteBufferStart"    # I
    .param p3, "byteBufferLimit"    # I
    .param p4, "bytesRead"    # [I
    .param p5, "charBuffer"    # [C
    .param p6, "charBufferStart"    # I
    .param p7, "charBufferLimit"    # I

    #@0
    .prologue
    .line 174
    move/from16 v11, p2

    #@2
    .line 177
    .local v11, "bytePos":I
    move/from16 v17, p6

    #@4
    .line 180
    .local v17, "ucPos":I
    const/4 v10, 0x0

    #@5
    .line 184
    .local v10, "aByte":I
    move-object/from16 v0, p5

    #@7
    array-length v2, v0

    #@8
    const/4 v3, 0x2

    #@9
    if-lt v2, v3, :cond_0

    #@b
    sub-int v2, p7, p6

    #@d
    const/4 v3, 0x2

    #@e
    if-ge v2, v3, :cond_1

    #@10
    .line 185
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v3, "charBuffer.length < 2"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 189
    :cond_1
    move-object/from16 v0, p0

    #@1b
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@1d
    if-lez v2, :cond_4

    #@1f
    .line 191
    const/4 v15, 0x0

    #@20
    .line 194
    .local v15, "newBytes":I
    move-object/from16 v0, p0

    #@22
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@24
    const/4 v3, 0x3

    #@25
    if-eq v2, v3, :cond_3

    #@27
    .line 195
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@2b
    array-length v2, v2

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@30
    sub-int v15, v2, v3

    #@32
    .line 198
    sub-int v2, p3, p2

    #@34
    if-ge v2, v15, :cond_2

    #@36
    .line 199
    sub-int v15, p3, p2

    #@38
    .line 202
    :cond_2
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@40
    .line 201
    move-object/from16 v0, p1

    #@42
    move/from16 v1, p2

    #@44
    invoke-static {v0, v1, v2, v3, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@47
    .line 206
    :cond_3
    const/4 v2, 0x0

    #@48
    move-object/from16 v0, p0

    #@4a
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@4c
    .line 209
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@50
    move-object/from16 v0, p0

    #@52
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@54
    array-length v5, v2

    #@55
    const/4 v4, 0x0

    #@56
    const/4 v6, 0x0

    #@57
    move-object/from16 v2, p0

    #@59
    move-object/from16 v7, p5

    #@5b
    move/from16 v8, p6

    #@5d
    move/from16 v9, p7

    #@5f
    invoke-virtual/range {v2 .. v9}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII[I[CII)I

    #@62
    move-result v13

    #@63
    .line 214
    .local v13, "count":I
    add-int v17, v17, v13

    #@65
    .line 215
    add-int/2addr v11, v15

    #@66
    .line 220
    .end local v13    # "count":I
    .end local v15    # "newBytes":I
    :cond_4
    :goto_0
    move/from16 v0, p3

    #@68
    if-ge v11, v0, :cond_7

    #@6a
    move/from16 v0, v17

    #@6c
    move/from16 v1, p7

    #@6e
    if-ge v0, v1, :cond_7

    #@70
    .line 221
    move-object/from16 v0, p0

    #@72
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@74
    packed-switch v2, :pswitch_data_0

    #@77
    goto :goto_0

    #@78
    :pswitch_0
    move/from16 v18, v17

    #@7a
    .end local v17    # "ucPos":I
    .local v18, "ucPos":I
    move v12, v11

    #@7b
    .line 225
    .end local v11    # "bytePos":I
    .local v12, "bytePos":I
    :goto_1
    move/from16 v0, p3

    #@7d
    if-ge v12, v0, :cond_5

    #@7f
    move/from16 v0, v18

    #@81
    move/from16 v1, p7

    #@83
    if-ge v0, v1, :cond_5

    #@85
    .line 226
    add-int/lit8 v11, v12, 0x1

    #@87
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v2, p1, v12

    #@89
    and-int/lit16 v10, v2, 0xff

    #@8b
    .line 227
    packed-switch v10, :pswitch_data_1

    #@8e
    move/from16 v17, v18

    #@90
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    :goto_2
    move/from16 v18, v17

    #@92
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    move v12, v11

    #@93
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    goto :goto_1

    #@94
    :cond_5
    move v11, v12

    #@95
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    :goto_3
    move/from16 v17, v18

    #@97
    .line 424
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto :goto_0

    #@98
    .line 260
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_1
    move-object/from16 v0, p0

    #@9a
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@a0
    aget v2, v2, v3

    #@a2
    const v3, 0xffff

    #@a5
    if-gt v2, v3, :cond_6

    #@a7
    .line 261
    add-int/lit8 v17, v18, 0x1

    #@a9
    .line 262
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    move-object/from16 v0, p0

    #@ab
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@ad
    move-object/from16 v0, p0

    #@af
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@b1
    aget v2, v2, v3

    #@b3
    add-int/2addr v2, v10

    #@b4
    add-int/lit8 v2, v2, -0x80

    #@b6
    .line 261
    int-to-char v2, v2

    #@b7
    aput-char v2, p5, v18

    #@b9
    goto :goto_2

    #@ba
    .line 273
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_6
    add-int/lit8 v2, v18, 0x1

    #@bc
    move/from16 v0, p7

    #@be
    if-lt v2, v0, :cond_9

    #@c0
    .line 274
    add-int/lit8 v11, v11, -0x1

    #@c2
    .line 276
    move-object/from16 v0, p0

    #@c4
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@c6
    .line 277
    sub-int v3, p3, v11

    #@c8
    .line 276
    const/4 v4, 0x0

    #@c9
    .line 275
    move-object/from16 v0, p1

    #@cb
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@ce
    .line 278
    sub-int v2, p3, v11

    #@d0
    move-object/from16 v0, p0

    #@d2
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@d4
    .line 279
    move-object/from16 v0, p0

    #@d6
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@d8
    add-int/2addr v11, v2

    #@d9
    move/from16 v17, v18

    #@db
    .line 529
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    #@dd
    .line 530
    sub-int v2, v11, p2

    #@df
    const/4 v3, 0x0

    #@e0
    aput v2, p4, v3

    #@e2
    .line 533
    :cond_8
    sub-int v2, v17, p6

    #@e4
    return v2

    #@e5
    .line 283
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_9
    move-object/from16 v0, p0

    #@e7
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@ed
    aget v2, v2, v3

    #@ef
    .line 284
    const/high16 v3, 0x10000

    #@f1
    .line 283
    sub-int v16, v2, v3

    #@f3
    .line 285
    .local v16, "normalizedBase":I
    add-int/lit8 v17, v18, 0x1

    #@f5
    .line 286
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    shr-int/lit8 v2, v16, 0xa

    #@f7
    const v3, 0xd800

    #@fa
    add-int/2addr v2, v3

    #@fb
    .line 285
    int-to-char v2, v2

    #@fc
    aput-char v2, p5, v18

    #@fe
    .line 287
    add-int/lit8 v18, v17, 0x1

    #@100
    .line 288
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    move/from16 v0, v16

    #@102
    and-int/lit16 v2, v0, 0x3ff

    #@104
    const v3, 0xdc00

    #@107
    add-int/2addr v2, v3

    #@108
    and-int/lit8 v3, v10, 0x7f

    #@10a
    add-int/2addr v2, v3

    #@10b
    .line 287
    int-to-char v2, v2

    #@10c
    aput-char v2, p5, v17

    #@10e
    move/from16 v17, v18

    #@110
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto :goto_2

    #@111
    .line 318
    .end local v16    # "normalizedBase":I
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_2
    add-int/lit8 v17, v18, 0x1

    #@113
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    int-to-char v2, v10

    #@114
    aput-char v2, p5, v18

    #@116
    goto/16 :goto_2

    #@118
    .line 325
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_3
    add-int/lit8 v2, v11, 0x1

    #@11a
    move/from16 v0, p3

    #@11c
    if-lt v2, v0, :cond_a

    #@11e
    .line 326
    add-int/lit8 v11, v11, -0x1

    #@120
    .line 328
    move-object/from16 v0, p0

    #@122
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@124
    .line 329
    sub-int v3, p3, v11

    #@126
    .line 328
    const/4 v4, 0x0

    #@127
    .line 327
    move-object/from16 v0, p1

    #@129
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12c
    .line 330
    sub-int v2, p3, v11

    #@12e
    move-object/from16 v0, p0

    #@130
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@132
    .line 331
    move-object/from16 v0, p0

    #@134
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@136
    add-int/2addr v11, v2

    #@137
    move/from16 v17, v18

    #@139
    .line 332
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto :goto_4

    #@13a
    .line 335
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_a
    add-int/lit8 v12, v11, 0x1

    #@13c
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v10, p1, v11

    #@13e
    .line 336
    add-int/lit8 v17, v18, 0x1

    #@140
    .line 337
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    shl-int/lit8 v2, v10, 0x8

    #@142
    add-int/lit8 v11, v12, 0x1

    #@144
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v3, p1, v12

    #@146
    and-int/lit16 v3, v3, 0xff

    #@148
    or-int/2addr v2, v3

    #@149
    .line 336
    int-to-char v2, v2

    #@14a
    aput-char v2, p5, v18

    #@14c
    goto/16 :goto_2

    #@14e
    .line 342
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_4
    const/4 v2, 0x1

    #@14f
    move-object/from16 v0, p0

    #@151
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@153
    goto/16 :goto_3

    #@155
    .line 351
    :pswitch_5
    move/from16 v0, p3

    #@157
    if-lt v11, v0, :cond_b

    #@159
    .line 352
    add-int/lit8 v11, v11, -0x1

    #@15b
    .line 354
    move-object/from16 v0, p0

    #@15d
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@15f
    .line 355
    sub-int v3, p3, v11

    #@161
    .line 354
    const/4 v4, 0x0

    #@162
    .line 353
    move-object/from16 v0, p1

    #@164
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@167
    .line 356
    sub-int v2, p3, v11

    #@169
    move-object/from16 v0, p0

    #@16b
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@16d
    .line 357
    move-object/from16 v0, p0

    #@16f
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@171
    add-int/2addr v11, v2

    #@172
    move/from16 v17, v18

    #@174
    .line 358
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@176
    .line 363
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_b
    add-int/lit8 v12, v11, 0x1

    #@178
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v2, p1, v11

    #@17a
    and-int/lit16 v14, v2, 0xff

    #@17c
    .line 364
    .local v14, "dByte":I
    add-int/lit8 v17, v18, 0x1

    #@17e
    .line 365
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    if-ltz v14, :cond_c

    #@180
    const/16 v2, 0x80

    #@182
    if-ge v14, v2, :cond_c

    #@184
    .line 366
    sget-object v2, Landroid/icu/text/UnicodeDecompressor;->sOffsets:[I

    #@186
    add-int/lit8 v3, v10, -0x1

    #@188
    aget v2, v2, v3

    #@18a
    .line 365
    :goto_5
    add-int/2addr v2, v14

    #@18b
    .line 364
    int-to-char v2, v2

    #@18c
    aput-char v2, p5, v18

    #@18e
    move v11, v12

    #@18f
    .line 369
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_2

    #@191
    .line 367
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    :cond_c
    move-object/from16 v0, p0

    #@193
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@195
    add-int/lit8 v3, v10, -0x1

    #@197
    aget v2, v2, v3

    #@199
    add-int/lit8 v2, v2, -0x80

    #@19b
    goto :goto_5

    #@19c
    .line 374
    .end local v12    # "bytePos":I
    .end local v14    # "dByte":I
    .end local v17    # "ucPos":I
    .restart local v11    # "bytePos":I
    .restart local v18    # "ucPos":I
    :pswitch_6
    add-int/lit8 v2, v10, -0x10

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@1a2
    move/from16 v17, v18

    #@1a4
    .line 375
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_2

    #@1a6
    .line 382
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_7
    move/from16 v0, p3

    #@1a8
    if-lt v11, v0, :cond_d

    #@1aa
    .line 383
    add-int/lit8 v11, v11, -0x1

    #@1ac
    .line 385
    move-object/from16 v0, p0

    #@1ae
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@1b0
    .line 386
    sub-int v3, p3, v11

    #@1b2
    .line 385
    const/4 v4, 0x0

    #@1b3
    .line 384
    move-object/from16 v0, p1

    #@1b5
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b8
    .line 387
    sub-int v2, p3, v11

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@1be
    .line 388
    move-object/from16 v0, p0

    #@1c0
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@1c2
    add-int/2addr v11, v2

    #@1c3
    move/from16 v17, v18

    #@1c5
    .line 389
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@1c7
    .line 392
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_d
    add-int/lit8 v2, v10, -0x18

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@1cd
    .line 393
    move-object/from16 v0, p0

    #@1cf
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@1d5
    .line 394
    sget-object v4, Landroid/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    #@1d7
    add-int/lit8 v12, v11, 0x1

    #@1d9
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v5, p1, v11

    #@1db
    and-int/lit16 v5, v5, 0xff

    #@1dd
    aget v4, v4, v5

    #@1df
    .line 393
    aput v4, v2, v3

    #@1e1
    move/from16 v17, v18

    #@1e3
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    move v11, v12

    #@1e4
    .line 395
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_2

    #@1e6
    .line 401
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_8
    add-int/lit8 v2, v11, 0x1

    #@1e8
    move/from16 v0, p3

    #@1ea
    if-lt v2, v0, :cond_e

    #@1ec
    .line 402
    add-int/lit8 v11, v11, -0x1

    #@1ee
    .line 404
    move-object/from16 v0, p0

    #@1f0
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@1f2
    .line 405
    sub-int v3, p3, v11

    #@1f4
    .line 404
    const/4 v4, 0x0

    #@1f5
    .line 403
    move-object/from16 v0, p1

    #@1f7
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1fa
    .line 406
    sub-int v2, p3, v11

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@200
    .line 407
    move-object/from16 v0, p0

    #@202
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@204
    add-int/2addr v11, v2

    #@205
    move/from16 v17, v18

    #@207
    .line 408
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@209
    .line 411
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_e
    add-int/lit8 v12, v11, 0x1

    #@20b
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v2, p1, v11

    #@20d
    and-int/lit16 v10, v2, 0xff

    #@20f
    .line 412
    and-int/lit16 v2, v10, 0xe0

    #@211
    shr-int/lit8 v2, v2, 0x5

    #@213
    move-object/from16 v0, p0

    #@215
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@217
    .line 413
    move-object/from16 v0, p0

    #@219
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@21b
    move-object/from16 v0, p0

    #@21d
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@21f
    .line 414
    and-int/lit8 v4, v10, 0x1f

    #@221
    shl-int/lit8 v4, v4, 0x8

    #@223
    .line 415
    add-int/lit8 v11, v12, 0x1

    #@225
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v5, p1, v12

    #@227
    and-int/lit16 v5, v5, 0xff

    #@229
    .line 414
    or-int/2addr v4, v5

    #@22a
    mul-int/lit16 v4, v4, 0x80

    #@22c
    .line 413
    const/high16 v5, 0x10000

    #@22e
    add-int/2addr v4, v5

    #@22f
    aput v4, v2, v3

    #@231
    move/from16 v17, v18

    #@233
    .line 416
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_2

    #@235
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_9
    move/from16 v17, v18

    #@237
    .line 420
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_2

    #@239
    :pswitch_a
    move/from16 v18, v17

    #@23b
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    move v12, v11

    #@23c
    .line 429
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    :goto_6
    move/from16 v0, p3

    #@23e
    if-ge v12, v0, :cond_f

    #@240
    move/from16 v0, v18

    #@242
    move/from16 v1, p7

    #@244
    if-ge v0, v1, :cond_f

    #@246
    .line 430
    add-int/lit8 v11, v12, 0x1

    #@248
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v2, p1, v12

    #@24a
    and-int/lit16 v10, v2, 0xff

    #@24c
    .line 431
    packed-switch v10, :pswitch_data_2

    #@24f
    .line 507
    move/from16 v0, p3

    #@251
    if-lt v11, v0, :cond_13

    #@253
    .line 508
    add-int/lit8 v11, v11, -0x1

    #@255
    .line 510
    move-object/from16 v0, p0

    #@257
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@259
    .line 511
    sub-int v3, p3, v11

    #@25b
    .line 510
    const/4 v4, 0x0

    #@25c
    .line 509
    move-object/from16 v0, p1

    #@25e
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@261
    .line 512
    sub-int v2, p3, v11

    #@263
    move-object/from16 v0, p0

    #@265
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@267
    .line 513
    move-object/from16 v0, p0

    #@269
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@26b
    add-int/2addr v11, v2

    #@26c
    move/from16 v17, v18

    #@26e
    .line 514
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@270
    .end local v11    # "bytePos":I
    .end local v17    # "ucPos":I
    .restart local v12    # "bytePos":I
    .restart local v18    # "ucPos":I
    :cond_f
    move v11, v12

    #@271
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    :goto_7
    move/from16 v17, v18

    #@273
    .line 523
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_0

    #@275
    .line 437
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_b
    move/from16 v0, p3

    #@277
    if-lt v11, v0, :cond_10

    #@279
    .line 438
    add-int/lit8 v11, v11, -0x1

    #@27b
    .line 440
    move-object/from16 v0, p0

    #@27d
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@27f
    .line 441
    sub-int v3, p3, v11

    #@281
    .line 440
    const/4 v4, 0x0

    #@282
    .line 439
    move-object/from16 v0, p1

    #@284
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@287
    .line 442
    sub-int v2, p3, v11

    #@289
    move-object/from16 v0, p0

    #@28b
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@28d
    .line 443
    move-object/from16 v0, p0

    #@28f
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@291
    add-int/2addr v11, v2

    #@292
    move/from16 v17, v18

    #@294
    .line 444
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@296
    .line 447
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_10
    add-int/lit16 v2, v10, -0xe8

    #@298
    move-object/from16 v0, p0

    #@29a
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@29c
    .line 448
    move-object/from16 v0, p0

    #@29e
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@2a0
    move-object/from16 v0, p0

    #@2a2
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@2a4
    .line 449
    sget-object v4, Landroid/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    #@2a6
    add-int/lit8 v12, v11, 0x1

    #@2a8
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v5, p1, v11

    #@2aa
    and-int/lit16 v5, v5, 0xff

    #@2ac
    aget v4, v4, v5

    #@2ae
    .line 448
    aput v4, v2, v3

    #@2b0
    .line 450
    const/4 v2, 0x0

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@2b5
    move v11, v12

    #@2b6
    .line 451
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto :goto_7

    #@2b7
    .line 458
    :pswitch_c
    add-int/lit8 v2, v11, 0x1

    #@2b9
    move/from16 v0, p3

    #@2bb
    if-lt v2, v0, :cond_11

    #@2bd
    .line 459
    add-int/lit8 v11, v11, -0x1

    #@2bf
    .line 461
    move-object/from16 v0, p0

    #@2c1
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@2c3
    .line 462
    sub-int v3, p3, v11

    #@2c5
    .line 461
    const/4 v4, 0x0

    #@2c6
    .line 460
    move-object/from16 v0, p1

    #@2c8
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2cb
    .line 463
    sub-int v2, p3, v11

    #@2cd
    move-object/from16 v0, p0

    #@2cf
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@2d1
    .line 464
    move-object/from16 v0, p0

    #@2d3
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@2d5
    add-int/2addr v11, v2

    #@2d6
    move/from16 v17, v18

    #@2d8
    .line 465
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@2da
    .line 468
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_11
    add-int/lit8 v12, v11, 0x1

    #@2dc
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v2, p1, v11

    #@2de
    and-int/lit16 v10, v2, 0xff

    #@2e0
    .line 469
    and-int/lit16 v2, v10, 0xe0

    #@2e2
    shr-int/lit8 v2, v2, 0x5

    #@2e4
    move-object/from16 v0, p0

    #@2e6
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@2e8
    .line 470
    move-object/from16 v0, p0

    #@2ea
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@2ec
    move-object/from16 v0, p0

    #@2ee
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@2f0
    .line 471
    and-int/lit8 v4, v10, 0x1f

    #@2f2
    shl-int/lit8 v4, v4, 0x8

    #@2f4
    .line 472
    add-int/lit8 v11, v12, 0x1

    #@2f6
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v5, p1, v12

    #@2f8
    and-int/lit16 v5, v5, 0xff

    #@2fa
    .line 471
    or-int/2addr v4, v5

    #@2fb
    mul-int/lit16 v4, v4, 0x80

    #@2fd
    .line 470
    const/high16 v5, 0x10000

    #@2ff
    add-int/2addr v4, v5

    #@300
    aput v4, v2, v3

    #@302
    .line 473
    const/4 v2, 0x0

    #@303
    move-object/from16 v0, p0

    #@305
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@307
    goto/16 :goto_7

    #@309
    .line 480
    :pswitch_d
    add-int/lit16 v2, v10, -0xe0

    #@30b
    move-object/from16 v0, p0

    #@30d
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@30f
    .line 481
    const/4 v2, 0x0

    #@310
    move-object/from16 v0, p0

    #@312
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@314
    goto/16 :goto_7

    #@316
    .line 489
    :pswitch_e
    add-int/lit8 v2, p3, -0x1

    #@318
    if-lt v11, v2, :cond_12

    #@31a
    .line 490
    add-int/lit8 v11, v11, -0x1

    #@31c
    .line 492
    move-object/from16 v0, p0

    #@31e
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@320
    .line 493
    sub-int v3, p3, v11

    #@322
    .line 492
    const/4 v4, 0x0

    #@323
    .line 491
    move-object/from16 v0, p1

    #@325
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@328
    .line 494
    sub-int v2, p3, v11

    #@32a
    move-object/from16 v0, p0

    #@32c
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@32e
    .line 495
    move-object/from16 v0, p0

    #@330
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@332
    add-int/2addr v11, v2

    #@333
    move/from16 v17, v18

    #@335
    .line 496
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@337
    .line 499
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_12
    add-int/lit8 v12, v11, 0x1

    #@339
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v10, p1, v11

    #@33b
    .line 500
    add-int/lit8 v17, v18, 0x1

    #@33d
    .line 501
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    shl-int/lit8 v2, v10, 0x8

    #@33f
    add-int/lit8 v11, v12, 0x1

    #@341
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v3, p1, v12

    #@343
    and-int/lit16 v3, v3, 0xff

    #@345
    or-int/2addr v2, v3

    #@346
    .line 500
    int-to-char v2, v2

    #@347
    aput-char v2, p5, v18

    #@349
    :goto_8
    move/from16 v18, v17

    #@34b
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    move v12, v11

    #@34c
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    goto/16 :goto_6

    #@34e
    .line 517
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    :cond_13
    add-int/lit8 v17, v18, 0x1

    #@350
    .line 518
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    shl-int/lit8 v2, v10, 0x8

    #@352
    add-int/lit8 v12, v11, 0x1

    #@354
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v3, p1, v11

    #@356
    and-int/lit16 v3, v3, 0xff

    #@358
    or-int/2addr v2, v3

    #@359
    .line 517
    int-to-char v2, v2

    #@35a
    aput-char v2, p5, v18

    #@35c
    move v11, v12

    #@35d
    .line 519
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto :goto_8

    #@35e
    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
    .end packed-switch

    #@366
    .line 227
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    #@56a
    .line 431
    :pswitch_data_2
    .packed-switch 0xe0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_c
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 543
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@3
    const/16 v1, 0x80

    #@5
    aput v1, v0, v3

    #@7
    .line 544
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@9
    const/16 v1, 0xc0

    #@b
    const/4 v2, 0x1

    #@c
    aput v1, v0, v2

    #@e
    .line 545
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@10
    const/16 v1, 0x400

    #@12
    const/4 v2, 0x2

    #@13
    aput v1, v0, v2

    #@15
    .line 546
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@17
    const/16 v1, 0x600

    #@19
    const/4 v2, 0x3

    #@1a
    aput v1, v0, v2

    #@1c
    .line 547
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@1e
    const/16 v1, 0x900

    #@20
    const/4 v2, 0x4

    #@21
    aput v1, v0, v2

    #@23
    .line 548
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@25
    const/16 v1, 0x3040

    #@27
    const/4 v2, 0x5

    #@28
    aput v1, v0, v2

    #@2a
    .line 549
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@2c
    const/16 v1, 0x30a0

    #@2e
    const/4 v2, 0x6

    #@2f
    aput v1, v0, v2

    #@31
    .line 550
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@33
    const v1, 0xff00

    #@36
    const/4 v2, 0x7

    #@37
    aput v1, v0, v2

    #@39
    .line 553
    iput v3, p0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@3b
    .line 554
    iput v3, p0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@3d
    .line 555
    iput v3, p0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@3f
    .line 540
    return-void
.end method

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
    .line 80
    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@6
    .line 83
    const/16 v0, 0x8

    #@8
    new-array v0, v0, [I

    #@a
    iput-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@c
    .line 86
    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@e
    .line 92
    const/4 v0, 0x3

    #@f
    new-array v0, v0, [B

    #@11
    iput-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@13
    .line 95
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
    .line 114
    array-length v1, p0

    #@1
    const/4 v2, 0x0

    #@2
    invoke-static {p0, v2, v1}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII)[C

    #@5
    move-result-object v0

    #@6
    .line 115
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
    .line 127
    new-instance v0, Landroid/icu/text/UnicodeDecompressor;

    #@4
    invoke-direct {v0}, Landroid/icu/text/UnicodeDecompressor;-><init>()V

    #@7
    .line 132
    .local v0, "comp":Landroid/icu/text/UnicodeDecompressor;
    sub-int v1, p2, p1

    #@9
    mul-int/lit8 v1, v1, 0x2

    #@b
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v7

    #@f
    .line 133
    .local v7, "len":I
    new-array v5, v7, [C

    #@11
    .line 135
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
    .line 138
    .local v8, "charCount":I
    new-array v9, v8, [C

    #@1b
    .line 139
    .local v9, "result":[C
    invoke-static {v5, v6, v9, v6, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1e
    .line 140
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
    .line 171
    move/from16 v11, p2

    #@2
    .line 174
    .local v11, "bytePos":I
    move/from16 v17, p6

    #@4
    .line 177
    .local v17, "ucPos":I
    const/4 v10, 0x0

    #@5
    .line 181
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
    .line 182
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v3, "charBuffer.length < 2"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 186
    :cond_1
    move-object/from16 v0, p0

    #@1b
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@1d
    if-lez v2, :cond_4

    #@1f
    .line 188
    const/4 v15, 0x0

    #@20
    .line 191
    .local v15, "newBytes":I
    move-object/from16 v0, p0

    #@22
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@24
    const/4 v3, 0x3

    #@25
    if-eq v2, v3, :cond_3

    #@27
    .line 192
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
    .line 195
    sub-int v2, p3, p2

    #@34
    if-ge v2, v15, :cond_2

    #@36
    .line 196
    sub-int v15, p3, p2

    #@38
    .line 199
    :cond_2
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@40
    .line 198
    move-object/from16 v0, p1

    #@42
    move/from16 v1, p2

    #@44
    invoke-static {v0, v1, v2, v3, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@47
    .line 203
    :cond_3
    const/4 v2, 0x0

    #@48
    move-object/from16 v0, p0

    #@4a
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@4c
    .line 206
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
    .line 211
    .local v13, "count":I
    add-int v17, p6, v13

    #@65
    .line 212
    add-int v11, p2, v15

    #@67
    .line 217
    .end local v13    # "count":I
    .end local v15    # "newBytes":I
    :cond_4
    :goto_0
    move/from16 v0, p3

    #@69
    if-ge v11, v0, :cond_7

    #@6b
    move/from16 v0, v17

    #@6d
    move/from16 v1, p7

    #@6f
    if-ge v0, v1, :cond_7

    #@71
    .line 218
    move-object/from16 v0, p0

    #@73
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@75
    packed-switch v2, :pswitch_data_0

    #@78
    goto :goto_0

    #@79
    :pswitch_0
    move/from16 v18, v17

    #@7b
    .end local v17    # "ucPos":I
    .local v18, "ucPos":I
    move v12, v11

    #@7c
    .line 222
    .end local v11    # "bytePos":I
    .local v12, "bytePos":I
    :goto_1
    move/from16 v0, p3

    #@7e
    if-ge v12, v0, :cond_5

    #@80
    move/from16 v0, v18

    #@82
    move/from16 v1, p7

    #@84
    if-ge v0, v1, :cond_5

    #@86
    .line 223
    add-int/lit8 v11, v12, 0x1

    #@88
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v2, p1, v12

    #@8a
    and-int/lit16 v10, v2, 0xff

    #@8c
    .line 224
    packed-switch v10, :pswitch_data_1

    #@8f
    move/from16 v17, v18

    #@91
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    :goto_2
    move/from16 v18, v17

    #@93
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    move v12, v11

    #@94
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    goto :goto_1

    #@95
    :cond_5
    move v11, v12

    #@96
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    :goto_3
    move/from16 v17, v18

    #@98
    .line 421
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto :goto_0

    #@99
    .line 257
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_1
    move-object/from16 v0, p0

    #@9b
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@a1
    aget v2, v2, v3

    #@a3
    const v3, 0xffff

    #@a6
    if-gt v2, v3, :cond_6

    #@a8
    .line 258
    add-int/lit8 v17, v18, 0x1

    #@aa
    .line 259
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    move-object/from16 v0, p0

    #@ac
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@b2
    aget v2, v2, v3

    #@b4
    add-int/2addr v2, v10

    #@b5
    add-int/lit8 v2, v2, -0x80

    #@b7
    .line 258
    int-to-char v2, v2

    #@b8
    aput-char v2, p5, v18

    #@ba
    goto :goto_2

    #@bb
    .line 270
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_6
    add-int/lit8 v2, v18, 0x1

    #@bd
    move/from16 v0, p7

    #@bf
    if-lt v2, v0, :cond_9

    #@c1
    .line 271
    add-int/lit8 v11, v11, -0x1

    #@c3
    .line 273
    move-object/from16 v0, p0

    #@c5
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@c7
    .line 274
    sub-int v3, p3, v11

    #@c9
    .line 273
    const/4 v4, 0x0

    #@ca
    .line 272
    move-object/from16 v0, p1

    #@cc
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@cf
    .line 275
    sub-int v2, p3, v11

    #@d1
    move-object/from16 v0, p0

    #@d3
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@d5
    .line 276
    move-object/from16 v0, p0

    #@d7
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@d9
    add-int/2addr v11, v2

    #@da
    move/from16 v17, v18

    #@dc
    .line 526
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    #@de
    .line 527
    sub-int v2, v11, p2

    #@e0
    const/4 v3, 0x0

    #@e1
    aput v2, p4, v3

    #@e3
    .line 530
    :cond_8
    sub-int v2, v17, p6

    #@e5
    return v2

    #@e6
    .line 280
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_9
    move-object/from16 v0, p0

    #@e8
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@ea
    move-object/from16 v0, p0

    #@ec
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@ee
    aget v2, v2, v3

    #@f0
    .line 281
    const/high16 v3, 0x10000

    #@f2
    .line 280
    sub-int v16, v2, v3

    #@f4
    .line 282
    .local v16, "normalizedBase":I
    add-int/lit8 v17, v18, 0x1

    #@f6
    .line 283
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    shr-int/lit8 v2, v16, 0xa

    #@f8
    const v3, 0xd800

    #@fb
    add-int/2addr v2, v3

    #@fc
    .line 282
    int-to-char v2, v2

    #@fd
    aput-char v2, p5, v18

    #@ff
    .line 284
    add-int/lit8 v18, v17, 0x1

    #@101
    .line 285
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    move/from16 v0, v16

    #@103
    and-int/lit16 v2, v0, 0x3ff

    #@105
    const v3, 0xdc00

    #@108
    add-int/2addr v2, v3

    #@109
    and-int/lit8 v3, v10, 0x7f

    #@10b
    add-int/2addr v2, v3

    #@10c
    .line 284
    int-to-char v2, v2

    #@10d
    aput-char v2, p5, v17

    #@10f
    move/from16 v17, v18

    #@111
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto :goto_2

    #@112
    .line 315
    .end local v16    # "normalizedBase":I
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_2
    add-int/lit8 v17, v18, 0x1

    #@114
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    int-to-char v2, v10

    #@115
    aput-char v2, p5, v18

    #@117
    goto/16 :goto_2

    #@119
    .line 322
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_3
    add-int/lit8 v2, v11, 0x1

    #@11b
    move/from16 v0, p3

    #@11d
    if-lt v2, v0, :cond_a

    #@11f
    .line 323
    add-int/lit8 v11, v11, -0x1

    #@121
    .line 325
    move-object/from16 v0, p0

    #@123
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@125
    .line 326
    sub-int v3, p3, v11

    #@127
    .line 325
    const/4 v4, 0x0

    #@128
    .line 324
    move-object/from16 v0, p1

    #@12a
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12d
    .line 327
    sub-int v2, p3, v11

    #@12f
    move-object/from16 v0, p0

    #@131
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@133
    .line 328
    move-object/from16 v0, p0

    #@135
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@137
    add-int/2addr v11, v2

    #@138
    move/from16 v17, v18

    #@13a
    .line 329
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto :goto_4

    #@13b
    .line 332
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_a
    add-int/lit8 v12, v11, 0x1

    #@13d
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v10, p1, v11

    #@13f
    .line 333
    add-int/lit8 v17, v18, 0x1

    #@141
    .line 334
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    shl-int/lit8 v2, v10, 0x8

    #@143
    add-int/lit8 v11, v12, 0x1

    #@145
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v3, p1, v12

    #@147
    and-int/lit16 v3, v3, 0xff

    #@149
    or-int/2addr v2, v3

    #@14a
    .line 333
    int-to-char v2, v2

    #@14b
    aput-char v2, p5, v18

    #@14d
    goto/16 :goto_2

    #@14f
    .line 339
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_4
    const/4 v2, 0x1

    #@150
    move-object/from16 v0, p0

    #@152
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@154
    goto/16 :goto_3

    #@156
    .line 348
    :pswitch_5
    move/from16 v0, p3

    #@158
    if-lt v11, v0, :cond_b

    #@15a
    .line 349
    add-int/lit8 v11, v11, -0x1

    #@15c
    .line 351
    move-object/from16 v0, p0

    #@15e
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@160
    .line 352
    sub-int v3, p3, v11

    #@162
    .line 351
    const/4 v4, 0x0

    #@163
    .line 350
    move-object/from16 v0, p1

    #@165
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@168
    .line 353
    sub-int v2, p3, v11

    #@16a
    move-object/from16 v0, p0

    #@16c
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@16e
    .line 354
    move-object/from16 v0, p0

    #@170
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@172
    add-int/2addr v11, v2

    #@173
    move/from16 v17, v18

    #@175
    .line 355
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@177
    .line 360
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_b
    add-int/lit8 v12, v11, 0x1

    #@179
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v2, p1, v11

    #@17b
    and-int/lit16 v14, v2, 0xff

    #@17d
    .line 361
    .local v14, "dByte":I
    add-int/lit8 v17, v18, 0x1

    #@17f
    .line 362
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    if-ltz v14, :cond_c

    #@181
    const/16 v2, 0x80

    #@183
    if-ge v14, v2, :cond_c

    #@185
    .line 363
    sget-object v2, Landroid/icu/text/UnicodeDecompressor;->sOffsets:[I

    #@187
    add-int/lit8 v3, v10, -0x1

    #@189
    aget v2, v2, v3

    #@18b
    .line 362
    :goto_5
    add-int/2addr v2, v14

    #@18c
    .line 361
    int-to-char v2, v2

    #@18d
    aput-char v2, p5, v18

    #@18f
    move v11, v12

    #@190
    .line 366
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_2

    #@192
    .line 364
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    :cond_c
    move-object/from16 v0, p0

    #@194
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@196
    add-int/lit8 v3, v10, -0x1

    #@198
    aget v2, v2, v3

    #@19a
    add-int/lit8 v2, v2, -0x80

    #@19c
    goto :goto_5

    #@19d
    .line 371
    .end local v12    # "bytePos":I
    .end local v14    # "dByte":I
    .end local v17    # "ucPos":I
    .restart local v11    # "bytePos":I
    .restart local v18    # "ucPos":I
    :pswitch_6
    add-int/lit8 v2, v10, -0x10

    #@19f
    move-object/from16 v0, p0

    #@1a1
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@1a3
    move/from16 v17, v18

    #@1a5
    .line 372
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_2

    #@1a7
    .line 379
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_7
    move/from16 v0, p3

    #@1a9
    if-lt v11, v0, :cond_d

    #@1ab
    .line 380
    add-int/lit8 v11, v11, -0x1

    #@1ad
    .line 382
    move-object/from16 v0, p0

    #@1af
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@1b1
    .line 383
    sub-int v3, p3, v11

    #@1b3
    .line 382
    const/4 v4, 0x0

    #@1b4
    .line 381
    move-object/from16 v0, p1

    #@1b6
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b9
    .line 384
    sub-int v2, p3, v11

    #@1bb
    move-object/from16 v0, p0

    #@1bd
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@1bf
    .line 385
    move-object/from16 v0, p0

    #@1c1
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@1c3
    add-int/2addr v11, v2

    #@1c4
    move/from16 v17, v18

    #@1c6
    .line 386
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@1c8
    .line 389
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_d
    add-int/lit8 v2, v10, -0x18

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@1ce
    .line 390
    move-object/from16 v0, p0

    #@1d0
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@1d6
    .line 391
    sget-object v4, Landroid/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    #@1d8
    add-int/lit8 v12, v11, 0x1

    #@1da
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v5, p1, v11

    #@1dc
    and-int/lit16 v5, v5, 0xff

    #@1de
    aget v4, v4, v5

    #@1e0
    .line 390
    aput v4, v2, v3

    #@1e2
    move/from16 v17, v18

    #@1e4
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    move v11, v12

    #@1e5
    .line 392
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto/16 :goto_2

    #@1e7
    .line 398
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_8
    add-int/lit8 v2, v11, 0x1

    #@1e9
    move/from16 v0, p3

    #@1eb
    if-lt v2, v0, :cond_e

    #@1ed
    .line 399
    add-int/lit8 v11, v11, -0x1

    #@1ef
    .line 401
    move-object/from16 v0, p0

    #@1f1
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@1f3
    .line 402
    sub-int v3, p3, v11

    #@1f5
    .line 401
    const/4 v4, 0x0

    #@1f6
    .line 400
    move-object/from16 v0, p1

    #@1f8
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1fb
    .line 403
    sub-int v2, p3, v11

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@201
    .line 404
    move-object/from16 v0, p0

    #@203
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@205
    add-int/2addr v11, v2

    #@206
    move/from16 v17, v18

    #@208
    .line 405
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@20a
    .line 408
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_e
    add-int/lit8 v12, v11, 0x1

    #@20c
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v2, p1, v11

    #@20e
    and-int/lit16 v10, v2, 0xff

    #@210
    .line 409
    and-int/lit16 v2, v10, 0xe0

    #@212
    shr-int/lit8 v2, v2, 0x5

    #@214
    move-object/from16 v0, p0

    #@216
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@218
    .line 410
    move-object/from16 v0, p0

    #@21a
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@21c
    move-object/from16 v0, p0

    #@21e
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@220
    .line 411
    and-int/lit8 v4, v10, 0x1f

    #@222
    shl-int/lit8 v4, v4, 0x8

    #@224
    .line 412
    add-int/lit8 v11, v12, 0x1

    #@226
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v5, p1, v12

    #@228
    and-int/lit16 v5, v5, 0xff

    #@22a
    .line 411
    or-int/2addr v4, v5

    #@22b
    mul-int/lit16 v4, v4, 0x80

    #@22d
    .line 410
    const/high16 v5, 0x10000

    #@22f
    add-int/2addr v4, v5

    #@230
    aput v4, v2, v3

    #@232
    move/from16 v17, v18

    #@234
    .line 413
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_2

    #@236
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_9
    move/from16 v17, v18

    #@238
    .line 417
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_2

    #@23a
    :pswitch_a
    move/from16 v18, v17

    #@23c
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    move v12, v11

    #@23d
    .line 426
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    :goto_6
    move/from16 v0, p3

    #@23f
    if-ge v12, v0, :cond_f

    #@241
    move/from16 v0, v18

    #@243
    move/from16 v1, p7

    #@245
    if-ge v0, v1, :cond_f

    #@247
    .line 427
    add-int/lit8 v11, v12, 0x1

    #@249
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v2, p1, v12

    #@24b
    and-int/lit16 v10, v2, 0xff

    #@24d
    .line 428
    packed-switch v10, :pswitch_data_2

    #@250
    .line 504
    move/from16 v0, p3

    #@252
    if-lt v11, v0, :cond_13

    #@254
    .line 505
    add-int/lit8 v11, v11, -0x1

    #@256
    .line 507
    move-object/from16 v0, p0

    #@258
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@25a
    .line 508
    sub-int v3, p3, v11

    #@25c
    .line 507
    const/4 v4, 0x0

    #@25d
    .line 506
    move-object/from16 v0, p1

    #@25f
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@262
    .line 509
    sub-int v2, p3, v11

    #@264
    move-object/from16 v0, p0

    #@266
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@268
    .line 510
    move-object/from16 v0, p0

    #@26a
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@26c
    add-int/2addr v11, v2

    #@26d
    move/from16 v17, v18

    #@26f
    .line 511
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@271
    .end local v11    # "bytePos":I
    .end local v17    # "ucPos":I
    .restart local v12    # "bytePos":I
    .restart local v18    # "ucPos":I
    :cond_f
    move v11, v12

    #@272
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    :goto_7
    move/from16 v17, v18

    #@274
    .line 520
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_0

    #@276
    .line 434
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :pswitch_b
    move/from16 v0, p3

    #@278
    if-lt v11, v0, :cond_10

    #@27a
    .line 435
    add-int/lit8 v11, v11, -0x1

    #@27c
    .line 437
    move-object/from16 v0, p0

    #@27e
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@280
    .line 438
    sub-int v3, p3, v11

    #@282
    .line 437
    const/4 v4, 0x0

    #@283
    .line 436
    move-object/from16 v0, p1

    #@285
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@288
    .line 439
    sub-int v2, p3, v11

    #@28a
    move-object/from16 v0, p0

    #@28c
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@28e
    .line 440
    move-object/from16 v0, p0

    #@290
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@292
    add-int/2addr v11, v2

    #@293
    move/from16 v17, v18

    #@295
    .line 441
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@297
    .line 444
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_10
    add-int/lit16 v2, v10, -0xe8

    #@299
    move-object/from16 v0, p0

    #@29b
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@29d
    .line 445
    move-object/from16 v0, p0

    #@29f
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@2a1
    move-object/from16 v0, p0

    #@2a3
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@2a5
    .line 446
    sget-object v4, Landroid/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    #@2a7
    add-int/lit8 v12, v11, 0x1

    #@2a9
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v5, p1, v11

    #@2ab
    and-int/lit16 v5, v5, 0xff

    #@2ad
    aget v4, v4, v5

    #@2af
    .line 445
    aput v4, v2, v3

    #@2b1
    .line 447
    const/4 v2, 0x0

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@2b6
    move v11, v12

    #@2b7
    .line 448
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto :goto_7

    #@2b8
    .line 455
    :pswitch_c
    add-int/lit8 v2, v11, 0x1

    #@2ba
    move/from16 v0, p3

    #@2bc
    if-lt v2, v0, :cond_11

    #@2be
    .line 456
    add-int/lit8 v11, v11, -0x1

    #@2c0
    .line 458
    move-object/from16 v0, p0

    #@2c2
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@2c4
    .line 459
    sub-int v3, p3, v11

    #@2c6
    .line 458
    const/4 v4, 0x0

    #@2c7
    .line 457
    move-object/from16 v0, p1

    #@2c9
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2cc
    .line 460
    sub-int v2, p3, v11

    #@2ce
    move-object/from16 v0, p0

    #@2d0
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@2d2
    .line 461
    move-object/from16 v0, p0

    #@2d4
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@2d6
    add-int/2addr v11, v2

    #@2d7
    move/from16 v17, v18

    #@2d9
    .line 462
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@2db
    .line 465
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_11
    add-int/lit8 v12, v11, 0x1

    #@2dd
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v2, p1, v11

    #@2df
    and-int/lit16 v10, v2, 0xff

    #@2e1
    .line 466
    and-int/lit16 v2, v10, 0xe0

    #@2e3
    shr-int/lit8 v2, v2, 0x5

    #@2e5
    move-object/from16 v0, p0

    #@2e7
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@2e9
    .line 467
    move-object/from16 v0, p0

    #@2eb
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@2ed
    move-object/from16 v0, p0

    #@2ef
    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@2f1
    .line 468
    and-int/lit8 v4, v10, 0x1f

    #@2f3
    shl-int/lit8 v4, v4, 0x8

    #@2f5
    .line 469
    add-int/lit8 v11, v12, 0x1

    #@2f7
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v5, p1, v12

    #@2f9
    and-int/lit16 v5, v5, 0xff

    #@2fb
    .line 468
    or-int/2addr v4, v5

    #@2fc
    mul-int/lit16 v4, v4, 0x80

    #@2fe
    .line 467
    const/high16 v5, 0x10000

    #@300
    add-int/2addr v4, v5

    #@301
    aput v4, v2, v3

    #@303
    .line 470
    const/4 v2, 0x0

    #@304
    move-object/from16 v0, p0

    #@306
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@308
    goto/16 :goto_7

    #@30a
    .line 477
    :pswitch_d
    add-int/lit16 v2, v10, -0xe0

    #@30c
    move-object/from16 v0, p0

    #@30e
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@310
    .line 478
    const/4 v2, 0x0

    #@311
    move-object/from16 v0, p0

    #@313
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@315
    goto/16 :goto_7

    #@317
    .line 486
    :pswitch_e
    add-int/lit8 v2, p3, -0x1

    #@319
    if-lt v11, v2, :cond_12

    #@31b
    .line 487
    add-int/lit8 v11, v11, -0x1

    #@31d
    .line 489
    move-object/from16 v0, p0

    #@31f
    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    #@321
    .line 490
    sub-int v3, p3, v11

    #@323
    .line 489
    const/4 v4, 0x0

    #@324
    .line 488
    move-object/from16 v0, p1

    #@326
    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@329
    .line 491
    sub-int v2, p3, v11

    #@32b
    move-object/from16 v0, p0

    #@32d
    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@32f
    .line 492
    move-object/from16 v0, p0

    #@331
    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@333
    add-int/2addr v11, v2

    #@334
    move/from16 v17, v18

    #@336
    .line 493
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    goto/16 :goto_4

    #@338
    .line 496
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    :cond_12
    add-int/lit8 v12, v11, 0x1

    #@33a
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v10, p1, v11

    #@33c
    .line 497
    add-int/lit8 v17, v18, 0x1

    #@33e
    .line 498
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    shl-int/lit8 v2, v10, 0x8

    #@340
    add-int/lit8 v11, v12, 0x1

    #@342
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    aget-byte v3, p1, v12

    #@344
    and-int/lit16 v3, v3, 0xff

    #@346
    or-int/2addr v2, v3

    #@347
    .line 497
    int-to-char v2, v2

    #@348
    aput-char v2, p5, v18

    #@34a
    :goto_8
    move/from16 v18, v17

    #@34c
    .end local v17    # "ucPos":I
    .restart local v18    # "ucPos":I
    move v12, v11

    #@34d
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    goto/16 :goto_6

    #@34f
    .line 514
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    :cond_13
    add-int/lit8 v17, v18, 0x1

    #@351
    .line 515
    .end local v18    # "ucPos":I
    .restart local v17    # "ucPos":I
    shl-int/lit8 v2, v10, 0x8

    #@353
    add-int/lit8 v12, v11, 0x1

    #@355
    .end local v11    # "bytePos":I
    .restart local v12    # "bytePos":I
    aget-byte v3, p1, v11

    #@357
    and-int/lit16 v3, v3, 0xff

    #@359
    or-int/2addr v2, v3

    #@35a
    .line 514
    int-to-char v2, v2

    #@35b
    aput-char v2, p5, v18

    #@35d
    move v11, v12

    #@35e
    .line 516
    .end local v12    # "bytePos":I
    .restart local v11    # "bytePos":I
    goto :goto_8

    #@35f
    .line 218
    nop

    #@360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
    .end packed-switch

    #@368
    .line 224
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

    #@56c
    .line 428
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
    .line 539
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@3
    const/16 v1, 0x80

    #@5
    aput v1, v0, v3

    #@7
    .line 540
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@9
    const/16 v1, 0xc0

    #@b
    const/4 v2, 0x1

    #@c
    aput v1, v0, v2

    #@e
    .line 541
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@10
    const/16 v1, 0x400

    #@12
    const/4 v2, 0x2

    #@13
    aput v1, v0, v2

    #@15
    .line 542
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@17
    const/16 v1, 0x600

    #@19
    const/4 v2, 0x3

    #@1a
    aput v1, v0, v2

    #@1c
    .line 543
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@1e
    const/16 v1, 0x900

    #@20
    const/4 v2, 0x4

    #@21
    aput v1, v0, v2

    #@23
    .line 544
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@25
    const/16 v1, 0x3040

    #@27
    const/4 v2, 0x5

    #@28
    aput v1, v0, v2

    #@2a
    .line 545
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@2c
    const/16 v1, 0x30a0

    #@2e
    const/4 v2, 0x6

    #@2f
    aput v1, v0, v2

    #@31
    .line 546
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    #@33
    const v1, 0xff00

    #@36
    const/4 v2, 0x7

    #@37
    aput v1, v0, v2

    #@39
    .line 549
    iput v3, p0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    #@3b
    .line 550
    iput v3, p0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    #@3d
    .line 551
    iput v3, p0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    #@3f
    .line 536
    return-void
.end method

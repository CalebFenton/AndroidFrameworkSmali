.class public Landroid/icu/impl/coll/BOCSU;
.super Ljava/lang/Object;
.source "BOCSU.java"


# static fields
.field private static final SLOPE_LEAD_2_:I = 0x2a

.field private static final SLOPE_LEAD_3_:I = 0x3

.field private static final SLOPE_MAX_:I = 0xff

.field private static final SLOPE_MAX_BYTES_:I = 0x4

.field private static final SLOPE_MIDDLE_:I = 0x81

.field private static final SLOPE_MIN_:I = 0x3

.field private static final SLOPE_REACH_NEG_1_:I = -0x50

.field private static final SLOPE_REACH_NEG_2_:I = -0x29ac

.field private static final SLOPE_REACH_NEG_3_:I = -0x2f112

.field private static final SLOPE_REACH_POS_1_:I = 0x50

.field private static final SLOPE_REACH_POS_2_:I = 0x29ab

.field private static final SLOPE_REACH_POS_3_:I = 0x2f111

.field private static final SLOPE_SINGLE_:I = 0x50

.field private static final SLOPE_START_NEG_2_:I = 0x31

.field private static final SLOPE_START_NEG_3_:I = 0x7

.field private static final SLOPE_START_POS_2_:I = 0xd2

.field private static final SLOPE_START_POS_3_:I = 0xfc

.field private static final SLOPE_TAIL_COUNT_:I = 0xfd


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static ensureAppendCapacity(Landroid/icu/util/ByteArrayWrapper;II)V
    .locals 3
    .param p0, "sink"    # Landroid/icu/util/ByteArrayWrapper;
    .param p1, "minCapacity"    # I
    .param p2, "desiredCapacity"    # I

    #@0
    .prologue
    .line 135
    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@2
    array-length v1, v1

    #@3
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@5
    sub-int v0, v1, v2

    #@7
    .line 136
    .local v0, "remainingCapacity":I
    if-lt v0, p1, :cond_0

    #@9
    return-void

    #@a
    .line 137
    :cond_0
    if-ge p2, p1, :cond_1

    #@c
    move p2, p1

    #@d
    .line 138
    :cond_1
    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@f
    add-int/2addr v1, p2

    #@10
    invoke-virtual {p0, v1}, Landroid/icu/util/ByteArrayWrapper;->ensureCapacity(I)Landroid/icu/util/ByteArrayWrapper;

    #@13
    .line 134
    return-void
.end method

.method private static final getNegDivMod(II)J
    .locals 8
    .param p0, "number"    # I
    .param p1, "factor"    # I

    #@0
    .prologue
    .line 239
    rem-int v0, p0, p1

    #@2
    .line 240
    .local v0, "modulo":I
    div-int v1, p0, p1

    #@4
    int-to-long v2, v1

    #@5
    .line 241
    .local v2, "result":J
    if-gez v0, :cond_0

    #@7
    .line 242
    const-wide/16 v4, 0x1

    #@9
    sub-long/2addr v2, v4

    #@a
    .line 243
    add-int/2addr v0, p1

    #@b
    .line 245
    :cond_0
    const/16 v1, 0x20

    #@d
    shl-long v4, v2, v1

    #@f
    int-to-long v6, v0

    #@10
    or-long/2addr v4, v6

    #@11
    return-wide v4
.end method

.method private static final writeDiff(I[BI)I
    .locals 9
    .param p0, "diff"    # I
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    const/16 v8, 0xfd

    #@2
    const/16 v7, 0x20

    #@4
    const/4 v6, 0x3

    #@5
    .line 258
    const/16 v4, -0x50

    #@7
    if-lt p0, v4, :cond_3

    #@9
    .line 259
    const/16 v4, 0x50

    #@b
    if-gt p0, v4, :cond_0

    #@d
    .line 260
    add-int/lit8 v3, p2, 0x1

    #@f
    .end local p2    # "offset":I
    .local v3, "offset":I
    add-int/lit16 v4, p0, 0x81

    #@11
    int-to-byte v4, v4

    #@12
    aput-byte v4, p1, p2

    #@14
    move p2, v3

    #@15
    .line 323
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :goto_0
    return p2

    #@16
    .line 262
    :cond_0
    const/16 v4, 0x29ab

    #@18
    if-gt p0, v4, :cond_1

    #@1a
    .line 263
    add-int/lit8 v3, p2, 0x1

    #@1c
    .line 264
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    div-int/lit16 v4, p0, 0xfd

    #@1e
    .line 263
    add-int/lit16 v4, v4, 0xd2

    #@20
    int-to-byte v4, v4

    #@21
    aput-byte v4, p1, p2

    #@23
    .line 265
    add-int/lit8 p2, v3, 0x1

    #@25
    .line 266
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    rem-int/lit16 v4, p0, 0xfd

    #@27
    .line 265
    add-int/lit8 v4, v4, 0x3

    #@29
    int-to-byte v4, v4

    #@2a
    aput-byte v4, p1, v3

    #@2c
    goto :goto_0

    #@2d
    .line 268
    :cond_1
    const v4, 0x2f111

    #@30
    if-gt p0, v4, :cond_2

    #@32
    .line 269
    add-int/lit8 v4, p2, 0x2

    #@34
    .line 270
    rem-int/lit16 v5, p0, 0xfd

    #@36
    .line 269
    add-int/lit8 v5, v5, 0x3

    #@38
    int-to-byte v5, v5

    #@39
    aput-byte v5, p1, v4

    #@3b
    .line 271
    div-int/lit16 p0, p0, 0xfd

    #@3d
    .line 272
    add-int/lit8 v4, p2, 0x1

    #@3f
    .line 273
    rem-int/lit16 v5, p0, 0xfd

    #@41
    .line 272
    add-int/lit8 v5, v5, 0x3

    #@43
    int-to-byte v5, v5

    #@44
    aput-byte v5, p1, v4

    #@46
    .line 275
    div-int/lit16 v4, p0, 0xfd

    #@48
    .line 274
    add-int/lit16 v4, v4, 0xfc

    #@4a
    int-to-byte v4, v4

    #@4b
    aput-byte v4, p1, p2

    #@4d
    .line 276
    add-int/lit8 p2, p2, 0x3

    #@4f
    goto :goto_0

    #@50
    .line 279
    :cond_2
    add-int/lit8 v4, p2, 0x3

    #@52
    .line 280
    rem-int/lit16 v5, p0, 0xfd

    #@54
    .line 279
    add-int/lit8 v5, v5, 0x3

    #@56
    int-to-byte v5, v5

    #@57
    aput-byte v5, p1, v4

    #@59
    .line 281
    div-int/lit16 p0, p0, 0xfd

    #@5b
    .line 282
    add-int/lit8 v4, p2, 0x2

    #@5d
    .line 283
    rem-int/lit16 v5, p0, 0xfd

    #@5f
    .line 282
    add-int/lit8 v5, v5, 0x3

    #@61
    int-to-byte v5, v5

    #@62
    aput-byte v5, p1, v4

    #@64
    .line 284
    div-int/lit16 p0, p0, 0xfd

    #@66
    .line 285
    add-int/lit8 v4, p2, 0x1

    #@68
    .line 286
    rem-int/lit16 v5, p0, 0xfd

    #@6a
    .line 285
    add-int/lit8 v5, v5, 0x3

    #@6c
    int-to-byte v5, v5

    #@6d
    aput-byte v5, p1, v4

    #@6f
    .line 287
    const/4 v4, -0x1

    #@70
    aput-byte v4, p1, p2

    #@72
    .line 288
    add-int/lit8 p2, p2, 0x4

    #@74
    goto :goto_0

    #@75
    .line 292
    :cond_3
    invoke-static {p0, v8}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    #@78
    move-result-wide v0

    #@79
    .line 293
    .local v0, "division":J
    long-to-int v2, v0

    #@7a
    .line 294
    .local v2, "modulo":I
    const/16 v4, -0x29ac

    #@7c
    if-lt p0, v4, :cond_4

    #@7e
    .line 295
    shr-long v4, v0, v7

    #@80
    long-to-int p0, v4

    #@81
    .line 296
    add-int/lit8 v3, p2, 0x1

    #@83
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, p0, 0x31

    #@85
    int-to-byte v4, v4

    #@86
    aput-byte v4, p1, p2

    #@88
    .line 297
    add-int/lit8 p2, v3, 0x1

    #@8a
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    add-int/lit8 v4, v2, 0x3

    #@8c
    int-to-byte v4, v4

    #@8d
    aput-byte v4, p1, v3

    #@8f
    goto :goto_0

    #@90
    .line 299
    :cond_4
    const v4, -0x2f112

    #@93
    if-lt p0, v4, :cond_5

    #@95
    .line 300
    add-int/lit8 v4, p2, 0x2

    #@97
    add-int/lit8 v5, v2, 0x3

    #@99
    int-to-byte v5, v5

    #@9a
    aput-byte v5, p1, v4

    #@9c
    .line 301
    shr-long v4, v0, v7

    #@9e
    long-to-int p0, v4

    #@9f
    .line 302
    invoke-static {p0, v8}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    #@a2
    move-result-wide v0

    #@a3
    .line 303
    long-to-int v2, v0

    #@a4
    .line 304
    shr-long v4, v0, v7

    #@a6
    long-to-int p0, v4

    #@a7
    .line 305
    add-int/lit8 v4, p2, 0x1

    #@a9
    add-int/lit8 v5, v2, 0x3

    #@ab
    int-to-byte v5, v5

    #@ac
    aput-byte v5, p1, v4

    #@ae
    .line 306
    add-int/lit8 v4, p0, 0x7

    #@b0
    int-to-byte v4, v4

    #@b1
    aput-byte v4, p1, p2

    #@b3
    .line 307
    add-int/lit8 p2, p2, 0x3

    #@b5
    goto/16 :goto_0

    #@b7
    .line 310
    :cond_5
    add-int/lit8 v4, p2, 0x3

    #@b9
    add-int/lit8 v5, v2, 0x3

    #@bb
    int-to-byte v5, v5

    #@bc
    aput-byte v5, p1, v4

    #@be
    .line 311
    shr-long v4, v0, v7

    #@c0
    long-to-int p0, v4

    #@c1
    .line 312
    invoke-static {p0, v8}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    #@c4
    move-result-wide v0

    #@c5
    .line 313
    long-to-int v2, v0

    #@c6
    .line 314
    shr-long v4, v0, v7

    #@c8
    long-to-int p0, v4

    #@c9
    .line 315
    add-int/lit8 v4, p2, 0x2

    #@cb
    add-int/lit8 v5, v2, 0x3

    #@cd
    int-to-byte v5, v5

    #@ce
    aput-byte v5, p1, v4

    #@d0
    .line 316
    invoke-static {p0, v8}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    #@d3
    move-result-wide v0

    #@d4
    .line 317
    long-to-int v2, v0

    #@d5
    .line 318
    add-int/lit8 v4, p2, 0x1

    #@d7
    add-int/lit8 v5, v2, 0x3

    #@d9
    int-to-byte v5, v5

    #@da
    aput-byte v5, p1, v4

    #@dc
    .line 319
    aput-byte v6, p1, p2

    #@de
    .line 320
    add-int/lit8 p2, p2, 0x4

    #@e0
    goto/16 :goto_0
.end method

.method public static writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I
    .locals 8
    .param p0, "prev"    # I
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .param p4, "sink"    # Landroid/icu/util/ByteArrayWrapper;

    #@0
    .prologue
    .line 101
    :goto_0
    if-ge p2, p3, :cond_4

    #@2
    .line 105
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v6

    #@6
    mul-int/lit8 v6, v6, 0x2

    #@8
    const/16 v7, 0x10

    #@a
    invoke-static {p4, v7, v6}, Landroid/icu/impl/coll/BOCSU;->ensureAppendCapacity(Landroid/icu/util/ByteArrayWrapper;II)V

    #@d
    .line 106
    iget-object v0, p4, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    #@f
    .line 107
    .local v0, "buffer":[B
    array-length v2, v0

    #@10
    .line 108
    .local v2, "capacity":I
    iget v4, p4, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@12
    .line 109
    .local v4, "p":I
    add-int/lit8 v3, v2, -0x4

    #@14
    .local v3, "lastSafe":I
    move v5, v4

    #@15
    .line 110
    .end local v4    # "p":I
    .local v5, "p":I
    :goto_1
    if-ge p2, p3, :cond_3

    #@17
    if-gt v5, v3, :cond_3

    #@19
    .line 111
    const/16 v6, 0x4e00

    #@1b
    if-lt p0, v6, :cond_0

    #@1d
    const v6, 0xa000

    #@20
    if-lt p0, v6, :cond_1

    #@22
    .line 112
    :cond_0
    and-int/lit8 v6, p0, -0x80

    #@24
    add-int/lit8 p0, v6, 0x50

    #@26
    .line 119
    :goto_2
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@29
    move-result v1

    #@2a
    .line 120
    .local v1, "c":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@2d
    move-result v6

    #@2e
    add-int/2addr p2, v6

    #@2f
    .line 121
    const v6, 0xfffe

    #@32
    if-ne v1, v6, :cond_2

    #@34
    .line 122
    add-int/lit8 v4, v5, 0x1

    #@36
    .end local v5    # "p":I
    .restart local v4    # "p":I
    const/4 v6, 0x2

    #@37
    aput-byte v6, v0, v5

    #@39
    .line 123
    const/4 p0, 0x0

    #@3a
    :goto_3
    move v5, v4

    #@3b
    .end local v4    # "p":I
    .restart local v5    # "p":I
    goto :goto_1

    #@3c
    .line 116
    .end local v1    # "c":I
    :cond_1
    const/16 p0, 0x7654

    #@3e
    goto :goto_2

    #@3f
    .line 125
    .restart local v1    # "c":I
    :cond_2
    sub-int v6, v1, p0

    #@41
    invoke-static {v6, v0, v5}, Landroid/icu/impl/coll/BOCSU;->writeDiff(I[BI)I

    #@44
    move-result v4

    #@45
    .line 126
    .end local v5    # "p":I
    .restart local v4    # "p":I
    move p0, v1

    #@46
    goto :goto_3

    #@47
    .line 129
    .end local v1    # "c":I
    .end local v4    # "p":I
    .restart local v5    # "p":I
    :cond_3
    iput v5, p4, Landroid/icu/util/ByteArrayWrapper;->size:I

    #@49
    goto :goto_0

    #@4a
    .line 131
    .end local v0    # "buffer":[B
    .end local v2    # "capacity":I
    .end local v3    # "lastSafe":I
    .end local v5    # "p":I
    :cond_4
    return p0
.end method

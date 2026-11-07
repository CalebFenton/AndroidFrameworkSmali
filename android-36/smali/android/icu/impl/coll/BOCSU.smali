.class public Landroid/icu/impl/coll/BOCSU;
.super Ljava/lang/Object;
.source "BOCSU.java"


# static fields
.field private static final blacklist SLOPE_LEAD_2_:I = 0x2a

.field private static final blacklist SLOPE_LEAD_3_:I = 0x3

.field private static final blacklist SLOPE_MAX_:I = 0xff

.field private static final blacklist SLOPE_MAX_BYTES_:I = 0x4

.field private static final blacklist SLOPE_MIDDLE_:I = 0x81

.field private static final blacklist SLOPE_MIN_:I = 0x3

.field private static final blacklist SLOPE_REACH_NEG_1_:I = -0x50

.field private static final blacklist SLOPE_REACH_NEG_2_:I = -0x29ac

.field private static final blacklist SLOPE_REACH_NEG_3_:I = -0x2f112

.field private static final blacklist SLOPE_REACH_POS_1_:I = 0x50

.field private static final blacklist SLOPE_REACH_POS_2_:I = 0x29ab

.field private static final blacklist SLOPE_REACH_POS_3_:I = 0x2f111

.field private static final blacklist SLOPE_SINGLE_:I = 0x50

.field private static final blacklist SLOPE_START_NEG_2_:I = 0x31

.field private static final blacklist SLOPE_START_NEG_3_:I = 0x7

.field private static final blacklist SLOPE_START_POS_2_:I = 0xd2

.field private static final blacklist SLOPE_START_POS_3_:I = 0xfc

.field private static final blacklist SLOPE_TAIL_COUNT_:I = 0xfd


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method private static blacklist ensureAppendCapacity(Landroid/icu/util/ByteArrayWrapper;II)V
    .registers 5
    .param p0, "sink"    # Landroid/icu/util/ByteArrayWrapper;
    .param p1, "minCapacity"    # I
    .param p2, "desiredCapacity"    # I

    .line 138
    iget-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    array-length v0, v0

    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    sub-int/2addr v0, v1

    .line 139
    .local v0, "remainingCapacity":I
    if-lt v0, p1, :cond_9

    return-void

    .line 140
    :cond_9
    if-ge p2, p1, :cond_c

    move p2, p1

    .line 141
    :cond_c
    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Landroid/icu/util/ByteArrayWrapper;->ensureCapacity(I)Landroid/icu/util/ByteArrayWrapper;

    .line 142
    return-void
.end method

.method private static final blacklist getNegDivMod(II)J
    .registers 9
    .param p0, "number"    # I
    .param p1, "factor"    # I

    .line 242
    rem-int v0, p0, p1

    .line 243
    .local v0, "modulo":I
    div-int v1, p0, p1

    int-to-long v1, v1

    .line 244
    .local v1, "result":J
    if-gez v0, :cond_b

    .line 245
    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 246
    add-int/2addr v0, p1

    .line 248
    :cond_b
    const/16 v3, 0x20

    shl-long v3, v1, v3

    int-to-long v5, v0

    or-long/2addr v3, v5

    return-wide v3
.end method

.method private static final blacklist writeDiff(I[BI)I
    .registers 12
    .param p0, "diff"    # I
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 261
    const/16 v0, -0x50

    const/16 v1, 0xfd

    const/4 v2, 0x3

    if-lt p0, v0, :cond_6f

    .line 262
    const/16 v0, 0x50

    if-gt p0, v0, :cond_14

    .line 263
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    add-int/lit16 v1, p0, 0x81

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    goto/16 :goto_dd

    .line 265
    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    :cond_14
    const/16 v0, 0x29ab

    if-gt p0, v0, :cond_2c

    .line 266
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    div-int/lit16 v1, p0, 0xfd

    add-int/lit16 v1, v1, 0xd2

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 268
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    rem-int/lit16 v1, p0, 0xfd

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    move v0, p2

    goto/16 :goto_dd

    .line 271
    :cond_2c
    const v0, 0x2f111

    if-gt p0, v0, :cond_4e

    .line 272
    add-int/lit8 v0, p2, 0x2

    rem-int/lit16 v1, p0, 0xfd

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 274
    div-int/lit16 p0, p0, 0xfd

    .line 275
    add-int/lit8 v0, p2, 0x1

    rem-int/lit16 v1, p0, 0xfd

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 277
    div-int/lit16 v0, p0, 0xfd

    add-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 279
    add-int/lit8 v0, p2, 0x3

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    goto/16 :goto_dd

    .line 282
    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    :cond_4e
    add-int/lit8 v0, p2, 0x3

    rem-int/lit16 v3, p0, 0xfd

    add-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 284
    div-int/lit16 p0, p0, 0xfd

    .line 285
    add-int/lit8 v0, p2, 0x2

    rem-int/lit16 v3, p0, 0xfd

    add-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 287
    div-int/2addr p0, v1

    .line 288
    add-int/lit8 v0, p2, 0x1

    rem-int/lit16 v1, p0, 0xfd

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 290
    const/4 v0, -0x1

    aput-byte v0, p1, p2

    .line 291
    add-int/lit8 v0, p2, 0x4

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    goto :goto_dd

    .line 295
    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    :cond_6f
    invoke-static {p0, v1}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v3

    .line 296
    .local v3, "division":J
    long-to-int v0, v3

    .line 297
    .local v0, "modulo":I
    const/16 v5, -0x29ac

    const/16 v6, 0x20

    if-lt p0, v5, :cond_8d

    .line 298
    shr-long v1, v3, v6

    long-to-int p0, v1

    .line 299
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offset":I
    .local v1, "offset":I
    add-int/lit8 v2, p0, 0x31

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 300
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "offset":I
    .restart local p2    # "offset":I
    add-int/lit8 v2, v0, 0x3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    move v0, p2

    goto :goto_dd

    .line 302
    :cond_8d
    const v5, -0x2f112

    if-lt p0, v5, :cond_b3

    .line 303
    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v7, v0, 0x3

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    .line 304
    shr-long v7, v3, v6

    long-to-int p0, v7

    .line 305
    invoke-static {p0, v1}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v3

    .line 306
    long-to-int v0, v3

    .line 307
    shr-long v5, v3, v6

    long-to-int p0, v5

    .line 308
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v5, v0, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 309
    add-int/lit8 v1, p0, 0x7

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 310
    add-int/2addr p2, v2

    move v0, p2

    goto :goto_dd

    .line 313
    :cond_b3
    add-int/lit8 v5, p2, 0x3

    add-int/lit8 v7, v0, 0x3

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    .line 314
    shr-long v7, v3, v6

    long-to-int p0, v7

    .line 315
    invoke-static {p0, v1}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v3

    .line 316
    long-to-int v0, v3

    .line 317
    shr-long v5, v3, v6

    long-to-int p0, v5

    .line 318
    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, v0, 0x3

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 319
    invoke-static {p0, v1}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v3

    .line 320
    long-to-int v0, v3

    .line 321
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v5, v0, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 322
    aput-byte v2, p1, p2

    .line 323
    add-int/lit8 p2, p2, 0x4

    move v0, p2

    .line 326
    .end local v3    # "division":J
    .end local p2    # "offset":I
    .local v0, "offset":I
    :goto_dd
    return v0
.end method

.method public static blacklist writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I
    .registers 12
    .param p0, "prev"    # I
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .param p4, "sink"    # Landroid/icu/util/ByteArrayWrapper;

    .line 104
    nop

    :goto_1
    if-ge p2, p3, :cond_4a

    .line 108
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    const/16 v2, 0x10

    invoke-static {p4, v2, v0}, Landroid/icu/impl/coll/BOCSU;->ensureAppendCapacity(Landroid/icu/util/ByteArrayWrapper;II)V

    .line 109
    iget-object v0, p4, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    .line 110
    .local v0, "buffer":[B
    array-length v2, v0

    .line 111
    .local v2, "capacity":I
    iget v3, p4, Landroid/icu/util/ByteArrayWrapper;->size:I

    .line 112
    .local v3, "p":I
    add-int/lit8 v4, v2, -0x4

    .line 113
    .local v4, "lastSafe":I
    :goto_15
    if-ge p2, p3, :cond_47

    if-gt v3, v4, :cond_47

    .line 114
    const/16 v5, 0x4e00

    if-lt p0, v5, :cond_26

    const v5, 0xa000

    if-lt p0, v5, :cond_23

    goto :goto_26

    .line 119
    :cond_23
    const/16 p0, 0x7654

    goto :goto_2a

    .line 115
    :cond_26
    :goto_26
    and-int/lit8 v5, p0, -0x80

    add-int/lit8 p0, v5, 0x50

    .line 122
    :goto_2a
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 123
    .local v5, "c":I
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr p2, v6

    .line 124
    const v6, 0xfffe

    if-ne v5, v6, :cond_3f

    .line 125
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "p":I
    .local v6, "p":I
    aput-byte v1, v0, v3

    .line 126
    const/4 p0, 0x0

    move v3, v6

    goto :goto_46

    .line 128
    .end local v6    # "p":I
    .restart local v3    # "p":I
    :cond_3f
    sub-int v6, v5, p0

    invoke-static {v6, v0, v3}, Landroid/icu/impl/coll/BOCSU;->writeDiff(I[BI)I

    move-result v3

    .line 129
    move p0, v5

    .line 131
    .end local v5    # "c":I
    :goto_46
    goto :goto_15

    .line 132
    :cond_47
    iput v3, p4, Landroid/icu/util/ByteArrayWrapper;->size:I

    .line 133
    .end local v0    # "buffer":[B
    .end local v2    # "capacity":I
    .end local v3    # "p":I
    .end local v4    # "lastSafe":I
    goto :goto_1

    .line 134
    :cond_4a
    return p0
.end method

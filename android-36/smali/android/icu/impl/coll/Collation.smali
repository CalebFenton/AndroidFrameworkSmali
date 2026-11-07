.class public final Landroid/icu/impl/coll/Collation;
.super Ljava/lang/Object;
.source "Collation.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist BEFORE_WEIGHT16:I = 0x100

.field static final blacklist BUILDER_DATA_TAG:I = 0x7

.field public static final blacklist CASE_AND_QUATERNARY_MASK:I = 0xc0c0

.field static final blacklist CASE_AND_TERTIARY_MASK:I = 0xff3f

.field public static final blacklist CASE_LEVEL:I = 0x3

.field static final blacklist CASE_LEVEL_FLAG:I = 0x8

.field public static final blacklist CASE_MASK:I = 0xc000

.field static final blacklist COMMON_BYTE:I = 0x5

.field static final blacklist COMMON_SECONDARY_CE:I = 0x5000000

.field public static final blacklist COMMON_SEC_AND_TER_CE:I = 0x5000500

.field static final blacklist COMMON_TERTIARY_CE:I = 0x500

.field public static final blacklist COMMON_WEIGHT16:I = 0x500

.field static final blacklist CONTRACTION_TAG:I = 0x9

.field static final blacklist CONTRACT_NEXT_CCC:I = 0x200

.field static final blacklist CONTRACT_SINGLE_CP_NO_MATCH:I = 0x100

.field static final blacklist CONTRACT_TRAILING_CCC:I = 0x400

.field static final blacklist DIGIT_TAG:I = 0xa

.field public static final blacklist EQUAL:I = 0x0

.field static final blacklist EXPANSION32_TAG:I = 0x5

.field static final blacklist EXPANSION_TAG:I = 0x6

.field static final blacklist FALLBACK_CE32:I = 0xc0

.field static final blacklist FALLBACK_TAG:I = 0x0

.field static final blacklist FFFD_CE32:I = -0x2fafb

.field public static final blacklist FFFD_PRIMARY:J = 0xfffd0000L

.field static final blacklist FIRST_TRAILING_PRIMARY:J = 0xff020200L

.field static final blacklist FIRST_UNASSIGNED_PRIMARY:J = 0xfe040200L

.field public static final blacklist GREATER:I = 0x1

.field static final blacklist HANGUL_NO_SPECIAL_JAMO:I = 0x100

.field static final blacklist HANGUL_TAG:I = 0xc

.field public static final blacklist IDENTICAL_LEVEL:I = 0x6

.field static final blacklist IDENTICAL_LEVEL_FLAG:I = 0x40

.field static final blacklist IMPLICIT_TAG:I = 0xf

.field static final blacklist LATIN_EXPANSION_TAG:I = 0x4

.field static final blacklist LEAD_ALL_FALLBACK:I = 0x100

.field static final blacklist LEAD_ALL_UNASSIGNED:I = 0x0

.field static final blacklist LEAD_MIXED:I = 0x200

.field static final blacklist LEAD_SURROGATE_TAG:I = 0xd

.field static final blacklist LEAD_TYPE_MASK:I = 0x300

.field public static final blacklist LESS:I = -0x1

.field public static final blacklist LEVEL_SEPARATOR_BYTE:I = 0x1

.field static final blacklist LONG_PRIMARY_CE32_LOW_BYTE:I = 0xc1

.field static final blacklist LONG_PRIMARY_TAG:I = 0x1

.field static final blacklist LONG_SECONDARY_TAG:I = 0x2

.field static final blacklist MAX_EXPANSION_LENGTH:I = 0x1f

.field static final blacklist MAX_INDEX:I = 0x7ffff

.field public static final blacklist MAX_PRIMARY:J = 0xffff0000L

.field static final blacklist MAX_REGULAR_CE32:I = -0xfafb

.field public static final blacklist MERGE_SEPARATOR_BYTE:I = 0x2

.field static final blacklist MERGE_SEPARATOR_CE32:I = 0x2000505

.field public static final blacklist MERGE_SEPARATOR_PRIMARY:J = 0x2000000L

.field public static final blacklist NO_CE:J = 0x101000100L

.field static final blacklist NO_CE32:I = 0x1

.field static final blacklist NO_CE_PRIMARY:J = 0x1L

.field static final blacklist NO_CE_WEIGHT16:I = 0x100

.field public static final blacklist NO_LEVEL:I = 0x0

.field static final blacklist NO_LEVEL_FLAG:I = 0x1

.field static final blacklist OFFSET_TAG:I = 0xe

.field static final blacklist ONLY_SEC_TER_MASK:I = -0xc0c1

.field public static final blacklist ONLY_TERTIARY_MASK:I = 0x3f3f

.field static final blacklist PREFIX_TAG:I = 0x8

.field public static final blacklist PRIMARY_COMPRESSION_HIGH_BYTE:I = 0xff

.field public static final blacklist PRIMARY_COMPRESSION_LOW_BYTE:I = 0x3

.field public static final blacklist PRIMARY_LEVEL:I = 0x1

.field static final blacklist PRIMARY_LEVEL_FLAG:I = 0x2

.field public static final blacklist QUATERNARY_LEVEL:I = 0x5

.field static final blacklist QUATERNARY_LEVEL_FLAG:I = 0x20

.field public static final blacklist QUATERNARY_MASK:I = 0xc0

.field static final blacklist RESERVED_TAG_3:I = 0x3

.field static final blacklist SECONDARY_AND_CASE_MASK:I = -0x4000

.field public static final blacklist SECONDARY_LEVEL:I = 0x2

.field static final blacklist SECONDARY_LEVEL_FLAG:I = 0x4

.field static final blacklist SECONDARY_MASK:I = -0x10000

.field public static final blacklist SENTINEL_CP:I = -0x1

.field static final blacklist SPECIAL_CE32_LOW_BYTE:I = 0xc0

.field public static final blacklist TERMINATOR_BYTE:I = 0x0

.field public static final blacklist TERTIARY_LEVEL:I = 0x4

.field static final blacklist TERTIARY_LEVEL_FLAG:I = 0x10

.field static final blacklist TRAIL_WEIGHT_BYTE:I = 0xff

.field static final blacklist U0000_TAG:I = 0xb

.field static final blacklist UNASSIGNED_CE32:I = -0x1

.field static final blacklist UNASSIGNED_IMPLICIT_BYTE:I = 0xfe

.field public static final blacklist ZERO_LEVEL:I = 0x7

.field static final blacklist ZERO_LEVEL_FLAG:I = 0x80


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 24
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist ce32HasContext(I)Z
    .registers 3
    .param p0, "ce32"    # I

    .line 380
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 381
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16

    .line 382
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 380
    :goto_19
    return v0
.end method

.method static blacklist ceFromCE32(I)J
    .registers 7
    .param p0, "ce32"    # I

    .line 431
    and-int/lit16 v0, p0, 0xff

    .line 432
    .local v0, "tertiary":I
    const/16 v1, 0xc0

    const/16 v2, 0x20

    if-ge v0, v1, :cond_1c

    .line 434
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    int-to-long v3, v1

    shl-long v1, v3, v2

    const v3, 0xff00

    and-int/2addr v3, p0

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    shl-int/lit8 v3, v0, 0x8

    int-to-long v3, v3

    or-long/2addr v1, v3

    return-wide v1

    .line 436
    :cond_1c
    sub-int/2addr p0, v0

    .line 437
    and-int/lit8 v1, v0, 0xf

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2a

    .line 439
    int-to-long v3, p0

    shl-long v1, v3, v2

    const-wide/32 v3, 0x5000500

    or-long/2addr v1, v3

    return-wide v1

    .line 442
    :cond_2a
    nop

    .line 443
    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    return-wide v1
.end method

.method static blacklist ceFromLongPrimaryCE32(I)J
    .registers 5
    .param p0, "ce32"    # I

    .line 320
    and-int/lit16 v0, p0, -0x100

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/32 v2, 0x5000500

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist ceFromLongSecondaryCE32(I)J
    .registers 5
    .param p0, "ce32"    # I

    .line 327
    int-to-long v0, p0

    const-wide v2, 0xffffff00L

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist ceFromSimpleCE32(I)J
    .registers 6
    .param p0, "ce32"    # I

    .line 425
    nop

    .line 426
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const v2, 0xff00

    and-int/2addr v2, p0

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    and-int/lit16 v2, p0, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist decThreeBytePrimaryByOneStep(JZI)J
    .registers 11
    .param p0, "basePrimary"    # J
    .param p2, "isCompressible"    # Z
    .param p3, "step"    # I

    .line 537
    nop

    .line 538
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v0, p3

    .line 539
    .local v0, "byte3":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    .line 540
    const-wide v1, 0xffff0000L

    and-long/2addr v1, p0

    shl-int/lit8 v3, v0, 0x8

    int-to-long v3, v3

    or-long/2addr v1, v3

    return-wide v1

    .line 542
    :cond_17
    add-int/lit16 v0, v0, 0xfe

    .line 545
    const/16 v2, 0x10

    shr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x1

    .line 546
    .local v2, "byte2":I
    const-wide/32 v3, 0x1000000

    if-eqz p2, :cond_2e

    .line 547
    const/4 v1, 0x4

    if-ge v2, v1, :cond_33

    .line 548
    const/16 v2, 0xfe

    .line 549
    sub-long/2addr p0, v3

    goto :goto_33

    .line 552
    :cond_2e
    if-ge v2, v1, :cond_33

    .line 553
    const/16 v2, 0xff

    .line 554
    sub-long/2addr p0, v3

    .line 558
    :cond_33
    :goto_33
    const-wide v3, 0xff000000L

    and-long/2addr v3, p0

    shl-int/lit8 v1, v2, 0x10

    int-to-long v5, v1

    or-long/2addr v3, v5

    shl-int/lit8 v1, v0, 0x8

    int-to-long v5, v1

    or-long/2addr v3, v5

    return-wide v3
.end method

.method static blacklist decTwoBytePrimaryByOneStep(JZI)J
    .registers 9
    .param p0, "basePrimary"    # J
    .param p2, "isCompressible"    # Z
    .param p3, "step"    # I

    .line 515
    nop

    .line 516
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v0, p3

    .line 517
    .local v0, "byte2":I
    const-wide/32 v1, 0x1000000

    if-eqz p2, :cond_15

    .line 518
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1b

    .line 519
    add-int/lit16 v0, v0, 0xfb

    .line 520
    sub-long/2addr p0, v1

    goto :goto_1b

    .line 523
    :cond_15
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1b

    .line 524
    add-int/lit16 v0, v0, 0xfe

    .line 525
    sub-long/2addr p0, v1

    .line 528
    :cond_1b
    :goto_1b
    const-wide v1, 0xff000000L

    and-long/2addr v1, p0

    shl-int/lit8 v3, v0, 0x10

    int-to-long v3, v3

    or-long/2addr v1, v3

    return-wide v1
.end method

.method static blacklist digitFromCE32(I)C
    .registers 2
    .param p0, "ce32"    # I

    .line 419
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    return v0
.end method

.method static blacklist getThreeBytePrimaryForOffsetData(IJ)J
    .registers 10
    .param p0, "c"    # I
    .param p1, "dataCE"    # J

    .line 565
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    .line 566
    .local v0, "p":J
    long-to-int v2, p1

    .line 567
    .local v2, "lower32":I
    shr-int/lit8 v3, v2, 0x8

    sub-int v3, p0, v3

    and-int/lit8 v4, v2, 0x7f

    mul-int/2addr v3, v4

    .line 568
    .local v3, "offset":I
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    .line 569
    .local v4, "isCompressible":Z
    :goto_13
    invoke-static {v0, v1, v4, v3}, Landroid/icu/impl/coll/Collation;->incThreeBytePrimaryByOffset(JZI)J

    move-result-wide v5

    return-wide v5
.end method

.method static blacklist hasCE32Tag(II)Z
    .registers 3
    .param p0, "ce32"    # I
    .param p1, "tag"    # I

    .line 348
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static blacklist incThreeBytePrimaryByOffset(JZI)J
    .registers 11
    .param p0, "basePrimary"    # J
    .param p2, "isCompressible"    # Z
    .param p3, "offset"    # I

    .line 489
    const/16 v0, 0x8

    shr-long v1, p0, v0

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x2

    add-int/2addr p3, v1

    .line 490
    rem-int/lit16 v1, p3, 0xfe

    add-int/lit8 v1, v1, 0x2

    shl-int/lit8 v0, v1, 0x8

    int-to-long v0, v0

    .line 491
    .local v0, "primary":J
    div-int/lit16 p3, p3, 0xfe

    .line 494
    const/16 v2, 0x10

    if-eqz p2, :cond_2a

    .line 495
    shr-long v3, p0, v2

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x4

    add-int/2addr p3, v3

    .line 496
    rem-int/lit16 v3, p3, 0xfb

    add-int/lit8 v3, v3, 0x4

    shl-int/lit8 v2, v3, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 497
    div-int/lit16 p3, p3, 0xfb

    goto :goto_3c

    .line 499
    :cond_2a
    shr-long v3, p0, v2

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x2

    add-int/2addr p3, v3

    .line 500
    rem-int/lit16 v3, p3, 0xfe

    add-int/lit8 v3, v3, 0x2

    shl-int/lit8 v2, v3, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 501
    div-int/lit16 p3, p3, 0xfe

    .line 504
    :goto_3c
    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    int-to-long v4, p3

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    or-long/2addr v2, v0

    return-wide v2
.end method

.method public static blacklist incTwoBytePrimaryByOffset(JZI)J
    .registers 11
    .param p0, "basePrimary"    # J
    .param p2, "isCompressible"    # Z
    .param p3, "offset"    # I

    .line 469
    const/16 v0, 0x10

    if-eqz p2, :cond_16

    .line 470
    shr-long v1, p0, v0

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x4

    add-int/2addr p3, v1

    .line 471
    rem-int/lit16 v1, p3, 0xfb

    add-int/lit8 v1, v1, 0x4

    shl-int/lit8 v0, v1, 0x10

    int-to-long v0, v0

    .line 472
    .local v0, "primary":J
    div-int/lit16 p3, p3, 0xfb

    goto :goto_27

    .line 474
    .end local v0    # "primary":J
    :cond_16
    shr-long v1, p0, v0

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x2

    add-int/2addr p3, v1

    .line 475
    rem-int/lit16 v1, p3, 0xfe

    add-int/lit8 v1, v1, 0x2

    shl-int/lit8 v0, v1, 0x10

    int-to-long v0, v0

    .line 476
    .restart local v0    # "primary":J
    div-int/lit16 p3, p3, 0xfe

    .line 479
    :goto_27
    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    int-to-long v4, p3

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    or-long/2addr v2, v0

    return-wide v2
.end method

.method static blacklist indexFromCE32(I)I
    .registers 2
    .param p0, "ce32"    # I

    .line 405
    ushr-int/lit8 v0, p0, 0xd

    return v0
.end method

.method static blacklist isAssignedCE32(I)Z
    .registers 2
    .param p0, "ce32"    # I

    .line 281
    const/16 v0, 0xc0

    if-eq p0, v0, :cond_9

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static blacklist isContractionCE32(I)Z
    .registers 2
    .param p0, "ce32"    # I

    .line 376
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v0

    return v0
.end method

.method static blacklist isLongPrimaryCE32(I)Z
    .registers 2
    .param p0, "ce32"    # I

    .line 352
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v0

    return v0
.end method

.method static blacklist isPrefixCE32(I)Z
    .registers 2
    .param p0, "ce32"    # I

    .line 372
    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v0

    return v0
.end method

.method static blacklist isSelfContainedCE32(I)Z
    .registers 4
    .param p0, "ce32"    # I

    .line 365
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 366
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    if-eq v0, v1, :cond_1e

    .line 367
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    .line 368
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    nop

    .line 365
    :goto_1f
    return v1
.end method

.method static blacklist isSimpleOrLongCE32(I)Z
    .registers 4
    .param p0, "ce32"    # I

    .line 356
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 357
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    if-eq v0, v1, :cond_17

    .line 358
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    nop

    .line 356
    :goto_18
    return v1
.end method

.method static blacklist isSpecialCE32(I)Z
    .registers 3
    .param p0, "ce32"    # I

    .line 340
    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xc0

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static blacklist latinCE0FromCE32(I)J
    .registers 5
    .param p0, "ce32"    # I

    .line 390
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/32 v2, 0x5000000

    or-long/2addr v0, v2

    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist latinCE1FromCE32(I)J
    .registers 5
    .param p0, "ce32"    # I

    .line 398
    int-to-long v0, p0

    const-wide/32 v2, 0xff00

    and-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x500

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist lengthFromCE32(I)I
    .registers 2
    .param p0, "ce32"    # I

    .line 412
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static blacklist makeCE(J)J
    .registers 6
    .param p0, "p"    # J

    .line 450
    const/16 v0, 0x20

    shl-long v0, p0, v0

    const-wide/32 v2, 0x5000500

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist makeCE(JIII)J
    .registers 10
    .param p0, "p"    # J
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "q"    # I

    .line 457
    const/16 v0, 0x20

    shl-long v0, p0, v0

    int-to-long v2, p2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p3

    or-long/2addr v0, v2

    shl-int/lit8 v2, p4, 0x6

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist makeCE32FromTagAndIndex(II)I
    .registers 3
    .param p0, "tag"    # I
    .param p1, "index"    # I

    .line 336
    shl-int/lit8 v0, p1, 0xd

    or-int/lit16 v0, v0, 0xc0

    or-int/2addr v0, p0

    return v0
.end method

.method static blacklist makeCE32FromTagIndexAndLength(III)I
    .registers 5
    .param p0, "tag"    # I
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 332
    shl-int/lit8 v0, p1, 0xd

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/lit16 v0, v0, 0xc0

    or-int/2addr v0, p0

    return v0
.end method

.method static blacklist makeLongPrimaryCE32(J)I
    .registers 4
    .param p0, "p"    # J

    .line 313
    const-wide/16 v0, 0xc1

    or-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method static blacklist makeLongSecondaryCE32(I)I
    .registers 2
    .param p0, "lower32"    # I

    .line 324
    or-int/lit16 v0, p0, 0xc0

    or-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static blacklist primaryFromLongPrimaryCE32(I)J
    .registers 5
    .param p0, "ce32"    # I

    .line 317
    int-to-long v0, p0

    const-wide v2, 0xffffff00L

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist tagFromCE32(I)I
    .registers 2
    .param p0, "ce32"    # I

    .line 344
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method static blacklist unassignedCEFromCodePoint(I)J
    .registers 3
    .param p0, "c"    # I

    .line 591
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->unassignedPrimaryFromCodePoint(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist unassignedPrimaryFromCodePoint(I)J
    .registers 5
    .param p0, "c"    # I

    .line 577
    add-int/lit8 p0, p0, 0x1

    .line 579
    rem-int/lit8 v0, p0, 0x12

    mul-int/lit8 v0, v0, 0xe

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    .line 580
    .local v0, "primary":J
    div-int/lit8 p0, p0, 0x12

    .line 582
    rem-int/lit16 v2, p0, 0xfe

    add-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 583
    div-int/lit16 p0, p0, 0xfe

    .line 585
    rem-int/lit16 v2, p0, 0xfb

    add-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 587
    const-wide v2, 0xfe000000L

    or-long/2addr v2, v0

    return-wide v2
.end method

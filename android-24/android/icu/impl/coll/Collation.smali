.class public final Landroid/icu/impl/coll/Collation;
.super Ljava/lang/Object;
.source "Collation.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final BEFORE_WEIGHT16:I = 0x100

.field static final BUILDER_DATA_TAG:I = 0x7

.field public static final CASE_AND_QUATERNARY_MASK:I = 0xc0c0

.field static final CASE_AND_TERTIARY_MASK:I = 0xff3f

.field public static final CASE_LEVEL:I = 0x3

.field static final CASE_LEVEL_FLAG:I = 0x8

.field public static final CASE_MASK:I = 0xc000

.field static final COMMON_BYTE:I = 0x5

.field static final COMMON_SECONDARY_CE:I = 0x5000000

.field public static final COMMON_SEC_AND_TER_CE:I = 0x5000500

.field static final COMMON_TERTIARY_CE:I = 0x500

.field public static final COMMON_WEIGHT16:I = 0x500

.field static final CONTRACTION_TAG:I = 0x9

.field static final CONTRACT_NEXT_CCC:I = 0x200

.field static final CONTRACT_SINGLE_CP_NO_MATCH:I = 0x100

.field static final CONTRACT_TRAILING_CCC:I = 0x400

.field static final DIGIT_TAG:I = 0xa

.field public static final EQUAL:I = 0x0

.field static final EXPANSION32_TAG:I = 0x5

.field static final EXPANSION_TAG:I = 0x6

.field static final FALLBACK_CE32:I = 0xc0

.field static final FALLBACK_TAG:I = 0x0

.field static final FFFD_CE32:I = -0x2fafb

.field public static final FFFD_PRIMARY:J = 0xfffd0000L

.field static final FIRST_TRAILING_PRIMARY:J = 0xff020200L

.field static final FIRST_UNASSIGNED_PRIMARY:J = 0xfe040200L

.field public static final GREATER:I = 0x1

.field static final HANGUL_NO_SPECIAL_JAMO:I = 0x100

.field static final HANGUL_TAG:I = 0xc

.field public static final IDENTICAL_LEVEL:I = 0x6

.field static final IDENTICAL_LEVEL_FLAG:I = 0x40

.field static final IMPLICIT_TAG:I = 0xf

.field static final LATIN_EXPANSION_TAG:I = 0x4

.field static final LEAD_ALL_FALLBACK:I = 0x100

.field static final LEAD_ALL_UNASSIGNED:I = 0x0

.field static final LEAD_MIXED:I = 0x200

.field static final LEAD_SURROGATE_TAG:I = 0xd

.field static final LEAD_TYPE_MASK:I = 0x300

.field public static final LESS:I = -0x1

.field public static final LEVEL_SEPARATOR_BYTE:I = 0x1

.field static final LONG_PRIMARY_CE32_LOW_BYTE:I = 0xc1

.field static final LONG_PRIMARY_TAG:I = 0x1

.field static final LONG_SECONDARY_TAG:I = 0x2

.field static final MAX_EXPANSION_LENGTH:I = 0x1f

.field static final MAX_INDEX:I = 0x7ffff

.field public static final MAX_PRIMARY:J = 0xffff0000L

.field static final MAX_REGULAR_CE32:I = -0xfafb

.field public static final MERGE_SEPARATOR_BYTE:I = 0x2

.field static final MERGE_SEPARATOR_CE32:I = 0x2000505

.field public static final MERGE_SEPARATOR_PRIMARY:J = 0x2000000L

.field public static final NO_CE:J = 0x101000100L

.field static final NO_CE32:I = 0x1

.field static final NO_CE_PRIMARY:J = 0x1L

.field static final NO_CE_WEIGHT16:I = 0x100

.field public static final NO_LEVEL:I = 0x0

.field static final NO_LEVEL_FLAG:I = 0x1

.field static final OFFSET_TAG:I = 0xe

.field static final ONLY_SEC_TER_MASK:I = -0xc0c1

.field public static final ONLY_TERTIARY_MASK:I = 0x3f3f

.field static final PREFIX_TAG:I = 0x8

.field public static final PRIMARY_COMPRESSION_HIGH_BYTE:I = 0xff

.field public static final PRIMARY_COMPRESSION_LOW_BYTE:I = 0x3

.field public static final PRIMARY_LEVEL:I = 0x1

.field static final PRIMARY_LEVEL_FLAG:I = 0x2

.field public static final QUATERNARY_LEVEL:I = 0x5

.field static final QUATERNARY_LEVEL_FLAG:I = 0x20

.field public static final QUATERNARY_MASK:I = 0xc0

.field static final RESERVED_TAG_3:I = 0x3

.field static final SECONDARY_AND_CASE_MASK:I = -0x4000

.field public static final SECONDARY_LEVEL:I = 0x2

.field static final SECONDARY_LEVEL_FLAG:I = 0x4

.field static final SECONDARY_MASK:I = -0x10000

.field public static final SENTINEL_CP:I = -0x1

.field static final SPECIAL_CE32_LOW_BYTE:I = 0xc0

.field public static final TERMINATOR_BYTE:I = 0x0

.field public static final TERTIARY_LEVEL:I = 0x4

.field static final TERTIARY_LEVEL_FLAG:I = 0x10

.field static final TRAIL_WEIGHT_BYTE:I = 0xff

.field static final U0000_TAG:I = 0xb

.field static final UNASSIGNED_CE32:I = -0x1

.field static final UNASSIGNED_IMPLICIT_BYTE:I = 0xfe

.field public static final ZERO_LEVEL:I = 0x7

.field static final ZERO_LEVEL_FLAG:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/Collation;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/Collation;->-assertionsDisabled:Z

    #@b
    .line 22
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static ce32HasContext(I)Z
    .locals 4
    .param p0, "ce32"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 378
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 379
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@b
    move-result v2

    #@c
    const/16 v3, 0x8

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 380
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@13
    move-result v2

    #@14
    const/16 v3, 0x9

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 378
    :cond_0
    :goto_0
    return v0

    #@19
    :cond_1
    move v0, v1

    #@1a
    .line 380
    goto :goto_0

    #@1b
    :cond_2
    move v0, v1

    #@1c
    .line 378
    goto :goto_0
.end method

.method static ceFromCE32(I)J
    .locals 6
    .param p0, "ce32"    # I

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    const/4 v1, 0x1

    #@3
    .line 429
    and-int/lit16 v0, p0, 0xff

    #@5
    .line 430
    .local v0, "tertiary":I
    const/16 v2, 0xc0

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 432
    const/high16 v1, -0x10000

    #@b
    and-int/2addr v1, p0

    #@c
    int-to-long v2, v1

    #@d
    shl-long/2addr v2, v4

    #@e
    const v1, 0xff00

    #@11
    and-int/2addr v1, p0

    #@12
    int-to-long v4, v1

    #@13
    const/16 v1, 0x10

    #@15
    shl-long/2addr v4, v1

    #@16
    or-long/2addr v2, v4

    #@17
    shl-int/lit8 v1, v0, 0x8

    #@19
    int-to-long v4, v1

    #@1a
    or-long/2addr v2, v4

    #@1b
    return-wide v2

    #@1c
    .line 434
    :cond_0
    sub-int/2addr p0, v0

    #@1d
    .line 435
    and-int/lit8 v2, v0, 0xf

    #@1f
    if-ne v2, v1, :cond_1

    #@21
    .line 437
    int-to-long v2, p0

    #@22
    shl-long/2addr v2, v4

    #@23
    const-wide/32 v4, 0x5000500

    #@26
    or-long/2addr v2, v4

    #@27
    return-wide v2

    #@28
    .line 440
    :cond_1
    sget-boolean v2, Landroid/icu/impl/coll/Collation;->-assertionsDisabled:Z

    #@2a
    if-nez v2, :cond_3

    #@2c
    and-int/lit8 v2, v0, 0xf

    #@2e
    const/4 v3, 0x2

    #@2f
    if-ne v2, v3, :cond_2

    #@31
    :goto_0
    if-nez v1, :cond_3

    #@33
    new-instance v1, Ljava/lang/AssertionError;

    #@35
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@38
    throw v1

    #@39
    :cond_2
    const/4 v1, 0x0

    #@3a
    goto :goto_0

    #@3b
    .line 441
    :cond_3
    int-to-long v2, p0

    #@3c
    const-wide v4, 0xffffffffL

    #@41
    and-long/2addr v2, v4

    #@42
    return-wide v2
.end method

.method static ceFromLongPrimaryCE32(I)J
    .locals 4
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 318
    and-int/lit16 v0, p0, -0x100

    #@2
    int-to-long v0, v0

    #@3
    const/16 v2, 0x20

    #@5
    shl-long/2addr v0, v2

    #@6
    const-wide/32 v2, 0x5000500

    #@9
    or-long/2addr v0, v2

    #@a
    return-wide v0
.end method

.method static ceFromLongSecondaryCE32(I)J
    .locals 4
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 325
    int-to-long v0, p0

    #@1
    const-wide v2, 0xffffff00L

    #@6
    and-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method static ceFromSimpleCE32(I)J
    .locals 5
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 423
    sget-boolean v0, Landroid/icu/impl/coll/Collation;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    and-int/lit16 v0, p0, 0xff

    #@6
    const/16 v1, 0xc0

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    if-nez v0, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0

    #@15
    .line 424
    :cond_1
    const/high16 v0, -0x10000

    #@17
    and-int/2addr v0, p0

    #@18
    int-to-long v0, v0

    #@19
    const/16 v2, 0x20

    #@1b
    shl-long/2addr v0, v2

    #@1c
    const v2, 0xff00

    #@1f
    and-int/2addr v2, p0

    #@20
    int-to-long v2, v2

    #@21
    const/16 v4, 0x10

    #@23
    shl-long/2addr v2, v4

    #@24
    or-long/2addr v0, v2

    #@25
    and-int/lit16 v2, p0, 0xff

    #@27
    shl-int/lit8 v2, v2, 0x8

    #@29
    int-to-long v2, v2

    #@2a
    or-long/2addr v0, v2

    #@2b
    return-wide v0
.end method

.method static decThreeBytePrimaryByOneStep(JZI)J
    .locals 8
    .param p0, "basePrimary"    # J
    .param p2, "isCompressible"    # Z
    .param p3, "step"    # I

    #@0
    .prologue
    const-wide/32 v6, 0x1000000

    #@3
    const/4 v4, 0x2

    #@4
    const/4 v2, 0x0

    #@5
    .line 535
    sget-boolean v3, Landroid/icu/impl/coll/Collation;->-assertionsDisabled:Z

    #@7
    if-nez v3, :cond_1

    #@9
    if-lez p3, :cond_0

    #@b
    const/16 v3, 0x7f

    #@d
    if-gt p3, v3, :cond_0

    #@f
    const/4 v2, 0x1

    #@10
    :cond_0
    if-nez v2, :cond_1

    #@12
    new-instance v2, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v2

    #@18
    .line 536
    :cond_1
    const/16 v2, 0x8

    #@1a
    shr-long v2, p0, v2

    #@1c
    long-to-int v2, v2

    #@1d
    and-int/lit16 v2, v2, 0xff

    #@1f
    sub-int v1, v2, p3

    #@21
    .line 537
    .local v1, "byte3":I
    if-lt v1, v4, :cond_2

    #@23
    .line 538
    const-wide v2, 0xffff0000L

    #@28
    and-long/2addr v2, p0

    #@29
    shl-int/lit8 v4, v1, 0x8

    #@2b
    int-to-long v4, v4

    #@2c
    or-long/2addr v2, v4

    #@2d
    return-wide v2

    #@2e
    .line 540
    :cond_2
    add-int/lit16 v1, v1, 0xfe

    #@30
    .line 543
    const/16 v2, 0x10

    #@32
    shr-long v2, p0, v2

    #@34
    long-to-int v2, v2

    #@35
    and-int/lit16 v2, v2, 0xff

    #@37
    add-int/lit8 v0, v2, -0x1

    #@39
    .line 544
    .local v0, "byte2":I
    if-eqz p2, :cond_4

    #@3b
    .line 545
    const/4 v2, 0x4

    #@3c
    if-ge v0, v2, :cond_3

    #@3e
    .line 546
    const/16 v0, 0xfe

    #@40
    .line 547
    sub-long/2addr p0, v6

    #@41
    .line 556
    :cond_3
    :goto_0
    const-wide v2, 0xff000000L

    #@46
    and-long/2addr v2, p0

    #@47
    shl-int/lit8 v4, v0, 0x10

    #@49
    int-to-long v4, v4

    #@4a
    or-long/2addr v2, v4

    #@4b
    shl-int/lit8 v4, v1, 0x8

    #@4d
    int-to-long v4, v4

    #@4e
    or-long/2addr v2, v4

    #@4f
    return-wide v2

    #@50
    .line 550
    :cond_4
    if-ge v0, v4, :cond_3

    #@52
    .line 551
    const/16 v0, 0xff

    #@54
    .line 552
    sub-long/2addr p0, v6

    #@55
    goto :goto_0
.end method

.method static decTwoBytePrimaryByOneStep(JZI)J
    .locals 6
    .param p0, "basePrimary"    # J
    .param p2, "isCompressible"    # Z
    .param p3, "step"    # I

    #@0
    .prologue
    const-wide/32 v4, 0x1000000

    #@3
    const/4 v1, 0x0

    #@4
    .line 513
    sget-boolean v2, Landroid/icu/impl/coll/Collation;->-assertionsDisabled:Z

    #@6
    if-nez v2, :cond_1

    #@8
    if-lez p3, :cond_0

    #@a
    const/16 v2, 0x7f

    #@c
    if-gt p3, v2, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    :cond_0
    if-nez v1, :cond_1

    #@11
    new-instance v1, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v1

    #@17
    .line 514
    :cond_1
    const/16 v1, 0x10

    #@19
    shr-long v2, p0, v1

    #@1b
    long-to-int v1, v2

    #@1c
    and-int/lit16 v1, v1, 0xff

    #@1e
    sub-int v0, v1, p3

    #@20
    .line 515
    .local v0, "byte2":I
    if-eqz p2, :cond_3

    #@22
    .line 516
    const/4 v1, 0x4

    #@23
    if-ge v0, v1, :cond_2

    #@25
    .line 517
    add-int/lit16 v0, v0, 0xfb

    #@27
    .line 518
    sub-long/2addr p0, v4

    #@28
    .line 526
    :cond_2
    :goto_0
    const-wide v2, 0xff000000L

    #@2d
    and-long/2addr v2, p0

    #@2e
    shl-int/lit8 v1, v0, 0x10

    #@30
    int-to-long v4, v1

    #@31
    or-long/2addr v2, v4

    #@32
    return-wide v2

    #@33
    .line 521
    :cond_3
    const/4 v1, 0x2

    #@34
    if-ge v0, v1, :cond_2

    #@36
    .line 522
    add-int/lit16 v0, v0, 0xfe

    #@38
    .line 523
    sub-long/2addr p0, v4

    #@39
    goto :goto_0
.end method

.method static digitFromCE32(I)C
    .locals 1
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 417
    shr-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    int-to-char v0, v0

    #@5
    return v0
.end method

.method static getThreeBytePrimaryForOffsetData(IJ)J
    .locals 9
    .param p0, "c"    # I
    .param p1, "dataCE"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 563
    const/16 v3, 0x20

    #@3
    ushr-long v4, p1, v3

    #@5
    .line 564
    .local v4, "p":J
    long-to-int v1, p1

    #@6
    .line 565
    .local v1, "lower32":I
    shr-int/lit8 v3, v1, 0x8

    #@8
    sub-int v3, p0, v3

    #@a
    and-int/lit8 v6, v1, 0x7f

    #@c
    mul-int v2, v3, v6

    #@e
    .line 566
    .local v2, "offset":I
    and-int/lit16 v3, v1, 0x80

    #@10
    if-eqz v3, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 567
    .local v0, "isCompressible":Z
    :cond_0
    invoke-static {v4, v5, v0, v2}, Landroid/icu/impl/coll/Collation;->incThreeBytePrimaryByOffset(JZI)J

    #@16
    move-result-wide v6

    #@17
    return-wide v6
.end method

.method static hasCE32Tag(II)Z
    .locals 2
    .param p0, "ce32"    # I
    .param p1, "tag"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 346
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@a
    move-result v1

    #@b
    if-ne v1, p1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static incThreeBytePrimaryByOffset(JZI)J
    .locals 8
    .param p0, "basePrimary"    # J
    .param p2, "isCompressible"    # Z
    .param p3, "offset"    # I

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 487
    const/16 v2, 0x8

    #@4
    shr-long v2, p0, v2

    #@6
    long-to-int v2, v2

    #@7
    and-int/lit16 v2, v2, 0xff

    #@9
    add-int/lit8 v2, v2, -0x2

    #@b
    add-int/2addr p3, v2

    #@c
    .line 488
    rem-int/lit16 v2, p3, 0xfe

    #@e
    add-int/lit8 v2, v2, 0x2

    #@10
    shl-int/lit8 v2, v2, 0x8

    #@12
    int-to-long v0, v2

    #@13
    .line 489
    .local v0, "primary":J
    div-int/lit16 p3, p3, 0xfe

    #@15
    .line 492
    if-eqz p2, :cond_0

    #@17
    .line 493
    shr-long v2, p0, v4

    #@19
    long-to-int v2, v2

    #@1a
    and-int/lit16 v2, v2, 0xff

    #@1c
    add-int/lit8 v2, v2, -0x4

    #@1e
    add-int/2addr p3, v2

    #@1f
    .line 494
    rem-int/lit16 v2, p3, 0xfb

    #@21
    add-int/lit8 v2, v2, 0x4

    #@23
    shl-int/lit8 v2, v2, 0x10

    #@25
    int-to-long v2, v2

    #@26
    or-long/2addr v0, v2

    #@27
    .line 495
    div-int/lit16 p3, p3, 0xfb

    #@29
    .line 502
    :goto_0
    const-wide v2, 0xff000000L

    #@2e
    and-long/2addr v2, p0

    #@2f
    int-to-long v4, p3

    #@30
    const/16 v6, 0x18

    #@32
    shl-long/2addr v4, v6

    #@33
    add-long/2addr v2, v4

    #@34
    or-long/2addr v2, v0

    #@35
    return-wide v2

    #@36
    .line 497
    :cond_0
    shr-long v2, p0, v4

    #@38
    long-to-int v2, v2

    #@39
    and-int/lit16 v2, v2, 0xff

    #@3b
    add-int/lit8 v2, v2, -0x2

    #@3d
    add-int/2addr p3, v2

    #@3e
    .line 498
    rem-int/lit16 v2, p3, 0xfe

    #@40
    add-int/lit8 v2, v2, 0x2

    #@42
    shl-int/lit8 v2, v2, 0x10

    #@44
    int-to-long v2, v2

    #@45
    or-long/2addr v0, v2

    #@46
    .line 499
    div-int/lit16 p3, p3, 0xfe

    #@48
    goto :goto_0
.end method

.method public static incTwoBytePrimaryByOffset(JZI)J
    .locals 8
    .param p0, "basePrimary"    # J
    .param p2, "isCompressible"    # Z
    .param p3, "offset"    # I

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 467
    if-eqz p2, :cond_0

    #@4
    .line 468
    shr-long v2, p0, v2

    #@6
    long-to-int v2, v2

    #@7
    and-int/lit16 v2, v2, 0xff

    #@9
    add-int/lit8 v2, v2, -0x4

    #@b
    add-int/2addr p3, v2

    #@c
    .line 469
    rem-int/lit16 v2, p3, 0xfb

    #@e
    add-int/lit8 v2, v2, 0x4

    #@10
    shl-int/lit8 v2, v2, 0x10

    #@12
    int-to-long v0, v2

    #@13
    .line 470
    .local v0, "primary":J
    div-int/lit16 p3, p3, 0xfb

    #@15
    .line 477
    :goto_0
    const-wide v2, 0xff000000L

    #@1a
    and-long/2addr v2, p0

    #@1b
    int-to-long v4, p3

    #@1c
    const/16 v6, 0x18

    #@1e
    shl-long/2addr v4, v6

    #@1f
    add-long/2addr v2, v4

    #@20
    or-long/2addr v2, v0

    #@21
    return-wide v2

    #@22
    .line 472
    .end local v0    # "primary":J
    :cond_0
    shr-long v2, p0, v2

    #@24
    long-to-int v2, v2

    #@25
    and-int/lit16 v2, v2, 0xff

    #@27
    add-int/lit8 v2, v2, -0x2

    #@29
    add-int/2addr p3, v2

    #@2a
    .line 473
    rem-int/lit16 v2, p3, 0xfe

    #@2c
    add-int/lit8 v2, v2, 0x2

    #@2e
    shl-int/lit8 v2, v2, 0x10

    #@30
    int-to-long v0, v2

    #@31
    .line 474
    .restart local v0    # "primary":J
    div-int/lit16 p3, p3, 0xfe

    #@33
    goto :goto_0
.end method

.method static indexFromCE32(I)I
    .locals 1
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 403
    ushr-int/lit8 v0, p0, 0xd

    #@2
    return v0
.end method

.method static isAssignedCE32(I)Z
    .locals 2
    .param p0, "ce32"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 279
    const/16 v1, 0xc0

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/4 v1, -0x1

    #@6
    if-eq p0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method static isContractionCE32(I)Z
    .locals 1
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 374
    const/16 v0, 0x9

    #@2
    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method static isLongPrimaryCE32(I)Z
    .locals 1
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 350
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method static isPrefixCE32(I)Z
    .locals 1
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 370
    const/16 v0, 0x8

    #@2
    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method static isSelfContainedCE32(I)Z
    .locals 3
    .param p0, "ce32"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 363
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 364
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@a
    move-result v1

    #@b
    if-ne v1, v0, :cond_1

    #@d
    .line 363
    :cond_0
    :goto_0
    return v0

    #@e
    .line 365
    :cond_1
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x2

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 366
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x4

    #@1a
    if-eq v1, v2, :cond_0

    #@1c
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method static isSimpleOrLongCE32(I)Z
    .locals 3
    .param p0, "ce32"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 354
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 355
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@a
    move-result v1

    #@b
    if-ne v1, v0, :cond_1

    #@d
    .line 354
    :cond_0
    :goto_0
    return v0

    #@e
    .line 356
    :cond_1
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x2

    #@13
    if-eq v1, v2, :cond_0

    #@15
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method static isSpecialCE32(I)Z
    .locals 2
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 338
    and-int/lit16 v0, p0, 0xff

    #@2
    const/16 v1, 0xc0

    #@4
    if-lt v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method static latinCE0FromCE32(I)J
    .locals 4
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 388
    const/high16 v0, -0x1000000

    #@2
    and-int/2addr v0, p0

    #@3
    int-to-long v0, v0

    #@4
    const/16 v2, 0x20

    #@6
    shl-long/2addr v0, v2

    #@7
    const-wide/32 v2, 0x5000000

    #@a
    or-long/2addr v0, v2

    #@b
    const/high16 v2, 0xff0000

    #@d
    and-int/2addr v2, p0

    #@e
    shr-int/lit8 v2, v2, 0x8

    #@10
    int-to-long v2, v2

    #@11
    or-long/2addr v0, v2

    #@12
    return-wide v0
.end method

.method static latinCE1FromCE32(I)J
    .locals 4
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 396
    int-to-long v0, p0

    #@1
    const-wide/32 v2, 0xff00

    #@4
    and-long/2addr v0, v2

    #@5
    const/16 v2, 0x10

    #@7
    shl-long/2addr v0, v2

    #@8
    const-wide/16 v2, 0x500

    #@a
    or-long/2addr v0, v2

    #@b
    return-wide v0
.end method

.method static lengthFromCE32(I)I
    .locals 1
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 410
    shr-int/lit8 v0, p0, 0x8

    #@2
    and-int/lit8 v0, v0, 0x1f

    #@4
    return v0
.end method

.method public static makeCE(J)J
    .locals 4
    .param p0, "p"    # J

    #@0
    .prologue
    .line 448
    const/16 v0, 0x20

    #@2
    shl-long v0, p0, v0

    #@4
    const-wide/32 v2, 0x5000500

    #@7
    or-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method static makeCE(JIII)J
    .locals 6
    .param p0, "p"    # J
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "q"    # I

    #@0
    .prologue
    .line 455
    const/16 v0, 0x20

    #@2
    shl-long v0, p0, v0

    #@4
    int-to-long v2, p2

    #@5
    const/16 v4, 0x10

    #@7
    shl-long/2addr v2, v4

    #@8
    or-long/2addr v0, v2

    #@9
    int-to-long v2, p3

    #@a
    or-long/2addr v0, v2

    #@b
    shl-int/lit8 v2, p4, 0x6

    #@d
    int-to-long v2, v2

    #@e
    or-long/2addr v0, v2

    #@f
    return-wide v0
.end method

.method static makeCE32FromTagAndIndex(II)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "index"    # I

    #@0
    .prologue
    .line 334
    shl-int/lit8 v0, p1, 0xd

    #@2
    or-int/lit16 v0, v0, 0xc0

    #@4
    or-int/2addr v0, p0

    #@5
    return v0
.end method

.method static makeCE32FromTagIndexAndLength(III)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "index"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 330
    shl-int/lit8 v0, p1, 0xd

    #@2
    shl-int/lit8 v1, p2, 0x8

    #@4
    or-int/2addr v0, v1

    #@5
    or-int/lit16 v0, v0, 0xc0

    #@7
    or-int/2addr v0, p0

    #@8
    return v0
.end method

.method static makeLongPrimaryCE32(J)I
    .locals 2
    .param p0, "p"    # J

    #@0
    .prologue
    .line 311
    const-wide/16 v0, 0xc1

    #@2
    or-long/2addr v0, p0

    #@3
    long-to-int v0, v0

    #@4
    return v0
.end method

.method static makeLongSecondaryCE32(I)I
    .locals 1
    .param p0, "lower32"    # I

    #@0
    .prologue
    .line 322
    or-int/lit16 v0, p0, 0xc0

    #@2
    or-int/lit8 v0, v0, 0x2

    #@4
    return v0
.end method

.method static primaryFromLongPrimaryCE32(I)J
    .locals 4
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 315
    int-to-long v0, p0

    #@1
    const-wide v2, 0xffffff00L

    #@6
    and-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method static tagFromCE32(I)I
    .locals 1
    .param p0, "ce32"    # I

    #@0
    .prologue
    .line 342
    and-int/lit8 v0, p0, 0xf

    #@2
    return v0
.end method

.method static unassignedCEFromCodePoint(I)J
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    .line 589
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->unassignedPrimaryFromCodePoint(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method static unassignedPrimaryFromCodePoint(I)J
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    .line 575
    add-int/lit8 p0, p0, 0x1

    #@2
    .line 577
    rem-int/lit8 v2, p0, 0x12

    #@4
    mul-int/lit8 v2, v2, 0xe

    #@6
    add-int/lit8 v2, v2, 0x2

    #@8
    int-to-long v0, v2

    #@9
    .line 578
    .local v0, "primary":J
    div-int/lit8 p0, p0, 0x12

    #@b
    .line 580
    rem-int/lit16 v2, p0, 0xfe

    #@d
    add-int/lit8 v2, v2, 0x2

    #@f
    shl-int/lit8 v2, v2, 0x8

    #@11
    int-to-long v2, v2

    #@12
    or-long/2addr v0, v2

    #@13
    .line 581
    div-int/lit16 p0, p0, 0xfe

    #@15
    .line 583
    rem-int/lit16 v2, p0, 0xfb

    #@17
    add-int/lit8 v2, v2, 0x4

    #@19
    shl-int/lit8 v2, v2, 0x10

    #@1b
    int-to-long v2, v2

    #@1c
    or-long/2addr v0, v2

    #@1d
    .line 585
    const-wide v2, 0xfe000000L

    #@22
    or-long/2addr v2, v0

    #@23
    return-wide v2
.end method

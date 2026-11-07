.class public final Landroid/icu/impl/coll/CollationRootElements;
.super Ljava/lang/Object;
.source "CollationRootElements.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist IX_COMMON_SEC_AND_TER_CE:I = 0x3

.field static final blacklist IX_COUNT:I = 0x5

.field static final blacklist IX_FIRST_PRIMARY_INDEX:I = 0x2

.field static final blacklist IX_FIRST_SECONDARY_INDEX:I = 0x1

.field public static final blacklist IX_FIRST_TERTIARY_INDEX:I = 0x0

.field static final blacklist IX_SEC_TER_BOUNDARIES:I = 0x4

.field public static final blacklist PRIMARY_SENTINEL:J = 0xffffff00L

.field public static final blacklist PRIMARY_STEP_MASK:I = 0x7f

.field public static final blacklist SEC_TER_DELTA_FLAG:I = 0x80


# instance fields
.field private blacklist elements:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 25
    return-void
.end method

.method public constructor blacklist <init>([J)V
    .registers 2
    .param p1, "rootElements"    # [J

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    .line 28
    return-void
.end method

.method private blacklist findP(J)I
    .registers 16
    .param p1, "p"    # J

    .line 448
    nop

    .line 450
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    long-to-int v0, v0

    .line 451
    .local v0, "start":I
    nop

    .line 452
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 453
    .local v1, "limit":I
    nop

    .line 454
    nop

    .line 455
    :goto_f
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_6a

    .line 458
    int-to-long v2, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 459
    .local v2, "i":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v3, v2

    .line 460
    .local v3, "q":J
    const-wide/16 v5, 0x80

    and-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5c

    .line 462
    add-int/lit8 v7, v2, 0x1

    .line 464
    .local v7, "j":I
    :goto_2a
    if-ne v7, v1, :cond_2d

    goto :goto_39

    .line 465
    :cond_2d
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v8, v7

    .line 466
    and-long v11, v3, v5

    cmp-long v8, v11, v9

    if-nez v8, :cond_59

    .line 467
    move v2, v7

    .line 468
    nop

    .line 472
    :goto_39
    and-long v11, v3, v5

    cmp-long v8, v11, v9

    if-eqz v8, :cond_5c

    .line 474
    add-int/lit8 v7, v2, -0x1

    .line 476
    :goto_41
    if-ne v7, v0, :cond_44

    goto :goto_50

    .line 477
    :cond_44
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v8, v7

    .line 478
    and-long v11, v3, v5

    cmp-long v8, v11, v9

    if-nez v8, :cond_56

    .line 479
    move v2, v7

    .line 480
    nop

    .line 484
    :goto_50
    and-long/2addr v5, v3

    cmp-long v5, v5, v9

    if-eqz v5, :cond_5c

    .line 486
    goto :goto_6a

    .line 482
    :cond_56
    add-int/lit8 v7, v7, -0x1

    goto :goto_41

    .line 470
    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 490
    .end local v7    # "j":I
    :cond_5c
    const-wide v5, 0xffffff00L

    and-long/2addr v5, v3

    cmp-long v5, p1, v5

    if-gez v5, :cond_68

    .line 491
    move v1, v2

    goto :goto_69

    .line 493
    :cond_68
    move v0, v2

    .line 495
    .end local v2    # "i":I
    .end local v3    # "q":J
    :goto_69
    goto :goto_f

    .line 496
    :cond_6a
    :goto_6a
    return v0
.end method

.method private blacklist getFirstSecTerForPrimary(I)J
    .registers 9
    .param p1, "index"    # I

    .line 426
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v0, v0, p1

    .line 427
    .local v0, "secTer":J
    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/32 v3, 0x5000500

    if-nez v2, :cond_11

    .line 429
    return-wide v3

    .line 431
    :cond_11
    const-wide/16 v5, -0x81

    and-long/2addr v0, v5

    .line 432
    cmp-long v2, v0, v3

    if-lez v2, :cond_19

    .line 434
    return-wide v3

    .line 437
    :cond_19
    return-wide v0
.end method

.method private static blacklist isEndOfPrimaryRange(J)Z
    .registers 6
    .param p0, "q"    # J

    .line 500
    const-wide/16 v0, 0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const-wide/16 v0, 0x7f

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method blacklist findPrimary(J)I
    .registers 4
    .param p1, "p"    # J

    .line 310
    nop

    .line 311
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    move-result v0

    .line 315
    .local v0, "index":I
    nop

    .line 316
    return v0
.end method

.method blacklist firstCEWithPrimaryAtLeast(J)J
    .registers 10
    .param p1, "p"    # J

    .line 200
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-wide v0

    .line 201
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    move-result v2

    .line 202
    .local v2, "index":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v3, v2

    const-wide v5, 0xffffff00L

    and-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-eqz v3, :cond_27

    .line 204
    :cond_19
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v2, v2, 0x1

    aget-wide p1, v3, v2

    .line 205
    const-wide/16 v3, 0x80

    and-long/2addr v3, p1

    cmp-long v3, v3, v0

    if-nez v3, :cond_19

    .line 207
    nop

    .line 213
    :cond_27
    const/16 v0, 0x20

    shl-long v0, p1, v0

    const-wide/32 v3, 0x5000500

    or-long/2addr v0, v3

    return-wide v0
.end method

.method blacklist getFirstPrimary()J
    .registers 4

    .line 136
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v2, 0x2

    aget-wide v1, v1, v2

    long-to-int v1, v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method blacklist getFirstPrimaryCE()J
    .registers 3

    .line 143
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getFirstPrimary()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getFirstSecondaryCE()J
    .registers 5

    .line 122
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    long-to-int v1, v1

    aget-wide v0, v0, v1

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getFirstTertiaryCE()J
    .registers 5

    .line 90
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    long-to-int v1, v1

    aget-wide v0, v0, v1

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getLastCommonSecondary()I
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    long-to-int v0, v0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v0, v1

    return v0
.end method

.method blacklist getLastSecondaryCE()J
    .registers 5

    .line 129
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v2, 0x2

    aget-wide v1, v1, v2

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getLastTertiaryCE()J
    .registers 6

    .line 97
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    long-to-int v1, v3

    sub-int/2addr v1, v2

    aget-wide v0, v0, v1

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getPrimaryAfter(JIZ)J
    .registers 13
    .param p1, "p"    # J
    .param p3, "index"    # I
    .param p4, "isCompressible"    # Z

    .line 324
    nop

    .line 325
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 p3, p3, 0x1

    aget-wide v0, v0, p3

    .line 327
    .local v0, "q":J
    const-wide/16 v2, 0x80

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_29

    long-to-int v4, v0

    and-int/lit8 v4, v4, 0x7f

    move v5, v4

    .local v5, "step":I
    if-eqz v4, :cond_29

    .line 329
    const-wide/32 v2, 0xffff

    and-long/2addr v2, p1

    cmp-long v2, v2, v6

    if-nez v2, :cond_24

    .line 330
    invoke-static {p1, p2, p4, v5}, Landroid/icu/impl/coll/Collation;->incTwoBytePrimaryByOffset(JZI)J

    move-result-wide v2

    return-wide v2

    .line 332
    :cond_24
    invoke-static {p1, p2, p4, v5}, Landroid/icu/impl/coll/Collation;->incThreeBytePrimaryByOffset(JZI)J

    move-result-wide v2

    return-wide v2

    .line 336
    .end local v5    # "step":I
    :cond_29
    :goto_29
    and-long v4, v0, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_36

    .line 337
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 p3, p3, 0x1

    aget-wide v0, v4, p3

    goto :goto_29

    .line 339
    :cond_36
    nop

    .line 340
    return-wide v0
.end method

.method blacklist getPrimaryBefore(JZ)J
    .registers 14
    .param p1, "p"    # J
    .param p3, "isCompressible"    # Z

    .line 221
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v0

    .line 223
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v1, v1, v0

    .line 224
    .local v1, "q":J
    const-wide v3, 0xffffff00L

    and-long v5, v1, v3

    cmp-long v5, p1, v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_29

    .line 227
    long-to-int v5, v1

    and-int/lit8 v5, v5, 0x7f

    .line 228
    .local v5, "step":I
    if-nez v5, :cond_33

    .line 231
    :cond_1a
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide p1, v8, v0

    .line 232
    const-wide/16 v8, 0x80

    and-long/2addr v8, p1

    cmp-long v8, v8, v6

    if-nez v8, :cond_1a

    .line 233
    and-long/2addr v3, p1

    return-wide v3

    .line 237
    .end local v5    # "step":I
    :cond_29
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v4, v0, 0x1

    aget-wide v3, v3, v4

    .line 238
    .local v3, "nextElement":J
    nop

    .line 239
    long-to-int v5, v3

    and-int/lit8 v5, v5, 0x7f

    .line 242
    .end local v3    # "nextElement":J
    .restart local v5    # "step":I
    :cond_33
    const-wide/32 v3, 0xffff

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-nez v3, :cond_40

    .line 243
    invoke-static {p1, p2, p3, v5}, Landroid/icu/impl/coll/Collation;->decTwoBytePrimaryByOneStep(JZI)J

    move-result-wide v3

    return-wide v3

    .line 245
    :cond_40
    invoke-static {p1, p2, p3, v5}, Landroid/icu/impl/coll/Collation;->decThreeBytePrimaryByOneStep(JZI)J

    move-result-wide v3

    return-wide v3
.end method

.method blacklist getSecondaryAfter(II)I
    .registers 11
    .param p1, "index"    # I
    .param p2, "s"    # I

    .line 356
    if-nez p1, :cond_10

    .line 358
    nop

    .line 359
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    long-to-int p1, v0

    .line 360
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v0, v0, p1

    .line 362
    .local v0, "secTer":J
    const/high16 v2, 0x10000

    .local v2, "secLimit":I
    goto :goto_1b

    .line 364
    .end local v0    # "secTer":J
    .end local v2    # "secLimit":I
    :cond_10
    nop

    .line 365
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v0

    .line 368
    .restart local v0    # "secTer":J
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    move-result v2

    .line 371
    .restart local v2    # "secLimit":I
    :goto_1b
    const/16 v3, 0x10

    shr-long v3, v0, v3

    long-to-int v3, v3

    .line 372
    .local v3, "sec":I
    if-le v3, p2, :cond_23

    return v3

    .line 373
    :cond_23
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 p1, p1, 0x1

    aget-wide v0, v4, p1

    .line 374
    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_33

    return v2

    .line 375
    .end local v3    # "sec":I
    :cond_33
    goto :goto_1b
.end method

.method blacklist getSecondaryBefore(JI)I
    .registers 12
    .param p1, "p"    # J
    .param p3, "s"    # I

    .line 253
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-nez v0, :cond_16

    .line 254
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v2, v0, v2

    long-to-int v0, v2

    .line 256
    .local v0, "index":I
    const/4 v2, 0x0

    .line 257
    .local v2, "previousSec":I
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v3, v0

    shr-long/2addr v3, v1

    long-to-int v3, v3

    .local v3, "sec":I
    goto :goto_23

    .line 259
    .end local v0    # "index":I
    .end local v2    # "previousSec":I
    .end local v3    # "sec":I
    :cond_16
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v0

    add-int/2addr v0, v2

    .line 260
    .restart local v0    # "index":I
    const/16 v2, 0x100

    .line 261
    .restart local v2    # "previousSec":I
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v3

    long-to-int v3, v3

    ushr-int/2addr v3, v1

    .line 263
    .restart local v3    # "sec":I
    :goto_23
    nop

    .line 264
    :goto_24
    if-le p3, v3, :cond_32

    .line 265
    move v2, v3

    .line 266
    nop

    .line 267
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "index":I
    .local v5, "index":I
    aget-wide v6, v4, v0

    shr-long/2addr v6, v1

    long-to-int v3, v6

    move v0, v5

    goto :goto_24

    .line 269
    .end local v5    # "index":I
    .restart local v0    # "index":I
    :cond_32
    nop

    .line 270
    return v2
.end method

.method public blacklist getSecondaryBoundary()I
    .registers 3

    .line 115
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    long-to-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    return v0
.end method

.method blacklist getTertiaryAfter(III)I
    .registers 16
    .param p1, "index"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I

    .line 390
    const-wide/16 v0, -0x81

    if-nez p1, :cond_20

    .line 392
    if-nez p2, :cond_10

    .line 393
    nop

    .line 394
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    long-to-int p1, v2

    .line 396
    const/16 v2, 0x4000

    .local v2, "terLimit":I
    goto :goto_1a

    .line 398
    .end local v2    # "terLimit":I
    :cond_10
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    long-to-int p1, v2

    .line 400
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v2

    .line 402
    .restart local v2    # "terLimit":I
    :goto_1a
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v3, p1

    and-long/2addr v3, v0

    .local v3, "secTer":J
    goto :goto_2b

    .line 404
    .end local v2    # "terLimit":I
    .end local v3    # "secTer":J
    :cond_20
    nop

    .line 405
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v3

    .line 407
    .restart local v3    # "secTer":J
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v2

    .line 409
    .restart local v2    # "terLimit":I
    :goto_2b
    int-to-long v5, p2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    int-to-long v8, p3

    or-long/2addr v5, v8

    .line 411
    .local v5, "st":J
    :goto_37
    cmp-long v8, v3, v5

    if-lez v8, :cond_42

    .line 412
    nop

    .line 413
    long-to-int v0, v3

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0

    .line 415
    :cond_42
    iget-object v8, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 p1, p1, 0x1

    aget-wide v3, v8, p1

    .line 417
    const-wide/16 v8, 0x80

    and-long/2addr v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5b

    shr-long v8, v3, v7

    int-to-long v10, p2

    cmp-long v8, v8, v10

    if-lez v8, :cond_59

    goto :goto_5b

    .line 418
    :cond_59
    and-long/2addr v3, v0

    goto :goto_37

    .line 417
    :cond_5b
    :goto_5b
    return v2
.end method

.method blacklist getTertiaryBefore(JII)I
    .registers 21
    .param p1, "p"    # J
    .param p3, "s"    # I
    .param p4, "t"    # I

    .line 275
    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 279
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    const-wide/16 v3, -0x81

    const/4 v5, 0x1

    if-nez v2, :cond_24

    .line 280
    if-nez v1, :cond_17

    .line 281
    iget-object v2, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v5, 0x0

    aget-wide v5, v2, v5

    long-to-int v2, v5

    .line 283
    .local v2, "index":I
    const/4 v5, 0x0

    .local v5, "previousTer":I
    goto :goto_1e

    .line 285
    .end local v2    # "index":I
    .end local v5    # "previousTer":I
    :cond_17
    iget-object v2, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v5, v2, v5

    long-to-int v2, v5

    .line 286
    .restart local v2    # "index":I
    const/16 v5, 0x100

    .line 288
    .restart local v5    # "previousTer":I
    :goto_1e
    iget-object v6, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v6, v6, v2

    and-long/2addr v6, v3

    .local v6, "secTer":J
    goto :goto_2f

    .line 290
    .end local v2    # "index":I
    .end local v5    # "previousTer":I
    .end local v6    # "secTer":J
    :cond_24
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v2

    add-int/2addr v2, v5

    .line 291
    .restart local v2    # "index":I
    const/16 v5, 0x100

    .line 292
    .restart local v5    # "previousTer":I
    invoke-direct {v0, v2}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v6

    .line 294
    .restart local v6    # "secTer":J
    :goto_2f
    int-to-long v8, v1

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    move/from16 v11, p4

    int-to-long v12, v11

    or-long/2addr v8, v12

    .line 295
    .local v8, "st":J
    :goto_37
    cmp-long v12, v8, v6

    if-lez v12, :cond_4c

    .line 296
    shr-long v12, v6, v10

    long-to-int v12, v12

    if-ne v12, v1, :cond_41

    long-to-int v5, v6

    .line 297
    :cond_41
    nop

    .line 298
    iget-object v12, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v13, v2, 0x1

    .end local v2    # "index":I
    .local v13, "index":I
    aget-wide v14, v12, v2

    and-long v6, v14, v3

    move v2, v13

    goto :goto_37

    .line 300
    .end local v13    # "index":I
    .restart local v2    # "index":I
    :cond_4c
    nop

    .line 301
    const v3, 0xffff

    and-int/2addr v3, v5

    return v3
.end method

.method public blacklist getTertiaryBoundary()I
    .registers 3

    .line 83
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    long-to-int v0, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    return v0
.end method

.method blacklist lastCEWithPrimaryBefore(J)J
    .registers 20
    .param p1, "p"    # J

    .line 151
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_9

    return-wide v1

    .line 152
    :cond_9
    nop

    .line 153
    invoke-direct/range {p0 .. p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    move-result v3

    .line 154
    .local v3, "index":I
    iget-object v4, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, v4, v3

    .line 156
    .local v4, "q":J
    const-wide v6, 0xffffff00L

    and-long v8, v4, v6

    cmp-long v8, p1, v8

    const-wide/16 v9, 0x80

    if-nez v8, :cond_46

    .line 159
    nop

    .line 160
    iget-object v8, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v11, v3, -0x1

    aget-wide v11, v8, v11

    .line 161
    .local v11, "secTer":J
    and-long v13, v11, v9

    cmp-long v8, v13, v1

    if-nez v8, :cond_32

    .line 163
    and-long v1, v11, v6

    .line 164
    .end local p1    # "p":J
    .local v1, "p":J
    const-wide/32 v11, 0x5000500

    goto :goto_58

    .line 167
    .end local v1    # "p":J
    .restart local p1    # "p":J
    :cond_32
    add-int/lit8 v3, v3, -0x2

    move-wide/from16 v13, p1

    .line 169
    .end local p1    # "p":J
    .local v13, "p":J
    :goto_36
    iget-object v8, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v13, v8, v3

    .line 170
    and-long v15, v13, v9

    cmp-long v8, v15, v1

    if-nez v8, :cond_43

    .line 171
    and-long v1, v13, v6

    .line 172
    .end local v13    # "p":J
    .restart local v1    # "p":J
    goto :goto_58

    .line 174
    .end local v1    # "p":J
    .restart local v13    # "p":J
    :cond_43
    add-int/lit8 v3, v3, -0x1

    goto :goto_36

    .line 180
    .end local v11    # "secTer":J
    .end local v13    # "p":J
    .restart local p1    # "p":J
    :cond_46
    and-long/2addr v6, v4

    .line 181
    .end local p1    # "p":J
    .local v6, "p":J
    const-wide/32 v11, 0x5000500

    .line 183
    .restart local v11    # "secTer":J
    :goto_4a
    iget-object v8, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v3, v3, 0x1

    aget-wide v4, v8, v3

    .line 184
    and-long v13, v4, v9

    cmp-long v8, v13, v1

    if-nez v8, :cond_61

    .line 186
    nop

    .line 192
    move-wide v1, v6

    .end local v6    # "p":J
    .restart local v1    # "p":J
    :goto_58
    const/16 v6, 0x20

    shl-long v6, v1, v6

    const-wide/16 v8, -0x81

    and-long/2addr v8, v11

    or-long/2addr v6, v8

    return-wide v6

    .line 189
    .end local v1    # "p":J
    .restart local v6    # "p":J
    :cond_61
    move-wide v11, v4

    goto :goto_4a
.end method

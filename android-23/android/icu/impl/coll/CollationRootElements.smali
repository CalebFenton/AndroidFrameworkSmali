.class public final Landroid/icu/impl/coll/CollationRootElements;
.super Ljava/lang/Object;
.source "CollationRootElements.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final IX_COMMON_SEC_AND_TER_CE:I = 0x3

.field static final IX_COUNT:I = 0x5

.field static final IX_FIRST_PRIMARY_INDEX:I = 0x2

.field static final IX_FIRST_SECONDARY_INDEX:I = 0x1

.field public static final IX_FIRST_TERTIARY_INDEX:I = 0x0

.field static final IX_SEC_TER_BOUNDARIES:I = 0x4

.field public static final PRIMARY_SENTINEL:J = 0xffffff00L

.field public static final PRIMARY_STEP_MASK:I = 0x7f

.field public static final SEC_TER_DELTA_FLAG:I = 0x80


# instance fields
.field private elements:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationRootElements;

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
    sput-boolean v0, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@b
    .line 21
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>([J)V
    .locals 0
    .param p1, "rootElements"    # [J

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@5
    .line 22
    return-void
.end method

.method private findP(J)I
    .locals 11
    .param p1, "p"    # J

    #@0
    .prologue
    .line 444
    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@2
    if-nez v6, :cond_1

    #@4
    const/16 v6, 0x18

    #@6
    shr-long v6, p1, v6

    #@8
    const-wide/16 v8, 0xfe

    #@a
    cmp-long v6, v6, v8

    #@c
    if-eqz v6, :cond_0

    #@e
    const/4 v6, 0x1

    #@f
    :goto_0
    if-nez v6, :cond_1

    #@11
    new-instance v6, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v6

    #@17
    :cond_0
    const/4 v6, 0x0

    #@18
    goto :goto_0

    #@19
    .line 446
    :cond_1
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@1b
    const/4 v7, 0x2

    #@1c
    aget-wide v6, v6, v7

    #@1e
    long-to-int v3, v6

    #@1f
    .line 447
    .local v3, "start":I
    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@21
    if-nez v6, :cond_3

    #@23
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@25
    aget-wide v6, v6, v3

    #@27
    cmp-long v6, p1, v6

    #@29
    if-ltz v6, :cond_2

    #@2b
    const/4 v6, 0x1

    #@2c
    :goto_1
    if-nez v6, :cond_3

    #@2e
    new-instance v6, Ljava/lang/AssertionError;

    #@30
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@33
    throw v6

    #@34
    :cond_2
    const/4 v6, 0x0

    #@35
    goto :goto_1

    #@36
    .line 448
    :cond_3
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@38
    array-length v6, v6

    #@39
    add-int/lit8 v2, v6, -0x1

    #@3b
    .line 449
    .local v2, "limit":I
    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@3d
    if-nez v6, :cond_5

    #@3f
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@41
    aget-wide v6, v6, v2

    #@43
    const-wide v8, 0xffffff00L

    #@48
    cmp-long v6, v6, v8

    #@4a
    if-ltz v6, :cond_4

    #@4c
    const/4 v6, 0x1

    #@4d
    :goto_2
    if-nez v6, :cond_5

    #@4f
    new-instance v6, Ljava/lang/AssertionError;

    #@51
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@54
    throw v6

    #@55
    :cond_4
    const/4 v6, 0x0

    #@56
    goto :goto_2

    #@57
    .line 450
    :cond_5
    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@59
    if-nez v6, :cond_8

    #@5b
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@5d
    aget-wide v6, v6, v2

    #@5f
    cmp-long v6, p1, v6

    #@61
    if-gez v6, :cond_6

    #@63
    const/4 v6, 0x1

    #@64
    :goto_3
    if-nez v6, :cond_8

    #@66
    new-instance v6, Ljava/lang/AssertionError;

    #@68
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@6b
    throw v6

    #@6c
    :cond_6
    const/4 v6, 0x0

    #@6d
    goto :goto_3

    #@6e
    .line 486
    .local v0, "i":I
    .local v4, "q":J
    :cond_7
    const-wide v6, 0xffffff00L

    #@73
    and-long/2addr v6, v4

    #@74
    cmp-long v6, p1, v6

    #@76
    if-gez v6, :cond_e

    #@78
    .line 487
    move v2, v0

    #@79
    .line 451
    .end local v0    # "i":I
    .end local v4    # "q":J
    :cond_8
    :goto_4
    add-int/lit8 v6, v3, 0x1

    #@7b
    if-ge v6, v2, :cond_9

    #@7d
    .line 454
    add-int v6, v3, v2

    #@7f
    div-int/lit8 v0, v6, 0x2

    #@81
    .line 455
    .restart local v0    # "i":I
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@83
    aget-wide v4, v6, v0

    #@85
    .line 456
    .restart local v4    # "q":J
    const-wide/16 v6, 0x80

    #@87
    and-long/2addr v6, v4

    #@88
    const-wide/16 v8, 0x0

    #@8a
    cmp-long v6, v6, v8

    #@8c
    if-eqz v6, :cond_7

    #@8e
    .line 458
    add-int/lit8 v1, v0, 0x1

    #@90
    .line 460
    .local v1, "j":I
    :goto_5
    if-ne v1, v2, :cond_a

    #@92
    .line 468
    :goto_6
    const-wide/16 v6, 0x80

    #@94
    and-long/2addr v6, v4

    #@95
    const-wide/16 v8, 0x0

    #@97
    cmp-long v6, v6, v8

    #@99
    if-eqz v6, :cond_7

    #@9b
    .line 470
    add-int/lit8 v1, v0, -0x1

    #@9d
    .line 472
    :goto_7
    if-ne v1, v3, :cond_c

    #@9f
    .line 480
    :goto_8
    const-wide/16 v6, 0x80

    #@a1
    and-long/2addr v6, v4

    #@a2
    const-wide/16 v8, 0x0

    #@a4
    cmp-long v6, v6, v8

    #@a6
    if-eqz v6, :cond_7

    #@a8
    .line 492
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v4    # "q":J
    :cond_9
    return v3

    #@a9
    .line 461
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v4    # "q":J
    :cond_a
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@ab
    aget-wide v4, v6, v1

    #@ad
    .line 462
    const-wide/16 v6, 0x80

    #@af
    and-long/2addr v6, v4

    #@b0
    const-wide/16 v8, 0x0

    #@b2
    cmp-long v6, v6, v8

    #@b4
    if-nez v6, :cond_b

    #@b6
    .line 463
    move v0, v1

    #@b7
    .line 464
    goto :goto_6

    #@b8
    .line 466
    :cond_b
    add-int/lit8 v1, v1, 0x1

    #@ba
    goto :goto_5

    #@bb
    .line 473
    :cond_c
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@bd
    aget-wide v4, v6, v1

    #@bf
    .line 474
    const-wide/16 v6, 0x80

    #@c1
    and-long/2addr v6, v4

    #@c2
    const-wide/16 v8, 0x0

    #@c4
    cmp-long v6, v6, v8

    #@c6
    if-nez v6, :cond_d

    #@c8
    .line 475
    move v0, v1

    #@c9
    .line 476
    goto :goto_8

    #@ca
    .line 478
    :cond_d
    add-int/lit8 v1, v1, -0x1

    #@cc
    goto :goto_7

    #@cd
    .line 489
    .end local v1    # "j":I
    :cond_e
    move v3, v0

    #@ce
    goto :goto_4
.end method

.method private getFirstSecTerForPrimary(I)J
    .locals 8
    .param p1, "index"    # I

    #@0
    .prologue
    const-wide/32 v6, 0x5000500

    #@3
    .line 422
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@5
    aget-wide v0, v2, p1

    #@7
    .line 423
    .local v0, "secTer":J
    const-wide/16 v2, 0x80

    #@9
    and-long/2addr v2, v0

    #@a
    const-wide/16 v4, 0x0

    #@c
    cmp-long v2, v2, v4

    #@e
    if-nez v2, :cond_0

    #@10
    .line 425
    return-wide v6

    #@11
    .line 427
    :cond_0
    const-wide/16 v2, -0x81

    #@13
    and-long/2addr v0, v2

    #@14
    .line 428
    cmp-long v2, v0, v6

    #@16
    if-lez v2, :cond_1

    #@18
    .line 430
    return-wide v6

    #@19
    .line 433
    :cond_1
    return-wide v0
.end method

.method private static isEndOfPrimaryRange(J)Z
    .locals 6
    .param p0, "q"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 496
    const-wide/16 v2, 0x80

    #@5
    and-long/2addr v2, p0

    #@6
    cmp-long v1, v2, v4

    #@8
    if-nez v1, :cond_0

    #@a
    const-wide/16 v2, 0x7f

    #@c
    and-long/2addr v2, p0

    #@d
    cmp-long v1, v2, v4

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method


# virtual methods
.method findPrimary(J)I
    .locals 9
    .param p1, "p"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 306
    sget-boolean v3, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    const-wide/16 v4, 0xff

    #@8
    and-long/2addr v4, p1

    #@9
    const-wide/16 v6, 0x0

    #@b
    cmp-long v3, v4, v6

    #@d
    if-nez v3, :cond_0

    #@f
    move v3, v1

    #@10
    :goto_0
    if-nez v3, :cond_1

    #@12
    new-instance v1, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v1

    #@18
    :cond_0
    move v3, v2

    #@19
    goto :goto_0

    #@1a
    .line 307
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    #@1d
    move-result v0

    #@1e
    .line 311
    .local v0, "index":I
    sget-boolean v3, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@20
    if-nez v3, :cond_4

    #@22
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@24
    add-int/lit8 v4, v0, 0x1

    #@26
    aget-wide v4, v3, v4

    #@28
    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationRootElements;->isEndOfPrimaryRange(J)Z

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_2

    #@2e
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@30
    aget-wide v4, v3, v0

    #@32
    const-wide v6, 0xffffff00L

    #@37
    and-long/2addr v4, v6

    #@38
    cmp-long v3, p1, v4

    #@3a
    if-nez v3, :cond_3

    #@3c
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    #@3e
    new-instance v1, Ljava/lang/AssertionError;

    #@40
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@43
    throw v1

    #@44
    :cond_3
    move v1, v2

    #@45
    goto :goto_1

    #@46
    .line 312
    :cond_4
    return v0
.end method

.method firstCEWithPrimaryAtLeast(J)J
    .locals 9
    .param p1, "p"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 196
    cmp-long v1, p1, v6

    #@4
    if-nez v1, :cond_0

    #@6
    return-wide v6

    #@7
    .line 197
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    #@a
    move-result v0

    #@b
    .line 198
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@d
    aget-wide v2, v1, v0

    #@f
    const-wide v4, 0xffffff00L

    #@14
    and-long/2addr v2, v4

    #@15
    cmp-long v1, p1, v2

    #@17
    if-eqz v1, :cond_3

    #@19
    .line 200
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    aget-wide p1, v1, v0

    #@1f
    .line 201
    const-wide/16 v2, 0x80

    #@21
    and-long/2addr v2, p1

    #@22
    cmp-long v1, v2, v6

    #@24
    if-nez v1, :cond_1

    #@26
    .line 203
    sget-boolean v1, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@28
    if-nez v1, :cond_3

    #@2a
    const-wide/16 v2, 0x7f

    #@2c
    and-long/2addr v2, p1

    #@2d
    cmp-long v1, v2, v6

    #@2f
    if-nez v1, :cond_2

    #@31
    const/4 v1, 0x1

    #@32
    :goto_0
    if-nez v1, :cond_3

    #@34
    new-instance v1, Ljava/lang/AssertionError;

    #@36
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@39
    throw v1

    #@3a
    :cond_2
    const/4 v1, 0x0

    #@3b
    goto :goto_0

    #@3c
    .line 209
    :cond_3
    const/16 v1, 0x20

    #@3e
    shl-long v2, p1, v1

    #@40
    const-wide/32 v4, 0x5000500

    #@43
    or-long/2addr v2, v4

    #@44
    return-wide v2
.end method

.method getFirstPrimary()J
    .locals 4

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@4
    const/4 v2, 0x2

    #@5
    aget-wide v2, v1, v2

    #@7
    long-to-int v1, v2

    #@8
    aget-wide v0, v0, v1

    #@a
    return-wide v0
.end method

.method getFirstPrimaryCE()J
    .locals 2

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getFirstPrimary()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method getFirstSecondaryCE()J
    .locals 4

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@4
    const/4 v2, 0x1

    #@5
    aget-wide v2, v1, v2

    #@7
    long-to-int v1, v2

    #@8
    aget-wide v0, v0, v1

    #@a
    const-wide/16 v2, -0x81

    #@c
    and-long/2addr v0, v2

    #@d
    return-wide v0
.end method

.method getFirstTertiaryCE()J
    .locals 4

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@4
    const/4 v2, 0x0

    #@5
    aget-wide v2, v1, v2

    #@7
    long-to-int v1, v2

    #@8
    aget-wide v0, v0, v1

    #@a
    const-wide/16 v2, -0x81

    #@c
    and-long/2addr v0, v2

    #@d
    return-wide v0
.end method

.method public getLastCommonSecondary()I
    .locals 2

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@2
    const/4 v1, 0x4

    #@3
    aget-wide v0, v0, v1

    #@5
    long-to-int v0, v0

    #@6
    shr-int/lit8 v0, v0, 0x10

    #@8
    const v1, 0xff00

    #@b
    and-int/2addr v0, v1

    #@c
    return v0
.end method

.method getLastSecondaryCE()J
    .locals 4

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@4
    const/4 v2, 0x2

    #@5
    aget-wide v2, v1, v2

    #@7
    long-to-int v1, v2

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    aget-wide v0, v0, v1

    #@c
    const-wide/16 v2, -0x81

    #@e
    and-long/2addr v0, v2

    #@f
    return-wide v0
.end method

.method getLastTertiaryCE()J
    .locals 4

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@4
    const/4 v2, 0x1

    #@5
    aget-wide v2, v1, v2

    #@7
    long-to-int v1, v2

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    aget-wide v0, v0, v1

    #@c
    const-wide/16 v2, -0x81

    #@e
    and-long/2addr v0, v2

    #@f
    return-wide v0
.end method

.method getPrimaryAfter(JIZ)J
    .locals 9
    .param p1, "p"    # J
    .param p3, "index"    # I
    .param p4, "isCompressible"    # Z

    #@0
    .prologue
    .line 320
    sget-boolean v3, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@2
    if-nez v3, :cond_1

    #@4
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@6
    aget-wide v4, v3, p3

    #@8
    const-wide v6, 0xffffff00L

    #@d
    and-long/2addr v4, v6

    #@e
    cmp-long v3, p1, v4

    #@10
    if-eqz v3, :cond_0

    #@12
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@14
    add-int/lit8 v4, p3, 0x1

    #@16
    aget-wide v4, v3, v4

    #@18
    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationRootElements;->isEndOfPrimaryRange(J)Z

    #@1b
    move-result v3

    #@1c
    :goto_0
    if-nez v3, :cond_1

    #@1e
    new-instance v3, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@23
    throw v3

    #@24
    :cond_0
    const/4 v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 321
    :cond_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@28
    add-int/lit8 p3, p3, 0x1

    #@2a
    aget-wide v0, v3, p3

    #@2c
    .line 323
    .local v0, "q":J
    const-wide/16 v4, 0x80

    #@2e
    and-long/2addr v4, v0

    #@2f
    const-wide/16 v6, 0x0

    #@31
    cmp-long v3, v4, v6

    #@33
    if-nez v3, :cond_3

    #@35
    long-to-int v3, v0

    #@36
    and-int/lit8 v2, v3, 0x7f

    #@38
    .local v2, "step":I
    if-eqz v2, :cond_3

    #@3a
    .line 325
    const-wide/32 v4, 0xffff

    #@3d
    and-long/2addr v4, p1

    #@3e
    const-wide/16 v6, 0x0

    #@40
    cmp-long v3, v4, v6

    #@42
    if-nez v3, :cond_2

    #@44
    .line 326
    invoke-static {p1, p2, p4, v2}, Landroid/icu/impl/coll/Collation;->incTwoBytePrimaryByOffset(JZI)J

    #@47
    move-result-wide v4

    #@48
    return-wide v4

    #@49
    .line 328
    :cond_2
    invoke-static {p1, p2, p4, v2}, Landroid/icu/impl/coll/Collation;->incThreeBytePrimaryByOffset(JZI)J

    #@4c
    move-result-wide v4

    #@4d
    return-wide v4

    #@4e
    .line 332
    .end local v2    # "step":I
    :cond_3
    :goto_1
    const-wide/16 v4, 0x80

    #@50
    and-long/2addr v4, v0

    #@51
    const-wide/16 v6, 0x0

    #@53
    cmp-long v3, v4, v6

    #@55
    if-eqz v3, :cond_4

    #@57
    .line 333
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@59
    add-int/lit8 p3, p3, 0x1

    #@5b
    aget-wide v0, v3, p3

    #@5d
    goto :goto_1

    #@5e
    .line 335
    :cond_4
    sget-boolean v3, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@60
    if-nez v3, :cond_6

    #@62
    const-wide/16 v4, 0x7f

    #@64
    and-long/2addr v4, v0

    #@65
    const-wide/16 v6, 0x0

    #@67
    cmp-long v3, v4, v6

    #@69
    if-nez v3, :cond_5

    #@6b
    const/4 v3, 0x1

    #@6c
    :goto_2
    if-nez v3, :cond_6

    #@6e
    new-instance v3, Ljava/lang/AssertionError;

    #@70
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@73
    throw v3

    #@74
    :cond_5
    const/4 v3, 0x0

    #@75
    goto :goto_2

    #@76
    .line 336
    :cond_6
    return-wide v0
.end method

.method getPrimaryBefore(JZ)J
    .locals 17
    .param p1, "p"    # J
    .param p3, "isCompressible"    # Z

    #@0
    .prologue
    const-wide v14, 0xffffff00L

    #@5
    const-wide/16 v12, 0x0

    #@7
    .line 217
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    #@a
    move-result v4

    #@b
    .line 219
    .local v4, "index":I
    move-object/from16 v0, p0

    #@d
    iget-object v10, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@f
    aget-wide v8, v10, v4

    #@11
    .line 220
    .local v8, "q":J
    and-long v10, v8, v14

    #@13
    cmp-long v10, p1, v10

    #@15
    if-nez v10, :cond_1

    #@17
    .line 223
    long-to-int v10, v8

    #@18
    and-int/lit8 v5, v10, 0x7f

    #@1a
    .line 224
    .local v5, "step":I
    if-nez v5, :cond_3

    #@1c
    .line 227
    :cond_0
    move-object/from16 v0, p0

    #@1e
    iget-object v10, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@20
    add-int/lit8 v4, v4, -0x1

    #@22
    aget-wide p1, v10, v4

    #@24
    .line 228
    const-wide/16 v10, 0x80

    #@26
    and-long v10, v10, p1

    #@28
    cmp-long v10, v10, v12

    #@2a
    if-nez v10, :cond_0

    #@2c
    .line 229
    and-long v10, p1, v14

    #@2e
    return-wide v10

    #@2f
    .line 233
    .end local v5    # "step":I
    :cond_1
    move-object/from16 v0, p0

    #@31
    iget-object v10, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@33
    add-int/lit8 v11, v4, 0x1

    #@35
    aget-wide v6, v10, v11

    #@37
    .line 234
    .local v6, "nextElement":J
    sget-boolean v10, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@39
    if-nez v10, :cond_2

    #@3b
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationRootElements;->isEndOfPrimaryRange(J)Z

    #@3e
    move-result v10

    #@3f
    if-nez v10, :cond_2

    #@41
    new-instance v10, Ljava/lang/AssertionError;

    #@43
    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    #@46
    throw v10

    #@47
    .line 235
    :cond_2
    long-to-int v10, v6

    #@48
    and-int/lit8 v5, v10, 0x7f

    #@4a
    .line 238
    .end local v6    # "nextElement":J
    .restart local v5    # "step":I
    :cond_3
    const-wide/32 v10, 0xffff

    #@4d
    and-long v10, v10, p1

    #@4f
    cmp-long v10, v10, v12

    #@51
    if-nez v10, :cond_4

    #@53
    .line 239
    move-wide/from16 v0, p1

    #@55
    move/from16 v2, p3

    #@57
    invoke-static {v0, v1, v2, v5}, Landroid/icu/impl/coll/Collation;->decTwoBytePrimaryByOneStep(JZI)J

    #@5a
    move-result-wide v10

    #@5b
    return-wide v10

    #@5c
    .line 241
    :cond_4
    move-wide/from16 v0, p1

    #@5e
    move/from16 v2, p3

    #@60
    invoke-static {v0, v1, v2, v5}, Landroid/icu/impl/coll/Collation;->decThreeBytePrimaryByOneStep(JZI)J

    #@63
    move-result-wide v10

    #@64
    return-wide v10
.end method

.method getSecondaryAfter(II)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "s"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 352
    if-nez p1, :cond_3

    #@4
    .line 354
    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@6
    if-nez v6, :cond_1

    #@8
    if-eqz p2, :cond_0

    #@a
    move v5, v4

    #@b
    :cond_0
    if-nez v5, :cond_1

    #@d
    new-instance v4, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v4

    #@13
    .line 355
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@15
    aget-wide v4, v5, v4

    #@17
    long-to-int p1, v4

    #@18
    .line 356
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@1a
    aget-wide v2, v4, p1

    #@1c
    .line 358
    .local v2, "secTer":J
    const/high16 v1, 0x10000

    #@1e
    .line 367
    .local v1, "secLimit":I
    :cond_2
    :goto_0
    const/16 v4, 0x10

    #@20
    shr-long v4, v2, v4

    #@22
    long-to-int v0, v4

    #@23
    .line 368
    .local v0, "sec":I
    if-le v0, p2, :cond_6

    #@25
    return v0

    #@26
    .line 360
    .end local v0    # "sec":I
    .end local v1    # "secLimit":I
    .end local v2    # "secTer":J
    :cond_3
    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@28
    if-nez v6, :cond_5

    #@2a
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@2c
    const/4 v7, 0x2

    #@2d
    aget-wide v6, v6, v7

    #@2f
    long-to-int v6, v6

    #@30
    if-lt p1, v6, :cond_4

    #@32
    :goto_1
    if-nez v4, :cond_5

    #@34
    new-instance v4, Ljava/lang/AssertionError;

    #@36
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@39
    throw v4

    #@3a
    :cond_4
    move v4, v5

    #@3b
    goto :goto_1

    #@3c
    .line 361
    :cond_5
    add-int/lit8 v4, p1, 0x1

    #@3e
    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    #@41
    move-result-wide v2

    #@42
    .line 364
    .restart local v2    # "secTer":J
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    #@45
    move-result v1

    #@46
    .restart local v1    # "secLimit":I
    goto :goto_0

    #@47
    .line 369
    .restart local v0    # "sec":I
    :cond_6
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@49
    add-int/lit8 p1, p1, 0x1

    #@4b
    aget-wide v2, v4, p1

    #@4d
    .line 370
    const-wide/16 v4, 0x80

    #@4f
    and-long/2addr v4, v2

    #@50
    const-wide/16 v6, 0x0

    #@52
    cmp-long v4, v4, v6

    #@54
    if-nez v4, :cond_2

    #@56
    return v1
.end method

.method getSecondaryBefore(JI)I
    .locals 9
    .param p1, "p"    # J
    .param p3, "s"    # I

    #@0
    .prologue
    .line 249
    const-wide/16 v4, 0x0

    #@2
    cmp-long v4, p1, v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 250
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@8
    const/4 v5, 0x1

    #@9
    aget-wide v4, v4, v5

    #@b
    long-to-int v0, v4

    #@c
    .line 252
    .local v0, "index":I
    const/4 v2, 0x0

    #@d
    .line 253
    .local v2, "previousSec":I
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@f
    aget-wide v4, v4, v0

    #@11
    const/16 v6, 0x10

    #@13
    shr-long/2addr v4, v6

    #@14
    long-to-int v3, v4

    #@15
    .line 259
    .local v3, "sec":I
    :goto_0
    sget-boolean v4, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@17
    if-nez v4, :cond_7

    #@19
    if-lt p3, v3, :cond_1

    #@1b
    const/4 v4, 0x1

    #@1c
    :goto_1
    if-nez v4, :cond_7

    #@1e
    new-instance v4, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@23
    throw v4

    #@24
    .line 255
    .end local v0    # "index":I
    .end local v2    # "previousSec":I
    .end local v3    # "sec":I
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    #@27
    move-result v4

    #@28
    add-int/lit8 v0, v4, 0x1

    #@2a
    .line 256
    .restart local v0    # "index":I
    const/16 v2, 0x100

    #@2c
    .line 257
    .restart local v2    # "previousSec":I
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    #@2f
    move-result-wide v4

    #@30
    long-to-int v4, v4

    #@31
    ushr-int/lit8 v3, v4, 0x10

    #@33
    .restart local v3    # "sec":I
    goto :goto_0

    #@34
    .line 259
    :cond_1
    const/4 v4, 0x0

    #@35
    goto :goto_1

    #@36
    .line 263
    .end local v0    # "index":I
    .local v1, "index":I
    :cond_2
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@38
    add-int/lit8 v0, v1, 0x1

    #@3a
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-wide v4, v4, v1

    #@3c
    const/16 v6, 0x10

    #@3e
    shr-long/2addr v4, v6

    #@3f
    long-to-int v3, v4

    #@40
    move v1, v0

    #@41
    .line 260
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :goto_2
    if-le p3, v3, :cond_4

    #@43
    .line 261
    move v2, v3

    #@44
    .line 262
    sget-boolean v4, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@46
    if-nez v4, :cond_2

    #@48
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@4a
    aget-wide v4, v4, v1

    #@4c
    const-wide/16 v6, 0x80

    #@4e
    and-long/2addr v4, v6

    #@4f
    const-wide/16 v6, 0x0

    #@51
    cmp-long v4, v4, v6

    #@53
    if-eqz v4, :cond_3

    #@55
    const/4 v4, 0x1

    #@56
    :goto_3
    if-nez v4, :cond_2

    #@58
    new-instance v4, Ljava/lang/AssertionError;

    #@5a
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@5d
    throw v4

    #@5e
    :cond_3
    const/4 v4, 0x0

    #@5f
    goto :goto_3

    #@60
    .line 265
    :cond_4
    sget-boolean v4, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@62
    if-nez v4, :cond_6

    #@64
    if-ne v3, p3, :cond_5

    #@66
    const/4 v4, 0x1

    #@67
    :goto_4
    if-nez v4, :cond_6

    #@69
    new-instance v4, Ljava/lang/AssertionError;

    #@6b
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@6e
    throw v4

    #@6f
    :cond_5
    const/4 v4, 0x0

    #@70
    goto :goto_4

    #@71
    .line 266
    :cond_6
    return v2

    #@72
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_7
    move v1, v0

    #@73
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_2
.end method

.method public getSecondaryBoundary()I
    .locals 2

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@2
    const/4 v1, 0x4

    #@3
    aget-wide v0, v0, v1

    #@5
    long-to-int v0, v0

    #@6
    shr-int/lit8 v0, v0, 0x8

    #@8
    const v1, 0xff00

    #@b
    and-int/2addr v0, v1

    #@c
    return v0
.end method

.method getTertiaryAfter(III)I
    .locals 10
    .param p1, "index"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I

    #@0
    .prologue
    .line 386
    if-nez p1, :cond_3

    #@2
    .line 388
    if-nez p2, :cond_2

    #@4
    .line 389
    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@6
    if-nez v5, :cond_1

    #@8
    if-eqz p3, :cond_0

    #@a
    const/4 v5, 0x1

    #@b
    :goto_0
    if-nez v5, :cond_1

    #@d
    new-instance v5, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v5

    #@13
    :cond_0
    const/4 v5, 0x0

    #@14
    goto :goto_0

    #@15
    .line 390
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@17
    const/4 v6, 0x0

    #@18
    aget-wide v6, v5, v6

    #@1a
    long-to-int p1, v6

    #@1b
    .line 392
    const/16 v4, 0x4000

    #@1d
    .line 398
    .local v4, "terLimit":I
    :goto_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@1f
    aget-wide v6, v5, p1

    #@21
    const-wide/16 v8, -0x81

    #@23
    and-long v0, v6, v8

    #@25
    .line 405
    .local v0, "secTer":J
    :goto_2
    int-to-long v6, p2

    #@26
    const-wide v8, 0xffffffffL

    #@2b
    and-long/2addr v6, v8

    #@2c
    const/16 v5, 0x10

    #@2e
    shl-long/2addr v6, v5

    #@2f
    int-to-long v8, p3

    #@30
    or-long v2, v6, v8

    #@32
    .line 407
    .local v2, "st":J
    :goto_3
    cmp-long v5, v0, v2

    #@34
    if-lez v5, :cond_8

    #@36
    .line 408
    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@38
    if-nez v5, :cond_7

    #@3a
    const/16 v5, 0x10

    #@3c
    shr-long v6, v0, v5

    #@3e
    int-to-long v8, p2

    #@3f
    cmp-long v5, v6, v8

    #@41
    if-nez v5, :cond_6

    #@43
    const/4 v5, 0x1

    #@44
    :goto_4
    if-nez v5, :cond_7

    #@46
    new-instance v5, Ljava/lang/AssertionError;

    #@48
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@4b
    throw v5

    #@4c
    .line 394
    .end local v0    # "secTer":J
    .end local v2    # "st":J
    .end local v4    # "terLimit":I
    :cond_2
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@4e
    const/4 v6, 0x1

    #@4f
    aget-wide v6, v5, v6

    #@51
    long-to-int p1, v6

    #@52
    .line 396
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    #@55
    move-result v4

    #@56
    .restart local v4    # "terLimit":I
    goto :goto_1

    #@57
    .line 400
    .end local v4    # "terLimit":I
    :cond_3
    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@59
    if-nez v5, :cond_5

    #@5b
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@5d
    const/4 v6, 0x2

    #@5e
    aget-wide v6, v5, v6

    #@60
    long-to-int v5, v6

    #@61
    if-lt p1, v5, :cond_4

    #@63
    const/4 v5, 0x1

    #@64
    :goto_5
    if-nez v5, :cond_5

    #@66
    new-instance v5, Ljava/lang/AssertionError;

    #@68
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@6b
    throw v5

    #@6c
    :cond_4
    const/4 v5, 0x0

    #@6d
    goto :goto_5

    #@6e
    .line 401
    :cond_5
    add-int/lit8 v5, p1, 0x1

    #@70
    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    #@73
    move-result-wide v0

    #@74
    .line 403
    .restart local v0    # "secTer":J
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    #@77
    move-result v4

    #@78
    .restart local v4    # "terLimit":I
    goto :goto_2

    #@79
    .line 408
    .restart local v2    # "st":J
    :cond_6
    const/4 v5, 0x0

    #@7a
    goto :goto_4

    #@7b
    .line 409
    :cond_7
    long-to-int v5, v0

    #@7c
    const v6, 0xffff

    #@7f
    and-int/2addr v5, v6

    #@80
    return v5

    #@81
    .line 411
    :cond_8
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@83
    add-int/lit8 p1, p1, 0x1

    #@85
    aget-wide v0, v5, p1

    #@87
    .line 413
    const-wide/16 v6, 0x80

    #@89
    and-long/2addr v6, v0

    #@8a
    const-wide/16 v8, 0x0

    #@8c
    cmp-long v5, v6, v8

    #@8e
    if-eqz v5, :cond_9

    #@90
    const/16 v5, 0x10

    #@92
    shr-long v6, v0, v5

    #@94
    int-to-long v8, p2

    #@95
    cmp-long v5, v6, v8

    #@97
    if-lez v5, :cond_a

    #@99
    :cond_9
    return v4

    #@9a
    .line 414
    :cond_a
    const-wide/16 v6, -0x81

    #@9c
    and-long/2addr v0, v6

    #@9d
    goto :goto_3
.end method

.method getTertiaryBefore(JII)I
    .locals 15
    .param p1, "p"    # J
    .param p3, "s"    # I
    .param p4, "t"    # I

    #@0
    .prologue
    .line 271
    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@2
    if-nez v5, :cond_1

    #@4
    move/from16 v0, p4

    #@6
    and-int/lit16 v5, v0, -0x3f40

    #@8
    if-nez v5, :cond_0

    #@a
    const/4 v5, 0x1

    #@b
    :goto_0
    if-nez v5, :cond_1

    #@d
    new-instance v5, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v5

    #@13
    :cond_0
    const/4 v5, 0x0

    #@14
    goto :goto_0

    #@15
    .line 275
    :cond_1
    const-wide/16 v10, 0x0

    #@17
    cmp-long v5, p1, v10

    #@19
    if-nez v5, :cond_4

    #@1b
    .line 276
    if-nez p3, :cond_3

    #@1d
    .line 277
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@1f
    const/4 v10, 0x0

    #@20
    aget-wide v10, v5, v10

    #@22
    long-to-int v2, v10

    #@23
    .line 279
    .local v2, "index":I
    const/4 v4, 0x0

    #@24
    .line 284
    .local v4, "previousTer":I
    :goto_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@26
    aget-wide v10, v5, v2

    #@28
    const-wide/16 v12, -0x81

    #@2a
    and-long v6, v10, v12

    #@2c
    .line 290
    .local v6, "secTer":J
    :goto_2
    move/from16 v0, p3

    #@2e
    int-to-long v10, v0

    #@2f
    const/16 v5, 0x10

    #@31
    shl-long/2addr v10, v5

    #@32
    move/from16 v0, p4

    #@34
    int-to-long v12, v0

    #@35
    or-long v8, v10, v12

    #@37
    .local v8, "st":J
    move v3, v2

    #@38
    .line 291
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_3
    cmp-long v5, v8, v6

    #@3a
    if-lez v5, :cond_7

    #@3c
    .line 292
    const/16 v5, 0x10

    #@3e
    shr-long v10, v6, v5

    #@40
    long-to-int v5, v10

    #@41
    move/from16 v0, p3

    #@43
    if-ne v5, v0, :cond_2

    #@45
    long-to-int v4, v6

    #@46
    .line 293
    :cond_2
    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@48
    if-nez v5, :cond_6

    #@4a
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@4c
    aget-wide v10, v5, v3

    #@4e
    const-wide/16 v12, 0x80

    #@50
    and-long/2addr v10, v12

    #@51
    const-wide/16 v12, 0x0

    #@53
    cmp-long v5, v10, v12

    #@55
    if-eqz v5, :cond_5

    #@57
    const/4 v5, 0x1

    #@58
    :goto_4
    if-nez v5, :cond_6

    #@5a
    new-instance v5, Ljava/lang/AssertionError;

    #@5c
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@5f
    throw v5

    #@60
    .line 281
    .end local v3    # "index":I
    .end local v4    # "previousTer":I
    .end local v6    # "secTer":J
    .end local v8    # "st":J
    :cond_3
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@62
    const/4 v10, 0x1

    #@63
    aget-wide v10, v5, v10

    #@65
    long-to-int v2, v10

    #@66
    .line 282
    .restart local v2    # "index":I
    const/16 v4, 0x100

    #@68
    .restart local v4    # "previousTer":I
    goto :goto_1

    #@69
    .line 286
    .end local v2    # "index":I
    .end local v4    # "previousTer":I
    :cond_4
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    #@6c
    move-result v5

    #@6d
    add-int/lit8 v2, v5, 0x1

    #@6f
    .line 287
    .restart local v2    # "index":I
    const/16 v4, 0x100

    #@71
    .line 288
    .restart local v4    # "previousTer":I
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    #@74
    move-result-wide v6

    #@75
    .restart local v6    # "secTer":J
    goto :goto_2

    #@76
    .line 293
    .end local v2    # "index":I
    .restart local v3    # "index":I
    .restart local v8    # "st":J
    :cond_5
    const/4 v5, 0x0

    #@77
    goto :goto_4

    #@78
    .line 294
    :cond_6
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@7a
    add-int/lit8 v2, v3, 0x1

    #@7c
    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-wide v10, v5, v3

    #@7e
    const-wide/16 v12, -0x81

    #@80
    and-long v6, v10, v12

    #@82
    move v3, v2

    #@83
    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_3

    #@84
    .line 296
    :cond_7
    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@86
    if-nez v5, :cond_9

    #@88
    cmp-long v5, v6, v8

    #@8a
    if-nez v5, :cond_8

    #@8c
    const/4 v5, 0x1

    #@8d
    :goto_5
    if-nez v5, :cond_9

    #@8f
    new-instance v5, Ljava/lang/AssertionError;

    #@91
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@94
    throw v5

    #@95
    :cond_8
    const/4 v5, 0x0

    #@96
    goto :goto_5

    #@97
    .line 297
    :cond_9
    const v5, 0xffff

    #@9a
    and-int/2addr v5, v4

    #@9b
    return v5
.end method

.method public getTertiaryBoundary()I
    .locals 2

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@2
    const/4 v1, 0x4

    #@3
    aget-wide v0, v0, v1

    #@5
    long-to-int v0, v0

    #@6
    shl-int/lit8 v0, v0, 0x8

    #@8
    const v1, 0xff00

    #@b
    and-int/2addr v0, v1

    #@c
    return v0
.end method

.method lastCEWithPrimaryBefore(J)J
    .locals 11
    .param p1, "p"    # J

    #@0
    .prologue
    .line 147
    const-wide/16 v6, 0x0

    #@2
    cmp-long v1, p1, v6

    #@4
    if-nez v1, :cond_0

    #@6
    const-wide/16 v6, 0x0

    #@8
    return-wide v6

    #@9
    .line 148
    :cond_0
    sget-boolean v1, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@b
    if-nez v1, :cond_2

    #@d
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@f
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@11
    const/4 v7, 0x2

    #@12
    aget-wide v6, v6, v7

    #@14
    long-to-int v6, v6

    #@15
    aget-wide v6, v1, v6

    #@17
    cmp-long v1, p1, v6

    #@19
    if-lez v1, :cond_1

    #@1b
    const/4 v1, 0x1

    #@1c
    :goto_0
    if-nez v1, :cond_2

    #@1e
    new-instance v1, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@23
    throw v1

    #@24
    :cond_1
    const/4 v1, 0x0

    #@25
    goto :goto_0

    #@26
    .line 149
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    #@29
    move-result v0

    #@2a
    .line 150
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@2c
    aget-wide v2, v1, v0

    #@2e
    .line 152
    .local v2, "q":J
    const-wide v6, 0xffffff00L

    #@33
    and-long/2addr v6, v2

    #@34
    cmp-long v1, p1, v6

    #@36
    if-nez v1, :cond_8

    #@38
    .line 155
    sget-boolean v1, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@3a
    if-nez v1, :cond_4

    #@3c
    const-wide/16 v6, 0x7f

    #@3e
    and-long/2addr v6, v2

    #@3f
    const-wide/16 v8, 0x0

    #@41
    cmp-long v1, v6, v8

    #@43
    if-nez v1, :cond_3

    #@45
    const/4 v1, 0x1

    #@46
    :goto_1
    if-nez v1, :cond_4

    #@48
    new-instance v1, Ljava/lang/AssertionError;

    #@4a
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@4d
    throw v1

    #@4e
    :cond_3
    const/4 v1, 0x0

    #@4f
    goto :goto_1

    #@50
    .line 156
    :cond_4
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@52
    add-int/lit8 v6, v0, -0x1

    #@54
    aget-wide v4, v1, v6

    #@56
    .line 157
    .local v4, "secTer":J
    const-wide/16 v6, 0x80

    #@58
    and-long/2addr v6, v4

    #@59
    const-wide/16 v8, 0x0

    #@5b
    cmp-long v1, v6, v8

    #@5d
    if-nez v1, :cond_6

    #@5f
    .line 159
    const-wide v6, 0xffffff00L

    #@64
    and-long p1, v4, v6

    #@66
    .line 160
    const-wide/32 v4, 0x5000500

    #@69
    .line 188
    :cond_5
    :goto_2
    const/16 v1, 0x20

    #@6b
    shl-long v6, p1, v1

    #@6d
    const-wide/16 v8, -0x81

    #@6f
    and-long/2addr v8, v4

    #@70
    or-long/2addr v6, v8

    #@71
    return-wide v6

    #@72
    .line 163
    :cond_6
    add-int/lit8 v0, v0, -0x2

    #@74
    .line 165
    :goto_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@76
    aget-wide p1, v1, v0

    #@78
    .line 166
    const-wide/16 v6, 0x80

    #@7a
    and-long/2addr v6, p1

    #@7b
    const-wide/16 v8, 0x0

    #@7d
    cmp-long v1, v6, v8

    #@7f
    if-nez v1, :cond_7

    #@81
    .line 167
    const-wide v6, 0xffffff00L

    #@86
    and-long/2addr p1, v6

    #@87
    .line 168
    goto :goto_2

    #@88
    .line 170
    :cond_7
    add-int/lit8 v0, v0, -0x1

    #@8a
    goto :goto_3

    #@8b
    .line 176
    .end local v4    # "secTer":J
    :cond_8
    const-wide v6, 0xffffff00L

    #@90
    and-long p1, v2, v6

    #@92
    .line 177
    const-wide/32 v4, 0x5000500

    #@95
    .line 179
    .restart local v4    # "secTer":J
    :goto_4
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    #@97
    add-int/lit8 v0, v0, 0x1

    #@99
    aget-wide v2, v1, v0

    #@9b
    .line 180
    const-wide/16 v6, 0x80

    #@9d
    and-long/2addr v6, v2

    #@9e
    const-wide/16 v8, 0x0

    #@a0
    cmp-long v1, v6, v8

    #@a2
    if-nez v1, :cond_a

    #@a4
    .line 182
    sget-boolean v1, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    #@a6
    if-nez v1, :cond_5

    #@a8
    const-wide/16 v6, 0x7f

    #@aa
    and-long/2addr v6, v2

    #@ab
    const-wide/16 v8, 0x0

    #@ad
    cmp-long v1, v6, v8

    #@af
    if-nez v1, :cond_9

    #@b1
    const/4 v1, 0x1

    #@b2
    :goto_5
    if-nez v1, :cond_5

    #@b4
    new-instance v1, Ljava/lang/AssertionError;

    #@b6
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@b9
    throw v1

    #@ba
    :cond_9
    const/4 v1, 0x0

    #@bb
    goto :goto_5

    #@bc
    .line 185
    :cond_a
    move-wide v4, v2

    #@bd
    goto :goto_4
.end method

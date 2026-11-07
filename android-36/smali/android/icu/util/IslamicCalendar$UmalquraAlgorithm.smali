.class Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;
.super Ljava/lang/Object;
.source "IslamicCalendar.java"

# interfaces
.implements Landroid/icu/util/IslamicCalendar$Algorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/IslamicCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UmalquraAlgorithm"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/IslamicCalendar-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compute(JJLjava/util/function/IntConsumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V
    .registers 23
    .param p1, "julianDays"    # J
    .param p3, "current"    # J
    .param p5, "yearConsumer"    # Ljava/util/function/IntConsumer;
    .param p6, "monthConsumer"    # Ljava/util/function/IntConsumer;
    .param p7, "dayOfMonthConsumer"    # Ljava/util/function/IntConsumer;
    .param p8, "dayOfYearConsumer"    # Ljava/util/function/IntConsumer;

    .line 546
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->epoch()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 547
    .local v0, "days":J
    const/16 v2, 0x514

    invoke-virtual {p0, v2}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->yearStart(I)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_23

    .line 548
    invoke-static {}, Landroid/icu/util/IslamicCalendar;->-$$Nest$sfgetCIVIL_ALGORITHM()Landroid/icu/util/IslamicCalendar$Algorithm;

    move-result-object v4

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-interface/range {v4 .. v12}, Landroid/icu/util/IslamicCalendar$Algorithm;->compute(JJLjava/util/function/IntConsumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    .line 550
    return-void

    .line 555
    :cond_23
    long-to-double v3, v0

    const-wide v5, 0x411c188a33333333L    # 460322.55

    sub-double/2addr v3, v5

    const-wide v5, 0x407625e00d1b7176L    # 354.3672

    div-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 556
    .local v3, "year":I
    const/4 v2, 0x0

    .line 558
    .local v2, "month":I
    const-wide/16 v4, 0x1

    .line 559
    .local v4, "d":J
    :goto_37
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    const-wide/16 v7, 0x1

    if-lez v6, :cond_6e

    .line 560
    add-int/lit8 v3, v3, 0x1

    .line 561
    invoke-virtual {p0, v3}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->yearStart(I)J

    move-result-wide v9

    sub-long v9, v0, v9

    add-long v4, v9, v7

    .line 562
    invoke-virtual {p0, v3}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->yearLength(I)I

    move-result v6

    .line 563
    .local v6, "yearLength":I
    int-to-long v9, v6

    cmp-long v9, v4, v9

    if-nez v9, :cond_55

    .line 564
    const/16 v2, 0xb

    .line 565
    goto :goto_6e

    .line 566
    :cond_55
    int-to-long v9, v6

    cmp-long v9, v4, v9

    if-gez v9, :cond_6d

    .line 567
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->monthLength(II)I

    move-result v9

    .line 568
    .local v9, "monthLen":I
    const/4 v2, 0x0

    :goto_5f
    int-to-long v10, v9

    cmp-long v10, v4, v10

    if-lez v10, :cond_6e

    .line 569
    int-to-long v10, v9

    sub-long/2addr v4, v10

    .line 568
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->monthLength(II)I

    move-result v9

    goto :goto_5f

    .line 573
    .end local v6    # "yearLength":I
    .end local v9    # "monthLen":I
    :cond_6d
    goto :goto_37

    .line 574
    :cond_6e
    :goto_6e
    move-object/from16 v9, p5

    invoke-interface {v9, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 575
    move-object/from16 v10, p6

    invoke-interface {v10, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 576
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->monthStart(II)J

    move-result-wide v11

    sub-long v11, v0, v11

    long-to-int v6, v11

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v11, p7

    invoke-interface {v11, v6}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 577
    invoke-virtual {p0, v3}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->yearStart(I)J

    move-result-wide v12

    sub-long v12, v0, v12

    add-long/2addr v12, v7

    long-to-int v6, v12

    move-object/from16 v12, p8

    invoke-interface {v12, v6}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 578
    return-void
.end method

.method public blacklist epoch()J
    .registers 3

    .line 496
    const-wide/32 v0, 0x1dbb18

    return-wide v0
.end method

.method public blacklist getType()Landroid/icu/util/IslamicCalendar$CalculationType;
    .registers 2

    .line 493
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object v0
.end method

.method public blacklist isCivil()Z
    .registers 2

    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist monthLength(II)I
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 523
    const/16 v0, 0x514

    if-lt p1, v0, :cond_1f

    const/16 v0, 0x640

    if-le p1, v0, :cond_9

    goto :goto_1f

    .line 526
    :cond_9
    add-int/lit16 v0, p1, -0x514

    .line 527
    .local v0, "index":I
    rsub-int/lit8 v1, p2, 0xb

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 528
    .local v1, "mask":I
    invoke-static {}, Landroid/icu/util/IslamicCalendar;->-$$Nest$sfgetUMALQURA_MONTHLENGTH()[I

    move-result-object v2

    aget v2, v2, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_1c

    .line 529
    const/16 v2, 0x1e

    return v2

    .line 531
    :cond_1c
    const/16 v2, 0x1d

    return v2

    .line 524
    .end local v0    # "index":I
    .end local v1    # "mask":I
    :cond_1f
    :goto_1f
    invoke-static {}, Landroid/icu/util/IslamicCalendar;->-$$Nest$sfgetCIVIL_ALGORITHM()Landroid/icu/util/IslamicCalendar$Algorithm;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/icu/util/IslamicCalendar$Algorithm;->monthLength(II)I

    move-result v0

    return v0
.end method

.method public blacklist monthStart(II)J
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 511
    div-int/lit8 v0, p2, 0xc

    add-int/2addr p1, v0

    .line 512
    rem-int/lit8 p2, p2, 0xc

    .line 513
    const/16 v0, 0x514

    if-ge p1, v0, :cond_12

    .line 514
    invoke-static {}, Landroid/icu/util/IslamicCalendar;->-$$Nest$sfgetCIVIL_ALGORITHM()Landroid/icu/util/IslamicCalendar$Algorithm;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/icu/util/IslamicCalendar$Algorithm;->monthStart(II)J

    move-result-wide v0

    return-wide v0

    .line 516
    :cond_12
    invoke-virtual {p0, p1}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->yearStart(I)J

    move-result-wide v0

    .line 517
    .local v0, "ms":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, p2, :cond_22

    .line 518
    invoke-virtual {p0, p1, v2}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->monthLength(II)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 520
    .end local v2    # "i":I
    :cond_22
    return-wide v0
.end method

.method public blacklist yearLength(I)I
    .registers 5
    .param p1, "year"    # I

    .line 534
    const/16 v0, 0x514

    if-lt p1, v0, :cond_18

    const/16 v0, 0x640

    if-le p1, v0, :cond_9

    goto :goto_18

    .line 537
    :cond_9
    const/4 v0, 0x0

    .line 538
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    const/16 v2, 0xc

    if-ge v1, v2, :cond_17

    .line 539
    invoke-virtual {p0, p1, v1}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;->monthLength(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 541
    .end local v1    # "i":I
    :cond_17
    return v0

    .line 535
    .end local v0    # "length":I
    :cond_18
    :goto_18
    invoke-static {}, Landroid/icu/util/IslamicCalendar;->-$$Nest$sfgetCIVIL_ALGORITHM()Landroid/icu/util/IslamicCalendar$Algorithm;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/icu/util/IslamicCalendar$Algorithm;->yearLength(I)I

    move-result v0

    return v0
.end method

.method public blacklist yearStart(I)J
    .registers 7
    .param p1, "year"    # I

    .line 499
    const/16 v0, 0x514

    if-lt p1, v0, :cond_25

    const/16 v0, 0x640

    if-le p1, v0, :cond_9

    goto :goto_25

    .line 502
    :cond_9
    add-int/lit16 v0, p1, -0x514

    .line 504
    .local v0, "index":I
    const-wide v1, 0x407625e00d1b7176L    # 354.3672

    int-to-double v3, v0

    mul-double/2addr v3, v1

    const-wide v1, 0x411c188833333333L    # 460322.05

    add-double/2addr v3, v1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v1

    double-to-int v1, v3

    .line 506
    .local v1, "yrStartLinearEstimate":I
    invoke-static {}, Landroid/icu/util/IslamicCalendar;->-$$Nest$sfgetUMALQURA_YEAR_START_ESTIMATE_FIX()[B

    move-result-object v2

    aget-byte v2, v2, v0

    add-int/2addr v2, v1

    int-to-long v2, v2

    return-wide v2

    .line 500
    .end local v0    # "index":I
    .end local v1    # "yrStartLinearEstimate":I
    :cond_25
    :goto_25
    invoke-static {}, Landroid/icu/util/IslamicCalendar;->-$$Nest$sfgetCIVIL_ALGORITHM()Landroid/icu/util/IslamicCalendar$Algorithm;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/icu/util/IslamicCalendar$Algorithm;->yearStart(I)J

    move-result-wide v0

    return-wide v0
.end method

.class Landroid/icu/util/IslamicCalendar$IslamicAlgorithm;
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
    name = "IslamicAlgorithm"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/IslamicCalendar-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/IslamicCalendar$IslamicAlgorithm;-><init>()V

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

    .line 396
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar$IslamicAlgorithm;->epoch()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 398
    .local v0, "days":J
    long-to-double v2, v0

    const-wide v4, 0x403d87d4abcb41d5L    # 29.530588853

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 399
    .local v2, "month":I
    int-to-double v6, v2

    mul-double/2addr v6, v4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    .line 400
    .local v3, "monthStart":J
    sub-long v5, v0, v3

    const-wide/16 v7, 0x19

    cmp-long v5, v5, v7

    if-ltz v5, :cond_30

    invoke-static/range {p3 .. p4}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_30

    .line 402
    add-int/lit8 v2, v2, 0x1

    .line 406
    :cond_30
    :goto_30
    int-to-long v5, v2

    invoke-static {v5, v6}, Landroid/icu/util/IslamicCalendar;->-$$Nest$smtrueMonthStart(J)J

    move-result-wide v5

    move-wide v3, v5

    cmp-long v5, v5, v0

    if-lez v5, :cond_3d

    .line 408
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    .line 410
    :cond_3d
    if-ltz v2, :cond_44

    div-int/lit8 v5, v2, 0xc

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_44
    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v5, v5, 0xc

    .line 411
    .local v5, "year":I
    :goto_48
    rem-int/lit8 v6, v2, 0xc

    add-int/lit8 v6, v6, 0xc

    rem-int/lit8 v6, v6, 0xc

    .line 412
    .end local v2    # "month":I
    .local v6, "month":I
    move-object/from16 v2, p5

    invoke-interface {v2, v5}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 413
    move-object/from16 v7, p6

    invoke-interface {v7, v6}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 414
    invoke-virtual {p0, v5, v6}, Landroid/icu/util/IslamicCalendar$IslamicAlgorithm;->monthStart(II)J

    move-result-wide v8

    sub-long v8, v0, v8

    long-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, p7

    invoke-interface {v9, v8}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 415
    invoke-virtual {p0, v5}, Landroid/icu/util/IslamicCalendar$IslamicAlgorithm;->yearStart(I)J

    move-result-wide v10

    sub-long v10, v0, v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    long-to-int v8, v10

    move-object/from16 v10, p8

    invoke-interface {v10, v8}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 416
    return-void
.end method

.method public blacklist epoch()J
    .registers 3

    .line 375
    const-wide/32 v0, 0x1dbb18

    return-wide v0
.end method

.method public blacklist getType()Landroid/icu/util/IslamicCalendar$CalculationType;
    .registers 2

    .line 372
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object v0
.end method

.method public blacklist isCivil()Z
    .registers 2

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist monthLength(II)I
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 386
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr p2, v0

    .line 387
    add-int/lit8 v0, p2, 0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/icu/util/IslamicCalendar;->-$$Nest$smtrueMonthStart(J)J

    move-result-wide v0

    int-to-long v2, p2

    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->-$$Nest$smtrueMonthStart(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public blacklist monthStart(II)J
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 383
    div-int/lit8 v0, p2, 0xc

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0xc

    rem-int/lit8 v1, p2, 0xc

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/icu/util/IslamicCalendar;->-$$Nest$smtrueMonthStart(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist yearLength(I)I
    .registers 7
    .param p1, "year"    # I

    .line 390
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0xc

    .line 391
    .local v0, "month":I
    add-int/lit8 v1, v0, 0xc

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/icu/util/IslamicCalendar;->-$$Nest$smtrueMonthStart(J)J

    move-result-wide v1

    int-to-long v3, v0

    invoke-static {v3, v4}, Landroid/icu/util/IslamicCalendar;->-$$Nest$smtrueMonthStart(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method public blacklist yearStart(I)J
    .registers 4
    .param p1, "year"    # I

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/IslamicCalendar$IslamicAlgorithm;->monthStart(II)J

    move-result-wide v0

    return-wide v0
.end method

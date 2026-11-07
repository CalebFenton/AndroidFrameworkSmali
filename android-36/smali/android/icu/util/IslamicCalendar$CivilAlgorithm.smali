.class Landroid/icu/util/IslamicCalendar$CivilAlgorithm;
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
    name = "CivilAlgorithm"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/IslamicCalendar-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/IslamicCalendar$CivilAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compute(JJLjava/util/function/IntConsumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V
    .registers 21
    .param p1, "julianDays"    # J
    .param p3, "current"    # J
    .param p5, "yearConsumer"    # Ljava/util/function/IntConsumer;
    .param p6, "monthConsumer"    # Ljava/util/function/IntConsumer;
    .param p7, "dayOfMonthConsumer"    # Ljava/util/function/IntConsumer;
    .param p8, "dayOfYearConsumer"    # Ljava/util/function/IntConsumer;

    .line 456
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar$CivilAlgorithm;->epoch()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 458
    .local v0, "days":J
    const-wide/16 v2, 0x1e

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x2996

    add-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x40c4c38000000000L    # 10631.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 459
    .local v2, "year":I
    const-wide/16 v3, 0x1d

    sub-long v3, v0, v3

    invoke-virtual {p0, v2}, Landroid/icu/util/IslamicCalendar$CivilAlgorithm;->yearStart(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x403d800000000000L    # 29.5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 460
    .local v3, "month":I
    const/16 v4, 0xb

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 461
    move-object/from16 v4, p5

    invoke-interface {v4, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 462
    move-object/from16 v5, p6

    invoke-interface {v5, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 463
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/IslamicCalendar$CivilAlgorithm;->monthStart(II)J

    move-result-wide v6

    sub-long v6, v0, v6

    long-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, p7

    invoke-interface {v7, v6}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 464
    invoke-virtual {p0, v2}, Landroid/icu/util/IslamicCalendar$CivilAlgorithm;->yearStart(I)J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    long-to-int v6, v8

    move-object/from16 v8, p8

    invoke-interface {v8, v6}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 465
    return-void
.end method

.method public blacklist epoch()J
    .registers 3

    .line 430
    const-wide/32 v0, 0x1dbb18

    return-wide v0
.end method

.method public blacklist getType()Landroid/icu/util/IslamicCalendar$CalculationType;
    .registers 2

    .line 427
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object v0
.end method

.method public blacklist isCivil()Z
    .registers 2

    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist monthLength(II)I
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 441
    const/16 v0, 0x1d

    .line 442
    .local v0, "length":I
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_8

    .line 443
    add-int/lit8 v0, v0, 0x1

    .line 445
    :cond_8
    const/16 v1, 0xb

    if-ne p2, v1, :cond_14

    invoke-static {p1}, Landroid/icu/util/IslamicCalendar;->-$$Nest$smcivilLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 446
    add-int/lit8 v0, v0, 0x1

    .line 448
    :cond_14
    return v0
.end method

.method public blacklist monthStart(II)J
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 438
    rem-int/lit8 v0, p2, 0xc

    int-to-double v0, v0

    const-wide v2, 0x403d800000000000L    # 29.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    div-int/lit8 v2, p2, 0xc

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/icu/util/IslamicCalendar$CivilAlgorithm;->yearStart(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist yearLength(I)I
    .registers 3
    .param p1, "year"    # I

    .line 451
    invoke-static {p1}, Landroid/icu/util/IslamicCalendar;->-$$Nest$smcivilLeapYear(I)Z

    move-result v0

    add-int/lit16 v0, v0, 0x162

    return v0
.end method

.method public blacklist yearStart(I)J
    .registers 8
    .param p1, "year"    # I

    .line 433
    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v0, v0, 0x162

    int-to-long v0, v0

    mul-int/lit8 v2, p1, 0xb

    add-int/lit8 v2, v2, 0x3

    int-to-double v2, v2

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

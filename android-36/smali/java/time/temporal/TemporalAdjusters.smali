.class public final Ljava/time/temporal/TemporalAdjusters;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public static whitelist test-api dayOfWeekInMonth(ILjava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 4
    .param p0, "ordinal"    # I
    .param p1, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .line 347
    const-string v0, "dayOfWeek"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    invoke-virtual {p1}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 349
    .local v0, "dowValue":I
    if-ltz p0, :cond_11

    .line 350
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;-><init>(II)V

    return-object v1

    .line 358
    :cond_11
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;-><init>(II)V

    return-object v1
.end method

.method public static whitelist test-api firstDayOfMonth()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .line 166
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda3;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api firstDayOfNextMonth()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .line 209
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api firstDayOfNextYear()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .line 270
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda4;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api firstDayOfYear()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .line 230
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda7;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api firstInMonth(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 2
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .line 291
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/time/temporal/TemporalAdjusters;->dayOfWeekInMonth(ILjava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$dayOfWeekInMonth$7(IILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 12
    .param p0, "dowValue"    # I
    .param p1, "ordinal"    # I
    .param p2, "temporal"    # Ljava/time/temporal/Temporal;

    .line 351
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p2, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    .line 352
    .local v0, "temp":Ljava/time/temporal/Temporal;
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    .line 353
    .local v3, "curDow":I
    sub-int v4, p0, v3

    add-int/lit8 v4, v4, 0x7

    rem-int/lit8 v4, v4, 0x7

    .line 354
    .local v4, "dowDiff":I
    int-to-long v5, v4

    int-to-long v7, p1

    sub-long/2addr v7, v1

    const-wide/16 v1, 0x7

    mul-long/2addr v7, v1

    add-long/2addr v5, v7

    long-to-int v1, v5

    .line 355
    .end local v4    # "dowDiff":I
    .local v1, "dowDiff":I
    int-to-long v4, v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v4, v5, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic blacklist lambda$dayOfWeekInMonth$8(IILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 13
    .param p0, "dowValue"    # I
    .param p1, "ordinal"    # I
    .param p2, "temporal"    # Ljava/time/temporal/Temporal;

    .line 359
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    .line 360
    .local v0, "temp":Ljava/time/temporal/Temporal;
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 361
    .local v1, "curDow":I
    sub-int v2, p0, v1

    .line 362
    .local v2, "daysDiff":I
    if-nez v2, :cond_1c

    const/4 v3, 0x0

    goto :goto_22

    :cond_1c
    if-lez v2, :cond_21

    add-int/lit8 v3, v2, -0x7

    goto :goto_22

    :cond_21
    move v3, v2

    .line 363
    .end local v2    # "daysDiff":I
    .local v3, "daysDiff":I
    :goto_22
    int-to-long v4, v3

    neg-int v2, p1

    int-to-long v6, v2

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v2, v4

    .line 364
    .end local v3    # "daysDiff":I
    .restart local v2    # "daysDiff":I
    int-to-long v3, v2

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v3, v4, v5}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    return-object v3
.end method

.method static synthetic blacklist lambda$firstDayOfMonth$1(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 4
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .line 166
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$firstDayOfNextMonth$3(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .line 209
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$firstDayOfNextYear$6(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .line 270
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v3, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$firstDayOfYear$4(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 4
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .line 230
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$lastDayOfMonth$2(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 4
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .line 189
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$lastDayOfYear$5(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 4
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .line 251
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$next$9(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 389
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 390
    .local v0, "calDow":I
    sub-int v1, v0, p0

    .line 391
    .local v1, "daysDiff":I
    if-ltz v1, :cond_d

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_e

    :cond_d
    neg-int v2, v1

    :goto_e
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic blacklist lambda$nextOrSame$10(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 415
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 416
    .local v0, "calDow":I
    if-ne v0, p0, :cond_9

    .line 417
    return-object p1

    .line 419
    :cond_9
    sub-int v1, v0, p0

    .line 420
    .local v1, "daysDiff":I
    if-ltz v1, :cond_10

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_11

    :cond_10
    neg-int v2, v1

    :goto_11
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic blacklist lambda$ofDateAdjuster$0(Ljava/util/function/UnaryOperator;Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p0, "dateBasedAdjuster"    # Ljava/util/function/UnaryOperator;
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 142
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 143
    .local v0, "input":Ljava/time/LocalDate;
    invoke-interface {p0, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    .line 144
    .local v1, "output":Ljava/time/LocalDate;
    invoke-interface {p1, v1}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic blacklist lambda$previous$11(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 443
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 444
    .local v0, "calDow":I
    sub-int v1, p0, v0

    .line 445
    .local v1, "daysDiff":I
    if-ltz v1, :cond_d

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_e

    :cond_d
    neg-int v2, v1

    :goto_e
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic blacklist lambda$previousOrSame$12(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 469
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 470
    .local v0, "calDow":I
    if-ne v0, p0, :cond_9

    .line 471
    return-object p1

    .line 473
    :cond_9
    sub-int v1, p0, v0

    .line 474
    .local v1, "daysDiff":I
    if-ltz v1, :cond_10

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_11

    :cond_10
    neg-int v2, v1

    :goto_11
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist test-api lastDayOfMonth()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .line 189
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda9;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api lastDayOfYear()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .line 251
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda10;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api lastInMonth(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 2
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .line 311
    const/4 v0, -0x1

    invoke-static {v0, p0}, Ljava/time/temporal/TemporalAdjusters;->dayOfWeekInMonth(ILjava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api next(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 3
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .line 387
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 388
    .local v0, "dowValue":I
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda11;-><init>(I)V

    return-object v1
.end method

.method public static whitelist test-api nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 3
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .line 413
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 414
    .local v0, "dowValue":I
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;-><init>(I)V

    return-object v1
.end method

.method public static whitelist test-api ofDateAdjuster(Ljava/util/function/UnaryOperator;)Ljava/time/temporal/TemporalAdjuster;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/time/LocalDate;",
            ">;)",
            "Ljava/time/temporal/TemporalAdjuster;"
        }
    .end annotation

    .line 140
    .local p0, "dateBasedAdjuster":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/time/LocalDate;>;"
    const-string v0, "dateBasedAdjuster"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/UnaryOperator;)V

    return-object v0
.end method

.method public static whitelist test-api previous(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 3
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .line 441
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 442
    .local v0, "dowValue":I
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda2;-><init>(I)V

    return-object v1
.end method

.method public static whitelist test-api previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 3
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .line 467
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 468
    .local v0, "dowValue":I
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda8;-><init>(I)V

    return-object v1
.end method

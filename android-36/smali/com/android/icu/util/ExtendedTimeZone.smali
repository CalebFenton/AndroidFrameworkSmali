.class public Lcom/android/icu/util/ExtendedTimeZone;
.super Ljava/lang/Object;
.source "ExtendedTimeZone.java"


# instance fields
.field private final blacklist timezone:Landroid/icu/util/TimeZone;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/icu/util/ExtendedTimeZone;->timezone:Landroid/icu/util/TimeZone;

    .line 61
    return-void
.end method

.method public static blacklist clearDefaultTimeZone()V
    .registers 1

    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->setICUDefault(Landroid/icu/util/TimeZone;)V

    .line 89
    return-void
.end method

.method private blacklist createZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;
    .registers 15
    .param p1, "annualTimeZoneRule"    # Landroid/icu/util/AnnualTimeZoneRule;
    .param p2, "lastStandardOffset"    # Ljava/time/ZoneOffset;
    .param p3, "lastWallOffset"    # Ljava/time/ZoneOffset;

    .line 325
    invoke-virtual {p1}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v0

    .line 326
    .local v0, "dateTimeRule":Landroid/icu/util/DateTimeRule;
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v2

    .line 329
    .local v2, "month":Ljava/time/Month;
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v1

    packed-switch v1, :pswitch_data_cc

    .line 360
    move-object v8, p2

    move-object v9, p3

    .end local p2    # "lastStandardOffset":Ljava/time/ZoneOffset;
    .end local p3    # "lastWallOffset":Ljava/time/ZoneOffset;
    .local v8, "lastStandardOffset":Ljava/time/ZoneOffset;
    .local v9, "lastWallOffset":Ljava/time/ZoneOffset;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected dateTimeRule.dateRuleType="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 361
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 360
    invoke-direct {p0, p2}, Lcom/android/icu/util/ExtendedTimeZone;->zoneRulesException(Ljava/lang/String;)Ljava/time/zone/ZoneRulesException;

    move-result-object p2

    throw p2

    .line 355
    .end local v8    # "lastStandardOffset":Ljava/time/ZoneOffset;
    .end local v9    # "lastWallOffset":Ljava/time/ZoneOffset;
    .restart local p2    # "lastStandardOffset":Ljava/time/ZoneOffset;
    .restart local p3    # "lastWallOffset":Ljava/time/ZoneOffset;
    :pswitch_3d
    nop

    .line 356
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    invoke-virtual {v2}, Ljava/time/Month;->maxLength()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 357
    .local v1, "dayOfMonthIndicator":I
    invoke-static {v0}, Lcom/android/icu/util/ExtendedTimeZone;->dayOfWeek(Landroid/icu/util/DateTimeRule;)Ljava/time/DayOfWeek;

    move-result-object v3

    .line 358
    .local v3, "dayOfWeek":Ljava/time/DayOfWeek;
    move-object v4, v3

    move v3, v1

    goto :goto_9e

    .line 348
    .end local v1    # "dayOfMonthIndicator":I
    .end local v3    # "dayOfWeek":Ljava/time/DayOfWeek;
    :pswitch_50
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    .line 349
    .restart local v1    # "dayOfMonthIndicator":I
    invoke-static {v0}, Lcom/android/icu/util/ExtendedTimeZone;->dayOfWeek(Landroid/icu/util/DateTimeRule;)Ljava/time/DayOfWeek;

    move-result-object v3

    .line 350
    .restart local v3    # "dayOfWeek":Ljava/time/DayOfWeek;
    move-object v4, v3

    move v3, v1

    goto :goto_9e

    .line 335
    .end local v1    # "dayOfMonthIndicator":I
    .end local v3    # "dayOfWeek":Ljava/time/DayOfWeek;
    :pswitch_5b
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v1

    .line 336
    .local v1, "weekInMonth":I
    if-lez v1, :cond_68

    .line 337
    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    .local v3, "dayOfMonthIndicator":I
    goto :goto_70

    .line 338
    .end local v3    # "dayOfMonthIndicator":I
    :cond_68
    if-gez v1, :cond_75

    .line 339
    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, -0x1

    .line 345
    .restart local v3    # "dayOfMonthIndicator":I
    :goto_70
    invoke-static {v0}, Lcom/android/icu/util/ExtendedTimeZone;->dayOfWeek(Landroid/icu/util/DateTimeRule;)Ljava/time/DayOfWeek;

    move-result-object v4

    .line 346
    .local v4, "dayOfWeek":Ljava/time/DayOfWeek;
    goto :goto_9e

    .line 341
    .end local v3    # "dayOfMonthIndicator":I
    .end local v4    # "dayOfWeek":Ljava/time/DayOfWeek;
    :cond_75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid DateTimeRule in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Non-zero weekInMonth expected in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/icu/util/ExtendedTimeZone;->zoneRulesException(Ljava/lang/String;)Ljava/time/zone/ZoneRulesException;

    move-result-object v3

    throw v3

    .line 331
    .end local v1    # "weekInMonth":I
    :pswitch_97
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    .line 332
    .local v1, "dayOfMonthIndicator":I
    const/4 v3, 0x0

    .line 333
    .local v3, "dayOfWeek":Ljava/time/DayOfWeek;
    move-object v4, v3

    move v3, v1

    .line 366
    .end local v1    # "dayOfMonthIndicator":I
    .local v3, "dayOfMonthIndicator":I
    .restart local v4    # "dayOfWeek":Ljava/time/DayOfWeek;
    :goto_9e
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v1

    const v5, 0x5265c00

    if-ne v1, v5, :cond_ac

    .line 367
    const/4 v1, 0x1

    .line 368
    .local v1, "timeEndOfDay":Z
    sget-object v5, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    move v6, v1

    .local v5, "switchDateTime":Ljava/time/LocalTime;
    goto :goto_bb

    .line 370
    .end local v1    # "timeEndOfDay":Z
    .end local v5    # "switchDateTime":Ljava/time/LocalTime;
    :cond_ac
    const/4 v1, 0x0

    .line 371
    .restart local v1    # "timeEndOfDay":Z
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    move v6, v1

    .line 374
    .end local v1    # "timeEndOfDay":Z
    .restart local v5    # "switchDateTime":Ljava/time/LocalTime;
    .local v6, "timeEndOfDay":Z
    :goto_bb
    invoke-direct {p0, p1}, Lcom/android/icu/util/ExtendedTimeZone;->timeDefinition(Landroid/icu/util/AnnualTimeZoneRule;)Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v7

    .line 379
    .local v7, "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    nop

    .line 387
    invoke-static {p1}, Lcom/android/icu/util/ExtendedTimeZone;->fullOffset(Landroid/icu/util/TimeZoneRule;)Ljava/time/ZoneOffset;

    move-result-object v10

    .line 379
    move-object v8, p2

    move-object v9, p3

    .end local p2    # "lastStandardOffset":Ljava/time/ZoneOffset;
    .end local p3    # "lastWallOffset":Ljava/time/ZoneOffset;
    .restart local v8    # "lastStandardOffset":Ljava/time/ZoneOffset;
    .restart local v9    # "lastWallOffset":Ljava/time/ZoneOffset;
    invoke-static/range {v2 .. v10}, Ljava/time/zone/ZoneOffsetTransitionRule;->of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object p2

    return-object p2

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_97
        :pswitch_5b
        :pswitch_50
        :pswitch_3d
    .end packed-switch
.end method

.method private static blacklist dayOfWeek(Landroid/icu/util/DateTimeRule;)Ljava/time/DayOfWeek;
    .registers 4
    .param p0, "dateTimeRule"    # Landroid/icu/util/DateTimeRule;

    .line 432
    sget-object v0, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist fullOffset(Landroid/icu/util/TimeZoneRule;)Ljava/time/ZoneOffset;
    .registers 3
    .param p0, "timeZoneRule"    # Landroid/icu/util/TimeZoneRule;

    .line 440
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/icu/util/ExtendedTimeZone;->toOffset(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;)Lcom/android/icu/util/ExtendedTimeZone;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/android/icu/util/ExtendedTimeZone;

    invoke-direct {v0, p0}, Lcom/android/icu/util/ExtendedTimeZone;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist localDateTime(JLjava/time/ZoneOffset;)Ljava/time/LocalDateTime;
    .registers 4
    .param p0, "epochMillis"    # J
    .param p2, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 426
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 427
    invoke-virtual {v0, p2}, Ljava/time/Instant;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 426
    return-object v0
.end method

.method private static blacklist standardOffset(Landroid/icu/util/TimeZoneRule;)Ljava/time/ZoneOffset;
    .registers 2
    .param p0, "timeZoneRule"    # Landroid/icu/util/TimeZoneRule;

    .line 436
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    invoke-static {v0}, Lcom/android/icu/util/ExtendedTimeZone;->toOffset(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method private blacklist timeDefinition(Landroid/icu/util/AnnualTimeZoneRule;)Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 5
    .param p1, "annualTimeZoneRule"    # Landroid/icu/util/AnnualTimeZoneRule;

    .line 392
    invoke-virtual {p1}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v0

    .line 393
    .local v0, "dateTimeRule":Landroid/icu/util/DateTimeRule;
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected dateTimeRule.timeRuleType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 402
    invoke-virtual {v0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in AnnualTimeZoneRule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-direct {p0, v1}, Lcom/android/icu/util/ExtendedTimeZone;->zoneRulesException(Ljava/lang/String;)Ljava/time/zone/ZoneRulesException;

    move-result-object v1

    throw v1

    .line 397
    :pswitch_31
    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v1

    .line 395
    :pswitch_34
    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v1

    .line 399
    :pswitch_37
    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v1

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_37
        :pswitch_34
        :pswitch_31
    .end packed-switch
.end method

.method private static blacklist toOffset(I)Ljava/time/ZoneOffset;
    .registers 2
    .param p0, "rawOffset"    # I

    .line 444
    div-int/lit16 v0, p0, 0x3e8

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method private blacklist utcStartTime(JLandroid/icu/util/TimeArrayTimeZoneRule;)J
    .registers 8
    .param p1, "startTime"    # J
    .param p3, "timeZoneRule"    # Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 408
    invoke-virtual {p3}, Landroid/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected timeType in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/icu/util/ExtendedTimeZone;->zoneRulesException(Ljava/lang/String;)Ljava/time/zone/ZoneRulesException;

    move-result-object v0

    throw v0

    .line 410
    :pswitch_1f
    return-wide p1

    .line 412
    :pswitch_20
    invoke-virtual {p3}, Landroid/icu/util/TimeArrayTimeZoneRule;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, p1, v0

    return-wide v0

    .line 414
    :pswitch_28
    invoke-virtual {p3}, Landroid/icu/util/TimeArrayTimeZoneRule;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, p1, v0

    invoke-virtual {p3}, Landroid/icu/util/TimeArrayTimeZoneRule;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist zoneRulesException(Ljava/lang/String;)Ljava/time/zone/ZoneRulesException;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 421
    new-instance v0, Ljava/time/zone/ZoneRulesException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to build ZoneRules for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/icu/util/ExtendedTimeZone;->timezone:Landroid/icu/util/TimeZone;

    invoke-virtual {v2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist createZoneRules()Ljava/time/zone/ZoneRules;
    .registers 25

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/icu/util/ExtendedTimeZone;->timezone:Landroid/icu/util/TimeZone;

    instance-of v1, v1, Landroid/icu/util/BasicTimeZone;

    if-eqz v1, :cond_226

    .line 121
    iget-object v1, v0, Lcom/android/icu/util/ExtendedTimeZone;->timezone:Landroid/icu/util/TimeZone;

    check-cast v1, Landroid/icu/util/BasicTimeZone;

    .line 123
    .local v1, "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    invoke-virtual {v1}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    .line 125
    .local v2, "timeZoneRules":[Landroid/icu/util/TimeZoneRule;
    array-length v3, v2

    if-eqz v3, :cond_21d

    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, "baseStandardOffset":Ljava/time/ZoneOffset;
    const/4 v4, 0x0

    .line 132
    .local v4, "baseWallOffset":Ljava/time/ZoneOffset;
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 133
    .local v5, "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    const/4 v6, 0x0

    .line 135
    .local v6, "hasRecurringRules":Z
    array-length v7, v2

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v7, :cond_86

    aget-object v10, v2, v9

    .line 136
    .local v10, "timeZoneRule":Landroid/icu/util/TimeZoneRule;
    instance-of v11, v10, Landroid/icu/util/InitialTimeZoneRule;

    if-eqz v11, :cond_33

    .line 137
    move-object v11, v10

    check-cast v11, Landroid/icu/util/InitialTimeZoneRule;

    .line 138
    .local v11, "initialTimeZoneRule":Landroid/icu/util/InitialTimeZoneRule;
    invoke-static {v11}, Lcom/android/icu/util/ExtendedTimeZone;->standardOffset(Landroid/icu/util/TimeZoneRule;)Ljava/time/ZoneOffset;

    move-result-object v3

    .line 139
    invoke-static {v11}, Lcom/android/icu/util/ExtendedTimeZone;->fullOffset(Landroid/icu/util/TimeZoneRule;)Ljava/time/ZoneOffset;

    move-result-object v4

    .line 140
    .end local v11    # "initialTimeZoneRule":Landroid/icu/util/InitialTimeZoneRule;
    move/from16 v16, v9

    goto :goto_61

    :cond_33
    instance-of v11, v10, Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v11, :cond_5a

    .line 141
    move-object v11, v10

    check-cast v11, Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 143
    .local v11, "timeArrayTimeZoneRule":Landroid/icu/util/TimeArrayTimeZoneRule;
    invoke-virtual {v11}, Landroid/icu/util/TimeArrayTimeZoneRule;->getStartTimes()[J

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_40
    if-ge v14, v13, :cond_57

    move/from16 v16, v9

    aget-wide v8, v12, v14

    .line 144
    .local v8, "startTime":J
    nop

    .line 145
    invoke-direct {v0, v8, v9, v11}, Lcom/android/icu/util/ExtendedTimeZone;->utcStartTime(JLandroid/icu/util/TimeArrayTimeZoneRule;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 144
    invoke-interface {v5, v15, v11}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v8    # "startTime":J
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v16

    goto :goto_40

    :cond_57
    move/from16 v16, v9

    .line 147
    .end local v11    # "timeArrayTimeZoneRule":Landroid/icu/util/TimeArrayTimeZoneRule;
    goto :goto_61

    :cond_5a
    move/from16 v16, v9

    instance-of v8, v10, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v8, :cond_64

    .line 150
    const/4 v6, 0x1

    .line 135
    .end local v10    # "timeZoneRule":Landroid/icu/util/TimeZoneRule;
    :goto_61
    add-int/lit8 v9, v16, 0x1

    goto :goto_1d

    .line 152
    .restart local v10    # "timeZoneRule":Landroid/icu/util/TimeZoneRule;
    :cond_64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized time zone rule "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 153
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-direct {v0, v7}, Lcom/android/icu/util/ExtendedTimeZone;->zoneRulesException(Ljava/lang/String;)Ljava/time/zone/ZoneRulesException;

    move-result-object v7

    throw v7

    .line 160
    .end local v10    # "timeZoneRule":Landroid/icu/util/TimeZoneRule;
    :cond_86
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v7, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v8, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    move-object v9, v3

    .line 164
    .local v9, "lastStandardOffset":Ljava/time/ZoneOffset;
    move-object v10, v4

    .line 166
    .local v10, "lastWallOffset":Ljava/time/ZoneOffset;
    invoke-interface {v5}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 167
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 168
    .local v13, "startTime":J
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 170
    .local v15, "timeZoneRule":Landroid/icu/util/TimeArrayTimeZoneRule;
    move-object/from16 v16, v2

    .end local v2    # "timeZoneRules":[Landroid/icu/util/TimeZoneRule;
    .local v16, "timeZoneRules":[Landroid/icu/util/TimeZoneRule;
    invoke-static {v15}, Lcom/android/icu/util/ExtendedTimeZone;->standardOffset(Landroid/icu/util/TimeZoneRule;)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 172
    .local v2, "ruleStandardOffset":Ljava/time/ZoneOffset;
    invoke-virtual {v2, v9}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d2

    .line 179
    nop

    .line 181
    move-object/from16 v17, v5

    .end local v5    # "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    .local v17, "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    invoke-static {v13, v14, v9}, Lcom/android/icu/util/ExtendedTimeZone;->localDateTime(JLjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 180
    invoke-static {v5, v9, v2}, Ljava/time/zone/ZoneOffsetTransition;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v5

    .line 185
    .local v5, "zoneOffsetTransition":Ljava/time/zone/ZoneOffsetTransition;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    move-object v9, v2

    goto :goto_d4

    .line 172
    .end local v17    # "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    .local v5, "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    :cond_d2
    move-object/from16 v17, v5

    .line 189
    .end local v5    # "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    .restart local v17    # "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    :goto_d4
    invoke-static {v15}, Lcom/android/icu/util/ExtendedTimeZone;->fullOffset(Landroid/icu/util/TimeZoneRule;)Ljava/time/ZoneOffset;

    move-result-object v5

    .line 194
    .local v5, "ruleWallOffset":Ljava/time/ZoneOffset;
    invoke-virtual {v10, v5}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_ee

    .line 195
    nop

    .line 197
    move-object/from16 v18, v2

    .end local v2    # "ruleStandardOffset":Ljava/time/ZoneOffset;
    .local v18, "ruleStandardOffset":Ljava/time/ZoneOffset;
    invoke-static {v13, v14, v10}, Lcom/android/icu/util/ExtendedTimeZone;->localDateTime(JLjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 196
    invoke-static {v2, v10, v5}, Ljava/time/zone/ZoneOffsetTransition;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 201
    .local v2, "zoneOffsetTransition":Ljava/time/zone/ZoneOffsetTransition;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    move-object v10, v5

    goto :goto_f0

    .line 194
    .end local v18    # "ruleStandardOffset":Ljava/time/ZoneOffset;
    .local v2, "ruleStandardOffset":Ljava/time/ZoneOffset;
    :cond_ee
    move-object/from16 v18, v2

    .line 204
    .end local v2    # "ruleStandardOffset":Ljava/time/ZoneOffset;
    .end local v5    # "ruleWallOffset":Ljava/time/ZoneOffset;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    .end local v13    # "startTime":J
    .end local v15    # "timeZoneRule":Landroid/icu/util/TimeArrayTimeZoneRule;
    :goto_f0
    move-object/from16 v2, v16

    move-object/from16 v5, v17

    goto :goto_9a

    .line 206
    .end local v16    # "timeZoneRules":[Landroid/icu/util/TimeZoneRule;
    .end local v17    # "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    .local v2, "timeZoneRules":[Landroid/icu/util/TimeZoneRule;
    .local v5, "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    :cond_f5
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    .end local v2    # "timeZoneRules":[Landroid/icu/util/TimeZoneRule;
    .end local v5    # "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    .restart local v16    # "timeZoneRules":[Landroid/icu/util/TimeZoneRule;
    .restart local v17    # "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v2, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    if-eqz v6, :cond_214

    .line 209
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v5, "annualTimeZoneRules":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/AnnualTimeZoneRule;>;"
    nop

    .line 216
    invoke-interface/range {v17 .. v17}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v15, 0x0

    invoke-virtual {v1, v11, v12, v15}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v11

    .line 217
    .local v11, "firstTransitionToAnnualRule":Landroid/icu/util/TimeZoneTransition;
    nop

    .line 218
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v12

    check-cast v12, Landroid/icu/util/AnnualTimeZoneRule;

    .line 219
    .local v12, "firstAnnualRule":Landroid/icu/util/AnnualTimeZoneRule;
    move-object v13, v12

    .line 220
    .local v13, "currentTimeZoneRule":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 223
    .local v14, "currentUnixEpochTime":J
    :goto_123
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    move/from16 v18, v6

    .end local v6    # "hasRecurringRules":Z
    .local v18, "hasRecurringRules":Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v20, v11

    .end local v11    # "firstTransitionToAnnualRule":Landroid/icu/util/TimeZoneTransition;
    .local v20, "firstTransitionToAnnualRule":Landroid/icu/util/TimeZoneTransition;
    const/16 v11, 0x10

    if-gt v6, v11, :cond_20b

    .line 229
    invoke-static {v13}, Lcom/android/icu/util/ExtendedTimeZone;->standardOffset(Landroid/icu/util/TimeZoneRule;)Ljava/time/ZoneOffset;

    move-result-object v6

    .line 231
    .local v6, "ruleStandardOffset":Ljava/time/ZoneOffset;
    invoke-virtual {v9, v6}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_149

    .line 232
    nop

    .line 234
    invoke-static {v14, v15, v9}, Lcom/android/icu/util/ExtendedTimeZone;->localDateTime(JLjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v11

    .line 233
    invoke-static {v11, v9, v6}, Ljava/time/zone/ZoneOffsetTransition;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v11

    .line 232
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    move-object v9, v6

    .line 241
    :cond_149
    nop

    .line 242
    invoke-static {v14, v15}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/time/Instant;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/OffsetDateTime;->getYear()I

    move-result v11

    .line 243
    .local v11, "currentYear":I
    nop

    .line 244
    move-object/from16 v21, v6

    .end local v6    # "ruleStandardOffset":Ljava/time/ZoneOffset;
    .local v21, "ruleStandardOffset":Ljava/time/ZoneOffset;
    invoke-direct {v0, v13, v9, v10}, Lcom/android/icu/util/ExtendedTimeZone;->createZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v6

    .line 248
    invoke-virtual {v6, v11}, Ljava/time/zone/ZoneOffsetTransitionRule;->createTransition(I)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v6

    .line 251
    .local v6, "recurringRuleTransition":Ljava/time/zone/ZoneOffsetTransition;
    move-object/from16 v22, v6

    .end local v6    # "recurringRuleTransition":Ljava/time/zone/ZoneOffsetTransition;
    .local v22, "recurringRuleTransition":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual/range {v22 .. v22}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_185

    .line 252
    nop

    .line 253
    invoke-static {v14, v15, v10}, Lcom/android/icu/util/ExtendedTimeZone;->localDateTime(JLjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v6

    .line 255
    move/from16 v23, v11

    .end local v11    # "currentYear":I
    .local v23, "currentYear":I
    invoke-virtual/range {v22 .. v22}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v11

    .line 252
    invoke-static {v6, v10, v11}, Ljava/time/zone/ZoneOffsetTransition;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual/range {v22 .. v22}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v6

    move-object v10, v6

    .end local v10    # "lastWallOffset":Ljava/time/ZoneOffset;
    .local v6, "lastWallOffset":Ljava/time/ZoneOffset;
    goto :goto_187

    .line 251
    .end local v6    # "lastWallOffset":Ljava/time/ZoneOffset;
    .end local v23    # "currentYear":I
    .restart local v10    # "lastWallOffset":Ljava/time/ZoneOffset;
    .restart local v11    # "currentYear":I
    :cond_185
    move/from16 v23, v11

    .line 259
    .end local v11    # "currentYear":I
    .restart local v23    # "currentYear":I
    :goto_187
    nop

    .line 260
    const/4 v6, 0x0

    invoke-virtual {v1, v14, v15, v6}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v11

    .line 261
    .local v11, "nextTransition":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v14

    .line 262
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v19

    move-object/from16 v13, v19

    check-cast v13, Landroid/icu/util/AnnualTimeZoneRule;

    .line 264
    if-eqz v13, :cond_1eb

    .line 268
    .end local v11    # "nextTransition":Landroid/icu/util/TimeZoneTransition;
    .end local v21    # "ruleStandardOffset":Ljava/time/ZoneOffset;
    .end local v22    # "recurringRuleTransition":Ljava/time/zone/ZoneOffsetTransition;
    .end local v23    # "currentYear":I
    invoke-virtual {v13, v12}, Landroid/icu/util/AnnualTimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v11

    if-eqz v11, :cond_1e3

    .line 274
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/util/AnnualTimeZoneRule;

    .line 275
    .local v11, "annualTimeZoneRule":Landroid/icu/util/AnnualTimeZoneRule;
    nop

    .line 276
    move-object/from16 v19, v1

    .end local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .local v19, "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    invoke-direct {v0, v11, v9, v10}, Lcom/android/icu/util/ExtendedTimeZone;->createZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v1

    .line 279
    .local v1, "zoneOffsetTransitionRule":Ljava/time/zone/ZoneOffsetTransitionRule;
    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransitionRule;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v10

    .line 281
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v1    # "zoneOffsetTransitionRule":Ljava/time/zone/ZoneOffsetTransitionRule;
    .end local v11    # "annualTimeZoneRule":Landroid/icu/util/AnnualTimeZoneRule;
    move-object/from16 v1, v19

    goto :goto_1a5

    .line 292
    .end local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .local v1, "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    :cond_1c2
    move-object/from16 v19, v1

    .end local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .restart local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    const/4 v1, 0x0

    .line 293
    .local v1, "firstRuleIndex":I
    :goto_1c5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1de

    .line 294
    invoke-virtual {v12}, Landroid/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v6

    .line 295
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v11}, Landroid/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v11

    if-ne v6, v11, :cond_1de

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c5

    .line 299
    :cond_1de
    neg-int v6, v1

    invoke-static {v2, v6}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    goto :goto_218

    .line 268
    .end local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .local v1, "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    :cond_1e3
    move-object/from16 v19, v1

    .end local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .restart local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    move/from16 v6, v18

    move-object/from16 v11, v20

    goto/16 :goto_123

    .line 265
    .end local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .restart local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .local v11, "nextTransition":Landroid/icu/util/TimeZoneTransition;
    .restart local v21    # "ruleStandardOffset":Ljava/time/ZoneOffset;
    .restart local v22    # "recurringRuleTransition":Ljava/time/zone/ZoneOffsetTransition;
    .restart local v23    # "currentYear":I
    :cond_1eb
    move-object/from16 v19, v1

    .end local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .restart local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No transitions after "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " for a timezone with recurring rules"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/icu/util/ExtendedTimeZone;->zoneRulesException(Ljava/lang/String;)Ljava/time/zone/ZoneRulesException;

    move-result-object v1

    throw v1

    .line 226
    .end local v11    # "nextTransition":Landroid/icu/util/TimeZoneTransition;
    .end local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .end local v21    # "ruleStandardOffset":Ljava/time/ZoneOffset;
    .end local v22    # "recurringRuleTransition":Ljava/time/zone/ZoneOffsetTransition;
    .end local v23    # "currentYear":I
    .restart local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    :cond_20b
    move-object/from16 v19, v1

    .end local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .restart local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    const-string v1, "More than 16 annual transitions found."

    invoke-direct {v0, v1}, Lcom/android/icu/util/ExtendedTimeZone;->zoneRulesException(Ljava/lang/String;)Ljava/time/zone/ZoneRulesException;

    move-result-object v1

    throw v1

    .line 208
    .end local v5    # "annualTimeZoneRules":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/AnnualTimeZoneRule;>;"
    .end local v12    # "firstAnnualRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v13    # "currentTimeZoneRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v14    # "currentUnixEpochTime":J
    .end local v18    # "hasRecurringRules":Z
    .end local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .end local v20    # "firstTransitionToAnnualRule":Landroid/icu/util/TimeZoneTransition;
    .restart local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .local v6, "hasRecurringRules":Z
    :cond_214
    move-object/from16 v19, v1

    move/from16 v18, v6

    .line 302
    .end local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .end local v6    # "hasRecurringRules":Z
    .restart local v18    # "hasRecurringRules":Z
    .restart local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    :goto_218
    invoke-static {v3, v4, v7, v8, v2}, Ljava/time/zone/ZoneRules;->of(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/time/zone/ZoneRules;

    move-result-object v1

    return-object v1

    .line 126
    .end local v3    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .end local v4    # "baseWallOffset":Ljava/time/ZoneOffset;
    .end local v7    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .end local v8    # "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .end local v9    # "lastStandardOffset":Ljava/time/ZoneOffset;
    .end local v10    # "lastWallOffset":Ljava/time/ZoneOffset;
    .end local v16    # "timeZoneRules":[Landroid/icu/util/TimeZoneRule;
    .end local v17    # "rulesByStartTime":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Landroid/icu/util/TimeArrayTimeZoneRule;>;"
    .end local v18    # "hasRecurringRules":Z
    .end local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .restart local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .local v2, "timeZoneRules":[Landroid/icu/util/TimeZoneRule;
    :cond_21d
    move-object/from16 v19, v1

    .end local v1    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    .restart local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    const-string v1, "Got 0 time zone rules"

    invoke-direct {v0, v1}, Lcom/android/icu/util/ExtendedTimeZone;->zoneRulesException(Ljava/lang/String;)Ljava/time/zone/ZoneRulesException;

    move-result-object v1

    throw v1

    .line 116
    .end local v2    # "timeZoneRules":[Landroid/icu/util/TimeZoneRule;
    .end local v19    # "basicTimeZone":Landroid/icu/util/BasicTimeZone;
    :cond_226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timezone is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/icu/util/ExtendedTimeZone;->timezone:Landroid/icu/util/TimeZone;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which is not instance of BasicTimeZone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-direct {v0, v1}, Lcom/android/icu/util/ExtendedTimeZone;->zoneRulesException(Ljava/lang/String;)Ljava/time/zone/ZoneRulesException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/icu/util/ExtendedTimeZone;->timezone:Landroid/icu/util/TimeZone;

    return-object v0
.end method

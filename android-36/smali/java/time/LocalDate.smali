.class public final Ljava/time/LocalDate;
.super Ljava/lang/Object;
.source "LocalDate.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# static fields
.field static final greylist-max-o DAYS_0000_TO_1970:J = 0xafaa8L

.field private static final greylist-max-o DAYS_PER_CYCLE:I = 0x23ab1

.field public static final whitelist test-api EPOCH:Ljava/time/LocalDate;

.field public static final whitelist test-api MAX:Ljava/time/LocalDate;

.field public static final whitelist test-api MIN:Ljava/time/LocalDate;

.field private static final whitelist serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final greylist-max-o day:S

.field private final greylist-max-o month:S

.field private final greylist-max-o year:I


# direct methods
.method public static synthetic blacklist $r8$lambda$_F9R3tO1ec4OgKCG1wZ0IZwxkQQ(Ljava/time/LocalDate;JJJ)Ljava/time/LocalDate;
    .registers 7

    invoke-direct/range {p0 .. p6}, Ljava/time/LocalDate;->lambda$datesUntil$1(JJJ)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 142
    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    .line 147
    const/16 v0, 0xc

    const/16 v2, 0x1f

    const v3, 0x3b9ac9ff

    invoke-static {v3, v0, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    .line 151
    const/16 v0, 0x7b2

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDate;->EPOCH:Ljava/time/LocalDate;

    return-void
.end method

.method private constructor greylist-max-o <init>(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput p1, p0, Ljava/time/LocalDate;->year:I

    .line 495
    int-to-short v0, p2

    iput-short v0, p0, Ljava/time/LocalDate;->month:S

    .line 496
    int-to-short v0, p3

    iput-short v0, p0, Ljava/time/LocalDate;->day:S

    .line 497
    return-void
.end method

.method private static greylist-max-o create(III)Ljava/time/LocalDate;
    .registers 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 439
    const/16 v0, 0x1c

    if-le p2, v0, :cond_6f

    .line 440
    const/16 v1, 0x1f

    .line 441
    .local v1, "dom":I
    const/16 v2, 0x1d

    sparse-switch p1, :sswitch_data_76

    goto :goto_1b

    .line 449
    :sswitch_c
    const/16 v1, 0x1e

    goto :goto_1b

    .line 443
    :sswitch_f
    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v4, p0

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v3

    if-eqz v3, :cond_19

    move v0, v2

    :cond_19
    move v1, v0

    .line 444
    nop

    .line 452
    :goto_1b
    if-le p2, v1, :cond_6f

    .line 453
    if-ne p2, v2, :cond_3e

    .line 454
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date \'February 29\' as \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a leap year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_3e
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    .end local v1    # "dom":I
    :cond_6f
    new-instance v0, Ljava/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/LocalDate;-><init>(III)V

    return-object v0

    nop

    :sswitch_data_76
    .sparse-switch
        0x2 -> :sswitch_f
        0x4 -> :sswitch_c
        0x6 -> :sswitch_c
        0x9 -> :sswitch_c
        0xb -> :sswitch_c
    .end sparse-switch
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 389
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    .line 391
    .local v0, "date":Ljava/time/LocalDate;
    if-eqz v0, :cond_12

    .line 395
    return-object v0

    .line 392
    :cond_12
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain LocalDate from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o get0(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 689
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_82

    .line 704
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :pswitch_28
    iget v0, p0, Ljava/time/LocalDate;->year:I

    if-lt v0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1

    .line 701
    :pswitch_2f
    iget v0, p0, Ljava/time/LocalDate;->year:I

    return v0

    .line 699
    :pswitch_32
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'ProlepticMonth\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :pswitch_3a
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    return v0

    .line 697
    :pswitch_3d
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 695
    :pswitch_46
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'EpochDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :pswitch_4e
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 691
    :pswitch_57
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 690
    :pswitch_5e
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    return v0

    .line 700
    :pswitch_67
    iget v0, p0, Ljava/time/LocalDate;->year:I

    if-lt v0, v1, :cond_6e

    iget v0, p0, Ljava/time/LocalDate;->year:I

    goto :goto_72

    :cond_6e
    iget v0, p0, Ljava/time/LocalDate;->year:I

    rsub-int/lit8 v0, v0, 0x1

    :goto_72
    return v0

    .line 696
    :pswitch_73
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 694
    :pswitch_7a
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0

    .line 693
    :pswitch_7f
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    return v0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_7a
        :pswitch_73
        :pswitch_67
        :pswitch_5e
        :pswitch_57
        :pswitch_4e
        :pswitch_46
        :pswitch_3d
        :pswitch_3a
        :pswitch_32
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method private greylist-max-o getProlepticMonth()J
    .registers 5

    .line 708
    iget v0, p0, Ljava/time/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-short v2, p0, Ljava/time/LocalDate;->month:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic blacklist lambda$datesUntil$0(JJJ)Ljava/time/LocalDate;
    .registers 8
    .param p0, "start"    # J
    .param p2, "days"    # J
    .param p4, "n"    # J

    .line 1775
    mul-long v0, p4, p2

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$datesUntil$1(JJJ)Ljava/time/LocalDate;
    .registers 10
    .param p1, "months"    # J
    .param p3, "days"    # J
    .param p5, "n"    # J

    .line 1795
    mul-long v0, p1, p5

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    mul-long v1, p3, p5

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o monthsUntil(Ljava/time/LocalDate;)J
    .registers 10
    .param p1, "end"    # Ljava/time/LocalDate;

    .line 1660
    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1661
    .local v0, "packed1":J
    invoke-direct {p1}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v4

    mul-long/2addr v4, v2

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 1662
    .local v4, "packed2":J
    sub-long v6, v4, v0

    div-long/2addr v6, v2

    return-wide v6
.end method

.method public static whitelist test-api now()Ljava/time/LocalDate;
    .registers 1

    .line 195
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/LocalDate;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .line 225
    const-string v0, "clock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 227
    .local v0, "now":Ljava/time/Instant;
    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/LocalDate;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 211
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(III)Ljava/time/LocalDate;
    .registers 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 265
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 266
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 267
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 268
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->create(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(ILjava/time/Month;I)Ljava/time/LocalDate;
    .registers 6
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonth"    # I

    .line 245
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 246
    const-string v0, "month"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 247
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 248
    invoke-virtual {p1}, Ljava/time/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0, p2}, Ljava/time/LocalDate;->create(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofEpochDay(J)Ljava/time/LocalDate;
    .registers 27
    .param p0, "epochDay"    # J

    .line 338
    move-wide/from16 v0, p0

    sget-object v2, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 339
    const-wide/32 v2, 0xafaa8

    add-long/2addr v2, v0

    .line 341
    .local v2, "zeroDay":J
    const-wide/16 v4, 0x3c

    sub-long/2addr v2, v4

    .line 342
    const-wide/16 v4, 0x0

    .line 343
    .local v4, "adjust":J
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    const-wide/16 v9, 0x1

    const-wide/32 v11, 0x23ab1

    const-wide/16 v13, 0x190

    if-gez v8, :cond_2b

    .line 345
    add-long v15, v2, v9

    div-long/2addr v15, v11

    move-wide/from16 v17, v6

    sub-long v6, v15, v9

    .line 346
    .local v6, "adjustCycles":J
    mul-long v4, v6, v13

    .line 347
    move-wide v15, v9

    neg-long v9, v6

    mul-long/2addr v9, v11

    add-long/2addr v2, v9

    goto :goto_2e

    .line 343
    .end local v6    # "adjustCycles":J
    :cond_2b
    move-wide/from16 v17, v6

    move-wide v15, v9

    .line 349
    :goto_2e
    mul-long v6, v2, v13

    const-wide/16 v8, 0x24f

    add-long/2addr v6, v8

    div-long/2addr v6, v11

    .line 350
    .local v6, "yearEst":J
    const-wide/16 v8, 0x16d

    mul-long v10, v6, v8

    const-wide/16 v19, 0x4

    div-long v21, v6, v19

    add-long v10, v10, v21

    const-wide/16 v21, 0x64

    div-long v23, v6, v21

    sub-long v10, v10, v23

    div-long v23, v6, v13

    add-long v10, v10, v23

    sub-long v10, v2, v10

    .line 351
    .local v10, "doyEst":J
    cmp-long v12, v10, v17

    if-gez v12, :cond_5b

    .line 353
    sub-long/2addr v6, v15

    .line 354
    mul-long/2addr v8, v6

    div-long v15, v6, v19

    add-long/2addr v8, v15

    div-long v15, v6, v21

    sub-long/2addr v8, v15

    div-long v12, v6, v13

    add-long/2addr v8, v12

    sub-long v10, v2, v8

    .line 356
    :cond_5b
    add-long/2addr v6, v4

    .line 357
    long-to-int v8, v10

    .line 360
    .local v8, "marchDoy0":I
    mul-int/lit8 v9, v8, 0x5

    add-int/lit8 v9, v9, 0x2

    div-int/lit16 v9, v9, 0x99

    .line 361
    .local v9, "marchMonth0":I
    add-int/lit8 v12, v9, 0x2

    rem-int/lit8 v12, v12, 0xc

    add-int/lit8 v12, v12, 0x1

    .line 362
    .local v12, "month":I
    mul-int/lit16 v13, v9, 0x132

    add-int/lit8 v13, v13, 0x5

    div-int/lit8 v13, v13, 0xa

    sub-int v13, v8, v13

    add-int/lit8 v13, v13, 0x1

    .line 363
    .local v13, "dom":I
    div-int/lit8 v14, v9, 0xa

    int-to-long v14, v14

    add-long/2addr v6, v14

    .line 366
    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v14, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v14

    .line 367
    .local v14, "year":I
    new-instance v15, Ljava/time/LocalDate;

    invoke-direct {v15, v14, v12, v13}, Ljava/time/LocalDate;-><init>(III)V

    return-object v15
.end method

.method public static whitelist test-api ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDate;
    .registers 9
    .param p0, "instant"    # Ljava/time/Instant;
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 316
    const-string v0, "instant"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    .line 319
    .local v0, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 320
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 321
    .local v2, "localSecond":J
    const v4, 0x15180

    invoke-static {v2, v3, v4}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v4

    .line 322
    .local v4, "localEpochDay":J
    invoke-static {v4, v5}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public static whitelist test-api ofYearDay(II)Ljava/time/LocalDate;
    .registers 8
    .param p0, "year"    # I
    .param p1, "dayOfYear"    # I

    .line 285
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 286
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 287
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    .line 288
    .local v0, "leap":Z
    const/16 v1, 0x16e

    if-ne p1, v1, :cond_39

    if-eqz v0, :cond_1a

    goto :goto_39

    .line 289
    :cond_1a
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date \'DayOfYear 366\' as \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a leap year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_39
    :goto_39
    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v1

    .line 292
    .local v1, "moy":Ljava/time/Month;
    invoke-virtual {v1, v0}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/time/Month;->length(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 293
    .local v2, "monthEnd":I
    if-le p1, v2, :cond_56

    .line 294
    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/time/Month;->plus(J)Ljava/time/Month;

    move-result-object v1

    .line 296
    :cond_56
    invoke-virtual {v1, v0}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 297
    .local v3, "dom":I
    new-instance v4, Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/Month;->getValue()I

    move-result v5

    invoke-direct {v4, p0, v5, v3}, Ljava/time/LocalDate;-><init>(III)V

    return-object v4
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 410
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 424
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 425
    new-instance v0, Ljava/time/LocalDate$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/time/LocalDate$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2220
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 2221
    .local v0, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 2222
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 2223
    .local v2, "dayOfMonth":I
    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v3

    return-object v3
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 2210
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o resolvePreviousValid(III)Ljava/time/LocalDate;
    .registers 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 472
    sparse-switch p1, :sswitch_data_24

    goto :goto_1e

    .line 480
    :sswitch_4
    const/16 v0, 0x1e

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1e

    .line 474
    :sswitch_b
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x1d

    goto :goto_19

    :cond_17
    const/16 v0, 0x1c

    :goto_19
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 475
    nop

    .line 483
    :goto_1e
    new-instance v0, Ljava/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/LocalDate;-><init>(III)V

    return-object v0

    :sswitch_data_24
    .sparse-switch
        0x2 -> :sswitch_b
        0x4 -> :sswitch_4
        0x6 -> :sswitch_4
        0x9 -> :sswitch_4
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 2199
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1586
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atStartOfDay()Ljava/time/LocalDateTime;
    .registers 2

    .line 1907
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 6
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 1931
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1934
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1935
    .local v0, "ldt":Ljava/time/LocalDateTime;
    instance-of v1, p1, Ljava/time/ZoneOffset;

    if-nez v1, :cond_23

    .line 1936
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    .line 1937
    .local v1, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 1938
    .local v2, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1939
    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1942
    .end local v1    # "rules":Ljava/time/zone/ZoneRules;
    .end local v2    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_23
    invoke-static {v0, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api atTime(II)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 1843
    invoke-static {p1, p2}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atTime(III)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .line 1862
    invoke-static {p1, p2, p3}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atTime(IIII)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "nanoOfSecond"    # I

    .line 1881
    invoke-static {p1, p2, p3, p4}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .registers 3
    .param p1, "time"    # Ljava/time/LocalTime;

    .line 1825
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atTime(Ljava/time/OffsetTime;)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "time"    # Ljava/time/OffsetTime;

    .line 1894
    invoke-virtual {p1}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    check-cast p1, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/chrono/ChronoLocalDate;)I
    .registers 3
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 2008
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_c

    .line 2009
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    return v0

    .line 2011
    :cond_c
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    return v0
.end method

.method greylist-max-o compareTo0(Ljava/time/LocalDate;)I
    .registers 5
    .param p1, "otherDate"    # Ljava/time/LocalDate;

    .line 2015
    iget v0, p0, Ljava/time/LocalDate;->year:I

    iget v1, p1, Ljava/time/LocalDate;->year:I

    sub-int/2addr v0, v1

    .line 2016
    .local v0, "cmp":I
    if-nez v0, :cond_15

    .line 2017
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    iget-short v2, p1, Ljava/time/LocalDate;->month:S

    sub-int v0, v1, v2

    .line 2018
    if-nez v0, :cond_15

    .line 2019
    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    iget-short v2, p1, Ljava/time/LocalDate;->day:S

    sub-int v0, v1, v2

    .line 2022
    :cond_15
    return v0
.end method

.method public whitelist test-api datesUntil(Ljava/time/LocalDate;)Ljava/util/stream/Stream;
    .registers 9
    .param p1, "endExclusive"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDate;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 1727
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 1728
    .local v0, "end":J
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    .line 1729
    .local v2, "start":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1a

    .line 1732
    invoke-static {v2, v3, v0, v1}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    move-result-object v4

    new-instance v5, Ljava/time/LocalDate$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/time/LocalDate$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;

    move-result-object v4

    return-object v4

    .line 1730
    :cond_1a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist test-api datesUntil(Ljava/time/LocalDate;Ljava/time/Period;)Ljava/util/stream/Stream;
    .registers 33
    .param p1, "endExclusive"    # Ljava/time/LocalDate;
    .param p2, "step"    # Ljava/time/Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDate;",
            "Ljava/time/Period;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 1754
    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_137

    .line 1757
    invoke-virtual/range {p1 .. p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v6

    .line 1758
    .local v6, "end":J
    invoke-virtual {v1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v8

    .line 1759
    .local v8, "start":J
    sub-long v10, v6, v8

    .line 1760
    .local v10, "until":J
    invoke-virtual/range {p2 .. p2}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v2

    .line 1761
    .local v2, "months":J
    invoke-virtual/range {p2 .. p2}, Ljava/time/Period;->getDays()I

    move-result v0

    int-to-long v4, v0

    .line 1762
    .local v4, "days":J
    const-wide/16 v12, 0x0

    cmp-long v0, v2, v12

    if-gez v0, :cond_25

    cmp-long v0, v4, v12

    if-gtz v0, :cond_2e

    :cond_25
    cmp-long v0, v2, v12

    if-lez v0, :cond_36

    cmp-long v0, v4, v12

    if-ltz v0, :cond_2e

    goto :goto_36

    .line 1763
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "period months and days are of opposite sign"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1765
    :cond_36
    :goto_36
    cmp-long v0, v10, v12

    if-nez v0, :cond_3f

    .line 1766
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 1768
    :cond_3f
    cmp-long v0, v2, v12

    const/4 v14, 0x1

    if-gtz v0, :cond_4b

    cmp-long v0, v4, v12

    if-lez v0, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v0, -0x1

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v0, v14

    :goto_4c
    move v15, v0

    .line 1769
    .local v15, "sign":I
    const/4 v0, 0x0

    if-gez v15, :cond_53

    move/from16 v16, v14

    goto :goto_55

    :cond_53
    move/from16 v16, v0

    :goto_55
    cmp-long v17, v10, v12

    if-gez v17, :cond_5a

    goto :goto_5b

    :cond_5a
    move v14, v0

    :goto_5b
    xor-int v0, v16, v14

    if-eqz v0, :cond_83

    .line 1770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, p1

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-gez v15, :cond_71

    const-string v13, " > "

    goto :goto_73

    :cond_71
    const-string v13, " < "

    :goto_73
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1772
    :cond_83
    move-object/from16 v14, p1

    cmp-long v0, v2, v12

    if-nez v0, :cond_9f

    .line 1773
    int-to-long v12, v15

    sub-long v12, v10, v12

    div-long/2addr v12, v4

    .line 1774
    .local v12, "steps":J
    move-wide/from16 v18, v2

    const-wide/16 v2, 0x0

    .end local v2    # "months":J
    .local v18, "months":J
    invoke-static {v2, v3, v12, v13}, Ljava/util/stream/LongStream;->rangeClosed(JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    new-instance v2, Ljava/time/LocalDate$$ExternalSyntheticLambda2;

    invoke-direct {v2, v8, v9, v4, v5}, Ljava/time/LocalDate$$ExternalSyntheticLambda2;-><init>(JJ)V

    invoke-interface {v0, v2}, Ljava/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 1778
    .end local v12    # "steps":J
    .end local v18    # "months":J
    .restart local v2    # "months":J
    :cond_9f
    move-wide/from16 v18, v2

    .end local v2    # "months":J
    .restart local v18    # "months":J
    const-wide/16 v2, 0x640

    mul-long v12, v10, v2

    const-wide/32 v20, 0xbe3b

    mul-long v20, v20, v18

    mul-long/2addr v2, v4

    add-long v20, v20, v2

    div-long v12, v12, v20

    const-wide/16 v2, 0x1

    add-long/2addr v12, v2

    .line 1779
    .restart local v12    # "steps":J
    move-wide/from16 v20, v2

    mul-long v2, v18, v12

    .line 1780
    .local v2, "addMonths":J
    mul-long v22, v4, v12

    .line 1781
    .local v22, "addDays":J
    const-wide/16 v16, 0x0

    cmp-long v0, v18, v16

    if-lez v0, :cond_cb

    sget-object v0, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    invoke-direct {v0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v24

    invoke-direct {v1}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v26

    sub-long v24, v24, v26

    goto :goto_d7

    .line 1782
    :cond_cb
    invoke-direct {v1}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v24

    sget-object v0, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    invoke-direct {v0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v26

    sub-long v24, v24, v26

    :goto_d7
    nop

    .line 1784
    .local v24, "maxAddMonths":J
    move-wide/from16 v26, v4

    .end local v4    # "days":J
    .local v26, "days":J
    int-to-long v4, v15

    mul-long/2addr v4, v2

    cmp-long v0, v4, v24

    if-gtz v0, :cond_f5

    .line 1785
    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v4

    add-long v4, v4, v22

    move-wide/from16 v28, v2

    .end local v2    # "addMonths":J
    .local v28, "addMonths":J
    int-to-long v2, v15

    mul-long/2addr v4, v2

    int-to-long v2, v15

    mul-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-ltz v0, :cond_11d

    goto :goto_f7

    .line 1784
    .end local v28    # "addMonths":J
    .restart local v2    # "addMonths":J
    :cond_f5
    move-wide/from16 v28, v2

    .line 1786
    .end local v2    # "addMonths":J
    .restart local v28    # "addMonths":J
    :goto_f7
    sub-long v12, v12, v20

    .line 1787
    sub-long v2, v28, v18

    .line 1788
    .end local v28    # "addMonths":J
    .restart local v2    # "addMonths":J
    sub-long v22, v22, v26

    .line 1789
    int-to-long v4, v15

    mul-long/2addr v4, v2

    cmp-long v0, v4, v24

    if-gtz v0, :cond_119

    .line 1790
    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v4

    add-long v4, v4, v22

    int-to-long v0, v15

    mul-long/2addr v4, v0

    int-to-long v0, v15

    mul-long/2addr v0, v6

    cmp-long v0, v4, v0

    if-ltz v0, :cond_116

    goto :goto_119

    :cond_116
    move-wide/from16 v28, v2

    goto :goto_11d

    .line 1791
    :cond_119
    :goto_119
    sub-long v12, v12, v20

    move-wide/from16 v28, v2

    .line 1794
    .end local v2    # "addMonths":J
    .restart local v28    # "addMonths":J
    :cond_11d
    :goto_11d
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v12, v13}, Ljava/util/stream/LongStream;->rangeClosed(JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    move-object v1, v0

    new-instance v0, Ljava/time/LocalDate$$ExternalSyntheticLambda3;

    move-wide/from16 v16, v6

    move-wide/from16 v2, v18

    move-wide/from16 v4, v26

    move-object v6, v1

    move-object/from16 v1, p0

    .end local v6    # "end":J
    .end local v18    # "months":J
    .end local v26    # "days":J
    .local v2, "months":J
    .restart local v4    # "days":J
    .local v16, "end":J
    invoke-direct/range {v0 .. v5}, Ljava/time/LocalDate$$ExternalSyntheticLambda3;-><init>(Ljava/time/LocalDate;JJ)V

    invoke-interface {v6, v0}, Ljava/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 1755
    .end local v2    # "months":J
    .end local v4    # "days":J
    .end local v8    # "start":J
    .end local v10    # "until":J
    .end local v12    # "steps":J
    .end local v15    # "sign":I
    .end local v16    # "end":J
    .end local v22    # "addDays":J
    .end local v24    # "maxAddMonths":J
    .end local v28    # "addMonths":J
    :cond_137
    move-object/from16 v14, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "step is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o daysUntil(Ljava/time/LocalDate;)J
    .registers 6
    .param p1, "end"    # Ljava/time/LocalDate;

    .line 1656
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2128
    return v0

    .line 2130
    :cond_4
    instance-of v1, p1, Ljava/time/LocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 2131
    move-object v1, p1

    check-cast v1, Ljava/time/LocalDate;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 2133
    :cond_15
    return v2
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1809
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1810
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 645
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    .line 646
    invoke-direct {p0, p1}, Ljava/time/LocalDate;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 648
    :cond_9
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 135
    invoke-virtual {p0}, Ljava/time/LocalDate;->getChronology()Ljava/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getChronology()Ljava/time/chrono/IsoChronology;
    .registers 2

    .line 724
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0
.end method

.method public whitelist test-api getDayOfMonth()I
    .registers 2

    .line 800
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    return v0
.end method

.method public whitelist test-api getDayOfWeek()Ljava/time/DayOfWeek;
    .registers 5

    .line 828
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->floorMod(JI)I

    move-result v0

    .line 829
    .local v0, "dow0":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getDayOfYear()I
    .registers 3

    .line 811
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v0

    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api getEra()Ljava/time/chrono/Era;
    .registers 3

    .line 746
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_a

    sget-object v0, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    goto :goto_c

    :cond_a
    sget-object v0, Ljava/time/chrono/IsoEra;->BCE:Ljava/time/chrono/IsoEra;

    :goto_c
    return-object v0
.end method

.method public bridge synthetic whitelist getEra()Ljava/time/chrono/IsoEra;
    .registers 2

    invoke-virtual {p0}, Ljava/time/LocalDate;->getEra()Ljava/time/chrono/Era;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/IsoEra;

    return-object v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 676
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1c

    .line 677
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    .line 678
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    .line 680
    :cond_d
    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_16

    .line 681
    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 683
    :cond_16
    invoke-direct {p0, p1}, Ljava/time/LocalDate;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 685
    :cond_1c
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getMonth()Ljava/time/Month;
    .registers 2

    .line 789
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    invoke-static {v0}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMonthValue()I
    .registers 2

    .line 774
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    return v0
.end method

.method public whitelist test-api getYear()I
    .registers 2

    .line 760
    iget v0, p0, Ljava/time/LocalDate;->year:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 2143
    iget v0, p0, Ljava/time/LocalDate;->year:I

    .line 2144
    .local v0, "yearValue":I
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    .line 2145
    .local v1, "monthValue":I
    iget-short v2, p0, Ljava/time/LocalDate;->day:S

    .line 2146
    .local v2, "dayValue":I
    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v4, v0, 0xb

    shl-int/lit8 v5, v1, 0x6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    xor-int/2addr v3, v4

    return v3
.end method

.method public whitelist test-api isAfter(Ljava/time/chrono/ChronoLocalDate;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 2048
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_11

    .line 2049
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 2051
    :cond_11
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/chrono/ChronoLocalDate;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 2077
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_11

    .line 2078
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 2080
    :cond_11
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEqual(Ljava/time/chrono/ChronoLocalDate;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 2106
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_11

    .line 2107
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 2109
    :cond_11
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isEqual(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isLeapYear()Z
    .registers 4

    .line 853
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    iget v1, p0, Ljava/time/LocalDate;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 537
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 571
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api lengthOfMonth()I
    .registers 2

    .line 866
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    sparse-switch v0, :sswitch_data_18

    .line 875
    const/16 v0, 0x1f

    return v0

    .line 873
    :sswitch_8
    const/16 v0, 0x1e

    return v0

    .line 868
    :sswitch_b
    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x1d

    goto :goto_16

    :cond_14
    const/16 v0, 0x1c

    :goto_16
    return v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x2 -> :sswitch_b
        0x4 -> :sswitch_8
        0x6 -> :sswitch_8
        0x9 -> :sswitch_8
        0xb -> :sswitch_8
    .end sparse-switch
.end method

.method public whitelist test-api lengthOfYear()I
    .registers 2

    .line 888
    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1442
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;
    .registers 6
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 1414
    instance-of v0, p1, Ljava/time/Period;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    .line 1415
    .local v0, "periodToSubtract":Ljava/time/Period;
    invoke-virtual {v0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->minusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1417
    .end local v0    # "periodToSubtract":Ljava/time/Period;
    :cond_19
    const-string v0, "amountToSubtract"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1418
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusDays(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "daysToSubtract"    # J

    .line 1529
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusMonths(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "monthsToSubtract"    # J

    .line 1491
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusWeeks(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "weeksToSubtract"    # J

    .line 1510
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusYears(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "yearsToSubtract"    # J

    .line 1467
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;
    .registers 8
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1256
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_71

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 1257
    .local v0, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    sget-object v1, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_78

    .line 1267
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1265
    :pswitch_2b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1264
    :pswitch_3c
    const/16 v1, 0x3e8

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1263
    :pswitch_47
    const/16 v1, 0x64

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1262
    :pswitch_52
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1261
    :pswitch_5d
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1260
    :pswitch_62
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1259
    :pswitch_67
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1258
    :pswitch_6c
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1269
    .end local v0    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_71
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_52
        :pswitch_47
        :pswitch_3c
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;
    .registers 6
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 1166
    instance-of v0, p1, Ljava/time/Period;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    .line 1167
    .local v0, "periodToAdd":Ljava/time/Period;
    invoke-virtual {v0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1169
    .end local v0    # "periodToAdd":Ljava/time/Period;
    :cond_19
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1170
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusDays(J)Ljava/time/LocalDate;
    .registers 13
    .param p1, "daysToAdd"    # J

    .line 1367
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    .line 1368
    return-object p0

    .line 1370
    :cond_7
    iget-short v2, p0, Ljava/time/LocalDate;->day:S

    int-to-long v2, v2

    add-long/2addr v2, p1

    .line 1371
    .local v2, "dom":J
    cmp-long v0, v2, v0

    if-lez v0, :cond_64

    .line 1372
    const-wide/16 v0, 0x1c

    cmp-long v0, v2, v0

    if-gtz v0, :cond_20

    .line 1373
    new-instance v0, Ljava/time/LocalDate;

    iget v1, p0, Ljava/time/LocalDate;->year:I

    iget-short v4, p0, Ljava/time/LocalDate;->month:S

    long-to-int v5, v2

    invoke-direct {v0, v1, v4, v5}, Ljava/time/LocalDate;-><init>(III)V

    return-object v0

    .line 1374
    :cond_20
    const-wide/16 v0, 0x3b

    cmp-long v0, v2, v0

    if-gtz v0, :cond_64

    .line 1375
    invoke-virtual {p0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v0

    int-to-long v0, v0

    .line 1376
    .local v0, "monthLen":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_3a

    .line 1377
    new-instance v4, Ljava/time/LocalDate;

    iget v5, p0, Ljava/time/LocalDate;->year:I

    iget-short v6, p0, Ljava/time/LocalDate;->month:S

    long-to-int v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljava/time/LocalDate;-><init>(III)V

    return-object v4

    .line 1378
    :cond_3a
    iget-short v4, p0, Ljava/time/LocalDate;->month:S

    const/16 v5, 0xc

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4f

    .line 1379
    new-instance v4, Ljava/time/LocalDate;

    iget v5, p0, Ljava/time/LocalDate;->year:I

    iget-short v7, p0, Ljava/time/LocalDate;->month:S

    add-int/2addr v7, v6

    sub-long v8, v2, v0

    long-to-int v6, v8

    invoke-direct {v4, v5, v7, v6}, Ljava/time/LocalDate;-><init>(III)V

    return-object v4

    .line 1381
    :cond_4f
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    iget v5, p0, Ljava/time/LocalDate;->year:I

    add-int/2addr v5, v6

    int-to-long v7, v5

    invoke-virtual {v4, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1382
    new-instance v4, Ljava/time/LocalDate;

    iget v5, p0, Ljava/time/LocalDate;->year:I

    add-int/2addr v5, v6

    sub-long v7, v2, v0

    long-to-int v7, v7

    invoke-direct {v4, v5, v6, v7}, Ljava/time/LocalDate;-><init>(III)V

    return-object v4

    .line 1387
    .end local v0    # "monthLen":J
    :cond_64
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 1388
    .local v0, "mjDay":J
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v4

    return-object v4
.end method

.method public whitelist test-api plusMonths(J)Ljava/time/LocalDate;
    .registers 11
    .param p1, "monthsToAdd"    # J

    .line 1322
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1323
    return-object p0

    .line 1325
    :cond_7
    iget v0, p0, Ljava/time/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-short v2, p0, Ljava/time/LocalDate;->month:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1326
    .local v0, "monthCount":J
    add-long v2, v0, p1

    .line 1327
    .local v2, "calcMonths":J
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/16 v5, 0xc

    invoke-static {v2, v3, v5}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 1328
    .local v4, "newYear":I
    invoke-static {v2, v3, v5}, Ljava/lang/Math;->floorMod(JI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1329
    .local v5, "newMonth":I
    iget-short v6, p0, Ljava/time/LocalDate;->day:S

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public whitelist test-api plusWeeks(J)Ljava/time/LocalDate;
    .registers 5
    .param p1, "weeksToAdd"    # J

    .line 1348
    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusYears(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "yearsToAdd"    # J

    .line 1294
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1295
    return-object p0

    .line 1297
    :cond_7
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    iget v1, p0, Ljava/time/LocalDate;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 1298
    .local v0, "newYear":I
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    iget-short v2, p0, Ljava/time/LocalDate;->day:S

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1554
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1555
    return-object p0

    .line 1557
    :cond_7
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 600
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_76

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 601
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 602
    sget-object v1, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_7c

    .line 609
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 607
    :pswitch_1f
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    if-gtz v1, :cond_29

    const-wide/32 v4, 0x3b9aca00

    goto :goto_2c

    :cond_29
    const-wide/32 v4, 0x3b9ac9ff

    :goto_2c
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 605
    :pswitch_31
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    sget-object v4, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    if-ne v1, v4, :cond_42

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-nez v1, :cond_42

    const-wide/16 v4, 0x4

    goto :goto_44

    :cond_42
    const-wide/16 v4, 0x5

    :goto_44
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 604
    :pswitch_49
    invoke-virtual {p0}, Ljava/time/LocalDate;->lengthOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 603
    :pswitch_53
    invoke-virtual {p0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 611
    :cond_5d
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_76
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_53
        :pswitch_49
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method

.method public whitelist test-api toEpochDay()J
    .registers 13

    .line 1948
    iget v0, p0, Ljava/time/LocalDate;->year:I

    int-to-long v0, v0

    .line 1949
    .local v0, "y":J
    iget-short v2, p0, Ljava/time/LocalDate;->month:S

    int-to-long v2, v2

    .line 1950
    .local v2, "m":J
    const-wide/16 v4, 0x0

    .line 1951
    .local v4, "total":J
    const-wide/16 v6, 0x16d

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 1952
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_28

    .line 1953
    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v8, v0

    const-wide/16 v10, 0x190

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    goto :goto_37

    .line 1955
    :cond_28
    const-wide/16 v6, -0x4

    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long v8, v0, v8

    add-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 1957
    :goto_37
    const-wide/16 v6, 0x16f

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x16a

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 1958
    iget-short v6, p0, Ljava/time/LocalDate;->day:S

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 1959
    const-wide/16 v6, 0x2

    cmp-long v6, v2, v6

    if-lez v6, :cond_57

    .line 1960
    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 1961
    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v8

    if-nez v8, :cond_57

    .line 1962
    sub-long/2addr v4, v6

    .line 1965
    :cond_57
    const-wide/32 v6, 0xafaa8

    sub-long v6, v4, v6

    return-wide v6
.end method

.method public whitelist test-api toEpochSecond(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)J
    .registers 7
    .param p1, "time"    # Ljava/time/LocalTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .line 1984
    const-string v0, "time"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1985
    const-string v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1986
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1987
    .local v0, "secs":J
    invoke-virtual {p2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 1988
    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 2159
    iget v0, p0, Ljava/time/LocalDate;->year:I

    .line 2160
    .local v0, "yearValue":I
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    .line 2161
    .local v1, "monthValue":I
    iget-short v2, p0, Ljava/time/LocalDate;->day:S

    .line 2162
    .local v2, "dayValue":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2163
    .local v3, "absYear":I
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2164
    .local v4, "buf":Ljava/lang/StringBuilder;
    const/16 v6, 0x3e8

    if-ge v3, v6, :cond_2d

    .line 2165
    if-gez v0, :cond_22

    .line 2166
    add-int/lit16 v6, v0, -0x2710

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 2168
    :cond_22
    add-int/lit16 v6, v0, 0x2710

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 2171
    :cond_2d
    const/16 v6, 0x270f

    if-le v0, v6, :cond_36

    .line 2172
    const/16 v6, 0x2b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2174
    :cond_36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2176
    :goto_39
    const-string v6, "-0"

    const-string v7, "-"

    if-ge v1, v5, :cond_41

    move-object v8, v6

    goto :goto_42

    :cond_41
    move-object v8, v7

    :goto_42
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2177
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2178
    if-ge v2, v5, :cond_4d

    goto :goto_4e

    :cond_4d
    move-object v6, v7

    :goto_4e
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2179
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2180
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2176
    return-object v5
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 8
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1638
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 1639
    .local v0, "end":Ljava/time/LocalDate;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_6f

    .line 1640
    sget-object v1, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v2, p2

    check-cast v2, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_74

    .line 1650
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1648
    :pswitch_2f
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 1647
    :pswitch_3d
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x2ee0

    div-long/2addr v1, v3

    return-wide v1

    .line 1646
    :pswitch_45
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x4b0

    div-long/2addr v1, v3

    return-wide v1

    .line 1645
    :pswitch_4d
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x78

    div-long/2addr v1, v3

    return-wide v1

    .line 1644
    :pswitch_55
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0xc

    div-long/2addr v1, v3

    return-wide v1

    .line 1643
    :pswitch_5d
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    return-wide v1

    .line 1642
    :pswitch_62
    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x7

    div-long/2addr v1, v3

    return-wide v1

    .line 1641
    :pswitch_6a
    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    return-wide v1

    .line 1652
    :cond_6f
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_62
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_45
        :pswitch_3d
        :pswitch_2f
    .end packed-switch
.end method

.method public whitelist test-api until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;
    .registers 11
    .param p1, "endDateExclusive"    # Ljava/time/chrono/ChronoLocalDate;

    .line 1699
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 1700
    .local v0, "end":Ljava/time/LocalDate;
    invoke-direct {v0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v1

    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1701
    .local v1, "totalMonths":J
    iget-short v3, v0, Ljava/time/LocalDate;->day:S

    iget-short v4, p0, Ljava/time/LocalDate;->day:S

    sub-int/2addr v3, v4

    .line 1702
    .local v3, "days":I
    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    const-wide/16 v7, 0x1

    if-lez v6, :cond_2c

    if-gez v3, :cond_2c

    .line 1703
    sub-long/2addr v1, v7

    .line 1704
    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v4

    .line 1705
    .local v4, "calcDate":Ljava/time/LocalDate;
    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    .line 1706
    .end local v4    # "calcDate":Ljava/time/LocalDate;
    :cond_2b
    goto :goto_38

    :cond_2c
    cmp-long v4, v1, v4

    if-gez v4, :cond_2b

    if-lez v3, :cond_2b

    .line 1707
    add-long/2addr v1, v7

    .line 1708
    invoke-virtual {v0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1710
    :goto_38
    const-wide/16 v4, 0xc

    div-long v6, v1, v4

    .line 1711
    .local v6, "years":J
    rem-long v4, v1, v4

    long-to-int v4, v4

    .line 1712
    .local v4, "months":I
    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    invoke-static {v5, v4, v3}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic whitelist test-api until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 932
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_8

    .line 933
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    return-object v0

    .line 935
    :cond_8
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;
    .registers 9
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 1044
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_be

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 1045
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1046
    sget-object v1, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_c6

    .line 1061
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1059
    :pswitch_2f
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_3b

    move-object v1, p0

    goto :goto_42

    :cond_3b
    iget v1, p0, Ljava/time/LocalDate;->year:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    :goto_42
    return-object v1

    .line 1058
    :pswitch_43
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1056
    :pswitch_49
    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1055
    :pswitch_54
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1054
    :pswitch_5a
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1052
    :pswitch_67
    invoke-static {p2, p3}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1049
    :pswitch_6c
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1048
    :pswitch_79
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1047
    :pswitch_86
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->getValue()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1057
    :pswitch_96
    iget v1, p0, Ljava/time/LocalDate;->year:I

    if-lt v1, v2, :cond_9c

    move-wide v1, p2

    goto :goto_9f

    :cond_9c
    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    :goto_9f
    long-to-int v1, v1

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1053
    :pswitch_a5
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1051
    :pswitch_b2
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1050
    :pswitch_b8
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1063
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_be
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_b2
        :pswitch_a5
        :pswitch_96
        :pswitch_86
        :pswitch_79
        :pswitch_6c
        :pswitch_67
        :pswitch_5a
        :pswitch_54
        :pswitch_49
        :pswitch_43
        :pswitch_2f
    .end packed-switch
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withDayOfMonth(I)Ljava/time/LocalDate;
    .registers 4
    .param p1, "dayOfMonth"    # I

    .line 1118
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    if-ne v0, p1, :cond_5

    .line 1119
    return-object p0

    .line 1121
    :cond_5
    iget v0, p0, Ljava/time/LocalDate;->year:I

    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    invoke-static {v0, v1, p1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withDayOfYear(I)Ljava/time/LocalDate;
    .registers 3
    .param p1, "dayOfYear"    # I

    .line 1137
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 1138
    return-object p0

    .line 1140
    :cond_7
    iget v0, p0, Ljava/time/LocalDate;->year:I

    invoke-static {v0, p1}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withMonth(I)Ljava/time/LocalDate;
    .registers 5
    .param p1, "month"    # I

    .line 1098
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    if-ne v0, p1, :cond_5

    .line 1099
    return-object p0

    .line 1101
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1102
    iget v0, p0, Ljava/time/LocalDate;->year:I

    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    invoke-static {v0, p1, v1}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withYear(I)Ljava/time/LocalDate;
    .registers 5
    .param p1, "year"    # I

    .line 1079
    iget v0, p0, Ljava/time/LocalDate;->year:I

    if-ne v0, p1, :cond_5

    .line 1080
    return-object p0

    .line 1082
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1083
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    invoke-static {p1, v0, v1}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2214
    iget v0, p0, Ljava/time/LocalDate;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2215
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2216
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2217
    return-void
.end method

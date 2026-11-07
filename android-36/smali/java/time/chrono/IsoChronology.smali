.class public final Ljava/time/chrono/IsoChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "IsoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist DAYS_0000_TO_1970:J = 0xafaa8L

.field public static final whitelist test-api INSTANCE:Ljava/time/chrono/IsoChronology;

.field private static final whitelist serialVersionUID:J = -0x13fd57b046d9ef27L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Ljava/time/chrono/IsoChronology;

    invoke-direct {v0}, Ljava/time/chrono/IsoChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 145
    return-void
.end method

.method private blacklist numberOfDaysOfMonth(II)I
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 342
    sparse-switch p2, :sswitch_data_1a

    .line 353
    const/16 v0, 0x1f

    .local v0, "dom":I
    goto :goto_18

    .line 350
    .end local v0    # "dom":I
    :sswitch_6
    const/16 v0, 0x1e

    .line 351
    .restart local v0    # "dom":I
    goto :goto_18

    .line 344
    .end local v0    # "dom":I
    :sswitch_9
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x1d

    goto :goto_17

    :cond_15
    const/16 v0, 0x1c

    .line 345
    .restart local v0    # "dom":I
    :goto_17
    nop

    .line 356
    :goto_18
    return v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x2 -> :sswitch_9
        0x4 -> :sswitch_6
        0x6 -> :sswitch_6
        0x9 -> :sswitch_6
        0xb -> :sswitch_6
    .end sparse-switch
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 706
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api date(III)Ljava/time/LocalDate;
    .registers 5
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 211
    invoke-static {p1, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api date(Ljava/time/chrono/Era;III)Ljava/time/LocalDate;
    .registers 6
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 194
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljava/time/chrono/IsoChronology;->date(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 269
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api date(III)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/IsoChronology;->date(III)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/time/chrono/IsoChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateEpochDay(J)Ljava/time/LocalDate;
    .registers 4
    .param p1, "epochDay"    # J

    .line 254
    invoke-static {p1, p2}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->dateEpochDay(J)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateNow()Ljava/time/LocalDate;
    .registers 2

    .line 418
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;
    .registers 3
    .param p1, "clock"    # Ljava/time/Clock;

    .line 451
    const-string v0, "clock"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/IsoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/ZoneId;)Ljava/time/LocalDate;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 435
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateNow()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 126
    invoke-virtual {p0}, Ljava/time/chrono/IsoChronology;->dateNow()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateYearDay(II)Ljava/time/LocalDate;
    .registers 4
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 240
    invoke-static {p1, p2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/LocalDate;
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 225
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljava/time/chrono/IsoChronology;->dateYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
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

    .line 126
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->dateYearDay(II)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/IsoChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api epochSecond(IIIIIILjava/time/ZoneOffset;)J
    .registers 24
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "zoneOffset"    # Ljava/time/ZoneOffset;

    .line 294
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    sget-object v6, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 295
    sget-object v6, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 296
    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    int-to-long v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 297
    sget-object v6, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 298
    sget-object v6, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    int-to-long v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 299
    sget-object v6, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 300
    const-string v6, "zoneOffset"

    move-object/from16 v7, p7

    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 301
    const/16 v6, 0x1c

    if-le v2, v6, :cond_95

    .line 302
    invoke-direct/range {p0 .. p2}, Ljava/time/chrono/IsoChronology;->numberOfDaysOfMonth(II)I

    move-result v6

    .line 303
    .local v6, "dom":I
    if-le v2, v6, :cond_95

    .line 304
    const/16 v8, 0x1d

    if-ne v2, v8, :cond_64

    .line 305
    new-instance v8, Ljava/time/DateTimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date \'February 29\' as \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is not a leap year"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 307
    :cond_64
    new-instance v8, Ljava/time/DateTimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 312
    .end local v6    # "dom":I
    :cond_95
    const-wide/16 v8, 0x0

    .line 313
    .local v8, "totalDays":J
    const/4 v6, 0x0

    .line 314
    .local v6, "timeinSec":I
    const-wide/16 v10, 0x16d

    int-to-long v12, v0

    mul-long/2addr v12, v10

    add-long/2addr v8, v12

    .line 315
    if-ltz v0, :cond_b8

    .line 316
    int-to-long v10, v0

    const-wide/16 v12, 0x3

    add-long/2addr v10, v12

    const-wide/16 v12, 0x4

    div-long/2addr v10, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x63

    add-long/2addr v12, v14

    const-wide/16 v14, 0x64

    div-long/2addr v12, v14

    sub-long/2addr v10, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x18f

    add-long/2addr v12, v14

    const-wide/16 v14, 0x190

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    goto :goto_c2

    .line 318
    :cond_b8
    div-int/lit8 v10, v0, -0x4

    div-int/lit8 v11, v0, -0x64

    sub-int/2addr v10, v11

    div-int/lit16 v11, v0, -0x190

    add-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    .line 320
    :goto_c2
    mul-int/lit16 v10, v1, 0x16f

    add-int/lit16 v10, v10, -0x16a

    div-int/lit8 v10, v10, 0xc

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 321
    add-int/lit8 v10, v2, -0x1

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 322
    const/4 v10, 0x2

    if-le v1, v10, :cond_de

    .line 323
    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    .line 324
    sget-object v12, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v12

    if-nez v12, :cond_de

    .line 325
    sub-long/2addr v8, v10

    .line 328
    :cond_de
    const-wide/32 v10, 0xafaa8

    sub-long/2addr v8, v10

    .line 329
    mul-int/lit8 v10, v3, 0x3c

    add-int/2addr v10, v4

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v10, v5

    .line 330
    .end local v6    # "timeinSec":I
    .local v10, "timeinSec":I
    const-wide/32 v11, 0x15180

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v11

    invoke-virtual {v7}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    sub-int v6, v10, v6

    int-to-long v13, v6

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v11

    return-wide v11
.end method

.method public bridge synthetic whitelist test-api eraOf(I)Ljava/time/chrono/Era;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->eraOf(I)Ljava/time/chrono/IsoEra;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api eraOf(I)Ljava/time/chrono/IsoEra;
    .registers 3
    .param p1, "eraValue"    # I

    .line 490
    invoke-static {p1}, Ljava/time/chrono/IsoEra;->of(I)Ljava/time/chrono/IsoEra;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api eras()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .line 495
    invoke-static {}, Ljava/time/chrono/IsoEra;->values()[Ljava/time/chrono/IsoEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 176
    const-string v0, "iso8601"

    return-object v0
.end method

.method public whitelist test-api getId()Ljava/lang/String;
    .registers 2

    .line 159
    const-string v0, "ISO"

    return-object v0
.end method

.method public whitelist test-api isLeapYear(J)Z
    .registers 7
    .param p1, "prolepticYear"    # J

    .line 477
    const-wide/16 v0, 0x3

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    const-wide/16 v0, 0x64

    rem-long v0, p1, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    const-wide/16 v0, 0x190

    rem-long v0, p1, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public whitelist test-api localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 371
    invoke-static {p1}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api period(III)Ljava/time/Period;
    .registers 5
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .line 677
    invoke-static {p1, p2, p3}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api period(III)Ljava/time/chrono/ChronoPeriod;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/IsoChronology;->period(III)Ljava/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api prolepticYear(Ljava/time/chrono/Era;I)I
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 482
    instance-of v0, p1, Ljava/time/chrono/IsoEra;

    if-eqz v0, :cond_d

    .line 485
    sget-object v0, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    if-ne p1, v0, :cond_a

    move v0, p2

    goto :goto_c

    :cond_a
    rsub-int/lit8 v0, p2, 0x1

    :goto_c
    return v0

    .line 483
    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be IsoEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/ChronoField;

    .line 660
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;
    .registers 4
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/LocalDate;"
        }
    .end annotation

    .line 586
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
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

    .line 126
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o resolveProlepticMonth(Ljava/util/Map;Ljava/time/format/ResolverStyle;)V
    .registers 8
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")V"
        }
    .end annotation

    .line 591
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 592
    .local v0, "pMonth":Ljava/lang/Long;
    if-eqz v0, :cond_36

    .line 593
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq p2, v1, :cond_17

    .line 594
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 596
    :cond_17
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Ljava/lang/Math;->floorMod(JI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 597
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 599
    :cond_36
    return-void
.end method

.method greylist-max-o resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;
    .registers 10
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/LocalDate;"
        }
    .end annotation

    .line 638
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 639
    .local v0, "y":I
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p2, v1, :cond_46

    .line 640
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v1

    .line 641
    .local v1, "months":J
    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    .line 642
    .local v3, "days":J
    const/4 v5, 0x1

    invoke-static {v0, v5, v5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v5

    return-object v5

    .line 644
    .end local v1    # "months":J
    .end local v3    # "days":J
    :cond_46
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    .line 645
    .local v1, "moy":I
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    .line 646
    .local v2, "dom":I
    sget-object v3, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne p2, v3, :cond_96

    .line 647
    const/4 v3, 0x4

    if-eq v1, v3, :cond_90

    const/4 v3, 0x6

    if-eq v1, v3, :cond_90

    const/16 v3, 0x9

    if-eq v1, v3, :cond_90

    const/16 v3, 0xb

    if-ne v1, v3, :cond_7d

    goto :goto_90

    .line 649
    :cond_7d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_96

    .line 650
    sget-object v3, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/time/Year;->isLeap(J)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/time/Month;->length(Z)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_96

    .line 648
    :cond_90
    :goto_90
    const/16 v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 654
    :cond_96
    :goto_96
    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v3

    return-object v3
.end method

.method bridge synthetic blacklist resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
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

    .line 126
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->resolveYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;
    .registers 13
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/LocalDate;"
        }
    .end annotation

    .line 603
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 604
    .local v0, "yoeLong":Ljava/lang/Long;
    if-eqz v0, :cond_b3

    .line 605
    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq p2, v1, :cond_17

    .line 606
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 608
    :cond_17
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 609
    .local v1, "era":Ljava/lang/Long;
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    if-nez v1, :cond_72

    .line 610
    sget-object v6, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 611
    .local v6, "year":Ljava/lang/Long;
    sget-object v7, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p2, v7, :cond_54

    .line 613
    if-eqz v6, :cond_4e

    .line 614
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v8, v2

    if-lez v2, :cond_42

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_4a

    :cond_42
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    :goto_4a
    invoke-virtual {p0, p1, v7, v2, v3}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_71

    .line 617
    :cond_4e
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 621
    :cond_54
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    if-eqz v6, :cond_6a

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v8, v2

    if-lez v2, :cond_61

    goto :goto_6a

    :cond_61
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    goto :goto_6e

    :cond_6a
    :goto_6a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_6e
    invoke-virtual {p0, p1, v7, v2, v3}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 623
    .end local v6    # "year":Ljava/lang/Long;
    :goto_71
    goto :goto_cd

    :cond_72
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_84

    .line 624
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1, v2, v3, v4}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_cd

    .line 625
    :cond_84
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-nez v2, :cond_9a

    .line 626
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    invoke-virtual {p0, p1, v2, v3, v4}, Ljava/time/chrono/IsoChronology;->addFieldValue(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto :goto_cd

    .line 628
    :cond_9a
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for era: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 630
    .end local v1    # "era":Ljava/lang/Long;
    :cond_b3
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 631
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    goto :goto_ce

    .line 630
    :cond_cd
    :goto_cd
    nop

    .line 633
    :goto_ce
    const/4 v1, 0x0

    return-object v1
.end method

.method bridge synthetic blacklist resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
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

    .line 126
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 695
    invoke-super {p0}, Ljava/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;

    .line 400
    invoke-static {p1, p2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 385
    invoke-static {p1}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3
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

    .line 126
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/IsoChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Ljava/time/chrono/IsoChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

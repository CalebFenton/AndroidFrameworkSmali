.class public Landroid/icu/impl/JavaTimeConverters;
.super Ljava/lang/Object;
.source "JavaTimeConverters.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist MILLIS_PER_DAY:J = 0x5265c00L


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static blacklist millisToCalendar(J)Landroid/icu/util/Calendar;
    .registers 3
    .param p0, "epochMillis"    # J

    .line 258
    sget-object v0, Landroid/icu/util/TimeZone;->GMT_ZONE:Landroid/icu/util/TimeZone;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/JavaTimeConverters;->millisToCalendar(JLandroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist millisToCalendar(JLandroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;
    .registers 7
    .param p0, "epochMillis"    # J
    .param p2, "timeZone"    # Landroid/icu/util/TimeZone;

    .line 262
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    sget-object v1, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    invoke-direct {v0, p2, v1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 264
    .local v0, "calendar":Landroid/icu/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 265
    invoke-virtual {v0, p0, p1}, Landroid/icu/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 266
    return-object v0
.end method

.method public static blacklist temporalToCalendar(Ljava/time/LocalDateTime;)Landroid/icu/util/Calendar;
    .registers 6
    .param p0, "dateTime"    # Ljava/time/LocalDateTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 180
    .local v0, "zoneOffset":Ljava/time/ZoneOffset;
    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljava/time/LocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 181
    .local v1, "epochMillis":J
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/icu/impl/JavaTimeConverters;->millisToCalendar(JLandroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist temporalToCalendar(Ljava/time/LocalTime;)Landroid/icu/util/Calendar;
    .registers 5
    .param p0, "time"    # Ljava/time/LocalTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 160
    .local v0, "epochMillis":J
    invoke-static {v0, v1}, Landroid/icu/impl/JavaTimeConverters;->millisToCalendar(J)Landroid/icu/util/Calendar;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist temporalToCalendar(Ljava/time/OffsetDateTime;)Landroid/icu/util/Calendar;
    .registers 5
    .param p0, "dateTime"    # Ljava/time/OffsetDateTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/OffsetDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 118
    .local v0, "epochMillis":J
    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/JavaTimeConverters;->zoneOffsetToTimeZone(Ljava/time/ZoneOffset;)Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 119
    .local v2, "icuTimeZone":Landroid/icu/util/TimeZone;
    invoke-static {v0, v1, v2}, Landroid/icu/impl/JavaTimeConverters;->millisToCalendar(JLandroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist temporalToCalendar(Ljava/time/OffsetTime;)Landroid/icu/util/Calendar;
    .registers 2
    .param p0, "time"    # Ljava/time/OffsetTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/OffsetDateTime;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist temporalToCalendar(Ljava/time/ZonedDateTime;)Landroid/icu/util/Calendar;
    .registers 5
    .param p0, "dateTime"    # Ljava/time/ZonedDateTime;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/ZonedDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 74
    .local v0, "epochMillis":J
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/JavaTimeConverters;->zoneIdToTimeZone(Ljava/time/ZoneId;)Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 75
    .local v2, "icuTimeZone":Landroid/icu/util/TimeZone;
    invoke-static {v0, v1, v2}, Landroid/icu/impl/JavaTimeConverters;->millisToCalendar(JLandroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object v3

    return-object v3
.end method

.method static blacklist temporalToCalendar(Ljava/time/chrono/ChronoLocalDate;)Landroid/icu/util/Calendar;
    .registers 5
    .param p0, "date"    # Ljava/time/chrono/ChronoLocalDate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-interface {p0}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 138
    .local v0, "epochMillis":J
    invoke-static {v0, v1}, Landroid/icu/impl/JavaTimeConverters;->millisToCalendar(J)Landroid/icu/util/Calendar;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist temporalToCalendar(Ljava/time/temporal/Temporal;)Landroid/icu/util/Calendar;
    .registers 4
    .param p0, "temp"    # Ljava/time/temporal/Temporal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    instance-of v0, p0, Ljava/time/Instant;

    if-nez v0, :cond_85

    .line 198
    instance-of v0, p0, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_10

    .line 199
    move-object v0, p0

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-static {v0}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/ZonedDateTime;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 200
    :cond_10
    instance-of v0, p0, Ljava/time/OffsetDateTime;

    if-eqz v0, :cond_1c

    .line 201
    move-object v0, p0

    check-cast v0, Ljava/time/OffsetDateTime;

    invoke-static {v0}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/OffsetDateTime;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 202
    :cond_1c
    instance-of v0, p0, Ljava/time/OffsetTime;

    if-eqz v0, :cond_28

    .line 203
    move-object v0, p0

    check-cast v0, Ljava/time/OffsetTime;

    invoke-static {v0}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/OffsetTime;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 204
    :cond_28
    instance-of v0, p0, Ljava/time/LocalDate;

    if-eqz v0, :cond_34

    .line 205
    move-object v0, p0

    check-cast v0, Ljava/time/LocalDate;

    invoke-static {v0}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/chrono/ChronoLocalDate;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 206
    :cond_34
    instance-of v0, p0, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_40

    .line 207
    move-object v0, p0

    check-cast v0, Ljava/time/LocalDateTime;

    invoke-static {v0}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/LocalDateTime;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 208
    :cond_40
    instance-of v0, p0, Ljava/time/LocalTime;

    if-eqz v0, :cond_4c

    .line 209
    move-object v0, p0

    check-cast v0, Ljava/time/LocalTime;

    invoke-static {v0}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/LocalTime;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 210
    :cond_4c
    instance-of v0, p0, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_58

    .line 211
    move-object v0, p0

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    invoke-static {v0}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/chrono/ChronoLocalDate;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 212
    :cond_58
    instance-of v0, p0, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v0, :cond_64

    .line 213
    move-object v0, p0

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-static {v0}, Landroid/icu/impl/JavaTimeConverters;->temporalToCalendar(Ljava/time/temporal/Temporal;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 215
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This type cannot be formatted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    invoke-interface {p0}, Ljava/time/temporal/Temporal;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "java.time.Instant cannot be formatted, it does not have enough information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist zoneIdToTimeZone(Ljava/time/ZoneId;)Landroid/icu/util/TimeZone;
    .registers 2
    .param p0, "zoneId"    # Ljava/time/ZoneId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist zoneOffsetToTimeZone(Ljava/time/ZoneOffset;)Landroid/icu/util/TimeZone;
    .registers 4
    .param p0, "zoneOffset"    # Ljava/time/ZoneOffset;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    new-instance v0, Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

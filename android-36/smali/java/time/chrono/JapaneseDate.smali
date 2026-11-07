.class public final Ljava/time/chrono/JapaneseDate;
.super Ljava/time/chrono/ChronoLocalDateImpl;
.source "JapaneseDate.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoLocalDateImpl<",
        "Ljava/time/chrono/JapaneseDate;",
        ">;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final greylist-max-o MEIJI_6_ISODATE:Ljava/time/LocalDate;

.field private static final whitelist serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private final transient greylist-max-o era:Ljava/time/chrono/JapaneseEra;

.field private final transient greylist-max-o isoDate:Ljava/time/LocalDate;

.field private final transient greylist-max-o yearOfEra:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 146
    const/16 v0, 0x751

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/LocalDate;)V
    .registers 4
    .param p1, "isoDate"    # Ljava/time/LocalDate;

    .line 324
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 325
    sget-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 328
    invoke-static {p1}, Ljava/time/chrono/JapaneseDate;->toPrivateJapaneseDate(Ljava/time/LocalDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 329
    .local v0, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->toJapaneseEra(Lsun/util/calendar/Era;)Ljava/time/chrono/JapaneseEra;

    move-result-object v1

    iput-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    .line 330
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v1

    iput v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    .line 331
    iput-object p1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    .line 332
    return-void

    .line 326
    .end local v0    # "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_22
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V
    .registers 6
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "year"    # I
    .param p3, "isoDate"    # Ljava/time/LocalDate;

    .line 342
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 343
    sget-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {p3, v0}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 346
    iput-object p1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    .line 347
    iput p2, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    .line 348
    iput-object p3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    .line 349
    return-void

    .line 344
    :cond_12
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;
    .registers 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 315
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-virtual {v0, p0}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now()Ljava/time/chrono/JapaneseDate;
    .registers 1

    .line 161
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/JapaneseDate;->now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .line 192
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/chrono/JapaneseDate;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 177
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/JapaneseDate;->now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(III)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 250
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/time/chrono/JapaneseEra;III)Ljava/time/chrono/JapaneseDate;
    .registers 7
    .param p0, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p1, "yearOfEra"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 222
    const-string v0, "era"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 224
    .local v0, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 225
    sget-object v1, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v0}, Lsun/util/calendar/LocalGregorianCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 228
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v1

    invoke-static {v1, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    .line 229
    .local v1, "date":Ljava/time/LocalDate;
    new-instance v2, Ljava/time/chrono/JapaneseDate;

    invoke-direct {v2, p0, p1, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V

    return-object v2

    .line 226
    .end local v1    # "date":Ljava/time/LocalDate;
    :cond_2d
    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "year, month, and day not valid for Era"

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o ofYearDay(Ljava/time/chrono/JapaneseEra;II)Ljava/time/chrono/JapaneseDate;
    .registers 8
    .param p0, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p1, "yearOfEra"    # I
    .param p2, "dayOfYear"    # I

    .line 279
    const-string v0, "era"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    .line 281
    .local v0, "firstDay":Lsun/util/calendar/CalendarDate;
    sget-object v1, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    .line 282
    .local v1, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 283
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2c

    .line 284
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v3

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    add-int/2addr v4, p2

    sub-int/2addr v4, v2

    invoke-virtual {v1, p1, v3, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    goto :goto_2f

    .line 286
    :cond_2c
    invoke-virtual {v1, p1, v2, p2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 288
    :goto_2f
    sget-object v2, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 289
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v2

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v3

    if-ne v2, v3, :cond_5a

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    if-ne p1, v2, :cond_5a

    .line 292
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v2

    .line 293
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v4

    .line 292
    invoke-static {v2, v3, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    .line 294
    .local v2, "localdate":Ljava/time/LocalDate;
    new-instance v3, Ljava/time/chrono/JapaneseDate;

    invoke-direct {v3, p0, p1, v2}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V

    return-object v3

    .line 290
    .end local v2    # "localdate":Ljava/time/LocalDate;
    :cond_5a
    new-instance v2, Ljava/time/DateTimeException;

    const-string v3, "Invalid parameters"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 748
    .local v0, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 749
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 750
    .local v2, "dayOfMonth":I
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-virtual {v3, v0, v1, v2}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

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

    .line 718
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o toPrivateJapaneseDate(Ljava/time/LocalDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 6
    .param p0, "isoDate"    # Ljava/time/LocalDate;

    .line 499
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 500
    .local v0, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-static {p0}, Ljava/time/chrono/JapaneseEra;->privateEraFrom(Ljava/time/LocalDate;)Lsun/util/calendar/Era;

    move-result-object v1

    .line 501
    .local v1, "sunEra":Lsun/util/calendar/Era;
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v2

    .line 502
    .local v2, "year":I
    if-eqz v1, :cond_1c

    .line 503
    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    .line 505
    :cond_1c
    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 506
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v0}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 507
    return-object v0
.end method

.method private greylist-max-o with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "newDate"    # Ljava/time/LocalDate;

    .line 657
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    goto :goto_f

    :cond_a
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-direct {v0, p1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    :goto_f
    return-object v0
.end method

.method private greylist-max-o withYear(I)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "year"    # I

    .line 602
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/time/chrono/JapaneseDate;->withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "yearOfEra"    # I

    .line 584
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-virtual {v0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    .line 585
    .local v0, "year":I
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, v0}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 736
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3
    .param p1, "localTime"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .line 663
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 692
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 693
    return v0

    .line 696
    :cond_4
    instance-of v1, p1, Ljava/time/chrono/JapaneseDate;

    if-eqz v1, :cond_16

    .line 695
    move-object v1, p1

    check-cast v1, Ljava/time/chrono/JapaneseDate;

    .local v1, "otherDate":Ljava/time/chrono/JapaneseDate;
    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    iget-object v3, v1, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    .line 696
    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_17

    .end local v1    # "otherDate":Ljava/time/chrono/JapaneseDate;
    :cond_16
    const/4 v0, 0x0

    .line 695
    :goto_17
    return v0
.end method

.method public bridge synthetic whitelist test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 120
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getChronology()Ljava/time/chrono/JapaneseChronology;
    .registers 2

    .line 362
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getEra()Ljava/time/chrono/Era;
    .registers 2

    .line 120
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEra()Ljava/time/chrono/JapaneseEra;
    .registers 2

    .line 374
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    return-object v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 464
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_68

    .line 470
    sget-object v0, Ljava/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    .line 487
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 479
    :pswitch_19
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 475
    :pswitch_21
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

    .line 477
    :pswitch_3a
    iget v0, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    int-to-long v0, v0

    return-wide v0

    .line 482
    :pswitch_3e
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 483
    .local v0, "jcal":Ljava/util/Calendar;
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 484
    iget v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 485
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 489
    .end local v0    # "jcal":Ljava/util/Calendar;
    :cond_68
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_3e
        :pswitch_3a
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_19
    .end packed-switch
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 706
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/chrono/JapaneseChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 432
    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_16

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_16

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_16

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_11

    goto :goto_16

    .line 436
    :cond_11
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 434
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api lengthOfMonth()I
    .registers 2

    .line 387
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public whitelist test-api lengthOfYear()I
    .registers 5

    .line 393
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 394
    .local v0, "jcal":Ljava/util/Calendar;
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 395
    iget v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 396
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    return v1
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

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

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

    .line 120
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 633
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 566
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
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

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

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

    .line 120
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic blacklist minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusDays(J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusDays(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "daysToSubtract"    # J

    .line 653
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic blacklist minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusMonths(J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusMonths(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "monthsToSubtract"    # J

    .line 643
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic blacklist minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusWeeks(J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusWeeks(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "weeksToSubtract"    # J

    .line 648
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic blacklist minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusYears(J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o minusYears(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "yearsToSubtract"    # J

    .line 638
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

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

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

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

    .line 120
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;
    .registers 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 628
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 556
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
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

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

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

    .line 120
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic blacklist plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusDays(J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusDays(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "days"    # J

    .line 623
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusMonths(J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusMonths(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "months"    # J

    .line 613
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusWeeks(J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusWeeks(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "weeksToAdd"    # J

    .line 618
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusYears(J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o plusYears(J)Ljava/time/chrono/JapaneseDate;
    .registers 4
    .param p1, "years"    # J

    .line 608
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 10
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 441
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_7d

    .line 442
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 443
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 444
    .local v0, "f":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_82

    .line 455
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 449
    :pswitch_23
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 450
    .local v1, "jcal":Ljava/util/Calendar;
    iget-object v4, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v4}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 451
    iget v4, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    iget-object v5, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v5}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget-object v7, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v7}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v1, v4, v5, v7}, Ljava/util/Calendar;->set(III)V

    .line 452
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 446
    .end local v1    # "jcal":Ljava/util/Calendar;
    :pswitch_50
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->lengthOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 445
    :pswitch_5a
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->lengthOfMonth()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 457
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_64
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

    .line 459
    :cond_7d
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_50
        :pswitch_23
    .end packed-switch
.end method

.method public whitelist test-api toEpochDay()J
    .registers 3

    .line 674
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 120
    invoke-super {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
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

    .line 120
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist test-api until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .registers 7
    .param p1, "endDate"    # Ljava/time/chrono/ChronoLocalDate;

    .line 668
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    .line 669
    .local v0, "period":Ljava/time/Period;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/chrono/JapaneseChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
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

    .line 120
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

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

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 546
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 513
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_5a

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 514
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_10

    .line 515
    return-object p0

    .line 517
    :cond_10
    sget-object v1, Ljava/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_62

    goto :goto_4f

    .line 521
    :sswitch_1c
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 522
    .local v1, "nvalue":I
    sget-object v2, Ljava/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_70

    goto :goto_4f

    .line 526
    :sswitch_34
    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2, v1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 528
    :sswitch_3f
    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v2

    iget v3, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/JapaneseDate;->withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 524
    :sswitch_4a
    invoke-direct {p0, v1}, Ljava/time/chrono/JapaneseDate;->withYear(I)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 534
    .end local v1    # "nvalue":I
    :goto_4f
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1

    .line 536
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_5a
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0

    nop

    :sswitch_data_62
    .sparse-switch
        0x3 -> :sswitch_1c
        0x8 -> :sswitch_1c
        0x9 -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_70
    .sparse-switch
        0x3 -> :sswitch_4a
        0x8 -> :sswitch_3f
        0x9 -> :sswitch_34
    .end sparse-switch
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

    .line 120
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

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

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 742
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 743
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 744
    return-void
.end method

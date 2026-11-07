.class public final enum Ljava/time/DayOfWeek;
.super Ljava/lang/Enum;
.source "DayOfWeek.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/DayOfWeek;",
        ">;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/DayOfWeek;

.field private static final greylist-max-o ENUMS:[Ljava/time/DayOfWeek;

.field public static final enum whitelist test-api FRIDAY:Ljava/time/DayOfWeek;

.field public static final enum whitelist test-api MONDAY:Ljava/time/DayOfWeek;

.field public static final enum whitelist test-api SATURDAY:Ljava/time/DayOfWeek;

.field public static final enum whitelist test-api SUNDAY:Ljava/time/DayOfWeek;

.field public static final enum whitelist test-api THURSDAY:Ljava/time/DayOfWeek;

.field public static final enum whitelist test-api TUESDAY:Ljava/time/DayOfWeek;

.field public static final enum whitelist test-api WEDNESDAY:Ljava/time/DayOfWeek;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/DayOfWeek;
    .registers 7

    .line 109
    sget-object v0, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    sget-object v1, Ljava/time/DayOfWeek;->TUESDAY:Ljava/time/DayOfWeek;

    sget-object v2, Ljava/time/DayOfWeek;->WEDNESDAY:Ljava/time/DayOfWeek;

    sget-object v3, Ljava/time/DayOfWeek;->THURSDAY:Ljava/time/DayOfWeek;

    sget-object v4, Ljava/time/DayOfWeek;->FRIDAY:Ljava/time/DayOfWeek;

    sget-object v5, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    sget-object v6, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    filled-new-array/range {v0 .. v6}, [Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 115
    new-instance v0, Ljava/time/DayOfWeek;

    const-string v1, "MONDAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    .line 120
    new-instance v0, Ljava/time/DayOfWeek;

    const-string v1, "TUESDAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->TUESDAY:Ljava/time/DayOfWeek;

    .line 125
    new-instance v0, Ljava/time/DayOfWeek;

    const-string v1, "WEDNESDAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->WEDNESDAY:Ljava/time/DayOfWeek;

    .line 130
    new-instance v0, Ljava/time/DayOfWeek;

    const-string v1, "THURSDAY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->THURSDAY:Ljava/time/DayOfWeek;

    .line 135
    new-instance v0, Ljava/time/DayOfWeek;

    const-string v1, "FRIDAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->FRIDAY:Ljava/time/DayOfWeek;

    .line 140
    new-instance v0, Ljava/time/DayOfWeek;

    const-string v1, "SATURDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    .line 145
    new-instance v0, Ljava/time/DayOfWeek;

    const-string v1, "SUNDAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    .line 109
    invoke-static {}, Ljava/time/DayOfWeek;->$values()[Ljava/time/DayOfWeek;

    move-result-object v0

    sput-object v0, Ljava/time/DayOfWeek;->$VALUES:[Ljava/time/DayOfWeek;

    .line 149
    invoke-static {}, Ljava/time/DayOfWeek;->values()[Ljava/time/DayOfWeek;

    move-result-object v0

    sput-object v0, Ljava/time/DayOfWeek;->ENUMS:[Ljava/time/DayOfWeek;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/DayOfWeek;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 188
    instance-of v0, p0, Ljava/time/DayOfWeek;

    if-eqz v0, :cond_8

    .line 189
    move-object v0, p0

    check-cast v0, Ljava/time/DayOfWeek;

    return-object v0

    .line 192
    :cond_8
    :try_start_8
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v0
    :try_end_12
    .catch Ljava/time/DateTimeException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 193
    :catch_13
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain DayOfWeek from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist test-api of(I)Ljava/time/DayOfWeek;
    .registers 4
    .param p0, "dayOfWeek"    # I

    .line 164
    const/4 v0, 0x1

    if-lt p0, v0, :cond_d

    const/4 v0, 0x7

    if-gt p0, v0, :cond_d

    .line 167
    sget-object v0, Ljava/time/DayOfWeek;->ENUMS:[Ljava/time/DayOfWeek;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 165
    :cond_d
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for DayOfWeek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/DayOfWeek;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 109
    const-class v0, Ljava/time/DayOfWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/DayOfWeek;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/DayOfWeek;
    .registers 1

    .line 109
    sget-object v0, Ljava/time/DayOfWeek;->$VALUES:[Ljava/time/DayOfWeek;

    invoke-virtual {v0}, [Ljava/time/DayOfWeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/DayOfWeek;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 454
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 315
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 316
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    return v0

    .line 318
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Ljava/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 227
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 345
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_a

    .line 346
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 347
    :cond_a
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_13

    .line 350
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 348
    :cond_13
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
.end method

.method public whitelist test-api getValue()I
    .registers 2

    .line 209
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 252
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 253
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 255
    :cond_d
    if-eqz p1, :cond_16

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1
.end method

.method public whitelist test-api minus(J)Ljava/time/DayOfWeek;
    .registers 5
    .param p1, "days"    # J

    .line 382
    const-wide/16 v0, 0x7

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plus(J)Ljava/time/DayOfWeek;
    .registers 7
    .param p1, "days"    # J

    .line 366
    const-wide/16 v0, 0x7

    rem-long v0, p1, v0

    long-to-int v0, v0

    .line 367
    .local v0, "amount":I
    sget-object v1, Ljava/time/DayOfWeek;->ENUMS:[Ljava/time/DayOfWeek;

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v2

    add-int/lit8 v3, v0, 0x7

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x7

    aget-object v1, v1, v2

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

    .line 407
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 408
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 410
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 282
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 283
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 285
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

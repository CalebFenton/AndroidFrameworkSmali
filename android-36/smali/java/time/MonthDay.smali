.class public final Ljava/time/MonthDay;
.super Ljava/lang/Object;
.source "MonthDay.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Ljava/time/MonthDay;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o PARSER:Ljava/time/format/DateTimeFormatter;

.field private static final whitelist serialVersionUID:J = -0xd0888991b3ac078L


# instance fields
.field private final greylist-max-o day:I

.field private final greylist-max-o month:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 132
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 133
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 134
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 135
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/MonthDay;->PARSER:Ljava/time/format/DateTimeFormatter;

    .line 132
    return-void
.end method

.method private constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p1, p0, Ljava/time/MonthDay;->month:I

    .line 316
    iput p2, p0, Ljava/time/MonthDay;->day:I

    .line 317
    return-void
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 263
    instance-of v0, p0, Ljava/time/MonthDay;

    if-eqz v0, :cond_8

    .line 264
    move-object v0, p0

    check-cast v0, Ljava/time/MonthDay;

    return-object v0

    .line 267
    :cond_8
    :try_start_8
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {p0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 268
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    .line 270
    :cond_19
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object v0
    :try_end_29
    .catch Ljava/time/DateTimeException; {:try_start_8 .. :try_end_29} :catch_2a

    return-object v0

    .line 271
    :catch_2a
    move-exception v0

    .line 272
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain MonthDay from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
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

.method public static whitelist test-api now()Ljava/time/MonthDay;
    .registers 1

    .line 161
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/MonthDay;->now(Ljava/time/Clock;)Ljava/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/MonthDay;
    .registers 4
    .param p0, "clock"    # Ljava/time/Clock;

    .line 191
    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    .line 192
    .local v0, "now":Ljava/time/LocalDate;
    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/MonthDay;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 177
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/MonthDay;->now(Ljava/time/Clock;)Ljava/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(II)Ljava/time/MonthDay;
    .registers 3
    .param p0, "month"    # I
    .param p1, "dayOfMonth"    # I

    .line 239
    invoke-static {p0}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/time/Month;I)Ljava/time/MonthDay;
    .registers 5
    .param p0, "month"    # Ljava/time/Month;
    .param p1, "dayOfMonth"    # I

    .line 213
    const-string v0, "month"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 215
    invoke-virtual {p0}, Ljava/time/Month;->maxLength()I

    move-result v0

    if-gt p1, v0, :cond_1b

    .line 219
    new-instance v0, Ljava/time/MonthDay;

    invoke-virtual {p0}, Ljava/time/Month;->getValue()I

    move-result v1

    invoke-direct {v0, v1, p1}, Ljava/time/MonthDay;-><init>(II)V

    return-object v0

    .line 216
    :cond_1b
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value for DayOfMonth field, value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid for month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/MonthDay;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 289
    sget-object v0, Ljava/time/MonthDay;->PARSER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/MonthDay;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/MonthDay;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 303
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    new-instance v0, Ljava/time/MonthDay$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/MonthDay$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/MonthDay;

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/MonthDay;
    .registers 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 783
    .local v0, "month":B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 784
    .local v1, "day":B
    invoke-static {v0, v1}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object v2

    return-object v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 773
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 762
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 623
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 626
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    iget v1, p0, Ljava/time/MonthDay;->month:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 627
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    iget v3, p0, Ljava/time/MonthDay;->day:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 624
    :cond_2d
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api atYear(I)Ljava/time/LocalDate;
    .registers 4
    .param p1, "year"    # I

    .line 660
    iget v0, p0, Ljava/time/MonthDay;->month:I

    invoke-virtual {p0, p1}, Ljava/time/MonthDay;->isValidYear(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Ljava/time/MonthDay;->day:I

    goto :goto_d

    :cond_b
    const/16 v1, 0x1c

    :goto_d
    invoke-static {p1, v0, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
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

    .line 121
    check-cast p1, Ljava/time/MonthDay;

    invoke-virtual {p0, p1}, Ljava/time/MonthDay;->compareTo(Ljava/time/MonthDay;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/MonthDay;)I
    .registers 5
    .param p1, "other"    # Ljava/time/MonthDay;

    .line 675
    iget v0, p0, Ljava/time/MonthDay;->month:I

    iget v1, p1, Ljava/time/MonthDay;->month:I

    sub-int/2addr v0, v1

    .line 676
    .local v0, "cmp":I
    if-nez v0, :cond_d

    .line 677
    iget v1, p0, Ljava/time/MonthDay;->day:I

    iget v2, p1, Ljava/time/MonthDay;->day:I

    sub-int v0, v1, v2

    .line 679
    :cond_d
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 713
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 714
    return v0

    .line 718
    :cond_4
    instance-of v1, p1, Ljava/time/MonthDay;

    if-eqz v1, :cond_18

    .line 716
    move-object v1, p1

    check-cast v1, Ljava/time/MonthDay;

    .local v1, "other":Ljava/time/MonthDay;
    iget v2, p0, Ljava/time/MonthDay;->month:I

    iget v3, v1, Ljava/time/MonthDay;->month:I

    if-ne v2, v3, :cond_18

    iget v2, p0, Ljava/time/MonthDay;->day:I

    iget v3, v1, Ljava/time/MonthDay;->day:I

    if-ne v2, v3, :cond_18

    goto :goto_19

    .end local v1    # "other":Ljava/time/MonthDay;
    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 640
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 641
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 412
    invoke-virtual {p0, p1}, Ljava/time/MonthDay;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/MonthDay;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDayOfMonth()I
    .registers 2

    .line 489
    iget v0, p0, Ljava/time/MonthDay;->day:I

    return v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 440
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_33

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 441
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/MonthDay$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    .line 446
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

    .line 444
    :pswitch_2b
    iget v1, p0, Ljava/time/MonthDay;->month:I

    int-to-long v1, v1

    return-wide v1

    .line 443
    :pswitch_2f
    iget v1, p0, Ljava/time/MonthDay;->day:I

    int-to-long v1, v1

    return-wide v1

    .line 448
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_33
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api getMonth()Ljava/time/Month;
    .registers 2

    .line 478
    iget v0, p0, Ljava/time/MonthDay;->month:I

    invoke-static {v0}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMonthValue()I
    .registers 2

    .line 463
    iget v0, p0, Ljava/time/MonthDay;->month:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 728
    iget v0, p0, Ljava/time/MonthDay;->month:I

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Ljava/time/MonthDay;->day:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isAfter(Ljava/time/MonthDay;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/MonthDay;

    .line 689
    invoke-virtual {p0, p1}, Ljava/time/MonthDay;->compareTo(Ljava/time/MonthDay;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/MonthDay;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/MonthDay;

    .line 699
    invoke-virtual {p0, p1}, Ljava/time/MonthDay;->compareTo(Ljava/time/MonthDay;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 345
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 346
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_10

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :cond_10
    :goto_10
    return v1

    .line 348
    :cond_11
    if-eqz p1, :cond_1a

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1
.end method

.method public whitelist test-api isValidYear(I)Z
    .registers 5
    .param p1, "year"    # I

    .line 504
    iget v0, p0, Ljava/time/MonthDay;->day:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_15

    iget v0, p0, Ljava/time/MonthDay;->month:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/time/Year;->isLeap(J)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    xor-int/2addr v0, v2

    return v0
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

    .line 588
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 589
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0

    .line 591
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 9
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 376
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 377
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 378
    :cond_9
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_26

    .line 379
    invoke-virtual {p0}, Ljava/time/MonthDay;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Month;->minLength()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0}, Ljava/time/MonthDay;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Month;->maxLength()I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 381
    :cond_26
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 742
    iget v2, p0, Ljava/time/MonthDay;->month:I

    if-ge v2, v1, :cond_14

    const-string v2, "0"

    goto :goto_16

    :cond_14
    const-string v2, ""

    :goto_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/time/MonthDay;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 743
    iget v2, p0, Ljava/time/MonthDay;->day:I

    if-ge v2, v1, :cond_27

    const-string v1, "-0"

    goto :goto_29

    :cond_27
    const-string v1, "-"

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/MonthDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/Month;)Ljava/time/MonthDay;
    .registers 5
    .param p1, "month"    # Ljava/time/Month;

    .line 538
    const-string v0, "month"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 539
    invoke-virtual {p1}, Ljava/time/Month;->getValue()I

    move-result v0

    iget v1, p0, Ljava/time/MonthDay;->month:I

    if-ne v0, v1, :cond_e

    .line 540
    return-object p0

    .line 542
    :cond_e
    iget v0, p0, Ljava/time/MonthDay;->day:I

    invoke-virtual {p1}, Ljava/time/Month;->maxLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 543
    .local v0, "day":I
    new-instance v1, Ljava/time/MonthDay;

    invoke-virtual {p1}, Ljava/time/Month;->getValue()I

    move-result v2

    invoke-direct {v1, v2, v0}, Ljava/time/MonthDay;-><init>(II)V

    return-object v1
.end method

.method public whitelist test-api withDayOfMonth(I)Ljava/time/MonthDay;
    .registers 3
    .param p1, "dayOfMonth"    # I

    .line 560
    iget v0, p0, Ljava/time/MonthDay;->day:I

    if-ne p1, v0, :cond_5

    .line 561
    return-object p0

    .line 563
    :cond_5
    iget v0, p0, Ljava/time/MonthDay;->month:I

    invoke-static {v0, p1}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withMonth(I)Ljava/time/MonthDay;
    .registers 3
    .param p1, "month"    # I

    .line 522
    invoke-static {p1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/MonthDay;->with(Ljava/time/Month;)Ljava/time/MonthDay;

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

    .line 777
    iget v0, p0, Ljava/time/MonthDay;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 778
    iget v0, p0, Ljava/time/MonthDay;->day:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 779
    return-void
.end method

.class public final Ljava/time/Year;
.super Ljava/lang/Object;
.source "Year.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Ljava/time/Year;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final whitelist test-api MAX_VALUE:I = 0x3b9ac9ff

.field public static final whitelist test-api MIN_VALUE:I = -0x3b9ac9ff

.field private static final greylist-max-o PARSER:Ljava/time/format/DateTimeFormatter;

.field private static final whitelist serialVersionUID:J = -0x51d949b44ef9efL


# instance fields
.field private final greylist-max-o year:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 149
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 150
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseLenient()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    .line 151
    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/Year;->PARSER:Ljava/time/format/DateTimeFormatter;

    .line 149
    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "year"    # I

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput p1, p0, Ljava/time/Year;->year:I

    .line 322
    return-void
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 246
    instance-of v0, p0, Ljava/time/Year;

    if-eqz v0, :cond_8

    .line 247
    move-object v0, p0

    check-cast v0, Ljava/time/Year;

    return-object v0

    .line 249
    :cond_8
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    :try_start_d
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {p0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 252
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    .line 254
    :cond_1e
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v0
    :try_end_28
    .catch Ljava/time/DateTimeException; {:try_start_d .. :try_end_28} :catch_29

    return-object v0

    .line 255
    :catch_29
    move-exception v0

    .line 256
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain Year from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
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

.method public static whitelist test-api isLeap(J)Z
    .registers 6
    .param p0, "year"    # J

    .line 311
    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    const-wide/16 v0, 0x64

    rem-long v0, p0, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    const-wide/16 v0, 0x190

    rem-long v0, p0, v0

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

.method public static whitelist test-api now()Ljava/time/Year;
    .registers 1

    .line 172
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Year;->now(Ljava/time/Clock;)Ljava/time/Year;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/Year;
    .registers 3
    .param p0, "clock"    # Ljava/time/Clock;

    .line 202
    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    .line 203
    .local v0, "now":Ljava/time/LocalDate;
    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/Year;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 188
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Year;->now(Ljava/time/Clock;)Ljava/time/Year;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(I)Ljava/time/Year;
    .registers 4
    .param p0, "isoYear"    # I

    .line 222
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 223
    new-instance v0, Ljava/time/Year;

    invoke-direct {v0, p0}, Ljava/time/Year;-><init>(I)V

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/Year;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 272
    sget-object v0, Ljava/time/Year;->PARSER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/Year;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/Year;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/Year;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 286
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 287
    new-instance v0, Ljava/time/Year$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/Year$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Year;

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/Year;
    .registers 2
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1115
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1107
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1096
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 853
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 856
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    iget v1, p0, Ljava/time/Year;->year:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 854
    :cond_16
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api atDay(I)Ljava/time/LocalDate;
    .registers 3
    .param p1, "dayOfYear"    # I

    .line 951
    iget v0, p0, Ljava/time/Year;->year:I

    invoke-static {v0, p1}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atMonth(I)Ljava/time/YearMonth;
    .registers 3
    .param p1, "month"    # I

    .line 988
    iget v0, p0, Ljava/time/Year;->year:I

    invoke-static {v0, p1}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atMonth(Ljava/time/Month;)Ljava/time/YearMonth;
    .registers 3
    .param p1, "month"    # Ljava/time/Month;

    .line 969
    iget v0, p0, Ljava/time/Year;->year:I

    invoke-static {v0, p1}, Ljava/time/YearMonth;->of(ILjava/time/Month;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atMonthDay(Ljava/time/MonthDay;)Ljava/time/LocalDate;
    .registers 3
    .param p1, "monthDay"    # Ljava/time/MonthDay;

    .line 1003
    iget v0, p0, Ljava/time/Year;->year:I

    invoke-virtual {p1, v0}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

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

    .line 129
    check-cast p1, Ljava/time/Year;

    invoke-virtual {p0, p1}, Ljava/time/Year;->compareTo(Ljava/time/Year;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/Year;)I
    .registers 4
    .param p1, "other"    # Ljava/time/Year;

    .line 1018
    iget v0, p0, Ljava/time/Year;->year:I

    iget v1, p1, Ljava/time/Year;->year:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1052
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1053
    return v0

    .line 1055
    :cond_4
    instance-of v1, p1, Ljava/time/Year;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1056
    iget v1, p0, Ljava/time/Year;->year:I

    move-object v3, p1

    check-cast v3, Ljava/time/Year;

    iget v3, v3, Ljava/time/Year;->year:I

    if-ne v1, v3, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 1058
    :cond_15
    return v2
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 933
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 934
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 464
    invoke-virtual {p0, p1}, Ljava/time/Year;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/Year;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 492
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_43

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 493
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_48

    .line 498
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

    .line 496
    :pswitch_2c
    iget v1, p0, Ljava/time/Year;->year:I

    if-ge v1, v2, :cond_31

    const/4 v2, 0x0

    :cond_31
    int-to-long v1, v2

    return-wide v1

    .line 495
    :pswitch_33
    iget v1, p0, Ljava/time/Year;->year:I

    int-to-long v1, v1

    return-wide v1

    .line 494
    :pswitch_37
    iget v1, p0, Ljava/time/Year;->year:I

    if-ge v1, v2, :cond_3f

    iget v1, p0, Ljava/time/Year;->year:I

    sub-int/2addr v2, v1

    goto :goto_41

    :cond_3f
    iget v2, p0, Ljava/time/Year;->year:I

    :goto_41
    int-to-long v1, v2

    return-wide v1

    .line 500
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_43
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_2c
    .end packed-switch
.end method

.method public whitelist test-api getValue()I
    .registers 2

    .line 333
    iget v0, p0, Ljava/time/Year;->year:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1068
    iget v0, p0, Ljava/time/Year;->year:I

    return v0
.end method

.method public whitelist test-api isAfter(Ljava/time/Year;)Z
    .registers 4
    .param p1, "other"    # Ljava/time/Year;

    .line 1028
    iget v0, p0, Ljava/time/Year;->year:I

    iget v1, p1, Ljava/time/Year;->year:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/Year;)Z
    .registers 4
    .param p1, "other"    # Ljava/time/Year;

    .line 1038
    iget v0, p0, Ljava/time/Year;->year:I

    iget v1, p1, Ljava/time/Year;->year:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isLeap()Z
    .registers 3

    .line 523
    iget v0, p0, Ljava/time/Year;->year:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Year;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 364
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 365
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_14

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_14

    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :cond_14
    :goto_14
    return v1

    .line 367
    :cond_15
    if-eqz p1, :cond_1e

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 398
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 399
    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :cond_1c
    :goto_1c
    return v1

    .line 401
    :cond_1d
    if-eqz p1, :cond_26

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1
.end method

.method public whitelist test-api isValidMonthDay(Ljava/time/MonthDay;)Z
    .registers 3
    .param p1, "monthDay"    # Ljava/time/MonthDay;

    .line 536
    if-eqz p1, :cond_c

    iget v0, p0, Ljava/time/Year;->year:I

    invoke-virtual {p1, v0}, Ljava/time/MonthDay;->isValidYear(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 545
    invoke-virtual {p0}, Ljava/time/Year;->isLeap()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 779
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Year;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/Year;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/Year;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Year;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 755
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Year;

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

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Year;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;

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

    .line 129
    invoke-virtual {p0, p1}, Ljava/time/Year;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusYears(J)Ljava/time/Year;
    .registers 6
    .param p1, "yearsToSubtract"    # J

    .line 792
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;
    .registers 8
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 703
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_62

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 704
    .local v0, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    sget-object v1, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_6a

    .line 711
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

    .line 709
    :pswitch_2b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/Year;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/time/Year;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/Year;

    move-result-object v1

    return-object v1

    .line 708
    :pswitch_3c
    const/16 v1, 0x3e8

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v1

    return-object v1

    .line 707
    :pswitch_47
    const/16 v1, 0x64

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v1

    return-object v1

    .line 706
    :pswitch_52
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v1

    return-object v1

    .line 705
    :pswitch_5d
    invoke-virtual {p0, p1, p2}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v1

    return-object v1

    .line 713
    .end local v0    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_62
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Year;

    return-object v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_52
        :pswitch_47
        :pswitch_3c
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Year;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 650
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Year;

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

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Year;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;

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

    .line 129
    invoke-virtual {p0, p1}, Ljava/time/Year;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusYears(J)Ljava/time/Year;
    .registers 6
    .param p1, "yearsToAdd"    # J

    .line 726
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 727
    return-object p0

    .line 729
    :cond_7
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    iget v1, p0, Ljava/time/Year;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    invoke-static {v0}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v0

    return-object v0
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

    .line 817
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 818
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0

    .line 819
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 820
    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 822
    :cond_12
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 430
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_16

    .line 431
    iget v0, p0, Ljava/time/Year;->year:I

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_e

    const-wide/32 v3, 0x3b9aca00

    goto :goto_11

    :cond_e
    const-wide/32 v3, 0x3b9ac9ff

    :goto_11
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 433
    :cond_16
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1079
    iget v0, p0, Ljava/time/Year;->year:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 11
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 908
    invoke-static {p1}, Ljava/time/Year;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;

    move-result-object v0

    .line 909
    .local v0, "end":Ljava/time/Year;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_54

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    .line 910
    .local v1, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    iget v2, v0, Ljava/time/Year;->year:I

    int-to-long v2, v2

    iget v4, p0, Ljava/time/Year;->year:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 911
    .local v2, "yearsUntil":J
    sget-object v4, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_5a

    .line 918
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported unit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 916
    :pswitch_36
    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v4}, Ljava/time/Year;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v6}, Ljava/time/Year;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    return-wide v4

    .line 915
    :pswitch_44
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    return-wide v4

    .line 914
    :pswitch_49
    const-wide/16 v4, 0x64

    div-long v4, v2, v4

    return-wide v4

    .line 913
    :pswitch_4e
    const-wide/16 v4, 0xa

    div-long v4, v2, v4

    return-wide v4

    .line 912
    :pswitch_53
    return-wide v2

    .line 920
    .end local v1    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    .end local v2    # "yearsUntil":J
    :cond_54
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_36
    .end packed-switch
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Year;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 569
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Year;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/Year;
    .registers 9
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 615
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 616
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 617
    sget-object v1, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_60

    .line 622
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

    .line 620
    :pswitch_2f
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/Year;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_3b

    move-object v1, p0

    goto :goto_42

    :cond_3b
    iget v1, p0, Ljava/time/Year;->year:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v1

    :goto_42
    return-object v1

    .line 619
    :pswitch_43
    long-to-int v1, p2

    invoke-static {v1}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v1

    return-object v1

    .line 618
    :pswitch_49
    iget v1, p0, Ljava/time/Year;->year:I

    if-ge v1, v2, :cond_51

    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    goto :goto_52

    :cond_51
    move-wide v1, p2

    :goto_52
    long-to-int v1, v1

    invoke-static {v1}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v1

    return-object v1

    .line 624
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_58
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/Year;

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_49
        :pswitch_43
        :pswitch_2f
    .end packed-switch
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

    .line 129
    invoke-virtual {p0, p1}, Ljava/time/Year;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Year;

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

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/Year;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/Year;

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

    .line 1111
    iget v0, p0, Ljava/time/Year;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1112
    return-void
.end method

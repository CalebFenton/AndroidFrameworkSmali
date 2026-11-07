.class public final Ljava/time/YearMonth;
.super Ljava/lang/Object;
.source "YearMonth.java"

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
        "Ljava/time/YearMonth;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o PARSER:Ljava/time/format/DateTimeFormatter;

.field private static final whitelist serialVersionUID:J = 0x3a0e6ceaf57ebbc6L


# instance fields
.field private final greylist-max-o month:I

.field private final greylist-max-o year:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 136
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 137
    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 138
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 139
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/YearMonth;->PARSER:Ljava/time/format/DateTimeFormatter;

    .line 136
    return-void
.end method

.method private constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput p1, p0, Ljava/time/YearMonth;->year:I

    .line 302
    iput p2, p0, Ljava/time/YearMonth;->month:I

    .line 303
    return-void
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 247
    instance-of v0, p0, Ljava/time/YearMonth;

    if-eqz v0, :cond_8

    .line 248
    move-object v0, p0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0

    .line 250
    :cond_8
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    :try_start_d
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {p0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 253
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    .line 255
    :cond_1e
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

    move-result-object v0
    :try_end_2e
    .catch Ljava/time/DateTimeException; {:try_start_d .. :try_end_2e} :catch_2f

    return-object v0

    .line 256
    :catch_2f
    move-exception v0

    .line 257
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain YearMonth from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
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

.method private greylist-max-o getProlepticMonth()J
    .registers 5

    .line 495
    iget v0, p0, Ljava/time/YearMonth;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/YearMonth;->month:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api now()Ljava/time/YearMonth;
    .registers 1

    .line 164
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/YearMonth;->now(Ljava/time/Clock;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/YearMonth;
    .registers 4
    .param p0, "clock"    # Ljava/time/Clock;

    .line 194
    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    .line 195
    .local v0, "now":Ljava/time/LocalDate;
    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/YearMonth;->of(ILjava/time/Month;)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/YearMonth;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 180
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/YearMonth;->now(Ljava/time/Clock;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(II)Ljava/time/YearMonth;
    .registers 5
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 221
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 222
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 223
    new-instance v0, Ljava/time/YearMonth;

    invoke-direct {v0, p0, p1}, Ljava/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method public static whitelist test-api of(ILjava/time/Month;)Ljava/time/YearMonth;
    .registers 3
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;

    .line 208
    const-string v0, "month"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p1}, Ljava/time/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/YearMonth;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 275
    sget-object v0, Ljava/time/YearMonth;->PARSER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/YearMonth;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/YearMonth;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 289
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 290
    new-instance v0, Ljava/time/YearMonth$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/YearMonth$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/YearMonth;
    .registers 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1239
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1240
    .local v0, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 1241
    .local v1, "month":B
    invoke-static {v0, v1}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

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

    .line 1230
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o with(II)Ljava/time/YearMonth;
    .registers 4
    .param p1, "newYear"    # I
    .param p2, "newMonth"    # I

    .line 314
    iget v0, p0, Ljava/time/YearMonth;->year:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Ljava/time/YearMonth;->month:I

    if-ne v0, p2, :cond_9

    .line 315
    return-object p0

    .line 317
    :cond_9
    new-instance v0, Ljava/time/YearMonth;

    invoke-direct {v0, p1, p2}, Ljava/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1219
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 985
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 988
    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 986
    :cond_17
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api atDay(I)Ljava/time/LocalDate;
    .registers 4
    .param p1, "dayOfMonth"    # I

    .line 1089
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p0, Ljava/time/YearMonth;->month:I

    invoke-static {v0, v1, p1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atEndOfMonth()Ljava/time/LocalDate;
    .registers 4

    .line 1107
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p0, Ljava/time/YearMonth;->month:I

    invoke-virtual {p0}, Ljava/time/YearMonth;->lengthOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

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

    .line 125
    check-cast p1, Ljava/time/YearMonth;

    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/YearMonth;)I
    .registers 5
    .param p1, "other"    # Ljava/time/YearMonth;

    .line 1122
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p1, Ljava/time/YearMonth;->year:I

    sub-int/2addr v0, v1

    .line 1123
    .local v0, "cmp":I
    if-nez v0, :cond_d

    .line 1124
    iget v1, p0, Ljava/time/YearMonth;->month:I

    iget v2, p1, Ljava/time/YearMonth;->month:I

    sub-int v0, v1, v2

    .line 1126
    :cond_d
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1161
    return v0

    .line 1165
    :cond_4
    instance-of v1, p1, Ljava/time/YearMonth;

    if-eqz v1, :cond_18

    .line 1163
    move-object v1, p1

    check-cast v1, Ljava/time/YearMonth;

    .local v1, "other":Ljava/time/YearMonth;
    iget v2, p0, Ljava/time/YearMonth;->year:I

    iget v3, v1, Ljava/time/YearMonth;->year:I

    if-ne v2, v3, :cond_18

    iget v2, p0, Ljava/time/YearMonth;->month:I

    iget v3, v1, Ljava/time/YearMonth;->month:I

    if-ne v2, v3, :cond_18

    goto :goto_19

    .end local v1    # "other":Ljava/time/YearMonth;
    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1066
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1067
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 453
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 481
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_4c

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 482
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_52

    .line 489
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

    .line 487
    :pswitch_2c
    iget v1, p0, Ljava/time/YearMonth;->year:I

    if-ge v1, v2, :cond_31

    const/4 v2, 0x0

    :cond_31
    int-to-long v1, v2

    return-wide v1

    .line 486
    :pswitch_33
    iget v1, p0, Ljava/time/YearMonth;->year:I

    int-to-long v1, v1

    return-wide v1

    .line 485
    :pswitch_37
    iget v1, p0, Ljava/time/YearMonth;->year:I

    if-ge v1, v2, :cond_3f

    iget v1, p0, Ljava/time/YearMonth;->year:I

    sub-int/2addr v2, v1

    goto :goto_41

    :cond_3f
    iget v2, p0, Ljava/time/YearMonth;->year:I

    :goto_41
    int-to-long v1, v2

    return-wide v1

    .line 484
    :pswitch_43
    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    return-wide v1

    .line 483
    :pswitch_48
    iget v1, p0, Ljava/time/YearMonth;->month:I

    int-to-long v1, v1

    return-wide v1

    .line 491
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_4c
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_48
        :pswitch_43
        :pswitch_37
        :pswitch_33
        :pswitch_2c
    .end packed-switch
.end method

.method public whitelist test-api getMonth()Ljava/time/Month;
    .registers 2

    .line 538
    iget v0, p0, Ljava/time/YearMonth;->month:I

    invoke-static {v0}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMonthValue()I
    .registers 2

    .line 523
    iget v0, p0, Ljava/time/YearMonth;->month:I

    return v0
.end method

.method public whitelist test-api getYear()I
    .registers 2

    .line 509
    iget v0, p0, Ljava/time/YearMonth;->year:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1175
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p0, Ljava/time/YearMonth;->month:I

    shl-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isAfter(Ljava/time/YearMonth;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/YearMonth;

    .line 1136
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/YearMonth;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/YearMonth;

    .line 1146
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isLeapYear()Z
    .registers 4

    .line 561
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    iget v1, p0, Ljava/time/YearMonth;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 350
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 351
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :cond_1c
    :goto_1c
    return v1

    .line 354
    :cond_1d
    if-eqz p1, :cond_26

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 386
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 387
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :cond_20
    :goto_20
    return v1

    .line 389
    :cond_21
    if-eqz p1, :cond_2a

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    return v1
.end method

.method public whitelist test-api isValidDay(I)Z
    .registers 4
    .param p1, "dayOfMonth"    # I

    .line 574
    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    invoke-virtual {p0}, Ljava/time/YearMonth;->lengthOfMonth()I

    move-result v1

    if-gt p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api lengthOfMonth()I
    .registers 3

    .line 586
    invoke-virtual {p0}, Ljava/time/YearMonth;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/YearMonth;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/time/Month;->length(Z)I

    move-result v0

    return v0
.end method

.method public whitelist test-api lengthOfYear()I
    .registers 2

    .line 597
    invoke-virtual {p0}, Ljava/time/YearMonth;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 898
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 874
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

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

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/YearMonth;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

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

    .line 125
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusMonths(J)Ljava/time/YearMonth;
    .registers 6
    .param p1, "monthsToSubtract"    # J

    .line 924
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusYears(J)Ljava/time/YearMonth;
    .registers 6
    .param p1, "yearsToSubtract"    # J

    .line 911
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;
    .registers 8
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 800
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_67

    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 801
    .local v0, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    sget-object v1, Ljava/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_6e

    .line 809
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

    .line 807
    :pswitch_2b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 806
    :pswitch_3c
    const/16 v1, 0x3e8

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 805
    :pswitch_47
    const/16 v1, 0x64

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 804
    :pswitch_52
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 803
    :pswitch_5d
    invoke-virtual {p0, p1, p2}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 802
    :pswitch_62
    invoke-virtual {p0, p1, p2}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 811
    .end local v0    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_67
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5d
        :pswitch_52
        :pswitch_47
        :pswitch_3c
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 744
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

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

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

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

    .line 125
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusMonths(J)Ljava/time/YearMonth;
    .registers 11
    .param p1, "monthsToAdd"    # J

    .line 841
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 842
    return-object p0

    .line 844
    :cond_7
    iget v0, p0, Ljava/time/YearMonth;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/YearMonth;->month:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 845
    .local v0, "monthCount":J
    add-long v2, v0, p1

    .line 846
    .local v2, "calcMonths":J
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/16 v5, 0xc

    invoke-static {v2, v3, v5}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 847
    .local v4, "newYear":I
    invoke-static {v2, v3, v5}, Ljava/lang/Math;->floorMod(JI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 848
    .local v5, "newMonth":I
    invoke-direct {p0, v4, v5}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

    move-result-object v6

    return-object v6
.end method

.method public whitelist test-api plusYears(J)Ljava/time/YearMonth;
    .registers 6
    .param p1, "yearsToAdd"    # J

    .line 824
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 825
    return-object p0

    .line 827
    :cond_7
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    iget v1, p0, Ljava/time/YearMonth;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 828
    .local v0, "newYear":I
    iget v1, p0, Ljava/time/YearMonth;->month:I

    invoke-direct {p0, v0, v1}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

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

    .line 949
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 950
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0

    .line 951
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 952
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 954
    :cond_12
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 418
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_18

    .line 419
    invoke-virtual {p0}, Ljava/time/YearMonth;->getYear()I

    move-result v0

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_10

    const-wide/32 v3, 0x3b9aca00

    goto :goto_13

    :cond_10
    const-wide/32 v3, 0x3b9ac9ff

    :goto_13
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 421
    :cond_18
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1188
    iget v0, p0, Ljava/time/YearMonth;->year:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1189
    .local v0, "absYear":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1190
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_2f

    .line 1191
    iget v2, p0, Ljava/time/YearMonth;->year:I

    if-gez v2, :cond_22

    .line 1192
    iget v2, p0, Ljava/time/YearMonth;->year:I

    add-int/lit16 v2, v2, -0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 1194
    :cond_22
    iget v2, p0, Ljava/time/YearMonth;->year:I

    add-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 1197
    :cond_2f
    iget v2, p0, Ljava/time/YearMonth;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1199
    :goto_34
    iget v2, p0, Ljava/time/YearMonth;->month:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3d

    const-string v2, "-0"

    goto :goto_3f

    :cond_3d
    const-string v2, "-"

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/time/YearMonth;->month:I

    .line 1200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1199
    return-object v2
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 11
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1040
    invoke-static {p1}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object v0

    .line 1041
    .local v0, "end":Ljava/time/YearMonth;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_5b

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    .line 1042
    .local v1, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    invoke-direct {v0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v2

    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1043
    .local v2, "monthsUntil":J
    sget-object v4, Ljava/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_60

    .line 1051
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

    .line 1049
    :pswitch_38
    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v4}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v6}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    return-wide v4

    .line 1048
    :pswitch_46
    const-wide/16 v4, 0x2ee0

    div-long v4, v2, v4

    return-wide v4

    .line 1047
    :pswitch_4b
    const-wide/16 v4, 0x4b0

    div-long v4, v2, v4

    return-wide v4

    .line 1046
    :pswitch_50
    const-wide/16 v4, 0x78

    div-long v4, v2, v4

    return-wide v4

    .line 1045
    :pswitch_55
    const-wide/16 v4, 0xc

    div-long v4, v2, v4

    return-wide v4

    .line 1044
    :pswitch_5a
    return-wide v2

    .line 1053
    .end local v1    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    .end local v2    # "monthsUntil":J
    :cond_5b
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_55
        :pswitch_50
        :pswitch_4b
        :pswitch_46
        :pswitch_38
    .end packed-switch
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/YearMonth;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 625
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;
    .registers 9
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 678
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_69

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 679
    .local v0, "chronoField":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 680
    sget-object v1, Ljava/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_70

    .line 687
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

    .line 685
    :pswitch_2f
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_3b

    move-object v1, p0

    goto :goto_42

    :cond_3b
    iget v1, p0, Ljava/time/YearMonth;->year:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v1

    :goto_42
    return-object v1

    .line 684
    :pswitch_43
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 683
    :pswitch_49
    iget v1, p0, Ljava/time/YearMonth;->year:I

    if-ge v1, v2, :cond_51

    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    goto :goto_52

    :cond_51
    move-wide v1, p2

    :goto_52
    long-to-int v1, v1

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 682
    :pswitch_58
    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 681
    :pswitch_63
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->withMonth(I)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 689
    .end local v0    # "chronoField":Ljava/time/temporal/ChronoField;
    :cond_69
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_63
        :pswitch_58
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

    .line 125
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/YearMonth;

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

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withMonth(I)Ljava/time/YearMonth;
    .registers 5
    .param p1, "month"    # I

    .line 717
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 718
    iget v0, p0, Ljava/time/YearMonth;->year:I

    invoke-direct {p0, v0, p1}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withYear(I)Ljava/time/YearMonth;
    .registers 5
    .param p1, "year"    # I

    .line 703
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 704
    iget v0, p0, Ljava/time/YearMonth;->month:I

    invoke-direct {p0, p1, v0}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

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

    .line 1234
    iget v0, p0, Ljava/time/YearMonth;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1235
    iget v0, p0, Ljava/time/YearMonth;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1236
    return-void
.end method

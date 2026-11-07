.class public final enum Ljava/time/Month;
.super Ljava/lang/Enum;
.source "Month.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/Month;",
        ">;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/Month;

.field public static final enum whitelist test-api APRIL:Ljava/time/Month;

.field public static final enum whitelist test-api AUGUST:Ljava/time/Month;

.field public static final enum whitelist test-api DECEMBER:Ljava/time/Month;

.field private static final greylist-max-o ENUMS:[Ljava/time/Month;

.field public static final enum whitelist test-api FEBRUARY:Ljava/time/Month;

.field public static final enum whitelist test-api JANUARY:Ljava/time/Month;

.field public static final enum whitelist test-api JULY:Ljava/time/Month;

.field public static final enum whitelist test-api JUNE:Ljava/time/Month;

.field public static final enum whitelist test-api MARCH:Ljava/time/Month;

.field public static final enum whitelist test-api MAY:Ljava/time/Month;

.field public static final enum whitelist test-api NOVEMBER:Ljava/time/Month;

.field public static final enum whitelist test-api OCTOBER:Ljava/time/Month;

.field public static final enum whitelist test-api SEPTEMBER:Ljava/time/Month;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/Month;
    .registers 12

    .line 106
    sget-object v0, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    sget-object v1, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    sget-object v2, Ljava/time/Month;->MARCH:Ljava/time/Month;

    sget-object v3, Ljava/time/Month;->APRIL:Ljava/time/Month;

    sget-object v4, Ljava/time/Month;->MAY:Ljava/time/Month;

    sget-object v5, Ljava/time/Month;->JUNE:Ljava/time/Month;

    sget-object v6, Ljava/time/Month;->JULY:Ljava/time/Month;

    sget-object v7, Ljava/time/Month;->AUGUST:Ljava/time/Month;

    sget-object v8, Ljava/time/Month;->SEPTEMBER:Ljava/time/Month;

    sget-object v9, Ljava/time/Month;->OCTOBER:Ljava/time/Month;

    sget-object v10, Ljava/time/Month;->NOVEMBER:Ljava/time/Month;

    sget-object v11, Ljava/time/Month;->DECEMBER:Ljava/time/Month;

    filled-new-array/range {v0 .. v11}, [Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 112
    new-instance v0, Ljava/time/Month;

    const-string v1, "JANUARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    .line 117
    new-instance v0, Ljava/time/Month;

    const-string v1, "FEBRUARY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    .line 122
    new-instance v0, Ljava/time/Month;

    const-string v1, "MARCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->MARCH:Ljava/time/Month;

    .line 127
    new-instance v0, Ljava/time/Month;

    const-string v1, "APRIL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->APRIL:Ljava/time/Month;

    .line 132
    new-instance v0, Ljava/time/Month;

    const-string v1, "MAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->MAY:Ljava/time/Month;

    .line 137
    new-instance v0, Ljava/time/Month;

    const-string v1, "JUNE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->JUNE:Ljava/time/Month;

    .line 142
    new-instance v0, Ljava/time/Month;

    const-string v1, "JULY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->JULY:Ljava/time/Month;

    .line 147
    new-instance v0, Ljava/time/Month;

    const-string v1, "AUGUST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->AUGUST:Ljava/time/Month;

    .line 152
    new-instance v0, Ljava/time/Month;

    const-string v1, "SEPTEMBER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->SEPTEMBER:Ljava/time/Month;

    .line 157
    new-instance v0, Ljava/time/Month;

    const-string v1, "OCTOBER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->OCTOBER:Ljava/time/Month;

    .line 162
    new-instance v0, Ljava/time/Month;

    const-string v1, "NOVEMBER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->NOVEMBER:Ljava/time/Month;

    .line 167
    new-instance v0, Ljava/time/Month;

    const-string v1, "DECEMBER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->DECEMBER:Ljava/time/Month;

    .line 106
    invoke-static {}, Ljava/time/Month;->$values()[Ljava/time/Month;

    move-result-object v0

    sput-object v0, Ljava/time/Month;->$VALUES:[Ljava/time/Month;

    .line 171
    invoke-static {}, Ljava/time/Month;->values()[Ljava/time/Month;

    move-result-object v0

    sput-object v0, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

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

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Month;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 212
    instance-of v0, p0, Ljava/time/Month;

    if-eqz v0, :cond_8

    .line 213
    move-object v0, p0

    check-cast v0, Ljava/time/Month;

    return-object v0

    .line 216
    :cond_8
    :try_start_8
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {p0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 217
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    .line 219
    :cond_19
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v0
    :try_end_23
    .catch Ljava/time/DateTimeException; {:try_start_8 .. :try_end_23} :catch_24

    return-object v0

    .line 220
    :catch_24
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain Month from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
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

.method public static whitelist test-api of(I)Ljava/time/Month;
    .registers 4
    .param p0, "month"    # I

    .line 186
    const/4 v0, 0x1

    if-lt p0, v0, :cond_e

    const/16 v0, 0xc

    if-gt p0, v0, :cond_e

    .line 189
    sget-object v0, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 187
    :cond_e
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for MonthOfYear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/Month;
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

    .line 106
    const-class v0, Ljava/time/Month;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/Month;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/Month;
    .registers 1

    .line 106
    sget-object v0, Ljava/time/Month;->$VALUES:[Ljava/time/Month;

    invoke-virtual {v0}, [Ljava/time/Month;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/Month;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 609
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 612
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljava/time/Month;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 610
    :cond_18
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api firstDayOfYear(Z)I
    .registers 4
    .param p1, "leapYear"    # Z

    .line 496
    move v0, p1

    .line 497
    .local v0, "leap":I
    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_2c

    .line 522
    add-int/lit16 v1, v0, 0x14f

    return v1

    .line 519
    :pswitch_b
    add-int/lit16 v1, v0, 0x131

    return v1

    .line 517
    :pswitch_e
    add-int/lit16 v1, v0, 0x112

    return v1

    .line 515
    :pswitch_11
    add-int/lit16 v1, v0, 0xf4

    return v1

    .line 513
    :pswitch_14
    add-int/lit16 v1, v0, 0xd5

    return v1

    .line 511
    :pswitch_17
    add-int/lit16 v1, v0, 0xb6

    return v1

    .line 509
    :pswitch_1a
    add-int/lit16 v1, v0, 0x98

    return v1

    .line 507
    :pswitch_1d
    add-int/lit8 v1, v0, 0x79

    return v1

    .line 505
    :pswitch_20
    add-int/lit8 v1, v0, 0x5b

    return v1

    .line 503
    :pswitch_23
    add-int/lit8 v1, v0, 0x3c

    return v1

    .line 501
    :pswitch_26
    const/16 v1, 0x20

    return v1

    .line 499
    :pswitch_29
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist test-api firstMonthOfQuarter()Ljava/time/Month;
    .registers 3

    .line 539
    sget-object v0, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 342
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 343
    invoke-virtual {p0}, Ljava/time/Month;->getValue()I

    move-result v0

    return v0

    .line 345
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Ljava/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 254
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

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

    .line 372
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_a

    .line 373
    invoke-virtual {p0}, Ljava/time/Month;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 374
    :cond_a
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_13

    .line 377
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 375
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

    .line 236
    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 279
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 280
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 282
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

.method public whitelist test-api length(Z)I
    .registers 3
    .param p1, "leapYear"    # Z

    .line 426
    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    .line 435
    const/16 v0, 0x1f

    return v0

    .line 433
    :sswitch_a
    const/16 v0, 0x1e

    return v0

    .line 428
    :sswitch_d
    if-eqz p1, :cond_12

    const/16 v0, 0x1d

    goto :goto_14

    :cond_12
    const/16 v0, 0x1c

    :goto_14
    return v0

    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_a
        0x5 -> :sswitch_a
        0x8 -> :sswitch_a
        0xa -> :sswitch_a
    .end sparse-switch
.end method

.method public whitelist test-api maxLength()I
    .registers 2

    .line 472
    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 481
    const/16 v0, 0x1f

    return v0

    .line 479
    :sswitch_a
    const/16 v0, 0x1e

    return v0

    .line 474
    :sswitch_d
    const/16 v0, 0x1d

    return v0

    :sswitch_data_10
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_a
        0x5 -> :sswitch_a
        0x8 -> :sswitch_a
        0xa -> :sswitch_a
    .end sparse-switch
.end method

.method public whitelist test-api minLength()I
    .registers 2

    .line 449
    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 458
    const/16 v0, 0x1f

    return v0

    .line 456
    :sswitch_a
    const/16 v0, 0x1e

    return v0

    .line 451
    :sswitch_d
    const/16 v0, 0x1c

    return v0

    :sswitch_data_10
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_a
        0x5 -> :sswitch_a
        0x8 -> :sswitch_a
        0xa -> :sswitch_a
    .end sparse-switch
.end method

.method public whitelist test-api minus(J)Ljava/time/Month;
    .registers 5
    .param p1, "months"    # J

    .line 409
    const-wide/16 v0, 0xc

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Month;->plus(J)Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plus(J)Ljava/time/Month;
    .registers 7
    .param p1, "months"    # J

    .line 393
    const-wide/16 v0, 0xc

    rem-long v0, p1, v0

    long-to-int v0, v0

    .line 394
    .local v0, "amount":I
    sget-object v1, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v2

    add-int/lit8 v3, v0, 0xc

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0xc

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

    .line 564
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 565
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0

    .line 566
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 567
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 569
    :cond_12
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 309
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 310
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 312
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.class public final enum Ljava/time/temporal/ChronoField;
.super Ljava/lang/Enum;
.source "ChronoField.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/temporal/ChronoField;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api EPOCH_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api ERA:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api NANO_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api YEAR_OF_ERA:Ljava/time/temporal/ChronoField;


# instance fields
.field private final greylist-max-o baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final greylist-max-o displayNameKey:Ljava/lang/String;

.field private final greylist-max-o name:Ljava/lang/String;

.field private final greylist-max-o range:Ljava/time/temporal/ValueRange;

.field private final greylist-max-o rangeUnit:Ljava/time/temporal/TemporalUnit;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/temporal/ChronoField;
    .registers 31

    .line 111
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v6, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    sget-object v8, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v9, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    sget-object v10, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v11, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    sget-object v12, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    sget-object v13, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v14, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v15, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v18, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v19, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v20, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v21, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    sget-object v22, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v23, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v24, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v25, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v26, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    sget-object v27, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v28, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v29, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    sget-object v30, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    filled-new-array/range {v1 .. v30}, [Ljava/time/temporal/ChronoField;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 27

    .line 133
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v7, 0x0

    const-wide/32 v9, 0x3b9ac9ff

    invoke-static {v7, v8, v9, v10}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "NANO_OF_SECOND"

    const/4 v2, 0x0

    const-string v3, "NanoOfSecond"

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 149
    new-instance v11, Ljava/time/temporal/ChronoField;

    sget-object v15, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide v0, 0x4e94914effffL

    invoke-static {v7, v8, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v17

    const-string v12, "NANO_OF_DAY"

    const/4 v13, 0x1

    const-string v14, "NanoOfDay"

    invoke-direct/range {v11 .. v17}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 169
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v1, 0xf423f

    invoke-static {v7, v8, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "MICRO_OF_SECOND"

    const/4 v2, 0x2

    const-string v3, "MicroOfSecond"

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 188
    new-instance v11, Ljava/time/temporal/ChronoField;

    sget-object v15, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide v0, 0x141dd75fffL

    invoke-static {v7, v8, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v17

    const-string v12, "MICRO_OF_DAY"

    const/4 v13, 0x3

    const-string v14, "MicroOfDay"

    invoke-direct/range {v11 .. v17}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v11, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 208
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x3e7

    invoke-static {v7, v8, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "MILLI_OF_SECOND"

    const/4 v2, 0x4

    const-string v3, "MilliOfSecond"

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 227
    new-instance v11, Ljava/time/temporal/ChronoField;

    sget-object v15, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v0, 0x5265bff

    invoke-static {v7, v8, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v17

    const-string v12, "MILLI_OF_DAY"

    const/4 v13, 0x5

    const-string v14, "MilliOfDay"

    invoke-direct/range {v11 .. v17}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v11, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 237
    new-instance v12, Ljava/time/temporal/ChronoField;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x3b

    invoke-static {v7, v8, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v18

    const-string v19, "second"

    const-string v13, "SECOND_OF_MINUTE"

    const/4 v14, 0x6

    const-string v15, "SecondOfMinute"

    invoke-direct/range {v12 .. v19}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v12, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 249
    new-instance v13, Ljava/time/temporal/ChronoField;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v2, 0x1517f

    invoke-static {v7, v8, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v19

    const-string v14, "SECOND_OF_DAY"

    const/4 v15, 0x7

    const-string v16, "SecondOfDay"

    invoke-direct/range {v13 .. v19}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v13, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 259
    new-instance v14, Ljava/time/temporal/ChronoField;

    sget-object v18, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    sget-object v19, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v7, v8, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v20

    const-string v21, "minute"

    const-string v15, "MINUTE_OF_HOUR"

    const/16 v16, 0x8

    const-string v17, "MinuteOfHour"

    invoke-direct/range {v14 .. v21}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v14, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 270
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x59f

    invoke-static {v7, v8, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "MINUTE_OF_DAY"

    const/16 v2, 0x9

    const-string v3, "MinuteOfDay"

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 286
    new-instance v11, Ljava/time/temporal/ChronoField;

    sget-object v15, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v0, 0xb

    invoke-static {v7, v8, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v17

    const-string v12, "HOUR_OF_AMPM"

    const/16 v13, 0xa

    const-string v14, "HourOfAmPm"

    invoke-direct/range {v11 .. v17}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v11, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    .line 302
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0xc

    invoke-static {v11, v12, v13, v14}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "CLOCK_HOUR_OF_AMPM"

    const/16 v2, 0xb

    const-string v3, "ClockHourOfAmPm"

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    .line 319
    new-instance v15, Ljava/time/temporal/ChronoField;

    sget-object v19, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x17

    invoke-static {v7, v8, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v21

    const-string v22, "hour"

    const-string v16, "HOUR_OF_DAY"

    const/16 v17, 0xc

    const-string v18, "HourOfDay"

    invoke-direct/range {v15 .. v22}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v15, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 335
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x18

    invoke-static {v11, v12, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "CLOCK_HOUR_OF_DAY"

    const/16 v2, 0xd

    const-string v3, "ClockHourOfDay"

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 349
    new-instance v15, Ljava/time/temporal/ChronoField;

    sget-object v19, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v7, v8, v11, v12}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v21

    const-string v22, "dayperiod"

    const-string v16, "AMPM_OF_DAY"

    const/16 v17, 0xe

    const-string v18, "AmPmOfDay"

    invoke-direct/range {v15 .. v22}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v15, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 365
    new-instance v16, Ljava/time/temporal/ChronoField;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v21, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x7

    invoke-static {v11, v12, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v22

    const-string v23, "weekday"

    const-string v17, "DAY_OF_WEEK"

    const/16 v18, 0xf

    const-string v19, "DayOfWeek"

    invoke-direct/range {v16 .. v23}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    .line 383
    new-instance v17, Ljava/time/temporal/ChronoField;

    sget-object v21, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v22, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v11, v12, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v23

    const-string v18, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    const/16 v19, 0x10

    const-string v20, "AlignedDayOfWeekInMonth"

    invoke-direct/range {v17 .. v23}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    .line 401
    new-instance v18, Ljava/time/temporal/ChronoField;

    sget-object v22, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v23, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v11, v12, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v24

    const-string v19, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    const/16 v20, 0x11

    const-string v21, "AlignedDayOfWeekInYear"

    invoke-direct/range {v18 .. v24}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v18, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    .line 414
    new-instance v19, Ljava/time/temporal/ChronoField;

    sget-object v23, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v24, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v2, 0x1c

    const-wide/16 v4, 0x1f

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v25

    const-string v26, "day"

    const-string v20, "DAY_OF_MONTH"

    const/16 v21, 0x12

    const-string v22, "DayOfMonth"

    invoke-direct/range {v19 .. v26}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v19, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 432
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v17, 0x16d

    const-wide/16 v19, 0x16e

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v20}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "DAY_OF_YEAR"

    const/16 v2, 0x13

    const-string v3, "DayOfYear"

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 445
    new-instance v15, Ljava/time/temporal/ChronoField;

    sget-object v19, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide v0, -0x550a313cdaL

    const-wide v2, 0x550a1b48f7L

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v21

    const-string v16, "EPOCH_DAY"

    const/16 v17, 0x14

    const-string v18, "EpochDay"

    invoke-direct/range {v15 .. v21}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v15, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    .line 461
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x5

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v20}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "ALIGNED_WEEK_OF_MONTH"

    const/16 v2, 0x15

    const-string v3, "AlignedWeekOfMonth"

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 477
    new-instance v15, Ljava/time/temporal/ChronoField;

    sget-object v19, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x35

    invoke-static {v11, v12, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v21

    const-string v16, "ALIGNED_WEEK_OF_YEAR"

    const/16 v17, 0x16

    const-string v18, "AlignedWeekOfYear"

    invoke-direct/range {v15 .. v21}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v15, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 488
    new-instance v16, Ljava/time/temporal/ChronoField;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v21, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v11, v12, v13, v14}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v22

    const-string v23, "month"

    const-string v17, "MONTH_OF_YEAR"

    const/16 v18, 0x17

    const-string v19, "MonthOfYear"

    invoke-direct/range {v16 .. v23}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 508
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide v1, -0x2cb4177f4L

    const-wide v13, 0x2cb4177ffL

    invoke-static {v1, v2, v13, v14}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "PROLEPTIC_MONTH"

    const/16 v2, 0x18

    const-string v3, "ProlepticMonth"

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    .line 543
    new-instance v13, Ljava/time/temporal/ChronoField;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v18, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v2, 0x3b9ac9ff

    const-wide/32 v4, 0x3b9aca00

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v19

    const-string v14, "YEAR_OF_ERA"

    const/16 v15, 0x19

    const-string v16, "YearOfEra"

    invoke-direct/range {v13 .. v19}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v13, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    .line 567
    new-instance v14, Ljava/time/temporal/ChronoField;

    sget-object v18, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v19, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v0, -0x3b9ac9ff

    invoke-static {v0, v1, v9, v10}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v20

    const-string v21, "year"

    const-string v15, "YEAR"

    const/16 v16, 0x1a

    const-string v17, "Year"

    invoke-direct/range {v14 .. v21}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 584
    new-instance v15, Ljava/time/temporal/ChronoField;

    sget-object v19, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-static {v7, v8, v11, v12}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v21

    const-string v22, "era"

    const-string v16, "ERA"

    const/16 v17, 0x1b

    const-string v18, "Era"

    invoke-direct/range {v15 .. v22}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v15, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    .line 599
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v1, v2, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "INSTANT_SECONDS"

    const/16 v2, 0x1c

    const-string v3, "InstantSeconds"

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 613
    new-instance v1, Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v2, -0xfd20

    const-wide/32 v7, 0xfd20

    invoke-static {v2, v3, v7, v8}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "OFFSET_SECONDS"

    const/16 v3, 0x1d

    const-string v4, "OffsetSeconds"

    invoke-direct/range {v1 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    .line 111
    invoke-static {}, Ljava/time/temporal/ChronoField;->$values()[Ljava/time/temporal/ChronoField;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/ChronoField;->$VALUES:[Ljava/time/temporal/ChronoField;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V
    .registers 7
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p6, "range"    # Ljava/time/temporal/ValueRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/ValueRange;",
            ")V"
        }
    .end annotation

    .line 621
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 622
    iput-object p3, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    .line 623
    iput-object p4, p0, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 624
    iput-object p5, p0, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 625
    iput-object p6, p0, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    .line 626
    const/4 p1, 0x0

    iput-object p1, p0, Ljava/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    .line 627
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V
    .registers 8
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p6, "range"    # Ljava/time/temporal/ValueRange;
    .param p7, "displayNameKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/ValueRange;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 630
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 631
    iput-object p3, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    .line 632
    iput-object p4, p0, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 633
    iput-object p5, p0, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 634
    iput-object p6, p0, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    .line 635
    iput-object p7, p0, Ljava/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    .line 636
    return-void
.end method

.method private static greylist-max-o getIcuFieldNumber(Ljava/time/temporal/ChronoField;)I
    .registers 4
    .param p0, "field"    # Ljava/time/temporal/ChronoField;

    .line 665
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_3a

    .line 685
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ChronoField "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :sswitch_24
    const/4 v0, 0x0

    return v0

    .line 681
    :sswitch_26
    const/4 v0, 0x1

    return v0

    .line 679
    :sswitch_28
    const/4 v0, 0x3

    return v0

    .line 677
    :sswitch_2a
    const/4 v0, 0x7

    return v0

    .line 675
    :sswitch_2c
    const/4 v0, 0x6

    return v0

    .line 673
    :sswitch_2e
    const/16 v0, 0xa

    return v0

    .line 671
    :sswitch_31
    const/16 v0, 0xb

    return v0

    .line 669
    :sswitch_34
    const/16 v0, 0xc

    return v0

    .line 667
    :sswitch_37
    const/16 v0, 0xd

    return v0

    :sswitch_data_3a
    .sparse-switch
        0x6 -> :sswitch_37
        0x8 -> :sswitch_34
        0xc -> :sswitch_31
        0xe -> :sswitch_2e
        0xf -> :sswitch_2c
        0x12 -> :sswitch_2a
        0x17 -> :sswitch_28
        0x1a -> :sswitch_26
        0x1b -> :sswitch_24
    .end sparse-switch
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/temporal/ChronoField;
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

    .line 111
    const-class v0, Ljava/time/temporal/ChronoField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/ChronoField;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/temporal/ChronoField;
    .registers 1

    .line 111
    sget-object v0, Ljava/time/temporal/ChronoField;->$VALUES:[Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, [Ljava/time/temporal/ChronoField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/ChronoField;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 5
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 804
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api checkValidIntValue(J)I
    .registers 4
    .param p1, "value"    # J

    .line 782
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api checkValidValue(J)J
    .registers 5
    .param p1, "value"    # J

    .line 763
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 692
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 640
    const-string v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 641
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 642
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    return-object v0

    .line 655
    :cond_c
    nop

    .line 656
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 657
    .local v0, "generator":Landroid/icu/text/DateTimePatternGenerator;
    invoke-static {p0}, Ljava/time/temporal/ChronoField;->getIcuFieldNumber(Ljava/time/temporal/ChronoField;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemName(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "icuName":Ljava/lang/String;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    move-object v2, v1

    goto :goto_29

    :cond_27
    iget-object v2, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    :goto_29
    return-object v2
.end method

.method public whitelist test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 798
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 697
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api isDateBased()Z
    .registers 3

    .line 732
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 788
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isTimeBased()Z
    .registers 3

    .line 744
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api range()Ljava/time/temporal/ValueRange;
    .registers 2

    .line 719
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public whitelist test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 793
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 810
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    return-object v0
.end method

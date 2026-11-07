.class public final enum Ljava/time/chrono/HijrahEra;
.super Ljava/lang/Enum;
.source "HijrahEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/chrono/HijrahEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/chrono/HijrahEra;

.field public static final enum whitelist test-api AH:Ljava/time/chrono/HijrahEra;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/chrono/HijrahEra;
    .registers 1

    .line 89
    sget-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    filled-new-array {v0}, [Ljava/time/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 95
    new-instance v0, Ljava/time/chrono/HijrahEra;

    const-string v1, "AH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/HijrahEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    .line 89
    invoke-static {}, Ljava/time/chrono/HijrahEra;->$values()[Ljava/time/chrono/HijrahEra;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/HijrahEra;->$VALUES:[Ljava/time/chrono/HijrahEra;

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

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api of(I)Ljava/time/chrono/HijrahEra;
    .registers 4
    .param p0, "hijrahEra"    # I

    .line 108
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 109
    sget-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    return-object v0

    .line 111
    :cond_6
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/chrono/HijrahEra;
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

    .line 89
    const-class v0, Ljava/time/chrono/HijrahEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahEra;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/chrono/HijrahEra;
    .registers 1

    .line 89
    sget-object v0, Ljava/time/chrono/HijrahEra;->$VALUES:[Ljava/time/chrono/HijrahEra;

    invoke-virtual {v0}, [Ljava/time/chrono/HijrahEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/chrono/HijrahEra;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Ljava/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 169
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    .line 170
    invoke-virtual {v0, v1, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    .line 172
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 173
    invoke-static {}, Ljava/time/chrono/HijrahDate;->now()Ljava/time/chrono/HijrahDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method public whitelist test-api getValue()I
    .registers 2

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 155
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_b

    .line 156
    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 158
    :cond_b
    invoke-super {p0, p1}, Ljava/time/chrono/Era;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

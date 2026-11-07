.class public final enum Ljava/time/chrono/ThaiBuddhistEra;
.super Ljava/lang/Enum;
.source "ThaiBuddhistEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/chrono/ThaiBuddhistEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/chrono/ThaiBuddhistEra;

.field public static final enum whitelist test-api BE:Ljava/time/chrono/ThaiBuddhistEra;

.field public static final enum whitelist test-api BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/chrono/ThaiBuddhistEra;
    .registers 2

    .line 113
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    sget-object v1, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    filled-new-array {v0, v1}, [Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 119
    new-instance v0, Ljava/time/chrono/ThaiBuddhistEra;

    const-string v1, "BEFORE_BE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/ThaiBuddhistEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    .line 124
    new-instance v0, Ljava/time/chrono/ThaiBuddhistEra;

    const-string v1, "BE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/ThaiBuddhistEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    .line 113
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistEra;->$values()[Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/ThaiBuddhistEra;->$VALUES:[Ljava/time/chrono/ThaiBuddhistEra;

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

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api of(I)Ljava/time/chrono/ThaiBuddhistEra;
    .registers 4
    .param p0, "thaiBuddhistEra"    # I

    .line 138
    packed-switch p0, :pswitch_data_22

    .line 144
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

    .line 142
    :pswitch_1c
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0

    .line 140
    :pswitch_1f
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/chrono/ThaiBuddhistEra;
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

    .line 113
    const-class v0, Ljava/time/chrono/ThaiBuddhistEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/chrono/ThaiBuddhistEra;
    .registers 1

    .line 113
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->$VALUES:[Ljava/time/chrono/ThaiBuddhistEra;

    invoke-virtual {v0}, [Ljava/time/chrono/ThaiBuddhistEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
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

    sget-object v1, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    .line 172
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 173
    sget-object v1, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1f

    invoke-static {v2, v2, v2}, Ljava/time/chrono/ThaiBuddhistDate;->of(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    goto :goto_24

    :cond_1f
    const/4 v1, 0x0

    invoke-static {v1, v2, v2}, Ljava/time/chrono/ThaiBuddhistDate;->of(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    :goto_24
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method public whitelist test-api getValue()I
    .registers 2

    .line 158
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistEra;->ordinal()I

    move-result v0

    return v0
.end method

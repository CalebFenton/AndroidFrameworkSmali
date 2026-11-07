.class public final Ljava/time/chrono/ThaiBuddhistChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "ThaiBuddhistChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o ERA_FULL_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ERA_NARROW_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ERA_SHORT_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final whitelist test-api INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

.field private static final greylist-max-o TARGET_LANGUAGE:Ljava/lang/String; = "th"

.field static final greylist-max-o YEARS_DIFFERENCE:I = 0x21f

.field private static final whitelist serialVersionUID:J = 0x26862bec417f21daL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 113
    new-instance v0, Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-direct {v0}, Ljava/time/chrono/ThaiBuddhistChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    .line 148
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "BB"

    aput-object v4, v2, v3

    const/4 v5, 0x1

    const-string v6, "BE"

    aput-object v6, v2, v5

    const-string v7, "en"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    const-string v4, "th"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "B.B."

    aput-object v6, v2, v3

    const-string v6, "B.E."

    aput-object v6, v2, v5

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "\u0e1e.\u0e28."

    aput-object v6, v2, v3

    const-string v6, "\u0e1b\u0e35\u0e01\u0e48\u0e2d\u0e19\u0e04\u0e23\u0e34\u0e2a\u0e15\u0e4c\u0e01\u0e32\u0e25\u0e17\u0e35\u0e48"

    aput-object v6, v2, v5

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "Before Buddhist"

    aput-object v8, v2, v3

    const-string v8, "Budhhist Era"

    aput-object v8, v2, v5

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0e1e\u0e38\u0e17\u0e18\u0e28\u0e31\u0e01\u0e23\u0e32\u0e0a"

    aput-object v2, v1, v3

    aput-object v6, v1, v5

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 164
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api date(III)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/time/chrono/ThaiBuddhistChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api date(III)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 6
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 228
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    add-int/lit16 v1, p1, -0x21f

    invoke-static {v1, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public whitelist test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 6
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 213
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 290
    instance-of v0, p1, Ljava/time/chrono/ThaiBuddhistDate;

    if-eqz v0, :cond_8

    .line 291
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0

    .line 293
    :cond_8
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistChronology;->dateEpochDay(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateEpochDay(J)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p1, "epochDay"    # J

    .line 270
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    invoke-static {p1, p2}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateNow()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 108
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistChronology;->dateNow()Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateNow()Ljava/time/chrono/ThaiBuddhistDate;
    .registers 2

    .line 275
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p1, "clock"    # Ljava/time/Clock;

    .line 285
    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 280
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;
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

    .line 108
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistChronology;->dateYearDay(II)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ChronoLocalDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api dateYearDay(II)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 258
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    add-int/lit16 v1, p1, -0x21f

    invoke-static {v1, p2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public whitelist test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 244
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljava/time/chrono/ThaiBuddhistChronology;->dateYearDay(II)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api eraOf(I)Ljava/time/chrono/Era;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistChronology;->eraOf(I)Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api eraOf(I)Ljava/time/chrono/ThaiBuddhistEra;
    .registers 3
    .param p1, "eraValue"    # I

    .line 340
    invoke-static {p1}, Ljava/time/chrono/ThaiBuddhistEra;->of(I)Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api eras()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistEra;->values()[Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 195
    const-string v0, "buddhist"

    return-object v0
.end method

.method public whitelist test-api getId()Ljava/lang/String;
    .registers 2

    .line 178
    const-string v0, "ThaiBuddhist"

    return-object v0
.end method

.method public whitelist test-api isLeapYear(J)Z
    .registers 6
    .param p1, "prolepticYear"    # J

    .line 327
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    const-wide/16 v1, 0x21f

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "Ljava/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api prolepticYear(Ljava/time/chrono/Era;I)I
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 332
    instance-of v0, p1, Ljava/time/chrono/ThaiBuddhistEra;

    if-eqz v0, :cond_d

    .line 335
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    if-ne p1, v0, :cond_a

    move v0, p2

    goto :goto_c

    :cond_a
    rsub-int/lit8 v0, p2, 0x1

    :goto_c
    return v0

    .line 333
    :cond_d
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be BuddhistEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .registers 15
    .param p1, "field"    # Ljava/time/temporal/ChronoField;

    .line 351
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x21f

    packed-switch v0, :pswitch_data_5c

    .line 365
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 361
    :pswitch_12
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 362
    .local v0, "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 357
    .end local v0    # "range":Ljava/time/temporal/ValueRange;
    :pswitch_27
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 358
    .restart local v0    # "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    add-long/2addr v3, v1

    neg-long v3, v3

    const-wide/16 v5, 0x1

    add-long v9, v3, v5

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v3

    add-long v11, v3, v1

    const-wide/16 v7, 0x1

    invoke-static/range {v7 .. v12}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 353
    .end local v0    # "range":Ljava/time/temporal/ValueRange;
    :pswitch_44
    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 354
    .restart local v0    # "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    const-wide/16 v3, 0x1974

    add-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_44
        :pswitch_27
        :pswitch_12
    .end packed-switch
.end method

.method public bridge synthetic whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
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

    .line 108
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ThaiBuddhistDate;
    .registers 4
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ThaiBuddhistDate;"
        }
    .end annotation

    .line 371
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 389
    invoke-super {p0}, Ljava/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "Ljava/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .line 311
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "Ljava/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .line 305
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

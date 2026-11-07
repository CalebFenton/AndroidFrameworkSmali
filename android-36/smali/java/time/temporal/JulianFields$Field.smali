.class final enum Ljava/time/temporal/JulianFields$Field;
.super Ljava/lang/Enum;
.source "JulianFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/JulianFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/temporal/JulianFields$Field;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/temporal/JulianFields$Field;

.field public static final enum greylist-max-o JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

.field public static final enum greylist-max-o MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

.field public static final enum greylist-max-o RATA_DIE:Ljava/time/temporal/JulianFields$Field;


# instance fields
.field private final transient greylist-max-o baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final transient greylist-max-o name:Ljava/lang/String;

.field private final transient greylist-max-o offset:J

.field private final transient greylist-max-o range:Ljava/time/temporal/ValueRange;

.field private final transient greylist-max-o rangeUnit:Ljava/time/temporal/TemporalUnit;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/temporal/JulianFields$Field;
    .registers 3

    .line 220
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    sget-object v1, Ljava/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    sget-object v2, Ljava/time/temporal/JulianFields$Field;->RATA_DIE:Ljava/time/temporal/JulianFields$Field;

    filled-new-array {v0, v1, v2}, [Ljava/time/temporal/JulianFields$Field;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 221
    new-instance v0, Ljava/time/temporal/JulianFields$Field;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v6, 0x253d8c

    const-string v1, "JULIAN_DAY"

    const/4 v2, 0x0

    const-string v3, "JulianDay"

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v0, Ljava/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    .line 222
    new-instance v1, Ljava/time/temporal/JulianFields$Field;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v7, 0x9e8b

    const-string v2, "MODIFIED_JULIAN_DAY"

    const/4 v3, 0x1

    const-string v4, "ModifiedJulianDay"

    invoke-direct/range {v1 .. v8}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v1, Ljava/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    .line 223
    new-instance v2, Ljava/time/temporal/JulianFields$Field;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v8, 0xaf93b

    const-string v3, "RATA_DIE"

    const/4 v4, 0x2

    const-string v5, "RataDie"

    invoke-direct/range {v2 .. v9}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v2, Ljava/time/temporal/JulianFields$Field;->RATA_DIE:Ljava/time/temporal/JulianFields$Field;

    .line 220
    invoke-static {}, Ljava/time/temporal/JulianFields$Field;->$values()[Ljava/time/temporal/JulianFields$Field;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/JulianFields$Field;->$VALUES:[Ljava/time/temporal/JulianFields$Field;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V
    .registers 10
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p6, "offset"    # J
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
            "J)V"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 232
    iput-object p3, p0, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    .line 233
    iput-object p4, p0, Ljava/time/temporal/JulianFields$Field;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 234
    iput-object p5, p0, Ljava/time/temporal/JulianFields$Field;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 235
    const-wide p1, -0x550a313cdaL

    add-long/2addr p1, p6

    const-wide v0, 0x550a1b48f7L

    add-long/2addr v0, p6

    invoke-static {p1, p2, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object p1

    iput-object p1, p0, Ljava/time/temporal/JulianFields$Field;->range:Ljava/time/temporal/ValueRange;

    .line 236
    iput-wide p6, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    .line 237
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/time/temporal/JulianFields$Field;
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

    .line 220
    const-class v0, Ljava/time/temporal/JulianFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/JulianFields$Field;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/time/temporal/JulianFields$Field;
    .registers 1

    .line 220
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->$VALUES:[Ljava/time/temporal/JulianFields$Field;

    invoke-virtual {v0}, [Ljava/time/temporal/JulianFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/JulianFields$Field;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 7
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 287
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 290
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    iget-wide v1, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 288
    :cond_17
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 242
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->baseUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 281
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    iget-wide v2, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 247
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api isDateBased()Z
    .registers 2

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 268
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isTimeBased()Z
    .registers 2

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api range()Ljava/time/temporal/ValueRange;
    .registers 2

    .line 262
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->range:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public whitelist test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 273
    invoke-virtual {p0, p1}, Ljava/time/temporal/JulianFields$Field;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 276
    invoke-virtual {p0}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 274
    :cond_b
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 9
    .param p2, "partialTemporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 297
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 298
    .local v0, "value":J
    invoke-static {p2}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v2

    .line 299
    .local v2, "chrono":Ljava/time/chrono/Chronology;
    sget-object v3, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p3, v3, :cond_1d

    .line 300
    iget-wide v3, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljava/time/chrono/Chronology;->dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3

    .line 302
    :cond_1d
    invoke-virtual {p0}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v3

    invoke-virtual {v3, v0, v1, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 303
    iget-wide v3, p0, Ljava/time/temporal/JulianFields$Field;->offset:J

    sub-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Ljava/time/chrono/Chronology;->dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic whitelist test-api resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
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

    .line 220
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/JulianFields$Field;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 309
    iget-object v0, p0, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    return-object v0
.end method

.class final Ljava/time/format/DateTimePrintContext;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"


# instance fields
.field private greylist-max-o formatter:Ljava/time/format/DateTimeFormatter;

.field private greylist-max-o optional:I

.field private greylist-max-o temporal:Ljava/time/temporal/TemporalAccessor;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)V
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Ljava/time/format/DateTimePrintContext;->adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    iput-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    .line 120
    iput-object p2, p0, Ljava/time/format/DateTimePrintContext;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 121
    return-void
.end method

.method private static greylist-max-o adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;
    .registers 13
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 125
    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatter;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    .line 126
    .local v0, "overrideChrono":Ljava/time/chrono/Chronology;
    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatter;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    .line 127
    .local v1, "overrideZone":Ljava/time/ZoneId;
    if-nez v0, :cond_d

    if-nez v1, :cond_d

    .line 128
    return-object p0

    .line 132
    :cond_d
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/Chronology;

    .line 133
    .local v2, "temporalChrono":Ljava/time/chrono/Chronology;
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/ZoneId;

    .line 134
    .local v3, "temporalZone":Ljava/time/ZoneId;
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 135
    const/4 v0, 0x0

    .line 137
    :cond_28
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 138
    const/4 v1, 0x0

    .line 140
    :cond_2f
    if-nez v0, :cond_34

    if-nez v1, :cond_34

    .line 141
    return-object p0

    .line 145
    :cond_34
    if-eqz v0, :cond_38

    move-object v4, v0

    goto :goto_39

    :cond_38
    move-object v4, v2

    .line 146
    .local v4, "effectiveChrono":Ljava/time/chrono/Chronology;
    :goto_39
    if-eqz v1, :cond_9e

    .line 148
    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 149
    sget-object v5, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/Chronology;

    .line 150
    .local v5, "chrono":Ljava/time/chrono/Chronology;
    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v6

    return-object v6

    .line 153
    .end local v5    # "chrono":Ljava/time/chrono/Chronology;
    :cond_54
    invoke-virtual {v1}, Ljava/time/ZoneId;->normalized()Ljava/time/ZoneId;

    move-result-object v5

    instance-of v5, v5, Ljava/time/ZoneOffset;

    if-eqz v5, :cond_9e

    sget-object v5, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v5

    if-eqz v5, :cond_9e

    sget-object v5, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    .line 154
    invoke-interface {p0, v5}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    invoke-virtual {v1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v6

    sget-object v7, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    invoke-virtual {v6, v7}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    if-ne v5, v6, :cond_7b

    goto :goto_9e

    .line 155
    :cond_7b
    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to apply override zone \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' because the temporal object being formatted has a different offset but does not represent an instant: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_9e
    :goto_9e
    if-eqz v1, :cond_a2

    move-object v5, v1

    goto :goto_a3

    :cond_a2
    move-object v5, v3

    .line 162
    .local v5, "effectiveZone":Ljava/time/ZoneId;
    :goto_a3
    if-eqz v0, :cond_f7

    .line 163
    sget-object v6, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v6}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 164
    invoke-interface {v4, p0}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v6

    .local v6, "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    goto :goto_f8

    .line 167
    .end local v6    # "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    :cond_b2
    sget-object v6, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v0, v6, :cond_b8

    if-eqz v2, :cond_f5

    .line 168
    :cond_b8
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_be
    if-ge v8, v7, :cond_f5

    aget-object v9, v6, v8

    .line 169
    .local v9, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v9}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v10

    if-eqz v10, :cond_f2

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v10

    if-nez v10, :cond_cf

    goto :goto_f2

    .line 170
    :cond_cf
    new-instance v6, Ljava/time/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to apply override chronology \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' because the temporal object being formatted contains date fields but does not represent a whole date: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 168
    .end local v9    # "f":Ljava/time/temporal/ChronoField;
    :cond_f2
    :goto_f2
    add-int/lit8 v8, v8, 0x1

    goto :goto_be

    .line 176
    :cond_f5
    const/4 v6, 0x0

    .restart local v6    # "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    goto :goto_f8

    .line 179
    .end local v6    # "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    :cond_f7
    const/4 v6, 0x0

    .line 185
    .restart local v6    # "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    :goto_f8
    new-instance v7, Ljava/time/format/DateTimePrintContext$1;

    invoke-direct {v7, v6, p0, v4, v5}, Ljava/time/format/DateTimePrintContext$1;-><init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/temporal/TemporalAccessor;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v7
.end method


# virtual methods
.method greylist-max-o endOptional()V
    .registers 2

    .line 276
    iget v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    .line 277
    return-void
.end method

.method greylist-max-o getDecimalStyle()Ljava/time/format/DecimalStyle;
    .registers 2

    .line 261
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getLocale()Ljava/util/Locale;
    .registers 2

    .line 250
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getTemporal()Ljava/time/temporal/TemporalAccessor;
    .registers 2

    .line 238
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    return-object v0
.end method

.method greylist-max-o getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 305
    iget v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    if-lez v0, :cond_e

    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 306
    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_e
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 287
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, "result":Ljava/lang/Object;, "TR;"
    if-nez v0, :cond_32

    iget v1, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    if-eqz v1, :cond_d

    goto :goto_32

    .line 289
    :cond_d
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from temporal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_32
    :goto_32
    return-object v0
.end method

.method greylist-max-o startOptional()V
    .registers 2

    .line 269
    iget v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    .line 270
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 319
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

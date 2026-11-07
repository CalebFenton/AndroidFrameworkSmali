.class final Ljava/time/format/Parsed;
.super Ljava/lang/Object;
.source "Parsed.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;


# instance fields
.field greylist-max-o chrono:Ljava/time/chrono/Chronology;

.field private greylist-max-o date:Ljava/time/chrono/ChronoLocalDate;

.field blacklist dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

.field greylist-max-o excessDays:Ljava/time/Period;

.field final greylist-max-o fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o leapSecond:Z

.field private greylist-max-o resolverStyle:Ljava/time/format/ResolverStyle;

.field private greylist-max-o time:Ljava/time/LocalTime;

.field greylist-max-o zone:Ljava/time/ZoneId;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    .line 158
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    iput-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    .line 168
    return-void
.end method

.method private greylist-max-o crossCheck()V
    .registers 3

    .line 682
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_9

    .line 683
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    .line 685
    :cond_9
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_29

    .line 686
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    .line 687
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 688
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    .line 691
    :cond_29
    return-void
.end method

.method private greylist-max-o crossCheck(Ljava/time/temporal/TemporalAccessor;)V
    .registers 13
    .param p1, "target"    # Ljava/time/temporal/TemporalAccessor;

    .line 694
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 695
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 696
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalField;

    .line 697
    .local v2, "field":Ljava/time/temporal/TemporalField;
    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 700
    :try_start_22
    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_26} :catch_78

    .line 703
    .local v3, "val1":J
    nop

    .line 704
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 705
    .local v5, "val2":J
    cmp-long v7, v3, v5

    if-nez v7, :cond_39

    .line 709
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_7a

    .line 706
    :cond_39
    new-instance v7, Ljava/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conflict found: Field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " differs from "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " derived from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 701
    .end local v3    # "val1":J
    .end local v5    # "val2":J
    :catch_78
    move-exception v3

    .line 702
    .local v3, "ex":Ljava/lang/RuntimeException;
    goto :goto_a

    .line 711
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :cond_7a
    :goto_7a
    goto :goto_a

    .line 712
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;>;"
    :cond_7b
    return-void
.end method

.method private greylist-max-o resolveDateFields()V
    .registers 4

    .line 366
    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v2, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-interface {v0, v1, v2}, Ljava/time/chrono/Chronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    .line 367
    return-void
.end method

.method private greylist-max-o resolveFields()V
    .registers 9

    .line 271
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstantFields()V

    .line 272
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveDateFields()V

    .line 273
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeFields()V

    .line 277
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e0

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "changedCount":I
    :goto_12
    const/16 v1, 0x32

    if-ge v0, v1, :cond_ca

    .line 281
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 282
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalField;

    .line 283
    .local v4, "targetField":Ljava/time/temporal/TemporalField;
    iget-object v5, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v6, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-interface {v4, v5, p0, v6}, Ljava/time/temporal/TemporalField;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v5

    .line 284
    .local v5, "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    if-eqz v5, :cond_bb

    .line 285
    instance-of v1, v5, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v1, :cond_7a

    move-object v1, v5

    check-cast v1, Ljava/time/chrono/ChronoZonedDateTime;

    .line 286
    .local v1, "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-nez v2, :cond_4e

    .line 287
    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    iput-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    goto :goto_5a

    .line 288
    :cond_4e
    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 291
    :goto_5a
    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v5

    goto :goto_7a

    .line 289
    :cond_5f
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    .end local v1    # "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    :cond_7a
    :goto_7a
    instance-of v1, v5, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v1, :cond_95

    move-object v1, v5

    check-cast v1, Ljava/time/chrono/ChronoLocalDateTime;

    .line 294
    .local v1, "cldt":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    sget-object v6, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v2, v6}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 295
    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    .line 297
    goto/16 :goto_12

    .line 299
    .end local v1    # "cldt":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    :cond_95
    instance-of v1, v5, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_a3

    .line 300
    move-object v1, v5

    check-cast v1, Ljava/time/chrono/ChronoLocalDate;

    invoke-direct {p0, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    .line 302
    goto/16 :goto_12

    .line 304
    :cond_a3
    instance-of v1, v5, Ljava/time/LocalTime;

    if-eqz v1, :cond_b3

    .line 305
    move-object v1, v5

    check-cast v1, Ljava/time/LocalTime;

    sget-object v2, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v1, v2}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    .line 307
    goto/16 :goto_12

    .line 309
    :cond_b3
    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_bb
    iget-object v6, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c7

    .line 312
    add-int/lit8 v0, v0, 0x1

    .line 313
    goto/16 :goto_12

    .line 315
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v4    # "targetField":Ljava/time/temporal/TemporalField;
    .end local v5    # "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    :cond_c7
    goto/16 :goto_20

    .line 316
    :cond_c9
    nop

    .line 318
    :cond_ca
    if-eq v0, v1, :cond_d8

    .line 322
    if-lez v0, :cond_e0

    .line 323
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstantFields()V

    .line 324
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveDateFields()V

    .line 325
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeFields()V

    goto :goto_e0

    .line 319
    :cond_d8
    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "One of the parsed fields has an incorrectly implemented resolve method"

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "changedCount":I
    :cond_e0
    :goto_e0
    return-void
.end method

.method private greylist-max-o resolveFractional()V
    .registers 7

    .line 628
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-nez v0, :cond_7d

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 629
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 630
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 631
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 632
    :cond_22
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 633
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 634
    .local v0, "nos":J
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .end local v0    # "nos":J
    goto :goto_7d

    .line 637
    :cond_5a
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_7d
    :goto_7d
    return-void
.end method

.method private greylist-max-o resolveInstant()V
    .registers 8

    .line 647
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_63

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_63

    .line 648
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 649
    .local v0, "offsetSecs":Ljava/lang/Long;
    if-eqz v0, :cond_42

    .line 650
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 651
    .local v1, "offset":Ljava/time/ZoneOffset;
    iget-object v2, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v3, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    invoke-interface {v2}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 652
    .local v2, "instant":J
    iget-object v4, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    .end local v2    # "instant":J
    goto :goto_63

    .line 654
    :cond_42
    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v1, :cond_63

    .line 655
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v2, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v1, v2}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-interface {v1, v2}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    .line 656
    .local v1, "instant":J
    iget-object v3, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .end local v0    # "offsetSecs":Ljava/lang/Long;
    .end local v1    # "instant":J
    :cond_63
    :goto_63
    return-void
.end method

.method private greylist-max-o resolveInstantFields()V
    .registers 3

    .line 343
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 344
    iget-object v0, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v0, :cond_14

    .line 345
    iget-object v0, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->resolveInstantFields0(Ljava/time/ZoneId;)V

    goto :goto_2b

    .line 347
    :cond_14
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 348
    .local v0, "offsetSecs":Ljava/lang/Long;
    if-eqz v0, :cond_2b

    .line 349
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 350
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-direct {p0, v1}, Ljava/time/format/Parsed;->resolveInstantFields0(Ljava/time/ZoneId;)V

    .line 354
    .end local v0    # "offsetSecs":Ljava/lang/Long;
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_2b
    :goto_2b
    return-void
.end method

.method private greylist-max-o resolveInstantFields0(Ljava/time/ZoneId;)V
    .registers 8
    .param p1, "selectedZone"    # Ljava/time/ZoneId;

    .line 357
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    .line 358
    .local v0, "instant":Ljava/time/Instant;
    iget-object v1, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1, v0, p1}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    .line 359
    .local v1, "zdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    .line 360
    sget-object v2, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 361
    sget-object v2, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 362
    return-void
.end method

.method private greylist-max-o resolvePeriod()V
    .registers 3

    .line 619
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 620
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    iput-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    .line 621
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    iput-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    .line 623
    :cond_1e
    return-void
.end method

.method private greylist-max-o resolveTime(JJJJ)V
    .registers 16
    .param p1, "hod"    # J
    .param p3, "moh"    # J
    .param p5, "som"    # J
    .param p7, "nos"    # J

    .line 595
    iget-object v0, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v0, v1, :cond_45

    .line 596
    const-wide v0, 0x34630b8a000L

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 597
    .local v0, "totalNanos":J
    const-wide v2, 0xdf8475800L

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 598
    const-wide/32 v2, 0x3b9aca00

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 599
    invoke-static {v0, v1, p7, p8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 600
    const-wide v2, 0x4e94914f0000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 601
    .local v4, "excessDays":I
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    .line 602
    .local v2, "nod":J
    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    invoke-static {v4}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 603
    .end local v0    # "totalNanos":J
    .end local v2    # "nod":J
    .end local v4    # "excessDays":I
    goto :goto_87

    .line 604
    :cond_45
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, p3, p4}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 605
    .local v0, "mohVal":I
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, p7, p8}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    .line 607
    .local v1, "nosVal":I
    iget-object v2, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v3, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v2, v3, :cond_72

    const-wide/16 v2, 0x18

    cmp-long v2, p1, v2

    if-nez v2, :cond_72

    if-nez v0, :cond_72

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_72

    if-nez v1, :cond_72

    .line 608
    sget-object v2, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    goto :goto_87

    .line 610
    :cond_72
    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, p1, p2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    .line 611
    .local v2, "hodVal":I
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, p5, p6}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    .line 612
    .local v3, "somVal":I
    invoke-static {v2, v0, v3, v1}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v4

    sget-object v5, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v4, v5}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 615
    .end local v0    # "mohVal":I
    .end local v1    # "nosVal":I
    .end local v2    # "hodVal":I
    .end local v3    # "somVal":I
    :goto_87
    return-void
.end method

.method private greylist-max-o resolveTimeFields()V
    .registers 21

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_45

    .line 387
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 388
    .local v4, "ch":J
    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq v1, v6, :cond_2c

    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v6, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v1, v6, :cond_31

    cmp-long v1, v4, v2

    if-eqz v1, :cond_31

    .line 389
    :cond_2c
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 391
    :cond_31
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v6, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v7, 0x18

    cmp-long v7, v4, v7

    if-nez v7, :cond_3d

    move-wide v7, v2

    goto :goto_3e

    :cond_3d
    move-wide v7, v4

    :goto_3e
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 393
    .end local v4    # "ch":J
    :cond_45
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v4, 0xc

    if-eqz v1, :cond_86

    .line 395
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v6, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 396
    .local v6, "ch":J
    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v8, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq v1, v8, :cond_6f

    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v8, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v1, v8, :cond_74

    cmp-long v1, v6, v2

    if-eqz v1, :cond_74

    .line 397
    :cond_6f
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 399
    :cond_74
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    sget-object v8, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    cmp-long v9, v6, v4

    if-nez v9, :cond_7e

    move-wide v9, v2

    goto :goto_7f

    :cond_7e
    move-wide v9, v6

    :goto_7f
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v0, v1, v8, v9}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 401
    .end local v6    # "ch":J
    :cond_86
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v6, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v6, 0xc

    if-eqz v1, :cond_ea

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 402
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 403
    .local v7, "ap":J
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v9, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 404
    .local v9, "hap":J
    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v11, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v1, v11, :cond_d2

    .line 405
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v11, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-static {v7, v8, v6}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v12

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v0, v1, v11, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    goto :goto_ea

    .line 407
    :cond_d2
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 408
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v9, v10}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 409
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v11, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    mul-long v12, v7, v4

    add-long/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v0, v1, v11, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 412
    .end local v7    # "ap":J
    .end local v9    # "hap":J
    :cond_ea
    :goto_ea
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v7, 0x3c

    if-eqz v1, :cond_152

    .line 413
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v9, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 414
    .local v9, "nod":J
    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v11, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v1, v11, :cond_10f

    .line 415
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v9, v10}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 417
    :cond_10f
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v11, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide v12, 0x34630b8a000L

    div-long v12, v9, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v0, v1, v11, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 418
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v11, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const-wide v12, 0xdf8475800L

    div-long v12, v9, v12

    rem-long/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v0, v1, v11, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 419
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v11, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const-wide/32 v12, 0x3b9aca00

    div-long v14, v9, v12

    rem-long/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v11, v14}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 420
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    rem-long v12, v9, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v0, v1, v11, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 422
    .end local v9    # "nod":J
    :cond_152
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v9, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/32 v9, 0xf4240

    if-eqz v1, :cond_192

    .line 423
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v11, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 424
    .local v11, "cod":J
    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v1, v13, :cond_178

    .line 425
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v11, v12}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 427
    :cond_178
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v13, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    div-long v14, v11, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v13, v14}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 428
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v13, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    rem-long v14, v11, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v1, v13, v14}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 430
    .end local v11    # "cod":J
    :cond_192
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v11, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v11, 0x3e8

    if-eqz v1, :cond_1d1

    .line 431
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v13, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 432
    .local v13, "lod":J
    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v15, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v1, v15, :cond_1b7

    .line 433
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 435
    :cond_1b7
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v15, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    div-long v16, v13, v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v15, v2}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 436
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    rem-long v15, v13, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 438
    .end local v13    # "lod":J
    :cond_1d1
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e

    .line 439
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 440
    .local v1, "sod":J
    iget-object v3, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v3, v13, :cond_1f4

    .line 441
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 443
    :cond_1f4
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v13, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v14, 0xe10

    div-long v14, v1, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v3, v13, v14}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 444
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v13, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    div-long v14, v1, v7

    rem-long/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v3, v13, v14}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 445
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v13, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    rem-long v14, v1, v7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v3, v13, v14}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 447
    .end local v1    # "sod":J
    :cond_21e
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25b

    .line 448
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 449
    .local v1, "mod":J
    iget-object v3, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v3, v13, :cond_241

    .line 450
    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 452
    :cond_241
    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v13, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    div-long v14, v1, v7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v0, v3, v13, v14}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 453
    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v13, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    rem-long v7, v1, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v0, v3, v13, v7}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 457
    .end local v1    # "mod":J
    :cond_25b
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e5

    .line 458
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 459
    .local v1, "nos":J
    iget-object v3, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v3, v7, :cond_27e

    .line 460
    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 462
    :cond_27e
    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b2

    .line 463
    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 464
    .local v7, "cos":J
    iget-object v3, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v3, v13, :cond_2a1

    .line 465
    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 467
    :cond_2a1
    mul-long v13, v7, v11

    rem-long v11, v1, v11

    add-long v1, v13, v11

    .line 468
    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v0, v3, v11, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 470
    .end local v7    # "cos":J
    :cond_2b2
    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e5

    .line 471
    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 472
    .local v7, "los":J
    iget-object v3, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v11, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v3, v11, :cond_2d5

    .line 473
    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 475
    :cond_2d5
    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    mul-long v12, v7, v9

    rem-long v9, v1, v9

    add-long/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v0, v3, v11, v9}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 479
    .end local v1    # "nos":J
    .end local v7    # "los":J
    :cond_2e5
    iget-object v1, v0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    if-eqz v1, :cond_34f

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34f

    .line 480
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 481
    .local v1, "hoap":J
    iget-object v3, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v3, v7, :cond_30c

    .line 482
    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 484
    :cond_30c
    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 485
    .local v3, "mohObj":Ljava/lang/Long;
    const/16 v7, 0x3c

    if-eqz v3, :cond_324

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v7}, Ljava/lang/Math;->floorMod(JI)I

    move-result v8

    int-to-long v8, v8

    goto :goto_326

    :cond_324
    const-wide/16 v8, 0x0

    .line 486
    .local v8, "moh":J
    :goto_326
    iget-object v10, v0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    invoke-static {v1, v2, v6}, Ljava/lang/Math;->floorMod(JI)I

    move-result v11

    add-int/2addr v11, v6

    mul-int/2addr v11, v7

    int-to-long v6, v11

    add-long/2addr v6, v8

    invoke-virtual {v10, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->includes(J)Z

    move-result v6

    if-eqz v6, :cond_339

    move-wide/from16 v18, v4

    goto :goto_33b

    :cond_339
    const-wide/16 v18, 0x0

    :goto_33b
    move-wide/from16 v4, v18

    .line 487
    .local v4, "excessHours":J
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v6

    .line 488
    .local v6, "hod":J
    sget-object v10, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    sget-object v11, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v0, v10, v11, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 489
    const/4 v10, 0x0

    iput-object v10, v0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    .line 493
    .end local v1    # "hoap":J
    .end local v3    # "mohObj":Ljava/lang/Long;
    .end local v4    # "excessHours":J
    .end local v6    # "hod":J
    .end local v8    # "moh":J
    :cond_34f
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b2

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b2

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 494
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b2

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b2

    .line 495
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 496
    .local v1, "hod":J
    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 497
    .local v3, "moh":J
    iget-object v5, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v6, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 498
    .local v5, "som":J
    iget-object v7, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 499
    .local v7, "nos":J
    invoke-direct/range {v0 .. v8}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    .line 501
    .end local v1    # "hod":J
    .end local v3    # "moh":J
    .end local v5    # "som":J
    .end local v7    # "nos":J
    :cond_3b2
    return-void
.end method

.method private greylist-max-o resolveTimeLenient()V
    .registers 18

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-nez v1, :cond_1e5

    .line 510
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_6b

    .line 511
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 512
    .local v4, "los":J
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v6, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 514
    mul-long v6, v4, v2

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    rem-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 515
    .local v6, "cos":J
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v8, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v0, v1, v8, v9}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 516
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    mul-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .end local v6    # "cos":J
    goto :goto_90

    .line 520
    :cond_5b
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v6, 0xf4240

    mul-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 522
    .end local v4    # "los":J
    :cond_6b
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 524
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 525
    .local v4, "cos":J
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 522
    .end local v4    # "cos":J
    :cond_90
    :goto_90
    nop

    .line 529
    :goto_91
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v9, 0x3c

    if-nez v1, :cond_127

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 530
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 531
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 532
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq v1, v2, :cond_127

    .line 534
    iget-object v1, v0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    if-eqz v1, :cond_da

    .line 535
    iget-object v1, v0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->mid()J

    move-result-wide v11

    .line 536
    .local v11, "midpoint":J
    div-long v1, v11, v9

    rem-long v3, v11, v9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v0 .. v8}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    .line 537
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    .end local v11    # "midpoint":J
    goto :goto_126

    .line 538
    :cond_da
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 539
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 540
    .local v11, "ap":J
    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const-wide/16 v3, 0x6

    if-ne v1, v2, :cond_110

    .line 541
    const/16 v1, 0xc

    invoke-static {v11, v12, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v8}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    move-object/from16 v0, p0

    goto :goto_127

    .line 543
    :cond_110
    sget-object v0, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v11, v12}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 544
    const-wide/16 v0, 0xc

    mul-long/2addr v0, v11

    add-long v1, v0, v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    goto :goto_127

    .line 538
    .end local v11    # "ap":J
    :cond_126
    :goto_126
    nop

    .line 550
    :cond_127
    :goto_127
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Long;

    .line 551
    .local v11, "hod":Ljava/lang/Long;
    if-eqz v11, :cond_1e5

    .line 552
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/Long;

    .line 553
    .local v12, "moh":Ljava/lang/Long;
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/Long;

    .line 554
    .local v13, "som":Ljava/lang/Long;
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/Long;

    .line 557
    .local v14, "nos":Ljava/lang/Long;
    if-nez v12, :cond_15b

    if-nez v13, :cond_161

    if-nez v14, :cond_161

    :cond_15b
    if-eqz v12, :cond_162

    if-nez v13, :cond_162

    if-eqz v14, :cond_162

    .line 559
    :cond_161
    return-void

    .line 563
    :cond_162
    const-wide/16 v1, 0x0

    if-eqz v12, :cond_16b

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_16c

    :cond_16b
    move-wide v3, v1

    .line 564
    .local v3, "mohVal":J
    :goto_16c
    if-eqz v13, :cond_173

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_174

    :cond_173
    move-wide v5, v1

    .line 565
    .local v5, "somVal":J
    :goto_174
    if-eqz v14, :cond_17a

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_17a
    move-wide v7, v1

    .line 567
    .local v7, "nosVal":J
    iget-object v1, v0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    if-eqz v1, :cond_1c2

    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v1, v2, :cond_1c2

    .line 569
    iget-object v1, v0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    mul-long/2addr v15, v9

    add-long v9, v15, v3

    invoke-virtual {v1, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;->includes(J)Z

    move-result v1

    if-eqz v1, :cond_195

    goto :goto_1c2

    .line 570
    :cond_195
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v11, v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Conflict found: Resolved time %02d:%02d"

    invoke-virtual {v10, v9}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " conflicts with "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_1c2
    :goto_1c2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct/range {v0 .. v8}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    .line 576
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .end local v3    # "mohVal":J
    .end local v5    # "somVal":J
    .end local v7    # "nosVal":J
    .end local v11    # "hod":Ljava/lang/Long;
    .end local v12    # "moh":Ljava/lang/Long;
    .end local v13    # "som":Ljava/lang/Long;
    .end local v14    # "nos":Ljava/lang/Long;
    :cond_1e5
    iget-object v1, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v1, v2, :cond_22a

    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_22a

    .line 585
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1fd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 586
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/temporal/TemporalField;

    .line 587
    .local v3, "field":Ljava/time/temporal/TemporalField;
    instance-of v4, v3, Ljava/time/temporal/ChronoField;

    if-eqz v4, :cond_229

    invoke-interface {v3}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v4

    if-eqz v4, :cond_229

    .line 588
    move-object v4, v3

    check-cast v4, Ljava/time/temporal/ChronoField;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 590
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v3    # "field":Ljava/time/temporal/TemporalField;
    :cond_229
    goto :goto_1fd

    .line 592
    :cond_22a
    return-void
.end method

.method private greylist-max-o updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V
    .registers 7
    .param p1, "timeToSet"    # Ljava/time/LocalTime;
    .param p2, "periodToSet"    # Ljava/time/Period;

    .line 663
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_6e

    .line 664
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_4b

    .line 667
    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p2}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0, p2}, Ljava/time/Period;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_48

    .line 668
    :cond_25
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: Fields resolved to different excess periods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_48
    :goto_48
    iput-object p2, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    goto :goto_72

    .line 665
    :cond_4b
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: Fields resolved to different times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_6e
    iput-object p1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    .line 674
    iput-object p2, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    .line 676
    :goto_72
    return-void
.end method

.method private greylist-max-o updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V
    .registers 5
    .param p1, "cld"    # Ljava/time/chrono/ChronoLocalDate;

    .line 370
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_34

    .line 371
    if-eqz p1, :cond_60

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_60

    .line 372
    :cond_f
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflict found: Fields resolved to two different dates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_34
    if-eqz p1, :cond_60

    .line 375
    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 378
    iput-object p1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    goto :goto_60

    .line 376
    :cond_45
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_60
    :goto_60
    return-void
.end method

.method private greylist-max-o updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V
    .registers 9
    .param p1, "targetField"    # Ljava/time/temporal/TemporalField;
    .param p2, "changeField"    # Ljava/time/temporal/TemporalField;
    .param p3, "changeValue"    # Ljava/lang/Long;

    .line 331
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 332
    .local v0, "old":Ljava/lang/Long;
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    goto :goto_56

    .line 333
    :cond_17
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " differs from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while resolving  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_56
    :goto_56
    return-void
.end method


# virtual methods
.method greylist-max-o copy()Ljava/time/format/Parsed;
    .registers 4

    .line 175
    new-instance v0, Ljava/time/format/Parsed;

    invoke-direct {v0}, Ljava/time/format/Parsed;-><init>()V

    .line 176
    .local v0, "cloned":Ljava/time/format/Parsed;
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 177
    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    iput-object v1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    .line 178
    iget-object v1, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    iput-object v1, v0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    .line 179
    iget-boolean v1, p0, Ljava/time/format/Parsed;->leapSecond:Z

    iput-boolean v1, v0, Ljava/time/format/Parsed;->leapSecond:Z

    .line 180
    iget-object v1, p0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    iput-object v1, v0, Ljava/time/format/Parsed;->dayPeriod:Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;

    .line 181
    return-object v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 197
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 199
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_14

    .line 200
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 202
    :cond_14
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 203
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    return-wide v1

    .line 205
    :cond_27
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 206
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    return-wide v1

    .line 208
    :cond_3a
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-nez v1, :cond_43

    .line 211
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v1

    return-wide v1

    .line 209
    :cond_43
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
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 187
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_31

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    .line 188
    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_31

    :cond_15
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_22

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    .line 189
    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_31

    .line 192
    :cond_22
    if-eqz p1, :cond_2f

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_2f

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1

    .line 190
    :cond_31
    :goto_31
    return v1
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 217
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 218
    iget-object v0, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    return-object v0

    .line 219
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 220
    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    return-object v0

    .line 221
    :cond_12
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_24

    .line 222
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_23

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-static {v0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v1

    :cond_23
    return-object v1

    .line 223
    :cond_24
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2d

    .line 224
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    return-object v0

    .line 225
    :cond_2d
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_56

    .line 226
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 227
    .local v0, "offsetSecs":Ljava/lang/Long;
    if-eqz v0, :cond_48

    .line 228
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 230
    :cond_48
    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    instance-of v1, v1, Ljava/time/ZoneOffset;

    if-eqz v1, :cond_51

    .line 231
    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    return-object v1

    .line 233
    :cond_51
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 234
    .end local v0    # "offsetSecs":Ljava/lang/Long;
    :cond_56
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_61

    .line 235
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 236
    :cond_61
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_68

    .line 237
    return-object v1

    .line 241
    :cond_68
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;
    .registers 4
    .param p1, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/util/Set<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .line 255
    .local p2, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    if-eqz p2, :cond_b

    .line 256
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 258
    :cond_b
    iput-object p1, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    .line 259
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveFields()V

    .line 260
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeLenient()V

    .line 261
    invoke-direct {p0}, Ljava/time/format/Parsed;->crossCheck()V

    .line 262
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolvePeriod()V

    .line 263
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveFractional()V

    .line 264
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstant()V

    .line 265
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 718
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 719
    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v1, :cond_25

    .line 720
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 722
    :cond_25
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-nez v1, :cond_2d

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_50

    .line 723
    :cond_2d
    const-string v1, " resolved to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_4b

    .line 725
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 726
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_50

    .line 727
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 730
    :cond_4b
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 733
    :cond_50
    :goto_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

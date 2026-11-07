.class public final Ljava/time/Period;
.super Ljava/lang/Object;
.source "Period.java"

# interfaces
.implements Ljava/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api ZERO:Ljava/time/Period;

.field private static final whitelist serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final greylist-max-o days:I

.field private final greylist-max-o months:I

.field private final greylist-max-o years:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 133
    new-instance v0, Ljava/time/Period;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Ljava/time/Period;-><init>(III)V

    sput-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    .line 142
    nop

    .line 143
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    .line 148
    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v0, v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-void
.end method

.method private constructor greylist-max-o <init>(III)V
    .registers 4
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput p1, p0, Ljava/time/Period;->years:I

    .line 409
    iput p2, p0, Ljava/time/Period;->months:I

    .line 410
    iput p3, p0, Ljava/time/Period;->days:I

    .line 411
    return-void
.end method

.method public static whitelist test-api between(Ljava/time/LocalDate;Ljava/time/LocalDate;)Ljava/time/Period;
    .registers 3
    .param p0, "startDateInclusive"    # Ljava/time/LocalDate;
    .param p1, "endDateExclusive"    # Ljava/time/LocalDate;

    .line 382
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist charMatch(Ljava/lang/CharSequence;IIC)Z
    .registers 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .line 346
    if-ltz p1, :cond_e

    add-int/lit8 v0, p1, 0x1

    if-ne p2, v0, :cond_e

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static greylist-max-o create(III)Ljava/time/Period;
    .registers 4
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .line 394
    or-int v0, p0, p1

    or-int/2addr v0, p2

    if-nez v0, :cond_8

    .line 395
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    return-object v0

    .line 397
    :cond_8
    new-instance v0, Ljava/time/Period;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/Period;-><init>(III)V

    return-object v0
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .registers 10
    .param p0, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 253
    instance-of v0, p0, Ljava/time/Period;

    if-eqz v0, :cond_8

    .line 254
    move-object v0, p0

    check-cast v0, Ljava/time/Period;

    return-object v0

    .line 256
    :cond_8
    instance-of v0, p0, Ljava/time/chrono/ChronoPeriod;

    if-eqz v0, :cond_35

    .line 257
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v1, p0

    check-cast v1, Ljava/time/chrono/ChronoPeriod;

    invoke-interface {v1}, Ljava/time/chrono/ChronoPeriod;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_35

    .line 258
    :cond_1c
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period requires ISO chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_35
    :goto_35
    const-string v0, "amount"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "years":I
    const/4 v1, 0x0

    .line 264
    .local v1, "months":I
    const/4 v2, 0x0

    .line 265
    .local v2, "days":I
    invoke-interface {p0}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalUnit;

    .line 266
    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    invoke-interface {p0, v4}, Ljava/time/temporal/TemporalAmount;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v5

    .line 267
    .local v5, "unitAmount":J
    sget-object v7, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_5e

    .line 268
    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    goto :goto_6f

    .line 269
    :cond_5e
    sget-object v7, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_67

    .line 270
    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    goto :goto_6f

    .line 271
    :cond_67
    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_70

    .line 272
    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    .line 276
    .end local v4    # "unit":Ljava/time/temporal/TemporalUnit;
    .end local v5    # "unitAmount":J
    :goto_6f
    goto :goto_45

    .line 274
    .restart local v4    # "unit":Ljava/time/temporal/TemporalUnit;
    .restart local v5    # "unitAmount":J
    :cond_70
    new-instance v3, Ljava/time/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unit must be Years, Months or Days, but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    .end local v4    # "unit":Ljava/time/temporal/TemporalUnit;
    .end local v5    # "unitAmount":J
    :cond_89
    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist test-api of(III)Ljava/time/Period;
    .registers 4
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .line 229
    invoke-static {p0, p1, p2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofDays(I)Ljava/time/Period;
    .registers 2
    .param p0, "days"    # I

    .line 214
    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofMonths(I)Ljava/time/Period;
    .registers 2
    .param p0, "months"    # I

    .line 187
    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofWeeks(I)Ljava/time/Period;
    .registers 3
    .param p0, "weeks"    # I

    .line 201
    const/4 v0, 0x7

    invoke-static {p0, v0}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofYears(I)Ljava/time/Period;
    .registers 2
    .param p0, "years"    # I

    .line 174
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/Period;
    .registers 20
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 321
    move-object/from16 v1, p0

    const-string v0, "text"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    sget-object v0, Ljava/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 323
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v4, "Text cannot be parsed to a Period"

    if-eqz v0, :cond_89

    .line 324
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    const/16 v7, 0x2d

    invoke-static {v1, v5, v6, v7}, Ljava/time/Period;->charMatch(Ljava/lang/CharSequence;IIC)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v0, -0x1

    :cond_27
    move v5, v0

    .line 325
    .local v5, "negate":I
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    .local v6, "yearStart":I
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v7

    .line 326
    .local v7, "yearEnd":I
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    .local v8, "monthStart":I
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    .line 327
    .local v9, "monthEnd":I
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    .local v10, "weekStart":I
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v11

    .line 328
    .local v11, "weekEnd":I
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    .local v12, "dayStart":I
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    .line 329
    .local v13, "dayEnd":I
    if-gez v6, :cond_59

    if-gez v8, :cond_59

    if-gez v10, :cond_59

    if-ltz v12, :cond_55

    goto :goto_59

    :cond_55
    move-object/from16 v18, v2

    const/4 v3, 0x0

    goto :goto_8c

    .line 331
    :cond_59
    :goto_59
    :try_start_59
    invoke-static {v1, v6, v7, v5}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v0

    .line 332
    .local v0, "years":I
    invoke-static {v1, v8, v9, v5}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v14

    .line 333
    .local v14, "months":I
    invoke-static {v1, v10, v11, v5}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v15

    .line 334
    .local v15, "weeks":I
    invoke-static {v1, v12, v13, v5}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v16

    move/from16 v17, v16

    .line 335
    .local v17, "days":I
    const/4 v3, 0x7

    invoke-static {v15, v3}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v3
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_70} :catch_7f

    move-object/from16 v18, v2

    move/from16 v2, v17

    .end local v17    # "days":I
    .local v2, "days":I
    .local v18, "matcher":Ljava/util/regex/Matcher;
    :try_start_74
    invoke-static {v2, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    .line 336
    .end local v2    # "days":I
    .local v3, "days":I
    invoke-static {v0, v14, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v2
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_7c} :catch_7d

    return-object v2

    .line 337
    .end local v0    # "years":I
    .end local v3    # "days":I
    .end local v14    # "months":I
    .end local v15    # "weeks":I
    :catch_7d
    move-exception v0

    goto :goto_82

    .end local v18    # "matcher":Ljava/util/regex/Matcher;
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :catch_7f
    move-exception v0

    move-object/from16 v18, v2

    .line 338
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .local v0, "ex":Ljava/lang/NumberFormatException;
    .restart local v18    # "matcher":Ljava/util/regex/Matcher;
    :goto_82
    new-instance v2, Ljava/time/format/DateTimeParseException;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v1, v3, v0}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v2

    .line 323
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v5    # "negate":I
    .end local v6    # "yearStart":I
    .end local v7    # "yearEnd":I
    .end local v8    # "monthStart":I
    .end local v9    # "monthEnd":I
    .end local v10    # "weekStart":I
    .end local v11    # "weekEnd":I
    .end local v12    # "dayStart":I
    .end local v13    # "dayEnd":I
    .end local v18    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_89
    move-object/from16 v18, v2

    const/4 v3, 0x0

    .line 342
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v18    # "matcher":Ljava/util/regex/Matcher;
    :goto_8c
    new-instance v0, Ljava/time/format/DateTimeParseException;

    invoke-direct {v0, v4, v1, v3}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private static blacklist parseNumber(Ljava/lang/CharSequence;III)I
    .registers 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "negate"    # I

    .line 350
    const/4 v0, 0x0

    if-ltz p1, :cond_1a

    if-gez p2, :cond_6

    goto :goto_1a

    .line 353
    :cond_6
    const/16 v1, 0xa

    invoke-static {p0, p1, p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/CharSequence;III)I

    move-result v1

    .line 355
    .local v1, "val":I
    :try_start_c
    invoke-static {v1, p3}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_10} :catch_11

    return v0

    .line 356
    :catch_11
    move-exception v2

    .line 357
    .local v2, "ex":Ljava/lang/ArithmeticException;
    new-instance v3, Ljava/time/format/DateTimeParseException;

    const-string v4, "Text cannot be parsed to a Period"

    invoke-direct {v3, v4, p0, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v3

    .line 351
    .end local v1    # "val":I
    .end local v2    # "ex":Ljava/lang/ArithmeticException;
    :cond_1a
    :goto_1a
    return v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/Period;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1070
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1071
    .local v0, "years":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 1072
    .local v1, "months":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1073
    .local v2, "days":I
    invoke-static {v0, v1, v2}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v3

    return-object v3
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1060
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o validateChrono(Ljava/time/temporal/TemporalAccessor;)V
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 964
    const-string v0, "temporal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 965
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 966
    .local v0, "temporalChrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_37

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v1, v0}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_37

    .line 967
    :cond_1a
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, expected: ISO, actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 969
    :cond_37
    :goto_37
    return-void
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1049
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 890
    invoke-direct {p0, p1}, Ljava/time/Period;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 891
    iget v0, p0, Ljava/time/Period;->months:I

    if-nez v0, :cond_15

    .line 892
    iget v0, p0, Ljava/time/Period;->years:I

    if-eqz v0, :cond_25

    .line 893
    iget v0, p0, Ljava/time/Period;->years:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_25

    .line 896
    :cond_15
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 897
    .local v0, "totalMonths":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    .line 898
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 901
    .end local v0    # "totalMonths":J
    :cond_25
    :goto_25
    iget v0, p0, Ljava/time/Period;->days:I

    if-eqz v0, :cond_32

    .line 902
    iget v0, p0, Ljava/time/Period;->days:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 904
    :cond_32
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 985
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 986
    return v0

    .line 991
    :cond_4
    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_1e

    .line 988
    move-object v1, p1

    check-cast v1, Ljava/time/Period;

    .local v1, "other":Ljava/time/Period;
    iget v2, p0, Ljava/time/Period;->years:I

    iget v3, v1, Ljava/time/Period;->years:I

    if-ne v2, v3, :cond_1e

    iget v2, p0, Ljava/time/Period;->months:I

    iget v3, v1, Ljava/time/Period;->months:I

    if-ne v2, v3, :cond_1e

    iget v2, p0, Ljava/time/Period;->days:I

    iget v3, v1, Ljava/time/Period;->days:I

    if-ne v2, v3, :cond_1e

    goto :goto_1f

    .end local v1    # "other":Ljava/time/Period;
    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 429
    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_a

    .line 430
    invoke-virtual {p0}, Ljava/time/Period;->getYears()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 431
    :cond_a
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_14

    .line 432
    invoke-virtual {p0}, Ljava/time/Period;->getMonths()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 433
    :cond_14
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1e

    .line 434
    invoke-virtual {p0}, Ljava/time/Period;->getDays()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 436
    :cond_1e
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 127
    invoke-virtual {p0}, Ljava/time/Period;->getChronology()Ljava/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getChronology()Ljava/time/chrono/IsoChronology;
    .registers 2

    .line 469
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0
.end method

.method public whitelist test-api getDays()I
    .registers 2

    .line 534
    iget v0, p0, Ljava/time/Period;->days:I

    return v0
.end method

.method public whitelist test-api getMonths()I
    .registers 2

    .line 523
    iget v0, p0, Ljava/time/Period;->months:I

    return v0
.end method

.method public whitelist test-api getUnits()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .line 454
    sget-object v0, Ljava/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api getYears()I
    .registers 2

    .line 508
    iget v0, p0, Ljava/time/Period;->years:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1001
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/time/Period;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isNegative()Z
    .registers 2

    .line 492
    iget v0, p0, Ljava/time/Period;->years:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/time/Period;->months:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/time/Period;->days:I

    if-gez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist test-api isZero()Z
    .registers 2

    .line 481
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .registers 7
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 711
    invoke-static {p1}, Ljava/time/Period;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    .line 712
    .local v0, "isoAmount":Ljava/time/Period;
    iget v1, p0, Ljava/time/Period;->years:I

    iget v2, v0, Ljava/time/Period;->years:I

    .line 713
    invoke-static {v1, v2}, Ljava/lang/Math;->subtractExact(II)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->months:I

    iget v3, v0, Ljava/time/Period;->months:I

    .line 714
    invoke-static {v2, v3}, Ljava/lang/Math;->subtractExact(II)I

    move-result v2

    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v0, Ljava/time/Period;->days:I

    .line 715
    invoke-static {v3, v4}, Ljava/lang/Math;->subtractExact(II)I

    move-result v3

    .line 712
    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1}, Ljava/time/Period;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusDays(J)Ljava/time/Period;
    .registers 6
    .param p1, "daysToSubtract"    # J

    .line 766
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusMonths(J)Ljava/time/Period;
    .registers 6
    .param p1, "monthsToSubtract"    # J

    .line 749
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusYears(J)Ljava/time/Period;
    .registers 6
    .param p1, "yearsToSubtract"    # J

    .line 732
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api multipliedBy(I)Ljava/time/Period;
    .registers 5
    .param p1, "scalar"    # I

    .line 785
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_1f

    .line 788
    :cond_8
    iget v0, p0, Ljava/time/Period;->years:I

    .line 789
    invoke-static {v0, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    iget v1, p0, Ljava/time/Period;->months:I

    .line 790
    invoke-static {v1, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->days:I

    .line 791
    invoke-static {v2, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    .line 788
    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0

    .line 786
    :cond_1f
    :goto_1f
    return-object p0
.end method

.method public bridge synthetic whitelist test-api multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api negated()Ljava/time/Period;
    .registers 2

    .line 808
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api negated()Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .line 127
    invoke-virtual {p0}, Ljava/time/Period;->negated()Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api normalized()Ljava/time/Period;
    .registers 9

    .line 830
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 831
    .local v0, "totalMonths":J
    const-wide/16 v2, 0xc

    div-long v4, v0, v2

    .line 832
    .local v4, "splitYears":J
    rem-long v2, v0, v2

    long-to-int v2, v2

    .line 833
    .local v2, "splitMonths":I
    iget v3, p0, Ljava/time/Period;->years:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_17

    iget v3, p0, Ljava/time/Period;->months:I

    if-ne v2, v3, :cond_17

    .line 834
    return-object p0

    .line 836
    :cond_17
    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v3

    iget v6, p0, Ljava/time/Period;->days:I

    invoke-static {v3, v2, v6}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic whitelist test-api normalized()Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .line 127
    invoke-virtual {p0}, Ljava/time/Period;->normalized()Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .registers 7
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 622
    invoke-static {p1}, Ljava/time/Period;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    .line 623
    .local v0, "isoAmount":Ljava/time/Period;
    iget v1, p0, Ljava/time/Period;->years:I

    iget v2, v0, Ljava/time/Period;->years:I

    .line 624
    invoke-static {v1, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->months:I

    iget v3, v0, Ljava/time/Period;->months:I

    .line 625
    invoke-static {v2, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v0, Ljava/time/Period;->days:I

    .line 626
    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    .line 623
    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1}, Ljava/time/Period;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusDays(J)Ljava/time/Period;
    .registers 7
    .param p1, "daysToAdd"    # J

    .line 683
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 684
    return-object p0

    .line 686
    :cond_7
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    iget v2, p0, Ljava/time/Period;->days:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusMonths(J)Ljava/time/Period;
    .registers 6
    .param p1, "monthsToAdd"    # J

    .line 663
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 664
    return-object p0

    .line 666
    :cond_7
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->days:I

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusYears(J)Ljava/time/Period;
    .registers 6
    .param p1, "yearsToAdd"    # J

    .line 643
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 644
    return-object p0

    .line 646
    :cond_7
    iget v0, p0, Ljava/time/Period;->years:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    iget v1, p0, Ljava/time/Period;->months:I

    iget v2, p0, Ljava/time/Period;->days:I

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 943
    invoke-direct {p0, p1}, Ljava/time/Period;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 944
    iget v0, p0, Ljava/time/Period;->months:I

    if-nez v0, :cond_15

    .line 945
    iget v0, p0, Ljava/time/Period;->years:I

    if-eqz v0, :cond_25

    .line 946
    iget v0, p0, Ljava/time/Period;->years:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_25

    .line 949
    :cond_15
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 950
    .local v0, "totalMonths":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    .line 951
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 954
    .end local v0    # "totalMonths":J
    :cond_25
    :goto_25
    iget v0, p0, Ljava/time/Period;->days:I

    if-eqz v0, :cond_32

    .line 955
    iget v0, p0, Ljava/time/Period;->days:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 957
    :cond_32
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1015
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-ne p0, v0, :cond_7

    .line 1016
    const-string v0, "P0D"

    return-object v0

    .line 1018
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1020
    iget v1, p0, Ljava/time/Period;->years:I

    if-eqz v1, :cond_20

    .line 1021
    iget v1, p0, Ljava/time/Period;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1023
    :cond_20
    iget v1, p0, Ljava/time/Period;->months:I

    if-eqz v1, :cond_2f

    .line 1024
    iget v1, p0, Ljava/time/Period;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1026
    :cond_2f
    iget v1, p0, Ljava/time/Period;->days:I

    if-eqz v1, :cond_3e

    .line 1027
    iget v1, p0, Ljava/time/Period;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1029
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toTotalMonths()J
    .registers 5

    .line 850
    iget v0, p0, Ljava/time/Period;->years:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/Period;->months:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api withDays(I)Ljava/time/Period;
    .registers 4
    .param p1, "days"    # I

    .line 594
    iget v0, p0, Ljava/time/Period;->days:I

    if-ne p1, v0, :cond_5

    .line 595
    return-object p0

    .line 597
    :cond_5
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    invoke-static {v0, v1, p1}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withMonths(I)Ljava/time/Period;
    .registers 4
    .param p1, "months"    # I

    .line 576
    iget v0, p0, Ljava/time/Period;->months:I

    if-ne p1, v0, :cond_5

    .line 577
    return-object p0

    .line 579
    :cond_5
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->days:I

    invoke-static {v0, p1, v1}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withYears(I)Ljava/time/Period;
    .registers 4
    .param p1, "years"    # I

    .line 554
    iget v0, p0, Ljava/time/Period;->years:I

    if-ne p1, v0, :cond_5

    .line 555
    return-object p0

    .line 557
    :cond_5
    iget v0, p0, Ljava/time/Period;->months:I

    iget v1, p0, Ljava/time/Period;->days:I

    invoke-static {p1, v0, v1}, Ljava/time/Period;->create(III)Ljava/time/Period;

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

    .line 1064
    iget v0, p0, Ljava/time/Period;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1065
    iget v0, p0, Ljava/time/Period;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1066
    iget v0, p0, Ljava/time/Period;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1067
    return-void
.end method

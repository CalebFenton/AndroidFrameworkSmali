.class final Ljava/time/chrono/ChronoPeriodImpl;
.super Ljava/lang/Object;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Ljava/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0xd5c8c11b1L


# instance fields
.field private final blacklist chrono:Ljava/time/chrono/Chronology;

.field final blacklist days:I

.field final blacklist months:I

.field final blacklist years:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 107
    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v0, v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>(Ljava/time/chrono/Chronology;III)V
    .registers 6
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-string v0, "chrono"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iput-object p1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    .line 133
    iput p2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 134
    iput p3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 135
    iput p4, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 136
    return-void
.end method

.method private blacklist monthRange()J
    .registers 6

    .line 247
    iget-object v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 248
    .local v0, "startRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->isIntValue()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 249
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    return-wide v1

    .line 251
    :cond_21
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method static blacklist readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ChronoPeriodImpl;
    .registers 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/Chronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    .line 392
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 393
    .local v1, "years":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 394
    .local v2, "months":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 395
    .local v3, "days":I
    new-instance v4, Ljava/time/chrono/ChronoPeriodImpl;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v4
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;
    .registers 6
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 201
    const-string v0, "amount"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    instance-of v0, p1, Ljava/time/chrono/ChronoPeriodImpl;

    if-eqz v0, :cond_4a

    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoPeriodImpl;

    .line 205
    .local v0, "period":Ljava/time/chrono/ChronoPeriodImpl;
    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 208
    return-object v0

    .line 206
    :cond_19
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    .end local v0    # "period":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_4a
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain ChronoPeriod from TemporalAmount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist validateChrono(Ljava/time/temporal/TemporalAccessor;)V
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 309
    const-string v0, "temporal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 311
    .local v0, "temporalChrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_47

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1, v0}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_47

    .line 312
    :cond_1a
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v3}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual: "

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

    .line 314
    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public whitelist test-api addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 8
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 257
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 258
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_15

    .line 259
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_44

    .line 260
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_44

    .line 263
    :cond_15
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 264
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    .line 265
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_44

    .line 267
    :cond_2e
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_3b

    .line 268
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 270
    :cond_3b
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 273
    .end local v0    # "monthRange":J
    :cond_44
    :goto_44
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_51

    .line 274
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 276
    :cond_51
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 319
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 320
    return v0

    .line 324
    :cond_4
    instance-of v1, p1, Ljava/time/chrono/ChronoPeriodImpl;

    if-eqz v1, :cond_28

    .line 322
    move-object v1, p1

    check-cast v1, Ljava/time/chrono/ChronoPeriodImpl;

    .local v1, "other":Ljava/time/chrono/ChronoPeriodImpl;
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v3, v1, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v3, v1, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v3, v1, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-ne v2, v3, :cond_28

    iget-object v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget-object v3, v1, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    .line 324
    invoke-interface {v2, v3}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_29

    .end local v1    # "other":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_28
    const/4 v0, 0x0

    .line 322
    :goto_29
    return v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 141
    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_8

    .line 142
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    return-wide v0

    .line 143
    :cond_8
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_10

    .line 144
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v0, v0

    return-wide v0

    .line 145
    :cond_10
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_18

    .line 146
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    return-wide v0

    .line 148
    :cond_18
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

.method public whitelist test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 159
    iget-object v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    return-object v0
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

    .line 154
    sget-object v0, Ljava/time/chrono/ChronoPeriodImpl;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 329
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1}, Ljava/time/chrono/Chronology;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isNegative()Z
    .registers 2

    .line 170
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

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

    .line 165
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-nez v0, :cond_e

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_e

    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 9
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 186
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    .line 187
    .local v0, "amount":Ljava/time/chrono/ChronoPeriodImpl;
    new-instance v1, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 189
    invoke-static {v3, v4}, Ljava/lang/Math;->subtractExact(II)I

    move-result v3

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 190
    invoke-static {v4, v5}, Ljava/lang/Math;->subtractExact(II)I

    move-result v4

    iget v5, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 191
    invoke-static {v5, v6}, Ljava/lang/Math;->subtractExact(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    .line 187
    return-object v1
.end method

.method public whitelist test-api multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
    .registers 7
    .param p1, "scalar"    # I

    .line 214
    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    goto :goto_24

    .line 217
    :cond_a
    new-instance v0, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 219
    invoke-static {v2, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 220
    invoke-static {v3, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v3

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 221
    invoke-static {v4, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    .line 217
    return-object v0

    .line 215
    :cond_24
    :goto_24
    return-object p0
.end method

.method public whitelist test-api normalized()Ljava/time/chrono/ChronoPeriod;
    .registers 12

    .line 227
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 228
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_31

    .line 229
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 230
    .local v2, "totalMonths":J
    div-long v4, v2, v0

    .line 231
    .local v4, "splitYears":J
    rem-long v6, v2, v0

    long-to-int v6, v6

    .line 232
    .local v6, "splitMonths":I
    iget v7, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v7, v7

    cmp-long v7, v4, v7

    if-nez v7, :cond_23

    iget v7, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v6, v7, :cond_23

    .line 233
    return-object p0

    .line 235
    :cond_23
    new-instance v7, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v8, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v9

    iget v10, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-direct {v7, v8, v9, v6, v10}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v7

    .line 238
    .end local v2    # "totalMonths":J
    .end local v4    # "splitYears":J
    .end local v6    # "splitMonths":I
    :cond_31
    return-object p0
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 9
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 176
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateAmount(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    .line 177
    .local v0, "amount":Ljava/time/chrono/ChronoPeriodImpl;
    new-instance v1, Ljava/time/chrono/ChronoPeriodImpl;

    iget-object v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    iget v3, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    iget v4, v0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 179
    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    iget v5, v0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 180
    invoke-static {v4, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    iget v5, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    iget v6, v0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 181
    invoke-static {v5, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    .line 177
    return-object v1
.end method

.method public whitelist test-api subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 8
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 283
    invoke-direct {p0, p1}, Ljava/time/chrono/ChronoPeriodImpl;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 284
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-nez v0, :cond_15

    .line 285
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v0, :cond_44

    .line 286
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_44

    .line 289
    :cond_15
    invoke-direct {p0}, Ljava/time/chrono/ChronoPeriodImpl;->monthRange()J

    move-result-wide v0

    .line 290
    .local v0, "monthRange":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    .line 291
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget v4, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_44

    .line 293
    :cond_2e
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_3b

    .line 294
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 296
    :cond_3b
    iget v2, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 299
    .end local v0    # "monthRange":J
    :cond_44
    :goto_44
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v0, :cond_51

    .line 300
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 302
    :cond_51
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 335
    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P0D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v1}, Ljava/time/chrono/Chronology;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v1, :cond_4d

    .line 341
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :cond_4d
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-eqz v1, :cond_5c

    .line 344
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    :cond_5c
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v1, :cond_6b

    .line 347
    iget v1, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 385
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 386
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 387
    iget v0, p0, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 388
    return-void
.end method

.method protected whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 369
    new-instance v0, Ljava/time/chrono/Ser;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method

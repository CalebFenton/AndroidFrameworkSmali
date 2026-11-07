.class public interface abstract Ljava/time/chrono/ChronoPeriod;
.super Ljava/lang/Object;
.source "ChronoPeriod.java"

# interfaces
.implements Ljava/time/temporal/TemporalAmount;


# direct methods
.method public static whitelist test-api between(Ljava/time/chrono/ChronoLocalDate;Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .registers 3
    .param p0, "startDateInclusive"    # Ljava/time/chrono/ChronoLocalDate;
    .param p1, "endDateExclusive"    # Ljava/time/chrono/ChronoLocalDate;

    .line 117
    const-string v0, "startDateInclusive"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "endDateExclusive"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist test-api get(Ljava/time/temporal/TemporalUnit;)J
.end method

.method public abstract whitelist test-api getChronology()Ljava/time/chrono/Chronology;
.end method

.method public abstract whitelist test-api getUnits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public whitelist test-api isNegative()Z
    .registers 7

    .line 187
    invoke-interface {p0}, Ljava/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/TemporalUnit;

    .line 188
    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    invoke-interface {p0, v1}, Ljava/time/chrono/ChronoPeriod;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_20

    .line 189
    const/4 v0, 0x1

    return v0

    .line 191
    .end local v1    # "unit":Ljava/time/temporal/TemporalUnit;
    :cond_20
    goto :goto_8

    .line 192
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isZero()Z
    .registers 7

    .line 173
    invoke-interface {p0}, Ljava/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/TemporalUnit;

    .line 174
    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    invoke-interface {p0, v1}, Ljava/time/chrono/ChronoPeriod;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    .line 175
    const/4 v0, 0x0

    return v0

    .line 177
    .end local v1    # "unit":Ljava/time/temporal/TemporalUnit;
    :cond_20
    goto :goto_8

    .line 178
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public abstract whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
.end method

.method public abstract whitelist test-api multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
.end method

.method public whitelist test-api negated()Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .line 256
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Ljava/time/chrono/ChronoPeriod;->multipliedBy(I)Ljava/time/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api normalized()Ljava/time/chrono/ChronoPeriod;
.end method

.method public abstract whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
.end method

.method public abstract whitelist test-api subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

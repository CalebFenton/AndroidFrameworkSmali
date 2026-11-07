.class public interface abstract Ljava/time/temporal/TemporalUnit;
.super Ljava/lang/Object;
.source "TemporalUnit.java"


# virtual methods
.method public abstract whitelist test-api addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J
.end method

.method public abstract whitelist test-api getDuration()Ljava/time/Duration;
.end method

.method public abstract whitelist test-api isDateBased()Z
.end method

.method public abstract whitelist test-api isDurationEstimated()Z
.end method

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/Temporal;)Z
    .registers 7
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 169
    instance-of v0, p1, Ljava/time/LocalTime;

    if-eqz v0, :cond_9

    .line 170
    invoke-interface {p0}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v0

    return v0

    .line 172
    :cond_9
    instance-of v0, p1, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_12

    .line 173
    invoke-interface {p0}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v0

    return v0

    .line 175
    :cond_12
    instance-of v0, p1, Ljava/time/chrono/ChronoLocalDateTime;

    const/4 v1, 0x1

    if-nez v0, :cond_2e

    instance-of v0, p1, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_1c

    goto :goto_2e

    .line 179
    :cond_1c
    const-wide/16 v2, 0x1

    const/4 v0, 0x0

    :try_start_1f
    invoke-interface {p1, v2, v3, p0}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    :try_end_22
    .catch Ljava/time/temporal/UnsupportedTemporalTypeException; {:try_start_1f .. :try_end_22} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_22} :catch_23

    .line 180
    return v1

    .line 183
    :catch_23
    move-exception v2

    .line 185
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-wide/16 v3, -0x1

    :try_start_26
    invoke-interface {p1, v3, v4, p0}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 186
    return v1

    .line 187
    :catch_2a
    move-exception v1

    .line 188
    .local v1, "ex2":Ljava/lang/RuntimeException;
    return v0

    .line 181
    .end local v1    # "ex2":Ljava/lang/RuntimeException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_2c
    move-exception v1

    .line 182
    .local v1, "ex":Ljava/time/temporal/UnsupportedTemporalTypeException;
    return v0

    .line 176
    .end local v1    # "ex":Ljava/time/temporal/UnsupportedTemporalTypeException;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public abstract whitelist test-api isTimeBased()Z
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

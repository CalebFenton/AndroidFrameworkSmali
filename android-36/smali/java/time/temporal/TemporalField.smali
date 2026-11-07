.class public interface abstract Ljava/time/temporal/TemporalField;
.super Ljava/lang/Object;
.source "TemporalField.java"


# virtual methods
.method public abstract whitelist test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
.end method

.method public whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 108
    const-string v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-interface {p0}, Ljava/time/temporal/TemporalField;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
.end method

.method public abstract whitelist test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
.end method

.method public abstract whitelist test-api isDateBased()Z
.end method

.method public abstract whitelist test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
.end method

.method public abstract whitelist test-api isTimeBased()Z
.end method

.method public abstract whitelist test-api range()Ljava/time/temporal/ValueRange;
.end method

.method public abstract whitelist test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
.end method

.method public whitelist test-api resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .registers 5
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
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .line 378
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

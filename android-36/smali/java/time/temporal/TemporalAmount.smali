.class public interface abstract Ljava/time/temporal/TemporalAmount;
.super Ljava/lang/Object;
.source "TemporalAmount.java"


# virtual methods
.method public abstract whitelist test-api addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
.end method

.method public abstract whitelist test-api get(Ljava/time/temporal/TemporalUnit;)J
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

.method public abstract whitelist test-api subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
.end method

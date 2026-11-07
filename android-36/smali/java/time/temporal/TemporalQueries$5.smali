.class Ljava/time/temporal/TemporalQueries$5;
.super Ljava/lang/Object;
.source "TemporalQueries.java"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/TemporalQueries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/TemporalQuery<",
        "Ljava/time/ZoneId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 409
    invoke-virtual {p0, p1}, Ljava/time/temporal/TemporalQueries$5;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;

    move-result-object p1

    return-object p1
.end method

.method public blacklist queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 412
    sget-object v0, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 413
    .local v0, "zone":Ljava/time/ZoneId;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_14

    :cond_c
    sget-object v1, Ljava/time/temporal/TemporalQueries;->OFFSET:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneId;

    :goto_14
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 418
    const-string v0, "Zone"

    return-object v0
.end method

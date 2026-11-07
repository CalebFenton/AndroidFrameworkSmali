.class Ljava/time/temporal/TemporalQueries$6;
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
        "Ljava/time/LocalDate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 425
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

    .line 425
    invoke-virtual {p0, p1}, Ljava/time/temporal/TemporalQueries$6;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public blacklist queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 428
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 429
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 431
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 436
    const-string v0, "LocalDate"

    return-object v0
.end method

.class Ljava/time/format/DateTimePrintContext$1;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/time/format/DateTimePrintContext;->adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$effectiveChrono:Ljava/time/chrono/Chronology;

.field final synthetic blacklist val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

.field final synthetic blacklist val$effectiveZone:Ljava/time/ZoneId;

.field final synthetic blacklist val$temporal:Ljava/time/temporal/TemporalAccessor;


# direct methods
.method constructor blacklist <init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/temporal/TemporalAccessor;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    iput-object p2, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    iput-object p3, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljava/time/chrono/Chronology;

    iput-object p4, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljava/time/ZoneId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 202
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 203
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 205
    :cond_11
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 188
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 189
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 191
    :cond_11
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 210
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 211
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljava/time/chrono/Chronology;

    return-object v0

    .line 213
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 214
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljava/time/ZoneId;

    return-object v0

    .line 216
    :cond_12
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1f

    .line 217
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 219
    :cond_1f
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 195
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 196
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 198
    :cond_11
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    iget-object v1, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljava/time/chrono/Chronology;

    const-string v2, ""

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " with chronology "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, v2

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    iget-object v1, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljava/time/ZoneId;

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " with zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    return-object v0
.end method

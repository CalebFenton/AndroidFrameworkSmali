.class Landroid/icu/impl/duration/BasicDurationFormatter;
.super Ljava/lang/Object;
.source "BasicDurationFormatter.java"

# interfaces
.implements Landroid/icu/impl/duration/DurationFormatter;


# instance fields
.field private blacklist builder:Landroid/icu/impl/duration/PeriodBuilder;

.field private blacklist fallback:Landroid/icu/impl/duration/DateFormatter;

.field private blacklist fallbackLimit:J

.field private blacklist formatter:Landroid/icu/impl/duration/PeriodFormatter;

.field private blacklist localeName:Ljava/lang/String;

.field private blacklist timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;J)V
    .registers 9
    .param p1, "formatter"    # Landroid/icu/impl/duration/PeriodFormatter;
    .param p2, "builder"    # Landroid/icu/impl/duration/PeriodBuilder;
    .param p3, "fallback"    # Landroid/icu/impl/duration/DateFormatter;
    .param p4, "fallbackLimit"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 37
    iput-object p2, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 38
    iput-object p3, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    .line 39
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gez v2, :cond_10

    goto :goto_11

    :cond_10
    move-wide v0, p4

    :goto_11
    iput-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    .line 40
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V
    .registers 8
    .param p1, "formatter"    # Landroid/icu/impl/duration/PeriodFormatter;
    .param p2, "builder"    # Landroid/icu/impl/duration/PeriodBuilder;
    .param p3, "fallback"    # Landroid/icu/impl/duration/DateFormatter;
    .param p4, "fallbackLimit"    # J
    .param p6, "localeName"    # Ljava/lang/String;
    .param p7, "timeZone"    # Ljava/util/TimeZone;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 49
    iput-object p2, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 50
    iput-object p3, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    .line 51
    iput-wide p4, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    .line 52
    iput-object p6, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    .line 54
    return-void
.end method


# virtual methods
.method protected blacklist doBuild(JJ)Landroid/icu/impl/duration/Period;
    .registers 6
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J

    .line 117
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/icu/impl/duration/PeriodBuilder;->createWithReferenceDate(JJ)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist doFallback(JJ)Ljava/lang/String;
    .registers 9
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J

    .line 108
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-eqz v0, :cond_1f

    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1f

    .line 111
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    add-long v1, p3, p1

    invoke-interface {v0, v1, v2}, Landroid/icu/impl/duration/DateFormatter;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist doFormat(Landroid/icu/impl/duration/Period;)Ljava/lang/String;
    .registers 4
    .param p1, "period"    # Landroid/icu/impl/duration/Period;

    .line 121
    invoke-virtual {p1}, Landroid/icu/impl/duration/Period;->isSet()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 124
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatter;->format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "period is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist formatDurationFrom(JJ)Ljava/lang/String;
    .registers 7
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J

    .line 70
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/impl/duration/BasicDurationFormatter;->doFallback(JJ)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/impl/duration/BasicDurationFormatter;->doBuild(JJ)Landroid/icu/impl/duration/Period;

    move-result-object v1

    .line 73
    .local v1, "p":Landroid/icu/impl/duration/Period;
    invoke-virtual {p0, v1}, Landroid/icu/impl/duration/BasicDurationFormatter;->doFormat(Landroid/icu/impl/duration/Period;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .end local v1    # "p":Landroid/icu/impl/duration/Period;
    :cond_e
    return-object v0
.end method

.method public blacklist formatDurationFromNow(J)Ljava/lang/String;
    .registers 5
    .param p1, "duration"    # J

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/duration/BasicDurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .registers 7
    .param p1, "targetDate"    # Ljava/util/Date;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    .local v0, "now":J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 60
    .local v2, "duration":J
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/icu/impl/duration/BasicDurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public blacklist withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatter;
    .registers 11
    .param p1, "locName"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 81
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v2

    .line 82
    .local v2, "newFormatter":Landroid/icu/impl/duration/PeriodFormatter;
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v3

    .line 83
    .local v3, "newBuilder":Landroid/icu/impl/duration/PeriodBuilder;
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_1b

    .line 84
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_22

    .line 85
    :cond_1b
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/DateFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DateFormatter;

    move-result-object v0

    move-object v4, v0

    :goto_22
    nop

    .line 86
    .local v4, "newFallback":Landroid/icu/impl/duration/DateFormatter;
    new-instance v1, Landroid/icu/impl/duration/BasicDurationFormatter;

    iget-wide v5, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    iget-object v8, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    move-object v7, p1

    .end local p1    # "locName":Ljava/lang/String;
    .local v7, "locName":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Landroid/icu/impl/duration/BasicDurationFormatter;-><init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    return-object v1

    .line 90
    .end local v2    # "newFormatter":Landroid/icu/impl/duration/PeriodFormatter;
    .end local v3    # "newBuilder":Landroid/icu/impl/duration/PeriodBuilder;
    .end local v4    # "newFallback":Landroid/icu/impl/duration/DateFormatter;
    .end local v7    # "locName":Ljava/lang/String;
    .restart local p1    # "locName":Ljava/lang/String;
    :cond_2e
    return-object p0
.end method

.method public blacklist withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DurationFormatter;
    .registers 11
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 95
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 96
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v3

    .line 97
    .local v3, "newBuilder":Landroid/icu/impl/duration/PeriodBuilder;
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_15

    .line 98
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_1c

    .line 99
    :cond_15
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/DateFormatter;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DateFormatter;

    move-result-object v0

    move-object v4, v0

    :goto_1c
    nop

    .line 100
    .local v4, "newFallback":Landroid/icu/impl/duration/DateFormatter;
    new-instance v1, Landroid/icu/impl/duration/BasicDurationFormatter;

    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    iget-wide v5, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    iget-object v7, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    move-object v8, p1

    .end local p1    # "tz":Ljava/util/TimeZone;
    .local v8, "tz":Ljava/util/TimeZone;
    invoke-direct/range {v1 .. v8}, Landroid/icu/impl/duration/BasicDurationFormatter;-><init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    return-object v1

    .line 104
    .end local v3    # "newBuilder":Landroid/icu/impl/duration/PeriodBuilder;
    .end local v4    # "newFallback":Landroid/icu/impl/duration/DateFormatter;
    .end local v8    # "tz":Ljava/util/TimeZone;
    .restart local p1    # "tz":Ljava/util/TimeZone;
    :cond_2a
    return-object p0
.end method

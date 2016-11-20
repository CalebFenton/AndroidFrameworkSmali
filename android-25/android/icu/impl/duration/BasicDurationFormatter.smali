.class Landroid/icu/impl/duration/BasicDurationFormatter;
.super Ljava/lang/Object;
.source "BasicDurationFormatter.java"

# interfaces
.implements Landroid/icu/impl/duration/DurationFormatter;


# instance fields
.field private builder:Landroid/icu/impl/duration/PeriodBuilder;

.field private fallback:Landroid/icu/impl/duration/DateFormatter;

.field private fallbackLimit:J

.field private formatter:Landroid/icu/impl/duration/PeriodFormatter;

.field private localeName:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;J)V
    .locals 4
    .param p1, "formatter"    # Landroid/icu/impl/duration/PeriodFormatter;
    .param p2, "builder"    # Landroid/icu/impl/duration/PeriodBuilder;
    .param p3, "fallback"    # Landroid/icu/impl/duration/DateFormatter;
    .param p4, "fallbackLimit"    # J

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 34
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@7
    .line 35
    iput-object p2, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@9
    .line 36
    iput-object p3, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@b
    .line 37
    cmp-long v2, p4, v0

    #@d
    if-gez v2, :cond_0

    #@f
    move-wide p4, v0

    #@10
    .end local p4    # "fallbackLimit":J
    :cond_0
    iput-wide p4, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    #@12
    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "formatter"    # Landroid/icu/impl/duration/PeriodFormatter;
    .param p2, "builder"    # Landroid/icu/impl/duration/PeriodBuilder;
    .param p3, "fallback"    # Landroid/icu/impl/duration/DateFormatter;
    .param p4, "fallbackLimit"    # J
    .param p6, "localeName"    # Ljava/lang/String;
    .param p7, "timeZone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@5
    .line 47
    iput-object p2, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@7
    .line 48
    iput-object p3, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@9
    .line 49
    iput-wide p4, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    #@b
    .line 50
    iput-object p6, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    #@d
    .line 51
    iput-object p7, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    #@f
    .line 45
    return-void
.end method


# virtual methods
.method protected doBuild(JJ)Landroid/icu/impl/duration/Period;
    .locals 1
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/icu/impl/duration/PeriodBuilder;->createWithReferenceDate(JJ)Landroid/icu/impl/duration/Period;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected doFallback(JJ)Ljava/lang/String;
    .locals 5
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 101
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 102
    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, v0, v2

    #@b
    if-lez v0, :cond_0

    #@d
    .line 103
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    #@10
    move-result-wide v0

    #@11
    iget-wide v2, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    #@13
    cmp-long v0, v0, v2

    #@15
    if-ltz v0, :cond_0

    #@17
    .line 104
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@19
    add-long v2, p3, p1

    #@1b
    invoke-interface {v0, v2, v3}, Landroid/icu/impl/duration/DateFormatter;->format(J)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0

    #@20
    .line 106
    :cond_0
    return-object v4
.end method

.method protected doFormat(Landroid/icu/impl/duration/Period;)Ljava/lang/String;
    .locals 2
    .param p1, "period"    # Landroid/icu/impl/duration/Period;

    #@0
    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/icu/impl/duration/Period;->isSet()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "period is not set"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 117
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@11
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatter;->format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public formatDurationFrom(JJ)Ljava/lang/String;
    .locals 3
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J

    #@0
    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/impl/duration/BasicDurationFormatter;->doFallback(JJ)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 66
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/impl/duration/BasicDurationFormatter;->doBuild(JJ)Landroid/icu/impl/duration/Period;

    #@9
    move-result-object v0

    #@a
    .line 68
    .local v0, "p":Landroid/icu/impl/duration/Period;
    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/BasicDurationFormatter;->doFormat(Landroid/icu/impl/duration/Period;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 70
    .end local v0    # "p":Landroid/icu/impl/duration/Period;
    :cond_0
    return-object v1
.end method

.method public formatDurationFromNow(J)Ljava/lang/String;
    .locals 3
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/duration/BasicDurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p1, "targetDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 56
    .local v2, "now":J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@7
    move-result-wide v4

    #@8
    sub-long v0, v4, v2

    #@a
    .line 57
    .local v0, "duration":J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/impl/duration/BasicDurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    return-object v4
.end method

.method public withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatter;
    .locals 8
    .param p1, "locName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 75
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@a
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;

    #@d
    move-result-object v1

    #@e
    .line 76
    .local v1, "newFormatter":Landroid/icu/impl/duration/PeriodFormatter;
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@10
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilder;

    #@13
    move-result-object v2

    #@14
    .line 77
    .local v2, "newBuilder":Landroid/icu/impl/duration/PeriodBuilder;
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@16
    if-nez v0, :cond_0

    #@18
    .line 78
    const/4 v3, 0x0

    #@19
    .line 80
    :goto_0
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatter;

    #@1b
    .line 81
    iget-wide v4, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    #@1d
    .line 82
    iget-object v7, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    #@1f
    move-object v6, p1

    #@20
    .line 80
    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/duration/BasicDurationFormatter;-><init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    #@23
    return-object v0

    #@24
    .line 79
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@26
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/DateFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DateFormatter;

    #@29
    move-result-object v3

    #@2a
    .local v3, "newFallback":Landroid/icu/impl/duration/DateFormatter;
    goto :goto_0

    #@2b
    .line 84
    .end local v1    # "newFormatter":Landroid/icu/impl/duration/PeriodFormatter;
    .end local v2    # "newBuilder":Landroid/icu/impl/duration/PeriodBuilder;
    .end local v3    # "newFallback":Landroid/icu/impl/duration/DateFormatter;
    :cond_1
    return-object p0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DurationFormatter;
    .locals 8
    .param p1, "tz"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 89
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@a
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilder;

    #@d
    move-result-object v2

    #@e
    .line 90
    .local v2, "newBuilder":Landroid/icu/impl/duration/PeriodBuilder;
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@10
    if-nez v0, :cond_0

    #@12
    .line 91
    const/4 v3, 0x0

    #@13
    .line 93
    :goto_0
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatter;

    #@15
    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@17
    .line 94
    iget-wide v4, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    #@19
    .line 95
    iget-object v6, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    #@1b
    move-object v7, p1

    #@1c
    .line 93
    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/duration/BasicDurationFormatter;-><init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    #@1f
    return-object v0

    #@20
    .line 92
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@22
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/DateFormatter;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DateFormatter;

    #@25
    move-result-object v3

    #@26
    .local v3, "newFallback":Landroid/icu/impl/duration/DateFormatter;
    goto :goto_0

    #@27
    .line 97
    .end local v2    # "newBuilder":Landroid/icu/impl/duration/PeriodBuilder;
    .end local v3    # "newFallback":Landroid/icu/impl/duration/DateFormatter;
    :cond_1
    return-object p0
.end method

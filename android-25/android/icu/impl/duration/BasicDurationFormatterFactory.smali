.class Landroid/icu/impl/duration/BasicDurationFormatterFactory;
.super Ljava/lang/Object;
.source "BasicDurationFormatterFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/DurationFormatterFactory;


# instance fields
.field private builder:Landroid/icu/impl/duration/PeriodBuilder;

.field private f:Landroid/icu/impl/duration/BasicDurationFormatter;

.field private fallback:Landroid/icu/impl/duration/DateFormatter;

.field private fallbackLimit:J

.field private formatter:Landroid/icu/impl/duration/PeriodFormatter;

.field private localeName:Ljava/lang/String;

.field private ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodFormatterService;)V
    .locals 1
    .param p1, "ps"    # Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@5
    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    #@f
    .line 40
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    #@15
    .line 37
    return-void
.end method


# virtual methods
.method protected createFormatter()Landroid/icu/impl/duration/BasicDurationFormatter;
    .locals 8

    #@0
    .prologue
    .line 234
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatter;

    #@2
    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@4
    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@6
    iget-object v3, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@8
    .line 235
    iget-wide v4, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    #@a
    iget-object v6, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    #@c
    .line 236
    iget-object v7, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    #@e
    .line 234
    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/duration/BasicDurationFormatter;-><init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    #@11
    return-object v0
.end method

.method public getFallback()Landroid/icu/impl/duration/DateFormatter;
    .locals 1

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@2
    return-object v0
.end method

.method public getFallbackLimit()J
    .locals 2

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@2
    if-nez v0, :cond_0

    #@4
    const-wide/16 v0, 0x0

    #@6
    :goto_0
    return-wide v0

    #@7
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    #@9
    goto :goto_0
.end method

.method public getFormatter()Landroid/icu/impl/duration/DurationFormatter;
    .locals 2

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 153
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 154
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@a
    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    #@c
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DateFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DateFormatter;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    #@12
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DateFormatter;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DateFormatter;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@18
    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@1e
    .line 157
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodBuilder()Landroid/icu/impl/duration/PeriodBuilder;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@24
    .line 159
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->createFormatter()Landroid/icu/impl/duration/BasicDurationFormatter;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    #@2a
    .line 161
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    #@2c
    return-object v0
.end method

.method public getLocaleName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPeriodBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .locals 2

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 185
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@6
    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodBuilderFactory()Landroid/icu/impl/duration/PeriodBuilderFactory;

    #@9
    move-result-object v0

    #@a
    .line 186
    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    #@c
    .line 185
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodBuilderFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilderFactory;

    #@f
    move-result-object v0

    #@10
    .line 187
    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    #@12
    .line 185
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodBuilderFactory;->setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilderFactory;

    #@15
    move-result-object v0

    #@16
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodBuilderFactory;->getSingleUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@1c
    .line 190
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@1e
    return-object v0
.end method

.method public getPeriodFormatter()Landroid/icu/impl/duration/PeriodFormatter;
    .locals 2

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 171
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@6
    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    #@9
    move-result-object v0

    #@a
    .line 172
    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    #@c
    .line 171
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@16
    .line 175
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@18
    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    #@2
    return-object v0
.end method

.method protected reset()V
    .locals 1

    #@0
    .prologue
    .line 245
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    #@3
    .line 244
    return-void
.end method

.method public setFallback(Landroid/icu/impl/duration/DateFormatter;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 3
    .param p1, "fallback"    # Landroid/icu/impl/duration/DateFormatter;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 80
    if-nez p1, :cond_3

    #@4
    .line 81
    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 83
    .local v0, "doReset":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@a
    .line 84
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@c
    .line 85
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    #@f
    .line 87
    :cond_1
    return-object p0

    #@10
    .end local v0    # "doReset":Z
    :cond_2
    move v0, v1

    #@11
    .line 81
    goto :goto_0

    #@12
    .line 82
    :cond_3
    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    #@14
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    move v0, v1

    #@1b
    goto :goto_0
.end method

.method public setFallbackLimit(J)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 3
    .param p1, "fallbackLimit"    # J

    #@0
    .prologue
    .line 97
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 98
    const-wide/16 p1, 0x0

    #@8
    .line 100
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    #@a
    cmp-long v0, p1, v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 101
    iput-wide p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    #@10
    .line 102
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    #@13
    .line 104
    :cond_1
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1
    .param p1, "localeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2

    #@8
    .line 116
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    #@a
    .line 117
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 118
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@10
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilder;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@16
    .line 120
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 121
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@1c
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@22
    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    #@25
    .line 125
    :cond_2
    return-object p0
.end method

.method public setPeriodBuilder(Landroid/icu/impl/duration/PeriodBuilder;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1
    .param p1, "builder"    # Landroid/icu/impl/duration/PeriodBuilder;

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 67
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@6
    .line 68
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    #@9
    .line 70
    :cond_0
    return-object p0
.end method

.method public setPeriodFormatter(Landroid/icu/impl/duration/PeriodFormatter;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1
    .param p1, "formatter"    # Landroid/icu/impl/duration/PeriodFormatter;

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 52
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    #@6
    .line 53
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    #@9
    .line 55
    :cond_0
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 137
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    #@a
    .line 138
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 139
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@10
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilder;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    #@16
    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    #@19
    .line 143
    :cond_1
    return-object p0
.end method

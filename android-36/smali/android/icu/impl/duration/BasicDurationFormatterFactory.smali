.class Landroid/icu/impl/duration/BasicDurationFormatterFactory;
.super Ljava/lang/Object;
.source "BasicDurationFormatterFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/DurationFormatterFactory;


# instance fields
.field private blacklist builder:Landroid/icu/impl/duration/PeriodBuilder;

.field private blacklist f:Landroid/icu/impl/duration/BasicDurationFormatter;

.field private blacklist fallback:Landroid/icu/impl/duration/DateFormatter;

.field private blacklist fallbackLimit:J

.field private blacklist formatter:Landroid/icu/impl/duration/PeriodFormatter;

.field private blacklist localeName:Ljava/lang/String;

.field private blacklist ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

.field private blacklist timeZone:Ljava/util/TimeZone;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/duration/BasicPeriodFormatterService;)V
    .registers 3
    .param p1, "ps"    # Landroid/icu/impl/duration/BasicPeriodFormatterService;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    .line 43
    return-void
.end method


# virtual methods
.method protected blacklist createFormatter()Landroid/icu/impl/duration/BasicDurationFormatter;
    .registers 9

    .line 243
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatter;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    iget-object v3, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    iget-wide v4, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    iget-object v6, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    iget-object v7, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/duration/BasicDurationFormatter;-><init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public blacklist getFallback()Landroid/icu/impl/duration/DateFormatter;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    return-object v0
.end method

.method public blacklist getFallbackLimit()J
    .registers 3

    .line 218
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_7
    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    :goto_9
    return-wide v0
.end method

.method public blacklist getFormatter()Landroid/icu/impl/duration/DurationFormatter;
    .registers 3

    .line 161
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    if-nez v0, :cond_2a

    .line 162
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-eqz v0, :cond_18

    .line 163
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DateFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DateFormatter;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DateFormatter;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DateFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    .line 165
    :cond_18
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 166
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodBuilder()Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 168
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->createFormatter()Landroid/icu/impl/duration/BasicDurationFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    .line 170
    :cond_2a
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    return-object v0
.end method

.method public blacklist getLocaleName()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPeriodBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .registers 3

    .line 193
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-nez v0, :cond_1c

    .line 194
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodBuilderFactory()Landroid/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 195
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodBuilderFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    .line 196
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodBuilderFactory;->setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodBuilderFactory;->getSingleUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 199
    :cond_1c
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    return-object v0
.end method

.method public blacklist getPeriodFormatter()Landroid/icu/impl/duration/PeriodFormatter;
    .registers 3

    .line 179
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    if-nez v0, :cond_16

    .line 180
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 181
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 184
    :cond_16
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    return-object v0
.end method

.method public blacklist getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method protected blacklist reset()V
    .registers 2

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    .line 255
    return-void
.end method

.method public blacklist setFallback(Landroid/icu/impl/duration/DateFormatter;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .registers 5
    .param p1, "fallback"    # Landroid/icu/impl/duration/DateFormatter;

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_b

    .line 86
    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-eqz v2, :cond_9

    goto :goto_15

    :cond_9
    move v0, v1

    goto :goto_15

    .line 87
    :cond_b
    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    invoke-interface {p1, v2}, Landroid/icu/impl/duration/DateFormatter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    nop

    .line 88
    .local v0, "doReset":Z
    if-eqz v0, :cond_1d

    .line 89
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    .line 90
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    .line 92
    :cond_1d
    return-object p0
.end method

.method public blacklist setFallbackLimit(J)Landroid/icu/impl/duration/DurationFormatterFactory;
    .registers 5
    .param p1, "fallbackLimit"    # J

    .line 103
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    .line 104
    const-wide/16 p1, 0x0

    .line 106
    :cond_8
    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_13

    .line 107
    iput-wide p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    .line 108
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    .line 110
    :cond_13
    return-object p0
.end method

.method public blacklist setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .registers 3
    .param p1, "localeName"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 123
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-eqz v0, :cond_16

    .line 125
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 127
    :cond_16
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    if-eqz v0, :cond_22

    .line 128
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 130
    :cond_22
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    .line 132
    :cond_25
    return-object p0
.end method

.method public blacklist setPeriodBuilder(Landroid/icu/impl/duration/PeriodBuilder;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .registers 3
    .param p1, "builder"    # Landroid/icu/impl/duration/PeriodBuilder;

    .line 70
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-eq p1, v0, :cond_9

    .line 71
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 72
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    .line 74
    :cond_9
    return-object p0
.end method

.method public blacklist setPeriodFormatter(Landroid/icu/impl/duration/PeriodFormatter;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .registers 3
    .param p1, "formatter"    # Landroid/icu/impl/duration/PeriodFormatter;

    .line 54
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    if-eq p1, v0, :cond_9

    .line 55
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 56
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    .line 58
    :cond_9
    return-object p0
.end method

.method public blacklist setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .registers 3
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 144
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 145
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    .line 146
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-eqz v0, :cond_16

    .line 147
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 149
    :cond_16
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    .line 151
    :cond_19
    return-object p0
.end method

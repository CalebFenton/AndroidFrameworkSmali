.class public Ljava/util/DoubleSummaryStatistics;
.super Ljava/lang/Object;
.source "DoubleSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private greylist-max-o count:J

.field private greylist-max-o max:D

.field private greylist-max-o min:D

.field private greylist-max-o simpleSum:D

.field private greylist-max-o sum:D

.field private greylist-max-o sumCompensation:D


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    .line 72
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(JDDD)V
    .registers 13
    .param p1, "count"    # J
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "sum"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    .line 72
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    .line 113
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_61

    .line 115
    cmp-long v2, p1, v0

    if-lez v2, :cond_60

    .line 116
    cmpl-double v2, p3, p5

    if-gtz v2, :cond_58

    .line 120
    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p3, v2, v3

    const/4 v3, 0x1

    aput-wide p5, v2, v3

    const/4 v3, 0x2

    aput-wide p7, v2, v3

    invoke-static {v2}, Ljava/util/stream/DoubleStream;->of([D)Ljava/util/stream/DoubleStream;

    move-result-object v2

    new-instance v3, Ljava/util/DoubleSummaryStatistics$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/util/DoubleSummaryStatistics$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/DoubleStream;->filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/DoubleStream;->count()J

    move-result-wide v2

    .line 121
    .local v2, "ncount":J
    cmp-long v0, v2, v0

    if-lez v0, :cond_49

    const-wide/16 v0, 0x3

    cmp-long v0, v2, v0

    if-ltz v0, :cond_41

    goto :goto_49

    .line 122
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Some, not all, of the minimum, maximum, or sum is NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_49
    :goto_49
    iput-wide p1, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    .line 125
    iput-wide p7, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    .line 126
    iput-wide p7, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    .line 128
    iput-wide p3, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    .line 129
    iput-wide p5, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    goto :goto_60

    .line 117
    .end local v2    # "ncount":J
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum greater than maximum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_60
    :goto_60
    return-void

    .line 114
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative count value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o sumWithCompensation(D)V
    .registers 9
    .param p1, "value"    # D

    .line 171
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    sub-double v0, p1, v0

    .line 172
    .local v0, "tmp":D
    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    add-double/2addr v2, v0

    .line 173
    .local v2, "velvel":D
    iget-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    sub-double v4, v2, v4

    sub-double/2addr v4, v0

    iput-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    .line 174
    iput-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    .line 175
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 7
    .param p1, "value"    # D

    .line 141
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    .line 142
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 144
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    .line 145
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    .line 146
    return-void
.end method

.method public whitelist test-api combine(Ljava/util/DoubleSummaryStatistics;)V
    .registers 6
    .param p1, "other"    # Ljava/util/DoubleSummaryStatistics;

    .line 156
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    .line 157
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    .line 158
    iget-wide v0, p1, Ljava/util/DoubleSummaryStatistics;->sum:D

    invoke-direct {p0, v0, v1}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 161
    iget-wide v0, p1, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    neg-double v0, v0

    invoke-direct {p0, v0, v1}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    .line 162
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    .line 163
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->max:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    .line 164
    return-void
.end method

.method public final whitelist test-api getAverage()D
    .registers 5

    .line 299
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_17

    :cond_15
    const-wide/16 v0, 0x0

    :goto_17
    return-wide v0
.end method

.method public final whitelist test-api getCount()J
    .registers 3

    .line 183
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final whitelist test-api getMax()D
    .registers 3

    .line 282
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    return-wide v0
.end method

.method public final whitelist test-api getMin()D
    .registers 3

    .line 268
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    return-wide v0
.end method

.method public final whitelist test-api getSum()D
    .registers 5

    .line 246
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    sub-double/2addr v0, v2

    .line 247
    .local v0, "tmp":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 252
    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    return-wide v2

    .line 254
    :cond_16
    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 309
    nop

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 313
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getSum()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 314
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getMin()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 315
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getAverage()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 316
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getMax()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 309
    const-string v1, "%s{count=%d, sum=%f, min=%f, average=%f, max=%f}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Ljava/util/LongSummaryStatistics;
.super Ljava/lang/Object;
.source "LongSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/LongConsumer;
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private greylist-max-o count:J

.field private greylist-max-o max:J

.field private greylist-max-o min:J

.field private greylist-max-o sum:J


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 71
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    .line 78
    return-void
.end method

.method public constructor whitelist test-api <init>(JJJJ)V
    .registers 12
    .param p1, "count"    # J
    .param p3, "min"    # J
    .param p5, "max"    # J
    .param p7, "sum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 71
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    .line 112
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2e

    .line 114
    cmp-long v0, p1, v0

    if-lez v0, :cond_2d

    .line 115
    cmp-long v0, p3, p5

    if-gtz v0, :cond_25

    .line 117
    iput-wide p1, p0, Ljava/util/LongSummaryStatistics;->count:J

    .line 118
    iput-wide p7, p0, Ljava/util/LongSummaryStatistics;->sum:J

    .line 119
    iput-wide p3, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 120
    iput-wide p5, p0, Ljava/util/LongSummaryStatistics;->max:J

    goto :goto_2d

    .line 115
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum greater than maximum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2d
    :goto_2d
    return-void

    .line 113
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative count value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 4
    .param p1, "value"    # I

    .line 132
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/LongSummaryStatistics;->accept(J)V

    .line 133
    return-void
.end method

.method public whitelist test-api accept(J)V
    .registers 7
    .param p1, "value"    # J

    .line 142
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    .line 143
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    .line 144
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 145
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    .line 146
    return-void
.end method

.method public whitelist test-api combine(Ljava/util/LongSummaryStatistics;)V
    .registers 6
    .param p1, "other"    # Ljava/util/LongSummaryStatistics;

    .line 156
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    .line 157
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->sum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    .line 158
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->min:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    .line 159
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->max:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    .line 160
    return-void
.end method

.method public final whitelist test-api getAverage()D
    .registers 5

    .line 208
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getSum()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getCount()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_18

    :cond_16
    const-wide/16 v0, 0x0

    :goto_18
    return-wide v0
.end method

.method public final whitelist test-api getCount()J
    .registers 3

    .line 168
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final whitelist test-api getMax()J
    .registers 3

    .line 198
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    return-wide v0
.end method

.method public final whitelist test-api getMin()J
    .registers 3

    .line 188
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    return-wide v0
.end method

.method public final whitelist test-api getSum()J
    .registers 3

    .line 178
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 218
    nop

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 222
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getSum()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 223
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getMin()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 224
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getAverage()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 225
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getMax()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 218
    const-string v1, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Ljava/util/IntSummaryStatistics;
.super Ljava/lang/Object;
.source "IntSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private greylist-max-o count:J

.field private greylist-max-o max:I

.field private greylist-max-o min:I

.field private greylist-max-o sum:J


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const v0, 0x7fffffff

    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    .line 69
    const/high16 v0, -0x80000000

    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    .line 76
    return-void
.end method

.method public constructor whitelist test-api <init>(JIIJ)V
    .registers 10
    .param p1, "count"    # J
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "sum"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const v0, 0x7fffffff

    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    .line 69
    const/high16 v0, -0x80000000

    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    .line 110
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2a

    .line 112
    cmp-long v0, p1, v0

    if-lez v0, :cond_29

    .line 113
    if-gt p3, p4, :cond_21

    .line 115
    iput-wide p1, p0, Ljava/util/IntSummaryStatistics;->count:J

    .line 116
    iput-wide p5, p0, Ljava/util/IntSummaryStatistics;->sum:J

    .line 117
    iput p3, p0, Ljava/util/IntSummaryStatistics;->min:I

    .line 118
    iput p4, p0, Ljava/util/IntSummaryStatistics;->max:I

    goto :goto_29

    .line 113
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum greater than maximum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_29
    :goto_29
    return-void

    .line 111
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative count value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 6
    .param p1, "value"    # I

    .line 130
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    .line 131
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    .line 132
    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    .line 133
    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    .line 134
    return-void
.end method

.method public whitelist test-api combine(Ljava/util/IntSummaryStatistics;)V
    .registers 6
    .param p1, "other"    # Ljava/util/IntSummaryStatistics;

    .line 143
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    iget-wide v2, p1, Ljava/util/IntSummaryStatistics;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    .line 144
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    iget-wide v2, p1, Ljava/util/IntSummaryStatistics;->sum:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    .line 145
    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    iget v1, p1, Ljava/util/IntSummaryStatistics;->min:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    .line 146
    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    iget v1, p1, Ljava/util/IntSummaryStatistics;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    .line 147
    return-void
.end method

.method public final whitelist test-api getAverage()D
    .registers 5

    .line 195
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getSum()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

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

    .line 155
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    return-wide v0
.end method

.method public final whitelist test-api getMax()I
    .registers 2

    .line 185
    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    return v0
.end method

.method public final whitelist test-api getMin()I
    .registers 2

    .line 175
    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    return v0
.end method

.method public final whitelist test-api getSum()J
    .registers 3

    .line 165
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 205
    nop

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 209
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getSum()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 210
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getMin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 211
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getAverage()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 212
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getMax()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 205
    const-string v1, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

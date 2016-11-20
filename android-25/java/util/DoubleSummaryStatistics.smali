.class public Ljava/util/DoubleSummaryStatistics;
.super Ljava/lang/Object;
.source "DoubleSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private count:J

.field private max:D

.field private min:D

.field private simpleSum:D

.field private sum:D

.field private sumCompensation:D


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@5
    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    #@7
    .line 68
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@9
    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    #@b
    .line 75
    return-void
.end method

.method private sumWithCompensation(D)V
    .locals 7
    .param p1, "value"    # D

    #@0
    .prologue
    .line 112
    iget-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    #@2
    sub-double v0, p1, v4

    #@4
    .line 113
    .local v0, "tmp":D
    iget-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    #@6
    add-double v2, v4, v0

    #@8
    .line 114
    .local v2, "velvel":D
    iget-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    #@a
    sub-double v4, v2, v4

    #@c
    sub-double/2addr v4, v0

    #@d
    iput-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    #@f
    .line 115
    iput-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    #@11
    .line 111
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 5
    .param p1, "value"    # D

    #@0
    .prologue
    .line 84
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    #@7
    .line 85
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    #@9
    add-double/2addr v0, p1

    #@a
    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    #@c
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    #@f
    .line 87
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    #@11
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    #@17
    .line 88
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    #@19
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    #@1c
    move-result-wide v0

    #@1d
    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    #@1f
    .line 83
    return-void
.end method

.method public combine(Ljava/util/DoubleSummaryStatistics;)V
    .locals 4
    .param p1, "other"    # Ljava/util/DoubleSummaryStatistics;

    #@0
    .prologue
    .line 99
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    #@2
    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->count:J

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    #@7
    .line 100
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    #@9
    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    #@b
    add-double/2addr v0, v2

    #@c
    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    #@e
    .line 101
    iget-wide v0, p1, Ljava/util/DoubleSummaryStatistics;->sum:D

    #@10
    invoke-direct {p0, v0, v1}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    #@13
    .line 102
    iget-wide v0, p1, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    #@15
    invoke-direct {p0, v0, v1}, Ljava/util/DoubleSummaryStatistics;->sumWithCompensation(D)V

    #@18
    .line 103
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    #@1a
    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->min:D

    #@1c
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    #@1f
    move-result-wide v0

    #@20
    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    #@22
    .line 104
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    #@24
    iget-wide v2, p1, Ljava/util/DoubleSummaryStatistics;->max:D

    #@26
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@29
    move-result-wide v0

    #@2a
    iput-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    #@2c
    .line 98
    return-void
.end method

.method public final getAverage()D
    .locals 4

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-lez v0, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getSum()D

    #@d
    move-result-wide v0

    #@e
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    #@11
    move-result-wide v2

    #@12
    long-to-double v2, v2

    #@13
    div-double/2addr v0, v2

    #@14
    :goto_0
    return-wide v0

    #@15
    :cond_0
    const-wide/16 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public final getCount()J
    .locals 2

    #@0
    .prologue
    .line 124
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->count:J

    #@2
    return-wide v0
.end method

.method public final getMax()D
    .locals 2

    #@0
    .prologue
    .line 188
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->max:D

    #@2
    return-wide v0
.end method

.method public final getMin()D
    .locals 2

    #@0
    .prologue
    .line 174
    iget-wide v0, p0, Ljava/util/DoubleSummaryStatistics;->min:D

    #@2
    return-wide v0
.end method

.method public final getSum()D
    .locals 6

    #@0
    .prologue
    .line 152
    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->sum:D

    #@2
    iget-wide v4, p0, Ljava/util/DoubleSummaryStatistics;->sumCompensation:D

    #@4
    add-double v0, v2, v4

    #@6
    .line 153
    .local v0, "tmp":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    #@e
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 158
    iget-wide v2, p0, Ljava/util/DoubleSummaryStatistics;->simpleSum:D

    #@16
    return-wide v2

    #@17
    .line 160
    :cond_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 224
    const-string/jumbo v0, "%s{count=%d, sum=%f, min=%f, average=%f, max=%f}"

    #@3
    .line 223
    const/4 v1, 0x6

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v1, v3

    #@11
    .line 226
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getCount()J

    #@14
    move-result-wide v2

    #@15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object v2

    #@19
    const/4 v3, 0x1

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 227
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getSum()D

    #@1f
    move-result-wide v2

    #@20
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@23
    move-result-object v2

    #@24
    const/4 v3, 0x2

    #@25
    aput-object v2, v1, v3

    #@27
    .line 228
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getMin()D

    #@2a
    move-result-wide v2

    #@2b
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@2e
    move-result-object v2

    #@2f
    const/4 v3, 0x3

    #@30
    aput-object v2, v1, v3

    #@32
    .line 229
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getAverage()D

    #@35
    move-result-wide v2

    #@36
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@39
    move-result-object v2

    #@3a
    const/4 v3, 0x4

    #@3b
    aput-object v2, v1, v3

    #@3d
    .line 230
    invoke-virtual {p0}, Ljava/util/DoubleSummaryStatistics;->getMax()D

    #@40
    move-result-wide v2

    #@41
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@44
    move-result-object v2

    #@45
    const/4 v3, 0x5

    #@46
    aput-object v2, v1, v3

    #@48
    .line 223
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method

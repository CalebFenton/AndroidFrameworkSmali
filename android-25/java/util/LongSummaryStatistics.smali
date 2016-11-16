.class public Ljava/util/LongSummaryStatistics;
.super Ljava/lang/Object;
.source "LongSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/LongConsumer;
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private count:J

.field private max:J

.field private min:J

.field private sum:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    const-wide v0, 0x7fffffffffffffffL

    #@8
    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    #@a
    .line 69
    const-wide/high16 v0, -0x8000000000000000L

    #@c
    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    #@e
    .line 76
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 85
    int-to-long v0, p1

    #@1
    invoke-virtual {p0, v0, v1}, Ljava/util/LongSummaryStatistics;->accept(J)V

    #@4
    .line 84
    return-void
.end method

.method public accept(J)V
    .locals 5
    .param p1, "value"    # J

    #@0
    .prologue
    .line 95
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    #@7
    .line 96
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    #@9
    add-long/2addr v0, p1

    #@a
    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    #@c
    .line 97
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    #@e
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    #@14
    .line 98
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    #@16
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    #@19
    move-result-wide v0

    #@1a
    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    #@1c
    .line 94
    return-void
.end method

.method public combine(Ljava/util/LongSummaryStatistics;)V
    .locals 4
    .param p1, "other"    # Ljava/util/LongSummaryStatistics;

    #@0
    .prologue
    .line 109
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    #@2
    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->count:J

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    #@7
    .line 110
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    #@9
    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->sum:J

    #@b
    add-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    #@e
    .line 111
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    #@10
    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->min:J

    #@12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    #@18
    .line 112
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    #@1a
    iget-wide v2, p1, Ljava/util/LongSummaryStatistics;->max:J

    #@1c
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@1f
    move-result-wide v0

    #@20
    iput-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    #@22
    .line 108
    return-void
.end method

.method public final getAverage()D
    .locals 4

    #@0
    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getCount()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-lez v0, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getSum()J

    #@d
    move-result-wide v0

    #@e
    long-to-double v0, v0

    #@f
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getCount()J

    #@12
    move-result-wide v2

    #@13
    long-to-double v2, v2

    #@14
    div-double/2addr v0, v2

    #@15
    :goto_0
    return-wide v0

    #@16
    :cond_0
    const-wide/16 v0, 0x0

    #@18
    goto :goto_0
.end method

.method public final getCount()J
    .locals 2

    #@0
    .prologue
    .line 121
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->count:J

    #@2
    return-wide v0
.end method

.method public final getMax()J
    .locals 2

    #@0
    .prologue
    .line 151
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->max:J

    #@2
    return-wide v0
.end method

.method public final getMin()J
    .locals 2

    #@0
    .prologue
    .line 141
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->min:J

    #@2
    return-wide v0
.end method

.method public final getSum()J
    .locals 2

    #@0
    .prologue
    .line 131
    iget-wide v0, p0, Ljava/util/LongSummaryStatistics;->sum:J

    #@2
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 174
    const-string/jumbo v0, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    #@3
    .line 173
    const/4 v1, 0x6

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 175
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
    .line 176
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getCount()J

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
    .line 177
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getSum()J

    #@1f
    move-result-wide v2

    #@20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@23
    move-result-object v2

    #@24
    const/4 v3, 0x2

    #@25
    aput-object v2, v1, v3

    #@27
    .line 178
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getMin()J

    #@2a
    move-result-wide v2

    #@2b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2e
    move-result-object v2

    #@2f
    const/4 v3, 0x3

    #@30
    aput-object v2, v1, v3

    #@32
    .line 179
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getAverage()D

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
    .line 180
    invoke-virtual {p0}, Ljava/util/LongSummaryStatistics;->getMax()J

    #@40
    move-result-wide v2

    #@41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@44
    move-result-object v2

    #@45
    const/4 v3, 0x5

    #@46
    aput-object v2, v1, v3

    #@48
    .line 173
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method

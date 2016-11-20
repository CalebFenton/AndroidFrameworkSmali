.class public Ljava/util/IntSummaryStatistics;
.super Ljava/lang/Object;
.source "IntSummaryStatistics.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private count:J

.field private max:I

.field private min:I

.field private sum:J


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const v0, 0x7fffffff

    #@6
    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    #@8
    .line 68
    const/high16 v0, -0x80000000

    #@a
    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    #@c
    .line 75
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    .line 84
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    #@7
    .line 85
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    #@9
    int-to-long v2, p1

    #@a
    add-long/2addr v0, v2

    #@b
    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    #@d
    .line 86
    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    #@f
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    #@15
    .line 87
    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    #@17
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    #@1d
    .line 83
    return-void
.end method

.method public combine(Ljava/util/IntSummaryStatistics;)V
    .locals 4
    .param p1, "other"    # Ljava/util/IntSummaryStatistics;

    #@0
    .prologue
    .line 97
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    #@2
    iget-wide v2, p1, Ljava/util/IntSummaryStatistics;->count:J

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    #@7
    .line 98
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    #@9
    iget-wide v2, p1, Ljava/util/IntSummaryStatistics;->sum:J

    #@b
    add-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    #@e
    .line 99
    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    #@10
    iget v1, p1, Ljava/util/IntSummaryStatistics;->min:I

    #@12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    #@18
    .line 100
    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    #@1a
    iget v1, p1, Ljava/util/IntSummaryStatistics;->max:I

    #@1c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    #@22
    .line 96
    return-void
.end method

.method public final getAverage()D
    .locals 4

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-lez v0, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getSum()J

    #@d
    move-result-wide v0

    #@e
    long-to-double v0, v0

    #@f
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

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
    .line 109
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->count:J

    #@2
    return-wide v0
.end method

.method public final getMax()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Ljava/util/IntSummaryStatistics;->max:I

    #@2
    return v0
.end method

.method public final getMin()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Ljava/util/IntSummaryStatistics;->min:I

    #@2
    return v0
.end method

.method public final getSum()J
    .locals 2

    #@0
    .prologue
    .line 119
    iget-wide v0, p0, Ljava/util/IntSummaryStatistics;->sum:J

    #@2
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 162
    const-string/jumbo v0, "%s{count=%d, sum=%d, min=%d, average=%f, max=%d}"

    #@3
    .line 161
    const/4 v1, 0x6

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 163
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
    .line 164
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getCount()J

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
    .line 165
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getSum()J

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
    .line 166
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getMin()I

    #@2a
    move-result v2

    #@2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v2

    #@2f
    const/4 v3, 0x3

    #@30
    aput-object v2, v1, v3

    #@32
    .line 167
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getAverage()D

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
    .line 168
    invoke-virtual {p0}, Ljava/util/IntSummaryStatistics;->getMax()I

    #@40
    move-result v2

    #@41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v2

    #@45
    const/4 v3, 0x5

    #@46
    aput-object v2, v1, v3

    #@48
    .line 161
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method

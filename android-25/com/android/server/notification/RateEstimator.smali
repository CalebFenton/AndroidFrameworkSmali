.class public Lcom/android/server/notification/RateEstimator;
.super Ljava/lang/Object;
.source "RateEstimator.java"


# static fields
.field private static final MINIMUM_DT:D = 5.0E-4

.field private static final RATE_ALPHA:D = 0.8


# instance fields
.field private mInterarrivalTime:D

.field private mLastEventTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    const-wide v0, 0x408f400000000000L    # 1000.0

    #@8
    iput-wide v0, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    #@a
    .line 31
    return-void
.end method

.method private getInterarrivalEstimate(J)D
    .locals 7
    .param p1, "now"    # J

    #@0
    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    #@2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@5
    move-result-wide v2

    #@6
    sub-long v2, p1, v2

    #@8
    long-to-double v2, v2

    #@9
    const-wide v4, 0x408f400000000000L    # 1000.0

    #@e
    div-double v0, v2, v4

    #@10
    .line 62
    .local v0, "dt":D
    const-wide v2, 0x3f40624dd2f1a9fcL    # 5.0E-4

    #@15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@18
    move-result-wide v0

    #@19
    .line 64
    iget-wide v2, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    #@1b
    const-wide v4, 0x3fe999999999999aL    # 0.8

    #@20
    mul-double/2addr v2, v4

    #@21
    const-wide v4, 0x3fc9999999999998L    # 0.19999999999999996

    #@26
    mul-double/2addr v4, v0

    #@27
    add-double/2addr v2, v4

    #@28
    return-wide v2
.end method


# virtual methods
.method public getRate(J)F
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 54
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 56
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getInterarrivalEstimate(J)D

    #@9
    move-result-wide v0

    #@a
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@c
    div-double v0, v2, v0

    #@e
    double-to-float v0, v0

    #@f
    return v0
.end method

.method public update(J)F
    .locals 7
    .param p1, "now"    # J

    #@0
    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 41
    const/4 v0, 0x0

    #@5
    .line 47
    .local v0, "rate":F
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    #@b
    .line 48
    return v0

    #@c
    .line 44
    .end local v0    # "rate":F
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getInterarrivalEstimate(J)D

    #@f
    move-result-wide v2

    #@10
    iput-wide v2, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    #@12
    .line 45
    iget-wide v2, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    #@14
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@16
    div-double v2, v4, v2

    #@18
    double-to-float v0, v2

    #@19
    .restart local v0    # "rate":F
    goto :goto_0
.end method

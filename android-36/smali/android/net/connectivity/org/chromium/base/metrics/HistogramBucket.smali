.class public Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;
.super Ljava/lang/Object;
.source "HistogramBucket.java"


# instance fields
.field public final blacklist mCount:I

.field public final blacklist mMax:J

.field public final blacklist mMin:I


# direct methods
.method public constructor blacklist <init>(IJI)V
    .registers 5
    .param p1, "min"    # I
    .param p2, "max"    # J
    .param p4, "count"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;->mMin:I

    .line 15
    iput-wide p2, p0, Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;->mMax:J

    .line 16
    iput p4, p0, Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;->mCount:I

    .line 17
    return-void
.end method


# virtual methods
.method public blacklist contains(I)Z
    .registers 6
    .param p1, "value"    # I

    .line 20
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;->mMin:I

    if-lt p1, v0, :cond_d

    int-to-long v0, p1

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/metrics/HistogramBucket;->mMax:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.class public Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;
.super Ljava/lang/Object;
.source "TimingMetric.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric$TimerType;
    }
.end annotation


# instance fields
.field private final blacklist mMetricName:Ljava/lang/String;

.field private blacklist mStartTime:J

.field private final blacklist mTimerType:I


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "metricName"    # Ljava/lang/String;
    .param p2, "timerType"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;->mMetricName:Ljava/lang/String;

    .line 71
    iput p2, p0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;->mTimerType:I

    .line 72
    return-void
.end method

.method public static blacklist mediumUptime(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;
    .registers 4
    .param p0, "metricName"    # Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;-><init>(Ljava/lang/String;I)V

    .line 53
    .local v0, "ret":Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;->mStartTime:J

    .line 54
    return-object v0
.end method

.method public static blacklist shortThreadTime(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;
    .registers 4
    .param p0, "metricName"    # Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;-><init>(Ljava/lang/String;I)V

    .line 65
    .local v0, "ret":Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->currentThreadTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;->mStartTime:J

    .line 66
    return-object v0
.end method

.method public static blacklist shortUptime(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;
    .registers 4
    .param p0, "metricName"    # Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;-><init>(Ljava/lang/String;I)V

    .line 41
    .local v0, "ret":Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;->mStartTime:J

    .line 42
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 7

    .line 76
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;->mMetricName:Ljava/lang/String;

    .line 77
    .local v0, "metricName":Ljava/lang/String;
    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;->mStartTime:J

    .line 78
    .local v1, "startTime":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_b

    return-void

    .line 79
    :cond_b
    iput-wide v3, p0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;->mStartTime:J

    .line 81
    iget v3, p0, Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;->mTimerType:I

    packed-switch v3, :pswitch_data_32

    goto :goto_31

    .line 91
    :pswitch_13
    nop

    .line 92
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->currentThreadTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 91
    invoke-static {v0, v3, v4}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    goto :goto_31

    .line 87
    :pswitch_1d
    nop

    .line 88
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 87
    invoke-static {v0, v3, v4}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    .line 89
    goto :goto_31

    .line 83
    :pswitch_27
    nop

    .line 84
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 83
    invoke-static {v0, v3, v4}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    .line 85
    nop

    .line 95
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27
        :pswitch_1d
        :pswitch_13
    .end packed-switch
.end method

.class public Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetricUMARecorder;
.super Ljava/lang/Object;
.source "JankMetricUMARecorder.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetricUMARecorder$Natives;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist recordJankMetricsToUMA(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;JJI)V
    .registers 14
    .param p0, "metric"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    .param p1, "reportingIntervalStartTime"    # J
    .param p3, "reportingIntervalDuration"    # J
    .param p5, "scenario"    # I

    .line 18
    if-nez p0, :cond_3

    .line 19
    return-void

    .line 21
    :cond_3
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetricUMARecorderJni;->get()Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetricUMARecorder$Natives;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->durationsNs:[J

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->missedVsyncs:[I

    .line 22
    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    .end local p1    # "reportingIntervalStartTime":J
    .end local p3    # "reportingIntervalDuration":J
    .end local p5    # "scenario":I
    .local v3, "reportingIntervalStartTime":J
    .local v5, "reportingIntervalDuration":J
    .local v7, "scenario":I
    invoke-interface/range {v0 .. v7}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetricUMARecorder$Natives;->recordJankMetrics([J[IJJI)V

    .line 28
    return-void
.end method

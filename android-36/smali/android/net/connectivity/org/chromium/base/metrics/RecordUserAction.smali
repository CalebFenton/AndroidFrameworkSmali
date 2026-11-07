.class public Landroid/net/connectivity/org/chromium/base/metrics/RecordUserAction;
.super Ljava/lang/Object;
.source "RecordUserAction.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist record(Ljava/lang/String;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorderHolder;->get()Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/net/connectivity/org/chromium/base/metrics/UmaRecorder;->recordUserAction(Ljava/lang/String;J)V

    .line 27
    return-void
.end method

.class final Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;
.super Ljava/lang/Object;
.source "EarlyTraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityLaunchCauseEvent"
.end annotation


# instance fields
.field final blacklist mId:J

.field final blacklist mLaunchCause:I

.field final blacklist mTimeMs:J


# direct methods
.method constructor blacklist <init>(JI)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "launchCause"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;->mId:J

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;->mTimeMs:J

    .line 96
    iput p3, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;->mLaunchCause:I

    .line 97
    return-void
.end method

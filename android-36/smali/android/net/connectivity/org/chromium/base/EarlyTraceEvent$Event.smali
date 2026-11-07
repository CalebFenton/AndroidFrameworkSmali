.class final Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;
.super Ljava/lang/Object;
.source "EarlyTraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Event"
.end annotation


# instance fields
.field final blacklist mIsStart:Z

.field final blacklist mIsToplevel:Z

.field final blacklist mName:Ljava/lang/String;

.field final blacklist mThreadId:I

.field final blacklist mThreadTimeMillis:J

.field final blacklist mTimeNanos:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;ZZ)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isStart"    # Z
    .param p3, "isToplevel"    # Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p2, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mIsStart:Z

    .line 53
    iput-boolean p3, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mIsToplevel:Z

    .line 54
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    .line 55
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mTimeNanos:J

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mThreadTimeMillis:J

    .line 58
    return-void
.end method

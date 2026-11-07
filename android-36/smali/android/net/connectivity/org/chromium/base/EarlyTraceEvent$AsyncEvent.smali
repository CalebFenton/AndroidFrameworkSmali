.class final Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;
.super Ljava/lang/Object;
.source "EarlyTraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncEvent"
.end annotation


# instance fields
.field final blacklist mId:J

.field final blacklist mIsStart:Z

.field final blacklist mName:Ljava/lang/String;

.field final blacklist mTimeNanos:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;JZ)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "isStart"    # Z

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;->mName:Ljava/lang/String;

    .line 70
    iput-wide p2, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;->mId:J

    .line 71
    iput-boolean p4, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;->mIsStart:Z

    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;->mTimeNanos:J

    .line 73
    return-void
.end method

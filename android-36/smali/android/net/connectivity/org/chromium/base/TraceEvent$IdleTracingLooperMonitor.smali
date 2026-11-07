.class final Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;
.super Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;
.source "TraceEvent.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IdleTracingLooperMonitor"
.end annotation


# static fields
.field private static final blacklist FRAME_DURATION_MILLIS:J = 0x10L

.field private static final blacklist IDLE_EVENT_NAME:Ljava/lang/String; = "Looper.queueIdle"

.field private static final blacklist MIN_INTERESTING_BURST_DURATION_MILLIS:J = 0x30L

.field private static final blacklist MIN_INTERESTING_DURATION_MILLIS:J = 0x10L

.field private static final blacklist TAG:Ljava/lang/String; = "TraceEvt_LooperMonitor"


# instance fields
.field private blacklist mIdleMonitorAttached:Z

.field private blacklist mLastIdleStartedAt:J

.field private blacklist mLastWorkStartedAt:J

.field private blacklist mNumIdlesSeen:I

.field private blacklist mNumTasksSeen:I

.field private blacklist mNumTasksSinceLastIdle:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/TraceEvent-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;-><init>()V

    return-void
.end method

.method private final blacklist syncIdleMonitoring()V
    .registers 5

    .line 185
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    const-string v1, "TraceEvt_LooperMonitor"

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mIdleMonitorAttached:Z

    if-nez v0, :cond_22

    .line 187
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mLastIdleStartedAt:J

    .line 188
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mIdleMonitorAttached:Z

    .line 190
    const-string v0, "attached idle handler"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 191
    :cond_22
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mIdleMonitorAttached:Z

    if-eqz v0, :cond_3b

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->-$$Nest$sfgetsEnabled()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 192
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mIdleMonitorAttached:Z

    .line 194
    const-string v0, "detached idle handler"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3b
    :goto_3b
    return-void
.end method

.method private static blacklist traceAndLog(ILjava/lang/String;)V
    .registers 3
    .param p0, "level"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 222
    const-string v0, "TraceEvent.LooperMonitor:IdleStats"

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "TraceEvt_LooperMonitor"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method


# virtual methods
.method final blacklist beginHandling(Ljava/lang/String;)V
    .registers 4
    .param p1, "line"    # Ljava/lang/String;

    .line 201
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumTasksSinceLastIdle:I

    if-nez v0, :cond_9

    .line 202
    const-string v0, "Looper.queueIdle"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 204
    :cond_9
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mLastWorkStartedAt:J

    .line 205
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->syncIdleMonitoring()V

    .line 206
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->beginHandling(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method final blacklist endHandling(Ljava/lang/String;)V
    .registers 6
    .param p1, "line"    # Ljava/lang/String;

    .line 211
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mLastWorkStartedAt:J

    sub-long/2addr v0, v2

    .line 212
    .local v0, "elapsed":J
    const-wide/16 v2, 0x10

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "observed a task that took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3, v2}, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->traceAndLog(ILjava/lang/String;)V

    .line 215
    :cond_2e
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/base/TraceEvent$BasicLooperMonitor;->endHandling(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->syncIdleMonitoring()V

    .line 217
    iget v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumTasksSeen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumTasksSeen:I

    .line 218
    iget v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumTasksSinceLastIdle:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumTasksSinceLastIdle:I

    .line 219
    return-void
.end method

.method public final whitelist queueIdle()Z
    .registers 9

    .line 228
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    .line 229
    .local v0, "now":J
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mLastIdleStartedAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mLastIdleStartedAt:J

    .line 230
    :cond_e
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mLastIdleStartedAt:J

    sub-long v2, v0, v2

    .line 231
    .local v2, "elapsed":J
    iget v4, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumIdlesSeen:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumIdlesSeen:I

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumTasksSinceLastIdle:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " tasks since last idle."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Looper.queueIdle"

    invoke-static {v6, v4}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->begin(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-wide/16 v6, 0x30

    cmp-long v4, v2, v6

    if-lez v4, :cond_73

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumTasksSeen:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " tasks and "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumIdlesSeen:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " idles processed so far, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumTasksSinceLastIdle:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " tasks bursted and "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ms elapsed since last idle"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "statsString":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-static {v6, v4}, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->traceAndLog(ILjava/lang/String;)V

    .line 246
    .end local v4    # "statsString":Ljava/lang/String;
    :cond_73
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mLastIdleStartedAt:J

    .line 247
    const/4 v4, 0x0

    iput v4, p0, Landroid/net/connectivity/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;->mNumTasksSinceLastIdle:I

    .line 248
    return v5
.end method

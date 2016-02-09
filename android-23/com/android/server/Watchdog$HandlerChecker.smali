.class public final Lcom/android/server/Watchdog$HandlerChecker;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandlerChecker"
.end annotation


# instance fields
.field private mCompleted:Z

.field private mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field private final mHandler:Landroid/os/Handler;

.field private final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mStartTime:J

.field private final mWaitMax:J

.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/Watchdog;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "waitMaxMillis"    # J

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    #@c
    .line 97
    iput-object p2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    #@e
    .line 98
    iput-object p3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    #@10
    .line 99
    iput-wide p4, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    #@12
    .line 100
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    #@15
    .line 96
    return-void
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 103
    return-void
.end method

.method public describeBlockedStateLocked()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "Blocked in handler on "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, " ("

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, ")"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0

    #@35
    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v1, "Blocked in monitor "

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    #@43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    .line 161
    const-string/jumbo v1, " on "

    #@52
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 161
    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    #@58
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    .line 161
    const-string/jumbo v1, " ("

    #@5f
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 161
    invoke-virtual {p0}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    .line 161
    const-string/jumbo v1, ")"

    #@72
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v0

    #@7a
    return-object v0
.end method

.method public getCompletionStateLocked()I
    .locals 6

    #@0
    .prologue
    .line 135
    iget-boolean v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 136
    const/4 v2, 0x0

    #@5
    return v2

    #@6
    .line 138
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@9
    move-result-wide v2

    #@a
    iget-wide v4, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    #@c
    sub-long v0, v2, v4

    #@e
    .line 139
    .local v0, "latency":J
    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    #@10
    const-wide/16 v4, 0x2

    #@12
    div-long/2addr v2, v4

    #@13
    cmp-long v2, v0, v2

    #@15
    if-gez v2, :cond_1

    #@17
    .line 140
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 141
    :cond_1
    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    #@1b
    cmp-long v2, v0, v2

    #@1d
    if-gez v2, :cond_2

    #@1f
    .line 142
    const/4 v2, 0x2

    #@20
    return v2

    #@21
    .line 145
    :cond_2
    const/4 v2, 0x3

    #@22
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public isOverdueLocked()Z
    .locals 8

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 131
    iget-boolean v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    #@3
    if-nez v1, :cond_0

    #@5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8
    move-result-wide v2

    #@9
    iget-wide v4, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    #@b
    iget-wide v6, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    #@d
    add-long/2addr v4, v6

    #@e
    cmp-long v1, v2, v4

    #@10
    if-lez v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :cond_0
    return v0
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 167
    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 168
    .local v1, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 169
    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    #@b
    monitor-enter v3

    #@c
    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/Watchdog$Monitor;

    #@14
    iput-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v3

    #@17
    .line 172
    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    #@19
    invoke-interface {v2}, Lcom/android/server/Watchdog$Monitor;->monitor()V

    #@1c
    .line 168
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 169
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2

    #@22
    .line 175
    :cond_0
    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    #@24
    monitor-enter v3

    #@25
    .line 176
    const/4 v2, 0x1

    #@26
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    #@28
    .line 177
    const/4 v2, 0x0

    #@29
    iput-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2b
    monitor-exit v3

    #@2c
    .line 166
    return-void

    #@2d
    .line 175
    :catchall_1
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2
.end method

.method public scheduleCheckLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 108
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/os/MessageQueue;->isPolling()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 115
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    #@1c
    .line 116
    return-void

    #@1d
    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    #@1f
    if-nez v0, :cond_1

    #@21
    .line 121
    return-void

    #@22
    .line 124
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    #@24
    .line 125
    const/4 v0, 0x0

    #@25
    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    #@27
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2a
    move-result-wide v0

    #@2b
    iput-wide v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    #@2d
    .line 127
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    #@2f
    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    #@32
    .line 107
    return-void
.end method

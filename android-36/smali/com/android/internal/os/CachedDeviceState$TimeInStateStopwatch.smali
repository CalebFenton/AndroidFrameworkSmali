.class public Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;
.super Ljava/lang/Object;
.source "CachedDeviceState.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/CachedDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeInStateStopwatch"
.end annotation


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mStartTimeMillis:J

.field private blacklist mTotalTimeMillis:J

.field final synthetic blacklist this$0:Lcom/android/internal/os/CachedDeviceState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mstart(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->start()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstop(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->stop()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/CachedDeviceState;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/os/CachedDeviceState;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist elapsedTime()J
    .registers 5

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mStartTimeMillis:J

    sub-long/2addr v0, v2

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    return-wide v0
.end method

.method private blacklist start()V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->isRunning()Z

    move-result v1

    if-nez v1, :cond_f

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mStartTimeMillis:J

    .line 133
    :cond_f
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private blacklist stop()V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 139
    iget-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mTotalTimeMillis:J

    invoke-direct {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->elapsedTime()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mTotalTimeMillis:J

    .line 140
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mStartTimeMillis:J

    .line 142
    :cond_16
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-static {v0}, Lcom/android/internal/os/CachedDeviceState;->-$$Nest$fgetmStopwatchesLock(Lcom/android/internal/os/CachedDeviceState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 157
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-static {v1}, Lcom/android/internal/os/CachedDeviceState;->-$$Nest$fgetmOnBatteryStopwatches(Lcom/android/internal/os/CachedDeviceState;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist getMillis()J
    .registers 6

    .line 115
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    iget-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mTotalTimeMillis:J

    invoke-direct {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->elapsedTime()J

    move-result-wide v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    .line 117
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist isRunning()Z
    .registers 5

    .line 151
    iget-wide v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mStartTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist reset()V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    const-wide/16 v1, 0x0

    :try_start_5
    iput-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mTotalTimeMillis:J

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :cond_11
    iput-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mStartTimeMillis:J

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

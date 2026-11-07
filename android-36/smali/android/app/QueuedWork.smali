.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QueuedWork$QueuedWorkHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DELAY:J = 0x64L

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field private static final greylist-max-o MAX_WAIT_TIME_MILLIS:J = 0x200L

.field private static greylist-max-o mNumWaits:I

.field private static final greylist-max-o mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

.field private static greylist-max-o sCanDelay:Z

.field private static final greylist sFinishers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sHandler:Landroid/os/Handler;

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sProcessingWork:Ljava/lang/Object;

.field private static greylist-max-o sWork:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smprocessPendingWork()V
    .registers 0

    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 53
    const-class v0, Landroid/app/QueuedWork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 94
    new-instance v0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    sput-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 96
    const/4 v0, 0x0

    sput v0, Landroid/app/QueuedWork;->mNumWaits:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addFinisher(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .line 161
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static greylist getHandler()Landroid/os/Handler;
    .registers 4

    .line 105
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_1e

    .line 107
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "queued-work-looper"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 109
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v2, Landroid/app/QueuedWork$QueuedWorkHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/QueuedWork$QueuedWorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 113
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_1e
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 114
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private static blacklist handlerRemoveMessages(I)V
    .registers 3
    .param p0, "what"    # I

    .line 138
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_9

    .line 141
    monitor-exit v0

    return-void

    .line 143
    :cond_9
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static greylist-max-o hasPendingWork()Z
    .registers 2

    .line 267
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 269
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static greylist-max-o processPendingWork()V
    .registers 6

    .line 273
    const-wide/16 v0, 0x0

    .line 279
    .local v0, "startTime":J
    sget-object v2, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    :try_start_5
    sget-object v3, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_35

    .line 283
    :try_start_8
    sget-object v4, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 284
    .local v4, "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    sput-object v5, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 287
    const/4 v5, 0x1

    invoke-static {v5}, Landroid/app/QueuedWork;->handlerRemoveMessages(I)V

    .line 288
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_32

    .line 290
    :try_start_16
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 291
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 292
    .local v5, "w":Ljava/lang/Runnable;
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 293
    .end local v5    # "w":Ljava/lang/Runnable;
    goto :goto_20

    .line 300
    .end local v4    # "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_35

    .line 301
    return-void

    .line 288
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    .end local v0    # "startTime":J
    :try_start_34
    throw v4

    .line 300
    .restart local v0    # "startTime":J
    :catchall_35
    move-exception v3

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_35

    throw v3
.end method

.method public static greylist-max-r queue(Ljava/lang/Runnable;Z)V
    .registers 7
    .param p0, "work"    # Ljava/lang/Runnable;
    .param p1, "shouldDelay"    # Z

    .line 250
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 252
    .local v0, "handler":Landroid/os/Handler;
    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_7
    sget-object v2, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 255
    const/4 v2, 0x1

    if-eqz p1, :cond_19

    sget-boolean v3, Landroid/app/QueuedWork;->sCanDelay:Z

    if-eqz v3, :cond_19

    .line 256
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c

    .line 258
    :cond_19
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    :goto_1c
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public static greylist removeFinisher(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .line 173
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist resetHandler()V
    .registers 2

    .line 122
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_9

    .line 124
    monitor-exit v0

    return-void

    .line 126
    :cond_9
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 127
    const/4 v1, 0x0

    sput-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static greylist-max-o waitToFinish()V
    .registers 10

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 190
    .local v2, "hadMessages":Z
    sget-object v3, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 194
    const/4 v4, 0x1

    :try_start_9
    invoke-static {v4}, Landroid/app/QueuedWork;->handlerRemoveMessages(I)V

    .line 200
    const/4 v5, 0x0

    sput-boolean v5, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 201
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_7a

    .line 203
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 205
    .local v3, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_14
    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_75

    .line 207
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 208
    nop

    .line 214
    :goto_1b
    :try_start_1b
    sget-object v5, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_71

    .line 215
    :try_start_1e
    sget-object v6, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    .line 216
    .local v6, "finisher":Ljava/lang/Runnable;
    monitor-exit v5
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_6e

    .line 218
    if-nez v6, :cond_6a

    .line 219
    nop

    .line 225
    .end local v6    # "finisher":Ljava/lang/Runnable;
    sput-boolean v4, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 226
    nop

    .line 228
    sget-object v5, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 229
    :try_start_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    .line 231
    .local v6, "waitTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_3d

    if-eqz v2, :cond_65

    .line 232
    :cond_3d
    sget-object v8, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 233
    sget v8, Landroid/app/QueuedWork;->mNumWaits:I

    add-int/2addr v8, v4

    sput v8, Landroid/app/QueuedWork;->mNumWaits:I

    .line 235
    sget v4, Landroid/app/QueuedWork;->mNumWaits:I

    rem-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_5b

    const-wide/16 v8, 0x200

    cmp-long v4, v6, v8

    if-lez v4, :cond_65

    .line 236
    :cond_5b
    sget-object v4, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    sget-object v8, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "waited: "

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 239
    .end local v6    # "waitTime":J
    :cond_65
    monitor-exit v5

    .line 240
    return-void

    .line 239
    :catchall_67
    move-exception v4

    monitor-exit v5
    :try_end_69
    .catchall {:try_start_30 .. :try_end_69} :catchall_67

    throw v4

    .line 222
    .local v6, "finisher":Ljava/lang/Runnable;
    :cond_6a
    :try_start_6a
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_71

    .line 223
    .end local v6    # "finisher":Ljava/lang/Runnable;
    goto :goto_1b

    .line 216
    :catchall_6e
    move-exception v6

    :try_start_6f
    monitor-exit v5
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    .end local v0    # "startTime":J
    .end local v2    # "hadMessages":Z
    .end local v3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_70
    throw v6
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    .line 225
    .restart local v0    # "startTime":J
    .restart local v2    # "hadMessages":Z
    .restart local v3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_71
    move-exception v5

    sput-boolean v4, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 226
    throw v5

    .line 207
    :catchall_75
    move-exception v4

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 208
    throw v4

    .line 201
    .end local v3    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_7a
    move-exception v4

    :try_start_7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v4
.end method

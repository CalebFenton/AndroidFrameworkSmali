.class public final Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Looper$Observer;,
        Landroid/os/Looper$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Looper"

.field private static greylist sMainLooper:Landroid/os/Looper;

.field private static blacklist sObserver:Landroid/os/Looper$Observer;

.field static final greylist sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mInLoop:Z

.field private greylist mLogging:Landroid/util/Printer;

.field final greylist mQueue:Landroid/os/MessageQueue;

.field private blacklist mSlowDeliveryDetected:Z

.field private greylist-max-o mSlowDeliveryThresholdMs:J

.field private greylist-max-o mSlowDispatchThresholdMs:J

.field final greylist-max-o mThread:Ljava/lang/Thread;

.field private greylist-max-o mTraceTag:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 3
    .param p1, "quitAllowed"    # Z

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 444
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    .line 445
    return-void
.end method

.method public static blacklist clearMainLooperForTest()V
    .registers 2

    .line 175
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 176
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static whitelist getMainLooper()Landroid/os/Looper;
    .registers 2

    .line 151
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 152
    :try_start_3
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object v1

    .line 153
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static blacklist getThreadGroup()I
    .registers 2

    .line 374
    const/4 v0, -0x1

    .line 376
    .local v0, "threadGroup":I
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    if-nez v1, :cond_f

    .line 377
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v0

    .line 379
    :cond_f
    return v0
.end method

.method private static blacklist getThresholdOverride()I
    .registers 4

    .line 348
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_15

    .line 349
    const-string/jumbo v0, "log.looper.any.main.slow"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 350
    .local v0, "globalOverride":I
    if-ltz v0, :cond_15

    .line 351
    return v0

    .line 357
    .end local v0    # "globalOverride":I
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "log.looper."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 358
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".any.slow"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 359
    .local v0, "processOverride":I
    if-ltz v0, :cond_3a

    .line 360
    return v0

    .line 363
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".slow"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static blacklist getThresholdOverride$ravenwood()I
    .registers 1

    .line 370
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist loop()V
    .registers 5

    .line 315
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 316
    .local v0, "me":Landroid/os/Looper;
    if-eqz v0, :cond_29

    .line 319
    iget-boolean v1, v0, Landroid/os/Looper;->mInLoop:Z

    if-eqz v1, :cond_11

    .line 320
    const-string v1, "Looper"

    const-string v2, "Loop again would have the queued messages be executed before this one completed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/Looper;->mInLoop:Z

    .line 328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 333
    .local v1, "ident":J
    invoke-static {}, Landroid/os/Looper;->getThresholdOverride()I

    move-result v3

    .line 335
    .local v3, "thresholdOverride":I
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    .line 338
    :cond_22
    invoke-static {v0, v1, v2, v3}, Landroid/os/Looper;->loopOnce(Landroid/os/Looper;JI)Z

    move-result v4

    if-nez v4, :cond_22

    .line 339
    return-void

    .line 317
    .end local v1    # "ident":J
    .end local v3    # "thresholdOverride":I
    :cond_29
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist loopOnce(Landroid/os/Looper;JI)Z
    .registers 40
    .param p0, "me"    # Landroid/os/Looper;
    .param p1, "ident"    # J
    .param p3, "thresholdOverride"    # I

    .line 196
    move-object/from16 v1, p0

    move/from16 v2, p3

    iget-object v0, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v10

    .line 197
    .local v10, "msg":Landroid/os/Message;
    const/4 v0, 0x0

    if-nez v10, :cond_e

    .line 199
    return v0

    .line 202
    :cond_e
    sget-object v3, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    const-string/jumbo v4, "message_queue_receive"

    invoke-static {v3, v4}, Landroid/os/PerfettoTrace;->begin(Landroid/os/PerfettoTrace$Category;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    .line 204
    const-wide/16 v4, 0x7d4

    invoke-virtual {v3, v4, v5}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginNested(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/Message;->mSendingThreadName:Ljava/lang/String;

    .line 205
    const-wide/16 v5, 0x1

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    .line 206
    invoke-virtual {v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->endNested()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->endProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/Message;->mEventId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 208
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PerfettoTrackEventExtra$Builder;->setTerminatingFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    .line 212
    iget-object v11, v1, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 213
    .local v11, "logging":Landroid/util/Printer;
    const-string v12, " "

    if-eqz v11, :cond_72

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> Dispatching to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 218
    :cond_72
    sget-object v13, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    .line 220
    .local v13, "observer":Landroid/os/Looper$Observer;
    iget-wide v14, v1, Landroid/os/Looper;->mTraceTag:J

    .line 221
    .local v14, "traceTag":J
    iget-wide v3, v1, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 222
    .local v3, "slowDispatchThresholdMs":J
    iget-wide v5, v1, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 224
    .local v5, "slowDeliveryThresholdMs":J
    const/4 v7, 0x1

    if-ltz v2, :cond_7f

    move v8, v7

    goto :goto_80

    :cond_7f
    move v8, v0

    :goto_80
    move/from16 v16, v8

    .line 225
    .local v16, "hasOverride":Z
    if-eqz v16, :cond_8a

    .line 226
    int-to-long v3, v2

    .line 227
    int-to-long v5, v2

    move-wide/from16 v17, v3

    move-wide v3, v5

    goto :goto_8d

    .line 225
    :cond_8a
    move-wide/from16 v17, v3

    move-wide v3, v5

    .line 229
    .end local v5    # "slowDeliveryThresholdMs":J
    .local v3, "slowDeliveryThresholdMs":J
    .local v17, "slowDispatchThresholdMs":J
    :goto_8d
    const-wide/16 v5, 0x0

    cmp-long v8, v3, v5

    if-gtz v8, :cond_95

    if-eqz v16, :cond_9d

    :cond_95
    iget-wide v8, v10, Landroid/os/Message;->when:J

    cmp-long v8, v8, v5

    if-lez v8, :cond_9d

    move v8, v7

    goto :goto_9e

    :cond_9d
    move v8, v0

    :goto_9e
    move/from16 v19, v8

    .line 231
    .local v19, "logSlowDelivery":Z
    cmp-long v8, v17, v5

    if-gtz v8, :cond_a9

    if-eqz v16, :cond_a7

    goto :goto_a9

    :cond_a7
    move v8, v0

    goto :goto_aa

    :cond_a9
    :goto_a9
    move v8, v7

    :goto_aa
    move/from16 v20, v8

    .line 233
    .local v20, "logSlowDispatch":Z
    if-nez v19, :cond_b3

    if-eqz v20, :cond_b1

    goto :goto_b3

    :cond_b1
    move v8, v0

    goto :goto_b4

    :cond_b3
    :goto_b3
    move v8, v7

    :goto_b4
    move/from16 v21, v8

    .line 234
    .local v21, "needStartTime":Z
    move/from16 v22, v20

    .line 236
    .local v22, "needEndTime":Z
    cmp-long v8, v14, v5

    if-eqz v8, :cond_cb

    invoke-static {v14, v15}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v8

    if-eqz v8, :cond_cb

    .line 237
    iget-object v8, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v15, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 240
    :cond_cb
    if-eqz v21, :cond_d2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    goto :goto_d3

    :cond_d2
    move-wide v8, v5

    .line 242
    .local v8, "dispatchStart":J
    :goto_d3
    const/16 v23, 0x0

    .line 243
    .local v23, "token":Ljava/lang/Object;
    if-eqz v13, :cond_de

    .line 244
    invoke-interface {v13}, Landroid/os/Looper$Observer;->messageDispatchStarting()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v2, v23

    goto :goto_e0

    .line 243
    :cond_de
    move-object/from16 v2, v23

    .line 246
    .end local v23    # "token":Ljava/lang/Object;
    .local v2, "token":Ljava/lang/Object;
    :goto_e0
    move-wide/from16 v23, v5

    iget v5, v10, Landroid/os/Message;->workSourceUid:I

    invoke-static {v5}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v25

    .line 248
    .local v25, "origWorkSource":J
    :try_start_e8
    iget-object v5, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_ed} :catch_219
    .catchall {:try_start_e8 .. :try_end_ed} :catchall_210

    .line 249
    if-eqz v13, :cond_107

    .line 250
    :try_start_ef
    invoke-interface {v13, v2, v10}, Landroid/os/Looper$Observer;->messageDispatched(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_107

    .line 259
    :catchall_f3
    move-exception v0

    move-wide/from16 v32, v3

    move-wide v7, v8

    move-wide/from16 v30, v14

    move-wide/from16 v3, v17

    goto/16 :goto_229

    .line 253
    :catch_fd
    move-exception v0

    move-wide/from16 v32, v3

    move-wide v7, v8

    move-wide/from16 v30, v14

    move-wide/from16 v3, v17

    goto/16 :goto_221

    .line 252
    :cond_107
    :goto_107
    if-eqz v22, :cond_10e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_10d} :catch_fd
    .catchall {:try_start_ef .. :try_end_10d} :catchall_f3

    goto :goto_110

    :cond_10e
    move-wide/from16 v5, v23

    :goto_110
    move-wide/from16 v27, v5

    .line 259
    .local v27, "dispatchEnd":J
    invoke-static/range {v25 .. v26}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 260
    cmp-long v5, v14, v23

    if-eqz v5, :cond_11c

    .line 261
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 264
    :cond_11c
    const-string v5, "Looper"

    if-eqz v19, :cond_168

    .line 265
    const/16 v23, 0x0

    .line 267
    .local v23, "slow":Z
    iget-boolean v6, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    if-eqz v6, :cond_135

    invoke-static {}, Landroid/os/Looper$NoImagePreloadHolder;->-$$Nest$sfgetsVerboseLogging()Z

    move-result v6

    if-eqz v6, :cond_12d

    goto :goto_135

    :cond_12d
    move-object v0, v5

    move-wide/from16 v30, v14

    move v14, v7

    move-wide v7, v8

    move-wide/from16 v32, v3

    goto :goto_14a

    .line 268
    :cond_135
    :goto_135
    move-object/from16 v24, v5

    iget-wide v5, v10, Landroid/os/Message;->when:J

    move/from16 v29, v7

    move-wide v7, v8

    .end local v8    # "dispatchStart":J
    .local v7, "dispatchStart":J
    const-string v9, "delivery"

    move-wide/from16 v30, v14

    move-object/from16 v0, v24

    move/from16 v14, v29

    .end local v14    # "traceTag":J
    .local v30, "traceTag":J
    invoke-static/range {v3 .. v10}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    move-result v23

    move-wide/from16 v32, v3

    .line 271
    .end local v3    # "slowDeliveryThresholdMs":J
    .local v32, "slowDeliveryThresholdMs":J
    :goto_14a
    iget-boolean v3, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    if-eqz v3, :cond_163

    .line 272
    if-nez v23, :cond_16f

    iget-wide v3, v10, Landroid/os/Message;->when:J

    sub-long v3, v7, v3

    const-wide/16 v5, 0xa

    cmp-long v3, v3, v5

    if-gtz v3, :cond_16f

    .line 273
    const-string v3, "Drained"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    goto :goto_16f

    .line 276
    :cond_163
    if-eqz v23, :cond_16f

    .line 279
    iput-boolean v14, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    goto :goto_16f

    .line 264
    .end local v7    # "dispatchStart":J
    .end local v23    # "slow":Z
    .end local v30    # "traceTag":J
    .end local v32    # "slowDeliveryThresholdMs":J
    .restart local v3    # "slowDeliveryThresholdMs":J
    .restart local v8    # "dispatchStart":J
    .restart local v14    # "traceTag":J
    :cond_168
    move-wide/from16 v32, v3

    move-object v0, v5

    move-wide/from16 v30, v14

    move v14, v7

    move-wide v7, v8

    .line 282
    .end local v3    # "slowDeliveryThresholdMs":J
    .end local v8    # "dispatchStart":J
    .end local v14    # "traceTag":J
    .restart local v7    # "dispatchStart":J
    .restart local v30    # "traceTag":J
    .restart local v32    # "slowDeliveryThresholdMs":J
    :cond_16f
    :goto_16f
    if-eqz v20, :cond_181

    .line 283
    const-string v9, "dispatch"

    move-wide v5, v7

    move-wide/from16 v3, v17

    move-wide/from16 v7, v27

    .end local v17    # "slowDispatchThresholdMs":J
    .end local v27    # "dispatchEnd":J
    .local v3, "slowDispatchThresholdMs":J
    .local v5, "dispatchStart":J
    .local v7, "dispatchEnd":J
    invoke-static/range {v3 .. v10}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    move-wide/from16 v34, v7

    move-wide v7, v5

    move-wide/from16 v5, v34

    .local v5, "dispatchEnd":J
    .local v7, "dispatchStart":J
    goto :goto_185

    .line 282
    .end local v3    # "slowDispatchThresholdMs":J
    .end local v5    # "dispatchEnd":J
    .restart local v17    # "slowDispatchThresholdMs":J
    .restart local v27    # "dispatchEnd":J
    :cond_181
    move-wide/from16 v3, v17

    move-wide/from16 v5, v27

    .line 286
    .end local v17    # "slowDispatchThresholdMs":J
    .end local v27    # "dispatchEnd":J
    .restart local v3    # "slowDispatchThresholdMs":J
    .restart local v5    # "dispatchEnd":J
    :goto_185
    if-eqz v11, :cond_1a9

    .line 287
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<<<<< Finished to "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v15, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v15, v10, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 292
    :cond_1a9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 293
    .local v17, "newIdent":J
    cmp-long v9, p1, v17

    if-eqz v9, :cond_203

    .line 294
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Thread identity changed from 0x"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 295
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " to 0x"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 296
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, " while dispatching to "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v15, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 297
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v10, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " what="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v12, v10, Landroid/os/Message;->what:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 294
    invoke-static {v0, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_203
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    invoke-static {v0}, Landroid/os/PerfettoTrace;->end(Landroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    .line 302
    invoke-virtual {v10}, Landroid/os/Message;->recycleUnchecked()V

    .line 304
    return v14

    .line 259
    .end local v5    # "dispatchEnd":J
    .end local v7    # "dispatchStart":J
    .end local v30    # "traceTag":J
    .end local v32    # "slowDeliveryThresholdMs":J
    .local v3, "slowDeliveryThresholdMs":J
    .restart local v8    # "dispatchStart":J
    .restart local v14    # "traceTag":J
    .local v17, "slowDispatchThresholdMs":J
    :catchall_210
    move-exception v0

    move-wide/from16 v32, v3

    move-wide v7, v8

    move-wide/from16 v30, v14

    move-wide/from16 v3, v17

    .end local v8    # "dispatchStart":J
    .end local v14    # "traceTag":J
    .end local v17    # "slowDispatchThresholdMs":J
    .local v3, "slowDispatchThresholdMs":J
    .restart local v7    # "dispatchStart":J
    .restart local v30    # "traceTag":J
    .restart local v32    # "slowDeliveryThresholdMs":J
    goto :goto_229

    .line 253
    .end local v7    # "dispatchStart":J
    .end local v30    # "traceTag":J
    .end local v32    # "slowDeliveryThresholdMs":J
    .local v3, "slowDeliveryThresholdMs":J
    .restart local v8    # "dispatchStart":J
    .restart local v14    # "traceTag":J
    .restart local v17    # "slowDispatchThresholdMs":J
    :catch_219
    move-exception v0

    move-wide/from16 v32, v3

    move-wide v7, v8

    move-wide/from16 v30, v14

    move-wide/from16 v3, v17

    .line 254
    .end local v8    # "dispatchStart":J
    .end local v14    # "traceTag":J
    .end local v17    # "slowDispatchThresholdMs":J
    .local v0, "exception":Ljava/lang/Exception;
    .local v3, "slowDispatchThresholdMs":J
    .restart local v7    # "dispatchStart":J
    .restart local v30    # "traceTag":J
    .restart local v32    # "slowDeliveryThresholdMs":J
    :goto_221
    if-eqz v13, :cond_226

    .line 255
    :try_start_223
    invoke-interface {v13, v2, v10, v0}, Landroid/os/Looper$Observer;->dispatchingThrewException(Ljava/lang/Object;Landroid/os/Message;Ljava/lang/Exception;)V

    .line 257
    :cond_226
    nop

    .end local v2    # "token":Ljava/lang/Object;
    .end local v3    # "slowDispatchThresholdMs":J
    .end local v7    # "dispatchStart":J
    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "logging":Landroid/util/Printer;
    .end local v13    # "observer":Landroid/os/Looper$Observer;
    .end local v16    # "hasOverride":Z
    .end local v19    # "logSlowDelivery":Z
    .end local v20    # "logSlowDispatch":Z
    .end local v21    # "needStartTime":Z
    .end local v22    # "needEndTime":Z
    .end local v25    # "origWorkSource":J
    .end local v30    # "traceTag":J
    .end local v32    # "slowDeliveryThresholdMs":J
    .end local p0    # "me":Landroid/os/Looper;
    .end local p1    # "ident":J
    .end local p3    # "thresholdOverride":I
    throw v0
    :try_end_228
    .catchall {:try_start_223 .. :try_end_228} :catchall_228

    .line 259
    .end local v0    # "exception":Ljava/lang/Exception;
    .restart local v2    # "token":Ljava/lang/Object;
    .restart local v3    # "slowDispatchThresholdMs":J
    .restart local v7    # "dispatchStart":J
    .restart local v10    # "msg":Landroid/os/Message;
    .restart local v11    # "logging":Landroid/util/Printer;
    .restart local v13    # "observer":Landroid/os/Looper$Observer;
    .restart local v16    # "hasOverride":Z
    .restart local v19    # "logSlowDelivery":Z
    .restart local v20    # "logSlowDispatch":Z
    .restart local v21    # "needStartTime":Z
    .restart local v22    # "needEndTime":Z
    .restart local v25    # "origWorkSource":J
    .restart local v30    # "traceTag":J
    .restart local v32    # "slowDeliveryThresholdMs":J
    .restart local p0    # "me":Landroid/os/Looper;
    .restart local p1    # "ident":J
    .restart local p3    # "thresholdOverride":I
    :catchall_228
    move-exception v0

    :goto_229
    invoke-static/range {v25 .. v26}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 260
    cmp-long v5, v30, v23

    if-eqz v5, :cond_233

    .line 261
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 263
    :cond_233
    throw v0
.end method

.method public static whitelist myLooper()Landroid/os/Looper;
    .registers 1

    .line 430
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static whitelist myQueue()Landroid/os/MessageQueue;
    .registers 1

    .line 439
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static whitelist prepare()V
    .registers 1

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 120
    return-void
.end method

.method private static greylist-max-o prepare(Z)V
    .registers 3
    .param p0, "quitAllowed"    # Z

    .line 123
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 126
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 127
    return-void

    .line 124
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist prepareMainLooper()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 139
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 140
    :try_start_7
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-nez v1, :cond_13

    .line 143
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 141
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The main Looper has already been prepared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static blacklist setMainLooperForTest(Landroid/os/Looper;)V
    .registers 3
    .param p0, "looper"    # Landroid/os/Looper;

    .line 163
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 164
    :try_start_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static blacklist setObserver(Landroid/os/Looper$Observer;)V
    .registers 1
    .param p0, "observer"    # Landroid/os/Looper$Observer;

    .line 186
    sput-object p0, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    .line 187
    return-void
.end method

.method private static greylist-max-o showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z
    .registers 16
    .param p0, "threshold"    # J
    .param p2, "measureStart"    # J
    .param p4, "measureEnd"    # J
    .param p6, "what"    # Ljava/lang/String;
    .param p7, "msg"    # Landroid/os/Message;

    .line 407
    sub-long v0, p4, p2

    .line 408
    .local v0, "actualTime":J
    cmp-long v2, v0, p0

    const/4 v3, 0x0

    if-gez v2, :cond_8

    .line 409
    return v3

    .line 412
    :cond_8
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/Looper;->getThreadGroup()I

    move-result v4

    invoke-static {v4}, Landroid/os/Looper;->threadGroupToString(I)Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "threadGroup":Ljava/lang/String;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_20

    move v3, v7

    .line 417
    .local v3, "isMain":Z
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slow "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 418
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " main="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " group="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p7, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 420
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p7, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p7, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 417
    const-string v6, "Looper"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v7
.end method

.method private static blacklist threadGroupToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "threadGroup"    # I

    .line 383
    packed-switch p0, :pswitch_data_1e

    .line 401
    const-string v0, "UNKNOWN"

    return-object v0

    .line 399
    :pswitch_6
    const-string v0, "RESTRICTED"

    return-object v0

    .line 397
    :pswitch_9
    const-string v0, "RT_APP"

    return-object v0

    .line 395
    :pswitch_c
    const-string v0, "TOP_APP"

    return-object v0

    .line 393
    :pswitch_f
    const-string v0, "AUDIO_SYS"

    return-object v0

    .line 391
    :pswitch_12
    const-string v0, "AUDIO_APP"

    return-object v0

    .line 389
    :pswitch_15
    const-string v0, "SYSTEM"

    return-object v0

    .line 387
    :pswitch_18
    const-string v0, "FOREGROUND"

    return-object v0

    .line 385
    :pswitch_1b
    const-string v0, "BACKGROUND"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 545
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 558
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 562
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 563
    .local v0, "looperToken":J
    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 564
    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 565
    iget-object v2, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    if-eqz v2, :cond_2e

    .line 566
    iget-object v2, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/MessageQueue;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 568
    :cond_2e
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 569
    return-void
.end method

.method public whitelist getQueue()Landroid/os/MessageQueue;
    .registers 2

    .line 533
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public whitelist getThread()Ljava/lang/Thread;
    .registers 2

    .line 524
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public whitelist isCurrentThread()Z
    .registers 3

    .line 451
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist quit()V
    .registers 3

    .line 499
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 500
    return-void
.end method

.method public whitelist quitSafely()V
    .registers 3

    .line 515
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 516
    return-void
.end method

.method public whitelist setMessageLogging(Landroid/util/Printer;)V
    .registers 2
    .param p1, "printer"    # Landroid/util/Printer;

    .line 464
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 465
    return-void
.end method

.method public greylist-max-o setSlowLogThresholdMs(JJ)V
    .registers 5
    .param p1, "slowDispatchThresholdMs"    # J
    .param p3, "slowDeliveryThresholdMs"    # J

    .line 478
    iput-wide p1, p0, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 479
    iput-wide p3, p0, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 480
    return-void
.end method

.method public greylist setTraceTag(J)V
    .registers 3
    .param p1, "traceTag"    # J

    .line 470
    iput-wide p1, p0, Landroid/os/Looper;->mTraceTag:J

    .line 471
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    return-object v0
.end method

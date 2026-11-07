.class public Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;
.super Ljava/lang/Object;
.source "EarlyTraceEvent.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;,
        Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;,
        Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;,
        Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;,
        Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BACKGROUND_STARTUP_TRACING_ENABLED_KEY:Ljava/lang/String; = "bg_startup_tracing"

.field static final blacklist STATE_DISABLED:I = 0x0

.field static final blacklist STATE_ENABLED:I = 0x1

.field static final blacklist STATE_FINISHED:I = 0x2

.field private static final blacklist TRACE_CONFIG_FILENAME:Ljava/lang/String; = "/data/local/chrome-trace-config.json"

.field public static final blacklist TRACE_EARLY_JAVA_IN_CHILD_SWITCH:Ljava/lang/String; = "trace-early-java-in-child"

.field private static final blacklist TRACE_STARTUP_SWITCH:Ljava/lang/String; = "trace-startup"

.field static final blacklist sActivityLaunchCauseEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist sActivityStartupEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sAsyncEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCachedBackgroundStartupTracingFlag:Z

.field private static volatile blacklist sEnabledInChildProcessBeforeCommandLine:Z

.field static blacklist sEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist sLock:Ljava/lang/Object;

.field static volatile blacklist sState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    nop

    .line 106
    const/4 v0, 0x0

    sput v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sState:I

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sActivityStartupEvents:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sActivityLaunchCauseEvents:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist begin(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "isToplevel"    # Z

    .line 293
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 294
    :cond_7
    new-instance v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;-><init>(Ljava/lang/String;ZZ)V

    .line 295
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_10
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v2

    if-nez v2, :cond_18

    monitor-exit v1

    return-void

    .line 297
    :cond_18
    sget-object v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    monitor-exit v1

    .line 299
    return-void

    .line 298
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method static blacklist disable()V
    .registers 2

    .line 234
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    .line 237
    :cond_b
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 238
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->dumpEvents(Ljava/util/List;)V

    .line 239
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 241
    :cond_1d
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 242
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->dumpAsyncEvents(Ljava/util/List;)V

    .line 243
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 246
    :cond_2f
    const/4 v1, 0x2

    sput v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sState:I

    .line 247
    const/4 v1, 0x0

    sput-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    .line 248
    sput-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    .line 249
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public static blacklist dumpActivityStartupEvents()V
    .registers 9

    .line 401
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_3
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sActivityStartupEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 403
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sActivityStartupEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;

    .line 404
    .local v2, "e":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;->mId:J

    iget-wide v6, v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;->mTimeMs:J

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->startupActivityStart(JJ)V

    .line 405
    .end local v2    # "e":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;
    goto :goto_11

    .line 406
    :cond_29
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sActivityStartupEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 408
    :cond_2e
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sActivityLaunchCauseEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 409
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sActivityLaunchCauseEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;

    .line 410
    .local v2, "e":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;

    move-result-object v3

    iget-wide v4, v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;->mId:J

    iget-wide v6, v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;->mTimeMs:J

    iget v8, v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;->mLaunchCause:I

    invoke-interface/range {v3 .. v8}, Landroid/net/connectivity/org/chromium/base/TraceEvent$Natives;->startupLaunchCause(JJI)V

    .line 411
    .end local v2    # "e":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;
    goto :goto_3c

    .line 412
    :cond_56
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sActivityLaunchCauseEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    :cond_5b
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method private static blacklist dumpAsyncEvents(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;",
            ">;)V"
        }
    .end annotation

    .line 390
    .local p0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;

    .line 391
    .local v1, "e":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;
    iget-boolean v2, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;->mIsStart:Z

    if-eqz v2, :cond_22

    .line 392
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v3

    iget-object v4, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;->mName:Ljava/lang/String;

    iget-wide v5, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;->mId:J

    iget-wide v7, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;->mTimeNanos:J

    invoke-interface/range {v3 .. v8}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;->recordEarlyAsyncBeginEvent(Ljava/lang/String;JJ)V

    goto :goto_2d

    .line 394
    :cond_22
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v2

    iget-wide v3, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;->mId:J

    iget-wide v5, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;->mTimeNanos:J

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;->recordEarlyAsyncEndEvent(JJ)V

    .line 396
    .end local v1    # "e":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;
    :goto_2d
    goto :goto_4

    .line 397
    :cond_2e
    return-void
.end method

.method private static blacklist dumpEvents(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;",
            ">;)V"
        }
    .end annotation

    .line 364
    .local p0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;

    .line 365
    .local v1, "e":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;
    iget-boolean v2, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mIsStart:Z

    if-eqz v2, :cond_39

    .line 366
    iget-boolean v2, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mIsToplevel:Z

    if-eqz v2, :cond_28

    .line 367
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v3

    iget-object v4, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    iget-wide v5, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mTimeNanos:J

    iget v7, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    iget-wide v8, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mThreadTimeMillis:J

    .line 368
    invoke-interface/range {v3 .. v9}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;->recordEarlyToplevelBeginEvent(Ljava/lang/String;JIJ)V

    goto :goto_5d

    .line 371
    :cond_28
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v10

    iget-object v11, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    iget-wide v12, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mTimeNanos:J

    iget v14, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    iget-wide v2, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mThreadTimeMillis:J

    .line 372
    move-wide v15, v2

    invoke-interface/range {v10 .. v16}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;->recordEarlyBeginEvent(Ljava/lang/String;JIJ)V

    goto :goto_5d

    .line 376
    :cond_39
    iget-boolean v2, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mIsToplevel:Z

    if-eqz v2, :cond_4d

    .line 377
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v3

    iget-object v4, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    iget-wide v5, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mTimeNanos:J

    iget v7, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    iget-wide v8, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mThreadTimeMillis:J

    .line 378
    invoke-interface/range {v3 .. v9}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;->recordEarlyToplevelEndEvent(Ljava/lang/String;JIJ)V

    goto :goto_5d

    .line 381
    :cond_4d
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEventJni;->get()Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v10

    iget-object v11, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    iget-wide v12, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mTimeNanos:J

    iget v14, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mThreadId:I

    iget-wide v2, v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mThreadTimeMillis:J

    .line 382
    move-wide v15, v2

    invoke-interface/range {v10 .. v16}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;->recordEarlyEndEvent(Ljava/lang/String;JIJ)V

    .line 386
    .end local v1    # "e":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;
    :goto_5d
    goto :goto_4

    .line 387
    :cond_5e
    return-void
.end method

.method public static blacklist earlyEnableInChildWithoutCommandLine()V
    .registers 1

    .line 193
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEnabledInChildProcessBeforeCommandLine:Z

    .line 194
    nop

    .line 195
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enable()V

    .line 196
    return-void
.end method

.method static blacklist enable()V
    .registers 2

    .line 220
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    sget v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sState:I

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 222
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    .line 224
    const/4 v1, 0x1

    sput v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sState:I

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method static blacklist enabled()Z
    .registers 2

    .line 263
    sget v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public static blacklist end(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "isToplevel"    # Z

    .line 303
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 304
    :cond_7
    new-instance v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;-><init>(Ljava/lang/String;ZZ)V

    .line 305
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_10
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v2

    if-nez v2, :cond_18

    monitor-exit v1

    return-void

    .line 307
    :cond_18
    sget-object v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    monitor-exit v1

    .line 309
    return-void

    .line 308
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public static blacklist finishAsync(Ljava/lang/String;J)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # J

    .line 323
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 324
    :cond_7
    new-instance v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;-><init>(Ljava/lang/String;JZ)V

    .line 325
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_10
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v2

    if-nez v2, :cond_18

    monitor-exit v1

    return-void

    .line 327
    :cond_18
    sget-object v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public static blacklist getBackgroundStartupTracingFlag()Z
    .registers 1

    .line 286
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sCachedBackgroundStartupTracingFlag:Z

    return v0
.end method

.method static blacklist getMatchingCompletedEventsForTesting(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p0, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;",
            ">;"
        }
    .end annotation

    .line 352
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v1, "matchingEvents":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;>;"
    sget-object v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;

    .line 355
    .local v3, "evt":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;
    iget-object v4, v3, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;->mName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 356
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v3    # "evt":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;
    :cond_25
    goto :goto_e

    .line 359
    :cond_26
    monitor-exit v0

    return-object v1

    .line 360
    .end local v1    # "matchingEvents":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Event;>;"
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method static blacklist maybeEnableInBrowserProcess()V
    .registers 5

    .line 156
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 157
    nop

    .line 159
    sget v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sState:I

    if-eqz v0, :cond_9

    return-void

    .line 160
    :cond_9
    const/4 v0, 0x0

    .line 162
    .local v0, "shouldEnable":Z
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 164
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_e
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getInstance()Landroid/net/connectivity/org/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "trace-startup"

    invoke-virtual {v2, v3}, Landroid/net/connectivity/org/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_4d

    if-eqz v2, :cond_1c

    .line 165
    const/4 v0, 0x1

    goto :goto_2a

    .line 168
    :cond_1c
    :try_start_1c
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/chrome-trace-config.json"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_27} :catch_29
    .catchall {:try_start_1c .. :try_end_27} :catchall_4d

    move v0, v2

    .line 171
    goto :goto_2a

    .line 169
    :catch_29
    move-exception v2

    .line 173
    :goto_2a
    :try_start_2a
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "bg_startup_tracing"

    .line 174
    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 175
    if-eqz v0, :cond_3f

    .line 178
    invoke-static {v4}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->setBackgroundStartupTracingFlag(Z)V

    .line 179
    sput-boolean v4, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sCachedBackgroundStartupTracingFlag:Z

    goto :goto_43

    .line 181
    :cond_3f
    const/4 v2, 0x1

    sput-boolean v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sCachedBackgroundStartupTracingFlag:Z
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_4d

    .line 182
    const/4 v0, 0x1

    .line 186
    :cond_43
    :goto_43
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 187
    nop

    .line 188
    if-eqz v0, :cond_4c

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enable()V

    .line 189
    :cond_4c
    return-void

    .line 186
    :catchall_4d
    move-exception v2

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 187
    throw v2
.end method

.method public static blacklist onCommandLineAvailableInChildProcess()V
    .registers 3

    .line 206
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEnabledInChildProcessBeforeCommandLine:Z

    if-nez v0, :cond_5

    return-void

    .line 207
    :cond_5
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_8
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getInstance()Landroid/net/connectivity/org/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "trace-early-java-in-child"

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 211
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->reset()V

    .line 212
    monitor-exit v0

    return-void

    .line 215
    :cond_19
    sget v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sState:I

    if-nez v1, :cond_20

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enable()V

    .line 216
    :cond_20
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v1
.end method

.method static blacklist reset()V
    .registers 2

    .line 255
    sget-object v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    const/4 v1, 0x0

    :try_start_4
    sput v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sState:I

    .line 257
    const/4 v1, 0x0

    sput-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sEvents:Ljava/util/List;

    .line 258
    sput-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    .line 259
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method static blacklist setBackgroundStartupTracingFlag(Z)V
    .registers 4
    .param p0, "enabled"    # Z

    .line 270
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskWrites()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0

    .line 271
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_4
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 272
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bg_startup_tracing"

    .line 273
    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 274
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1b

    .line 275
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 276
    .end local v0    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :cond_1a
    return-void

    .line 270
    .restart local v0    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :catchall_1b
    move-exception v1

    if-eqz v0, :cond_26

    :try_start_1e
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v1
.end method

.method public static blacklist startAsync(Ljava/lang/String;J)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # J

    .line 313
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 314
    :cond_7
    new-instance v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;-><init>(Ljava/lang/String;JZ)V

    .line 315
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$AsyncEvent;
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_10
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->enabled()Z

    move-result v2

    if-nez v2, :cond_18

    monitor-exit v1

    return-void

    .line 317
    :cond_18
    sget-object v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sAsyncEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    monitor-exit v1

    .line 319
    return-void

    .line 318
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public static blacklist startupActivityStart(JJ)V
    .registers 7
    .param p0, "activityId"    # J
    .param p2, "startTimeMs"    # J

    .line 335
    new-instance v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;-><init>(JJ)V

    .line 336
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityStartupEvent;
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_8
    sget-object v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sActivityStartupEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    monitor-exit v1

    .line 339
    return-void

    .line 338
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public static blacklist startupLaunchCause(JI)V
    .registers 6
    .param p0, "activityId"    # J
    .param p2, "launchCause"    # I

    .line 345
    new-instance v0, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;-><init>(JI)V

    .line 346
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$ActivityLaunchCauseEvent;
    sget-object v1, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_8
    sget-object v2, Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;->sActivityLaunchCauseEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

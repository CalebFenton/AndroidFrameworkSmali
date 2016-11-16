.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$1;,
        Landroid/view/Choreographer$2;,
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameCallback;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x3

.field public static final CALLBACK_INPUT:I = 0x0

.field private static final CALLBACK_LAST:I = 0x3

.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final CALLBACK_TRAVERSAL:I = 0x2

.field private static final DEBUG_FRAMES:Z = false

.field private static final DEBUG_JANK:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static volatile sFrameDelay:J

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field mFrameInfo:Landroid/view/FrameInfo;

.field private mFrameIntervalNanos:J

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mLastFrameTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 1
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 94
    const-wide/16 v0, 0xa

    #@3
    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    #@5
    .line 98
    new-instance v0, Landroid/view/Choreographer$1;

    #@7
    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    #@a
    .line 97
    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    #@c
    .line 111
    const-string/jumbo v0, "debug.choreographer.vsync"

    #@f
    .line 110
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@12
    move-result v0

    #@13
    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    #@15
    .line 115
    const-string/jumbo v0, "debug.choreographer.frametime"

    #@18
    .line 114
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@1b
    move-result v0

    #@1c
    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    #@1e
    .line 120
    const-string/jumbo v0, "debug.choreographer.skipwarning"

    #@21
    const/16 v1, 0x1e

    #@23
    .line 119
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@26
    move-result v0

    #@27
    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    #@29
    .line 127
    new-instance v0, Landroid/view/Choreographer$2;

    #@2b
    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    #@2e
    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    #@30
    .line 168
    const/4 v0, 0x4

    #@31
    new-array v0, v0, [Ljava/lang/String;

    #@33
    .line 169
    const-string/jumbo v1, "input"

    #@36
    const/4 v2, 0x0

    #@37
    aput-object v1, v0, v2

    #@39
    const-string/jumbo v1, "animation"

    #@3c
    aput-object v1, v0, v3

    #@3e
    const-string/jumbo v1, "traversal"

    #@41
    const/4 v2, 0x2

    #@42
    aput-object v1, v0, v2

    #@44
    const-string/jumbo v1, "commit"

    #@47
    const/4 v2, 0x3

    #@48
    aput-object v1, v0, v2

    #@4a
    .line 168
    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    #@4c
    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 131
    new-instance v1, Ljava/lang/Object;

    #@6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    #@b
    .line 162
    new-instance v1, Landroid/view/FrameInfo;

    #@d
    invoke-direct {v1}, Landroid/view/FrameInfo;-><init>()V

    #@10
    iput-object v1, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@12
    .line 206
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    #@14
    .line 207
    new-instance v1, Landroid/view/Choreographer$FrameHandler;

    #@16
    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    #@19
    iput-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    #@1b
    .line 208
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    #@1d
    if-eqz v1, :cond_0

    #@1f
    new-instance v1, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    #@21
    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    #@24
    :goto_0
    iput-object v1, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    #@26
    .line 209
    const-wide/high16 v4, -0x8000000000000000L

    #@28
    iput-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    #@2a
    .line 211
    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    #@2d
    move-result v1

    #@2e
    const v3, 0x4e6e6b28    # 1.0E9f

    #@31
    div-float v1, v3, v1

    #@33
    float-to-long v4, v1

    #@34
    iput-wide v4, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    #@36
    .line 213
    const/4 v1, 0x4

    #@37
    new-array v1, v1, [Landroid/view/Choreographer$CallbackQueue;

    #@39
    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    #@3b
    .line 214
    const/4 v0, 0x0

    #@3c
    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    #@3d
    if-gt v0, v1, :cond_1

    #@3f
    .line 215
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    #@41
    new-instance v3, Landroid/view/Choreographer$CallbackQueue;

    #@43
    invoke-direct {v3, p0, v2}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackQueue;)V

    #@46
    aput-object v3, v1, v0

    #@48
    .line 214
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_1

    #@4b
    .end local v0    # "i":I
    :cond_0
    move-object v1, v2

    #@4c
    .line 208
    goto :goto_0

    #@4d
    .line 205
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;)V

    #@3
    return-void
.end method

.method private dispose()V
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    #@2
    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    #@5
    .line 245
    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    #@0
    .prologue
    .line 265
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    #@2
    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .locals 1

    #@0
    .prologue
    .line 233
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/Choreographer;

    #@8
    return-object v0
.end method

.method private static getRefreshRate()F
    .locals 3

    #@0
    .prologue
    .line 220
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    #@3
    move-result-object v1

    #@4
    .line 221
    const/4 v2, 0x0

    #@5
    .line 220
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    #@8
    move-result-object v0

    #@9
    .line 222
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    #@10
    move-result v1

    #@11
    return v1
.end method

.method private isRunningOnLooperThreadLocked()Z
    .locals 2

    #@0
    .prologue
    .line 725
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 729
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    #@3
    .line 730
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    if-nez v0, :cond_0

    #@5
    .line 731
    new-instance v0, Landroid/view/Choreographer$CallbackRecord;

    #@7
    .end local v0    # "callback":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v0, v2}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$CallbackRecord;)V

    #@a
    .line 736
    .restart local v0    # "callback":Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    #@c
    .line 737
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    #@e
    .line 738
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    #@10
    .line 739
    return-object v0

    #@11
    .line 733
    :cond_0
    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@13
    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    #@15
    .line 734
    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@17
    goto :goto_0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 8
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    #@0
    .prologue
    .line 382
    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 383
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v4

    #@7
    .line 384
    .local v4, "now":J
    add-long v0, v4, p4

    #@9
    .line 385
    .local v0, "dueTime":J
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    #@b
    aget-object v3, v3, p1

    #@d
    invoke-virtual {v3, v0, v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    #@10
    .line 387
    cmp-long v3, v0, v4

    #@12
    if-gtz v3, :cond_0

    #@14
    .line 388
    invoke-direct {p0, v4, v5}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :goto_0
    monitor-exit v6

    #@18
    .line 375
    return-void

    #@19
    .line 390
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    #@1b
    const/4 v7, 0x2

    #@1c
    invoke-virtual {v3, v7, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v2

    #@20
    .line 391
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    #@22
    .line 392
    const/4 v3, 0x1

    #@23
    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@26
    .line 393
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    #@28
    invoke-virtual {v3, v2, v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 382
    .end local v0    # "dueTime":J
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "now":J
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit v6

    #@2e
    throw v3
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 743
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    #@3
    .line 744
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    #@5
    .line 745
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    #@7
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@9
    .line 746
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    #@b
    .line 742
    return-void
.end method

.method public static releaseInstance()V
    .locals 2

    #@0
    .prologue
    .line 240
    sget-object v1, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/Choreographer;

    #@8
    .line 241
    .local v0, "old":Landroid/view/Choreographer;
    sget-object v1, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    #@a
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    #@d
    .line 242
    invoke-direct {v0}, Landroid/view/Choreographer;->dispose()V

    #@10
    .line 239
    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 425
    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 426
    :try_start_0
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    #@5
    aget-object v0, v0, p1

    #@7
    invoke-virtual {v0, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    #@a
    .line 427
    if-eqz p2, :cond_0

    #@c
    if-nez p3, :cond_0

    #@e
    .line 428
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    #@10
    const/4 v2, 0x2

    #@11
    invoke-virtual {v0, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 419
    return-void

    #@16
    .line 425
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private scheduleFrameLocked(J)V
    .locals 9
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 533
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 534
    iput-boolean v8, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    #@7
    .line 535
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    #@9
    if-eqz v1, :cond_2

    #@b
    .line 543
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 544
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    #@14
    .line 532
    :cond_0
    :goto_0
    return-void

    #@15
    .line 546
    :cond_1
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    #@17
    invoke-virtual {v1, v8}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    #@1a
    move-result-object v0

    #@1b
    .line 547
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    #@1e
    .line 548
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    #@20
    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@23
    goto :goto_0

    #@24
    .line 552
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    #@26
    const-wide/32 v6, 0xf4240

    #@29
    div-long/2addr v4, v6

    #@2a
    sget-wide v6, Landroid/view/Choreographer;->sFrameDelay:J

    #@2c
    add-long/2addr v4, v6

    #@2d
    .line 551
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    #@30
    move-result-wide v2

    #@31
    .line 556
    .local v2, "nextFrameTime":J
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    #@33
    const/4 v4, 0x0

    #@34
    invoke-virtual {v1, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    #@37
    move-result-object v0

    #@38
    .line 557
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    #@3b
    .line 558
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    #@3d
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@40
    goto :goto_0
.end method

.method private scheduleVsyncLocked()V
    .locals 1

    #@0
    .prologue
    .line 721
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    #@2
    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    #@5
    .line 720
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    #@0
    .prologue
    .line 284
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    #@2
    .line 283
    return-void
.end method

.method public static subtractFrameDelay(J)J
    .locals 4
    .param p0, "delayMillis"    # J

    #@0
    .prologue
    .line 310
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    #@2
    .line 311
    .local v0, "frameDelay":J
    cmp-long v2, p0, v0

    #@4
    if-gtz v2, :cond_0

    #@6
    const-wide/16 v2, 0x0

    #@8
    :goto_0
    return-wide v2

    #@9
    :cond_0
    sub-long v2, p0, v0

    #@b
    goto :goto_0
.end method


# virtual methods
.method doCallbacks(IJ)V
    .locals 20
    .param p1, "callbackType"    # I
    .param p2, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 639
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v14

    #@5
    .line 643
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@8
    move-result-wide v12

    #@9
    .line 644
    .local v12, "now":J
    move-object/from16 v0, p0

    #@b
    iget-object v11, v0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    #@d
    aget-object v11, v11, p1

    #@f
    .line 645
    const-wide/32 v16, 0xf4240

    #@12
    div-long v16, v12, v16

    #@14
    .line 644
    move-wide/from16 v0, v16

    #@16
    invoke-virtual {v11, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v5

    #@1a
    .line 646
    .local v5, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-nez v5, :cond_0

    #@1c
    monitor-exit v14

    #@1d
    .line 647
    return-void

    #@1e
    .line 649
    :cond_0
    const/4 v11, 0x1

    #@1f
    :try_start_1
    move-object/from16 v0, p0

    #@21
    iput-boolean v11, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    #@23
    .line 659
    const/4 v11, 0x3

    #@24
    move/from16 v0, p1

    #@26
    if-ne v0, v11, :cond_1

    #@28
    .line 660
    sub-long v6, v12, p2

    #@2a
    .line 661
    .local v6, "jitterNanos":J
    const-string/jumbo v11, "jitterNanos"

    #@2d
    long-to-int v15, v6

    #@2e
    const-wide/16 v16, 0x8

    #@30
    move-wide/from16 v0, v16

    #@32
    invoke-static {v0, v1, v11, v15}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    #@35
    .line 662
    move-object/from16 v0, p0

    #@37
    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    #@39
    move-wide/from16 v16, v0

    #@3b
    const-wide/16 v18, 0x2

    #@3d
    mul-long v16, v16, v18

    #@3f
    cmp-long v11, v6, v16

    #@41
    if-ltz v11, :cond_1

    #@43
    .line 663
    move-object/from16 v0, p0

    #@45
    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    #@47
    move-wide/from16 v16, v0

    #@49
    rem-long v16, v6, v16

    #@4b
    .line 664
    move-object/from16 v0, p0

    #@4d
    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    #@4f
    move-wide/from16 v18, v0

    #@51
    .line 663
    add-long v8, v16, v18

    #@53
    .line 673
    .local v8, "lastFrameOffset":J
    sub-long p2, v12, v8

    #@55
    .line 674
    move-wide/from16 v0, p2

    #@57
    move-object/from16 v2, p0

    #@59
    iput-wide v0, v2, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    .end local v6    # "jitterNanos":J
    .end local v8    # "lastFrameOffset":J
    :cond_1
    monitor-exit v14

    #@5c
    .line 679
    :try_start_2
    sget-object v11, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    #@5e
    aget-object v11, v11, p1

    #@60
    const-wide/16 v14, 0x8

    #@62
    invoke-static {v14, v15, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@65
    .line 680
    move-object v4, v5

    #@66
    .local v4, "c":Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    if-eqz v4, :cond_2

    #@68
    .line 686
    move-wide/from16 v0, p2

    #@6a
    invoke-virtual {v4, v0, v1}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    #@6d
    .line 680
    iget-object v4, v4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@6f
    goto :goto_0

    #@70
    .line 639
    .end local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    .end local v5    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .end local v12    # "now":J
    :catchall_0
    move-exception v11

    #@71
    monitor-exit v14

    #@72
    throw v11

    #@73
    .line 689
    .restart local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    .restart local v5    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .restart local v12    # "now":J
    :cond_2
    move-object/from16 v0, p0

    #@75
    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    #@77
    monitor-enter v14

    #@78
    .line 690
    const/4 v11, 0x0

    #@79
    :try_start_3
    move-object/from16 v0, p0

    #@7b
    iput-boolean v11, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    #@7d
    .line 692
    :cond_3
    iget-object v10, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@7f
    .line 693
    .local v10, "next":Landroid/view/Choreographer$CallbackRecord;
    move-object/from16 v0, p0

    #@81
    invoke-direct {v0, v5}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@84
    .line 694
    move-object v5, v10

    #@85
    .line 695
    if-nez v10, :cond_3

    #@87
    monitor-exit v14

    #@88
    .line 697
    const-wide/16 v14, 0x8

    #@8a
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    #@8d
    .line 637
    return-void

    #@8e
    .line 689
    .end local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    :catchall_1
    move-exception v11

    #@8f
    monitor-exit v14

    #@90
    throw v11

    #@91
    .line 688
    .end local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    :catchall_2
    move-exception v11

    #@92
    .line 689
    move-object/from16 v0, p0

    #@94
    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    #@96
    monitor-enter v14

    #@97
    .line 690
    const/4 v15, 0x0

    #@98
    :try_start_4
    move-object/from16 v0, p0

    #@9a
    iput-boolean v15, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    #@9c
    .line 692
    :cond_4
    iget-object v10, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    #@9e
    .line 693
    .restart local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    move-object/from16 v0, p0

    #@a0
    invoke-direct {v0, v5}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@a3
    .line 694
    move-object v5, v10

    #@a4
    .line 695
    if-nez v10, :cond_4

    #@a6
    monitor-exit v14

    #@a7
    .line 697
    const-wide/16 v14, 0x8

    #@a9
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    #@ac
    .line 688
    throw v11

    #@ad
    .line 689
    .end local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    :catchall_3
    move-exception v11

    #@ae
    monitor-exit v14

    #@af
    throw v11
.end method

.method doFrame(JI)V
    .locals 19
    .param p1, "frameTimeNanos"    # J
    .param p3, "frame"    # I

    #@0
    .prologue
    .line 565
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v15

    #@5
    .line 566
    :try_start_0
    move-object/from16 v0, p0

    #@7
    iget-boolean v14, v0, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-nez v14, :cond_0

    #@b
    monitor-exit v15

    #@c
    .line 567
    return-void

    #@d
    .line 576
    :cond_0
    move-wide/from16 v4, p1

    #@f
    .line 577
    .local v4, "intendedFrameTimeNanos":J
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@12
    move-result-wide v12

    #@13
    .line 578
    .local v12, "startNanos":J
    sub-long v6, v12, p1

    #@15
    .line 579
    .local v6, "jitterNanos":J
    move-object/from16 v0, p0

    #@17
    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    #@19
    move-wide/from16 v16, v0

    #@1b
    cmp-long v14, v6, v16

    #@1d
    if-ltz v14, :cond_2

    #@1f
    .line 580
    move-object/from16 v0, p0

    #@21
    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    #@23
    move-wide/from16 v16, v0

    #@25
    div-long v10, v6, v16

    #@27
    .line 581
    .local v10, "skippedFrames":J
    sget v14, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    #@29
    int-to-long v0, v14

    #@2a
    move-wide/from16 v16, v0

    #@2c
    cmp-long v14, v10, v16

    #@2e
    if-ltz v14, :cond_1

    #@30
    .line 582
    const-string/jumbo v14, "Choreographer"

    #@33
    new-instance v16, Ljava/lang/StringBuilder;

    #@35
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v17, "Skipped "

    #@3b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v16

    #@3f
    move-object/from16 v0, v16

    #@41
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@44
    move-result-object v16

    #@45
    const-string/jumbo v17, " frames!  "

    #@48
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v16

    #@4c
    .line 583
    const-string/jumbo v17, "The application may be doing too much work on its main thread."

    #@4f
    .line 582
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v16

    #@53
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v16

    #@57
    move-object/from16 v0, v16

    #@59
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 585
    :cond_1
    move-object/from16 v0, p0

    #@5e
    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    #@60
    move-wide/from16 v16, v0

    #@62
    rem-long v8, v6, v16

    #@64
    .line 593
    .local v8, "lastFrameOffset":J
    sub-long p1, v12, v8

    #@66
    .line 596
    .end local v8    # "lastFrameOffset":J
    .end local v10    # "skippedFrames":J
    :cond_2
    move-object/from16 v0, p0

    #@68
    iget-wide v0, v0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    #@6a
    move-wide/from16 v16, v0

    #@6c
    cmp-long v14, p1, v16

    #@6e
    if-gez v14, :cond_3

    #@70
    .line 601
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    monitor-exit v15

    #@74
    .line 602
    return-void

    #@75
    .line 605
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    #@77
    iget-object v14, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@79
    move-wide/from16 v0, p1

    #@7b
    invoke-virtual {v14, v4, v5, v0, v1}, Landroid/view/FrameInfo;->setVsync(JJ)V

    #@7e
    .line 606
    const/4 v14, 0x0

    #@7f
    move-object/from16 v0, p0

    #@81
    iput-boolean v14, v0, Landroid/view/Choreographer;->mFrameScheduled:Z

    #@83
    .line 607
    move-wide/from16 v0, p1

    #@85
    move-object/from16 v2, p0

    #@87
    iput-wide v0, v2, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@89
    monitor-exit v15

    #@8a
    .line 611
    :try_start_3
    const-string/jumbo v14, "Choreographer#doFrame"

    #@8d
    const-wide/16 v16, 0x8

    #@8f
    move-wide/from16 v0, v16

    #@91
    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@94
    .line 612
    const-wide/32 v14, 0xf4240

    #@97
    div-long v14, p1, v14

    #@99
    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    #@9c
    .line 614
    move-object/from16 v0, p0

    #@9e
    iget-object v14, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@a0
    invoke-virtual {v14}, Landroid/view/FrameInfo;->markInputHandlingStart()V

    #@a3
    .line 615
    const/4 v14, 0x0

    #@a4
    move-object/from16 v0, p0

    #@a6
    move-wide/from16 v1, p1

    #@a8
    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    #@ab
    .line 617
    move-object/from16 v0, p0

    #@ad
    iget-object v14, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@af
    invoke-virtual {v14}, Landroid/view/FrameInfo;->markAnimationsStart()V

    #@b2
    .line 618
    const/4 v14, 0x1

    #@b3
    move-object/from16 v0, p0

    #@b5
    move-wide/from16 v1, p1

    #@b7
    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    #@ba
    .line 620
    move-object/from16 v0, p0

    #@bc
    iget-object v14, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    #@be
    invoke-virtual {v14}, Landroid/view/FrameInfo;->markPerformTraversalsStart()V

    #@c1
    .line 621
    const/4 v14, 0x2

    #@c2
    move-object/from16 v0, p0

    #@c4
    move-wide/from16 v1, p1

    #@c6
    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    #@c9
    .line 623
    const/4 v14, 0x3

    #@ca
    move-object/from16 v0, p0

    #@cc
    move-wide/from16 v1, p1

    #@ce
    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@d1
    .line 625
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    #@d4
    .line 626
    const-wide/16 v14, 0x8

    #@d6
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    #@d9
    .line 563
    return-void

    #@da
    .line 565
    .end local v4    # "intendedFrameTimeNanos":J
    .end local v6    # "jitterNanos":J
    .end local v12    # "startNanos":J
    :catchall_0
    move-exception v14

    #@db
    monitor-exit v15

    #@dc
    throw v14

    #@dd
    .line 624
    .restart local v4    # "intendedFrameTimeNanos":J
    .restart local v6    # "jitterNanos":J
    .restart local v12    # "startNanos":J
    :catchall_1
    move-exception v14

    #@de
    .line 625
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    #@e1
    .line 626
    const-wide/16 v16, 0x8

    #@e3
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    #@e6
    .line 624
    throw v14
.end method

.method doScheduleCallback(I)V
    .locals 4
    .param p1, "callbackType"    # I

    #@0
    .prologue
    .line 710
    iget-object v3, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 711
    :try_start_0
    iget-boolean v2, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 712
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v0

    #@b
    .line 713
    .local v0, "now":J
    iget-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    #@d
    aget-object v2, v2, p1

    #@f
    invoke-virtual {v2, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 714
    invoke-direct {p0, v0, v1}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .end local v0    # "now":J
    :cond_0
    monitor-exit v3

    #@19
    .line 709
    return-void

    #@1a
    .line 710
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit v3

    #@1c
    throw v2
.end method

.method doScheduleVsync()V
    .locals 2

    #@0
    .prologue
    .line 702
    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 703
    :try_start_0
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 704
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit v1

    #@b
    .line 701
    return-void

    #@c
    .line 702
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, "  "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 324
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    const-string/jumbo v1, "Choreographer:"

    #@1a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 325
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    const-string/jumbo v1, "mFrameScheduled="

    #@23
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 326
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    #@28
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@2b
    .line 327
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    const-string/jumbo v1, "mLastFrameTime="

    #@31
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    .line 328
    iget-wide v2, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    #@36
    const-wide/32 v4, 0xf4240

    #@39
    div-long/2addr v2, v4

    #@3a
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@41
    .line 322
    return-void
.end method

.method public getFrameIntervalNanos()J
    .locals 2

    #@0
    .prologue
    .line 319
    iget-wide v0, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    #@2
    return-wide v0
.end method

.method public getFrameTime()J
    .locals 4

    #@0
    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    #@3
    move-result-wide v0

    #@4
    const-wide/32 v2, 0xf4240

    #@7
    div-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .locals 3

    #@0
    .prologue
    .line 523
    iget-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 524
    :try_start_0
    iget-boolean v0, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "This method must only be called as part of a callback while a frame is in progress."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 523
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v2

    #@12
    throw v0

    #@13
    .line 528
    :cond_0
    :try_start_1
    sget-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    :goto_0
    monitor-exit v2

    #@1a
    return-wide v0

    #@1b
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    move-result-wide v0

    #@1f
    goto :goto_0
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 345
    const-wide/16 v4, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    #@9
    .line 344
    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    #@0
    .prologue
    .line 364
    if-nez p2, :cond_0

    #@2
    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "action must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 367
    :cond_0
    if-ltz p1, :cond_1

    #@d
    const/4 v0, 0x3

    #@e
    if-le p1, v0, :cond_2

    #@10
    .line 368
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "callbackType is invalid"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 371
    :cond_2
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    #@1c
    .line 363
    return-void
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    #@0
    .prologue
    .line 445
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    #@5
    .line 444
    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;
    .param p2, "delayMillis"    # J

    #@0
    .prologue
    .line 461
    if-nez p1, :cond_0

    #@2
    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "callback must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 466
    :cond_0
    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    #@d
    .line 465
    const/4 v1, 0x1

    #@e
    move-object v0, p0

    #@f
    move-object v2, p1

    #@10
    move-wide v4, p2

    #@11
    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    #@14
    .line 460
    return-void
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 412
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "callbackType is invalid"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 416
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    #@11
    .line 411
    return-void
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    #@0
    .prologue
    .line 478
    if-nez p1, :cond_0

    #@2
    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "callback must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 482
    :cond_0
    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-direct {p0, v1, p1, v0}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    #@11
    .line 477
    return-void
.end method

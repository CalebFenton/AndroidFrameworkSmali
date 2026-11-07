.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayEventReceiver$VsyncEventData;,
        Landroid/view/DisplayEventReceiver$FrameRateOverride;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_REGISTRATION_FRAME_RATE_OVERRIDE_FLAG:I = 0x2

.field public static final blacklist EVENT_REGISTRATION_MODE_CHANGED_FLAG:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayEventReceiver"

.field public static final greylist-max-o VSYNC_SOURCE_APP:I = 0x0

.field public static final greylist-max-o VSYNC_SOURCE_SURFACE_FLINGER:I = 0x1

.field private static final blacklist sNativeAllocationRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mFreeNativeResources:Ljava/lang/Runnable;

.field private greylist-max-o mMessageQueue:Landroid/os/MessageQueue;

.field private greylist mReceiverPtr:J

.field private final blacklist mVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 96
    nop

    .line 98
    const-class v0, Landroid/view/DisplayEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 99
    invoke-static {}, Landroid/view/DisplayEventReceiver;->nativeGetDisplayEventReceiverFinalizer()J

    move-result-wide v1

    .line 97
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/DisplayEventReceiver;->sNativeAllocationRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 96
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Looper;)V
    .registers 8
    .param p1, "looper"    # Landroid/os/Looper;

    .line 109
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "looper":Landroid/os/Looper;
    .local v1, "looper":Landroid/os/Looper;
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;IIJ)V

    .line 110
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;II)V
    .registers 10
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I
    .param p3, "eventRegistration"    # I

    .line 113
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "looper":Landroid/os/Looper;
    .end local p2    # "vsyncSource":I
    .end local p3    # "eventRegistration":I
    .local v1, "looper":Landroid/os/Looper;
    .local v2, "vsyncSource":I
    .local v3, "eventRegistration":I
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;IIJ)V

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;IIJ)V
    .registers 14
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I
    .param p3, "eventRegistration"    # I
    .param p4, "layerHandle"    # J

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 127
    if-eqz p1, :cond_34

    .line 131
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 132
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .end local p2    # "vsyncSource":I
    .end local p3    # "eventRegistration":I
    .end local p4    # "layerHandle":J
    .local v4, "vsyncSource":I
    .local v5, "eventRegistration":I
    .local v6, "layerHandle":J
    invoke-static/range {v1 .. v7}, Landroid/view/DisplayEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;IIJ)J

    move-result-wide p2

    iput-wide p2, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    .line 136
    sget-object p2, Landroid/view/DisplayEventReceiver;->sNativeAllocationRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide p3, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-virtual {p2, p0, p3, p4}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object p2

    iput-object p2, p0, Landroid/view/DisplayEventReceiver;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 138
    return-void

    .line 128
    .end local v4    # "vsyncSource":I
    .end local v5    # "eventRegistration":I
    .end local v6    # "layerHandle":J
    .restart local p2    # "vsyncSource":I
    .restart local p3    # "eventRegistration":I
    .restart local p4    # "layerHandle":J
    :cond_34
    move v4, p2

    move v5, p3

    .end local p2    # "vsyncSource":I
    .end local p3    # "eventRegistration":I
    .restart local v4    # "vsyncSource":I
    .restart local v5    # "eventRegistration":I
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "looper must not be null"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private blacklist dispatchFrameRateOverrides(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .registers 6
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "overrides"    # [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 406
    invoke-virtual/range {p0 .. p5}, Landroid/view/DisplayEventReceiver;->onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V

    .line 407
    return-void
.end method

.method private blacklist dispatchHdcpLevelsChanged(JII)V
    .registers 5
    .param p1, "physicalDisplayId"    # J
    .param p3, "connectedLevel"    # I
    .param p4, "maxLevel"    # I

    .line 413
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onHdcpLevelsChanged(JII)V

    .line 414
    return-void
.end method

.method private greylist-max-r dispatchHotplug(JJZ)V
    .registers 6
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "connected"    # Z

    .line 381
    invoke-virtual/range {p0 .. p5}, Landroid/view/DisplayEventReceiver;->onHotplug(JJZ)V

    .line 382
    return-void
.end method

.method private blacklist dispatchHotplugConnectionError(JI)V
    .registers 4
    .param p1, "timestampNanos"    # J
    .param p3, "connectionError"    # I

    .line 386
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/DisplayEventReceiver;->onHotplugConnectionError(JI)V

    .line 387
    return-void
.end method

.method private blacklist dispatchModeChanged(JJIJ)V
    .registers 8
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "modeId"    # I
    .param p6, "renderPeriod"    # J

    .line 393
    invoke-virtual/range {p0 .. p7}, Landroid/view/DisplayEventReceiver;->onModeChanged(JJIJ)V

    .line 394
    return-void
.end method

.method private blacklist dispatchModeRejected(JI)V
    .registers 4
    .param p1, "physicalDisplayId"    # J
    .param p3, "modeId"    # I

    .line 399
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/DisplayEventReceiver;->onModeRejected(JI)V

    .line 400
    return-void
.end method

.method private blacklist dispatchVsync(JJI)V
    .registers 13
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "frame"    # I

    .line 374
    iget-object v6, p0, Landroid/view/DisplayEventReceiver;->mVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .end local p1    # "timestampNanos":J
    .end local p3    # "physicalDisplayId":J
    .end local p5    # "frame":I
    .local v1, "timestampNanos":J
    .local v3, "physicalDisplayId":J
    .local v5, "frame":I
    invoke-virtual/range {v0 .. v6}, Landroid/view/DisplayEventReceiver;->onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 375
    return-void
.end method

.method private static native blacklist nativeGetDisplayEventReceiverFinalizer()J
.end method

.method private static native blacklist nativeGetLatestVsyncEventData(J)Landroid/view/DisplayEventReceiver$VsyncEventData;
.end method

.method private static native blacklist nativeInit(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;IIJ)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/DisplayEventReceiver;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/DisplayEventReceiver$VsyncEventData;",
            ">;",
            "Landroid/os/MessageQueue;",
            "IIJ)J"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeScheduleVsync(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 5

    .line 144
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 145
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 146
    iput-wide v2, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    .line 148
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 149
    return-void
.end method

.method blacklist getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;
    .registers 3

    .line 368
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeGetLatestVsyncEventData(J)Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .registers 6
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "overrides"    # [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 348
    return-void
.end method

.method public blacklist onHdcpLevelsChanged(JII)V
    .registers 5
    .param p1, "physicalDisplayId"    # J
    .param p3, "connectedLevel"    # I
    .param p4, "maxLevel"    # I

    .line 313
    return-void
.end method

.method public greylist onHotplug(JJZ)V
    .registers 6
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "connected"    # Z

    .line 271
    return-void
.end method

.method public blacklist onHotplugConnectionError(JI)V
    .registers 4
    .param p1, "timestampNanos"    # J
    .param p3, "connectionError"    # I

    .line 281
    return-void
.end method

.method public blacklist onModeChanged(JJIJ)V
    .registers 8
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "modeId"    # I
    .param p6, "renderPeriod"    # J

    .line 294
    return-void
.end method

.method public blacklist onModeRejected(JI)V
    .registers 4
    .param p1, "physicalDisplayId"    # J
    .param p3, "modeId"    # I

    .line 303
    return-void
.end method

.method public blacklist onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 7
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "frame"    # I
    .param p6, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 259
    return-void
.end method

.method public greylist scheduleVsync()V
    .registers 5

    .line 356
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 357
    const-string v0, "DisplayEventReceiver"

    const-string v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 360
    :cond_10
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeScheduleVsync(J)V

    .line 362
    :goto_15
    return-void
.end method

.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$VelocityTrackerStrategy;,
        Landroid/view/VelocityTracker$VelocityTrackableMotionEventAxis;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTIVE_POINTER_ID:I = -0x1

.field private static final blacklist STRATEGIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_DEFAULT:I = -0x1

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_IMPULSE:I = 0x0

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_INT1:I = 0x7

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_INT2:I = 0x8

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_LEGACY:I = 0x9

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_LSQ1:I = 0x1

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_LSQ2:I = 0x2

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_LSQ3:I = 0x3

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_WLSQ2_CENTRAL:I = 0x5

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_WLSQ2_DELTA:I = 0x4

.field public static final blacklist VELOCITY_TRACKER_STRATEGY_WLSQ2_RECENT:I = 0x6

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mPtr:J

.field private final blacklist mStrategy:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 42
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 177
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    .line 210
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "impulse"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lsq1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    const-string v2, "lsq2"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lsq3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "wlsq2-delta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "wlsq2-central"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "wlsq2-recent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "int1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "int2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "legacy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 4
    .param p1, "strategy"    # I

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, -0x1

    if-ne p1, v0, :cond_21

    .line 304
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "strategyProperty":Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1e

    .line 310
    :cond_17
    invoke-static {v0}, Landroid/view/VelocityTracker;->toStrategyId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/view/VelocityTracker;->mStrategy:I

    goto :goto_20

    .line 308
    :cond_1e
    :goto_1e
    iput p1, p0, Landroid/view/VelocityTracker;->mStrategy:I

    .line 312
    .end local v0    # "strategyProperty":Ljava/lang/String;
    :goto_20
    goto :goto_23

    .line 314
    :cond_21
    iput p1, p0, Landroid/view/VelocityTracker;->mStrategy:I

    .line 316
    :goto_23
    iget v0, p0, Landroid/view/VelocityTracker;->mStrategy:I

    invoke-static {v0}, Landroid/view/VelocityTracker;->nativeInitialize(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    .line 317
    return-void
.end method

.method private static native greylist-max-o nativeAddMovement(JLandroid/view/MotionEvent;)V
.end method

.method private static native greylist-max-o nativeClear(J)V
.end method

.method private static native greylist-max-o nativeComputeCurrentVelocity(JIF)V
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native blacklist nativeGetVelocity(JII)F
.end method

.method private static native blacklist nativeInitialize(I)J
.end method

.method private static native blacklist nativeIsAxisSupported(I)Z
.end method

.method public static whitelist obtain()Landroid/view/VelocityTracker;
    .registers 3

    .line 241
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    .line 242
    .local v0, "instance":Landroid/view/VelocityTracker;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_12

    .line 243
    :cond_c
    new-instance v1, Landroid/view/VelocityTracker;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/view/VelocityTracker;-><init>(I)V

    .line 242
    :goto_12
    return-object v1
.end method

.method public static blacklist obtain(I)Landroid/view/VelocityTracker;
    .registers 2
    .param p0, "strategy"    # I

    .line 274
    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    .line 275
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0

    .line 277
    :cond_8
    new-instance v0, Landroid/view/VelocityTracker;

    invoke-direct {v0, p0}, Landroid/view/VelocityTracker;-><init>(I)V

    return-object v0
.end method

.method public static greylist obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;
    .registers 3
    .param p0, "strategy"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    if-nez p0, :cond_7

    .line 260
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0

    .line 262
    :cond_7
    new-instance v0, Landroid/view/VelocityTracker;

    invoke-static {p0}, Landroid/view/VelocityTracker;->toStrategyId(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/VelocityTracker;-><init>(I)V

    return-object v0
.end method

.method private static blacklist toStrategyId(Ljava/lang/String;)I
    .registers 2
    .param p0, "strStrategy"    # Ljava/lang/String;

    .line 226
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 227
    sget-object v0, Landroid/view/VelocityTracker;->STRATEGIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 229
    :cond_15
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public whitelist addMovement(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 366
    if-eqz p1, :cond_8

    .line 369
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeAddMovement(JLandroid/view/MotionEvent;)V

    .line 370
    return-void

    .line 367
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clear()V
    .registers 3

    .line 353
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeClear(J)V

    .line 354
    return-void
.end method

.method public whitelist computeCurrentVelocity(I)V
    .registers 5
    .param p1, "units"    # I

    .line 379
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v1, p1, v2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    .line 380
    return-void
.end method

.method public whitelist computeCurrentVelocity(IF)V
    .registers 5
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .line 398
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    .line 399
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 322
    :try_start_0
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 323
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeDispose(J)V

    .line 324
    iput-wide v2, p0, Landroid/view/VelocityTracker;->mPtr:J
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_14

    .line 327
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 328
    nop

    .line 329
    return-void

    .line 327
    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 328
    throw v0
.end method

.method public whitelist getAxisVelocity(I)F
    .registers 5
    .param p1, "axis"    # I

    .line 482
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Landroid/view/VelocityTracker;->nativeGetVelocity(JII)F

    move-result v0

    return v0
.end method

.method public whitelist getAxisVelocity(II)F
    .registers 5
    .param p1, "axis"    # I
    .param p2, "id"    # I

    .line 467
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeGetVelocity(JII)F

    move-result v0

    return v0
.end method

.method public blacklist getStrategyId()I
    .registers 2

    .line 298
    iget v0, p0, Landroid/view/VelocityTracker;->mStrategy:I

    return v0
.end method

.method public whitelist getXVelocity()F
    .registers 2

    .line 408
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public whitelist getXVelocity(I)F
    .registers 5
    .param p1, "id"    # I

    .line 429
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/VelocityTracker;->nativeGetVelocity(JII)F

    move-result v0

    return v0
.end method

.method public whitelist getYVelocity()F
    .registers 2

    .line 418
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method public whitelist getYVelocity(I)F
    .registers 5
    .param p1, "id"    # I

    .line 440
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/view/VelocityTracker;->nativeGetVelocity(JII)F

    move-result v0

    return v0
.end method

.method public whitelist isAxisSupported(I)Z
    .registers 3
    .param p1, "axis"    # I

    .line 346
    invoke-static {p1}, Landroid/view/VelocityTracker;->nativeIsAxisSupported(I)Z

    move-result v0

    return v0
.end method

.method public whitelist recycle()V
    .registers 3

    .line 285
    iget v0, p0, Landroid/view/VelocityTracker;->mStrategy:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 286
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 287
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 289
    :cond_d
    return-void
.end method

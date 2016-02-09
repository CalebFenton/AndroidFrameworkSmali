.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Estimator;
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER_ID:I = -0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPtr:J

.field private final mStrategy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 33
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@6
    .line 32
    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@8
    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "strategy"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    invoke-static {p1}, Landroid/view/VelocityTracker;->nativeInitialize(Ljava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@9
    .line 91
    iput-object p1, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    #@b
    .line 89
    return-void
.end method

.method private static native nativeAddMovement(JLandroid/view/MotionEvent;)V
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeComputeCurrentVelocity(JIF)V
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeGetEstimator(JILandroid/view/VelocityTracker$Estimator;)Z
.end method

.method private static native nativeGetXVelocity(JI)F
.end method

.method private static native nativeGetYVelocity(JI)F
.end method

.method private static native nativeInitialize(Ljava/lang/String;)J
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 58
    sget-object v1, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@3
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/VelocityTracker;

    #@9
    .line 59
    .local v0, "instance":Landroid/view/VelocityTracker;
    if-eqz v0, :cond_0

    #@b
    .end local v0    # "instance":Landroid/view/VelocityTracker;
    :goto_0
    return-object v0

    #@c
    .restart local v0    # "instance":Landroid/view/VelocityTracker;
    :cond_0
    new-instance v0, Landroid/view/VelocityTracker;

    #@e
    .end local v0    # "instance":Landroid/view/VelocityTracker;
    invoke-direct {v0, v2}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    #@11
    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "strategy"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    if-nez p0, :cond_0

    #@2
    .line 73
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 75
    :cond_0
    new-instance v0, Landroid/view/VelocityTracker;

    #@9
    invoke-direct {v0, p0}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    #@c
    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 123
    if-nez p1, :cond_0

    #@2
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "event must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 126
    :cond_0
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@d
    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeAddMovement(JLandroid/view/MotionEvent;)V

    #@10
    .line 122
    return-void
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 110
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@2
    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeClear(J)V

    #@5
    .line 109
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 3
    .param p1, "units"    # I

    #@0
    .prologue
    .line 136
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@2
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    #@5
    invoke-static {v0, v1, p1, v2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    #@8
    .line 135
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 2
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    #@0
    .prologue
    .line 153
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(JIF)V

    #@5
    .line 152
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 97
    :try_start_0
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 98
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@a
    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeDispose(J)V

    #@d
    .line 99
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 102
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 95
    return-void

    #@15
    .line 101
    :catchall_0
    move-exception v0

    #@16
    .line 102
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@19
    .line 101
    throw v0
.end method

.method public getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "outEstimator"    # Landroid/view/VelocityTracker$Estimator;

    #@0
    .prologue
    .line 213
    if-nez p2, :cond_0

    #@2
    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "outEstimator must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 216
    :cond_0
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@d
    invoke-static {v0, v1, p1, p2}, Landroid/view/VelocityTracker;->nativeGetEstimator(JILandroid/view/VelocityTracker$Estimator;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public getXVelocity()F
    .locals 3

    #@0
    .prologue
    .line 163
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@2
    const/4 v2, -0x1

    #@3
    invoke-static {v0, v1, v2}, Landroid/view/VelocityTracker;->nativeGetXVelocity(JI)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getXVelocity(I)F
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 184
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(JI)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getYVelocity()F
    .locals 3

    #@0
    .prologue
    .line 173
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@2
    const/4 v2, -0x1

    #@3
    invoke-static {v0, v1, v2}, Landroid/view/VelocityTracker;->nativeGetYVelocity(JI)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getYVelocity(I)F
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 195
    iget-wide v0, p0, Landroid/view/VelocityTracker;->mPtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(JI)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 84
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    #@7
    .line 85
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@c
    .line 82
    :cond_0
    return-void
.end method

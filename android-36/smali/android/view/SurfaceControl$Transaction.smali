.class public Landroid/view/SurfaceControl$Transaction;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INVALID_COLOR:[F

.field public static final greylist-max-o sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field blacklist mCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mFreeNativeResources:Ljava/lang/Runnable;

.field public greylist-max-o mNativeObject:J

.field private final blacklist mReparentedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mResizedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 3023
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 3024
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 3025
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeGetNativeTransactionFinalizer()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 3041
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->INVALID_COLOR:[F

    .line 5302
    new-instance v0, Landroid/view/SurfaceControl$Transaction$2;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction$2;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_24
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 3058
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeCreateTransaction()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;-><init>(J)V

    .line 3059
    return-void
.end method

.method private constructor blacklist <init>(J)V
    .registers 6
    .param p1, "nativeObject"    # J

    .line 3061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3031
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    .line 3032
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    .line 3062
    iput-wide p1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 3063
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 3064
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;->setUpForSurfaceControlRegistry()V

    .line 3065
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3031
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    .line 3032
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    .line 3068
    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Transaction;->readFromParcel(Landroid/os/Parcel;)V

    .line 3069
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;->setUpForSurfaceControlRegistry()V

    .line 3070
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Transaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist apply(ZZ)V
    .registers 6
    .param p1, "sync"    # Z
    .param p2, "oneWay"    # Z

    .line 3181
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->applyResizedSurfaces()V

    .line 3182
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->notifyReparentedSurfaces()V

    .line 3184
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_14

    .line 3185
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string v1, "apply"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v2}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3188
    :cond_14
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 3189
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3191
    :cond_1d
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeApplyTransaction(JZZ)V

    .line 3192
    return-void
.end method

.method public static blacklist getDefaultApplyToken()Landroid/os/IBinder;
    .registers 1

    .line 3117
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeGetDefaultApplyToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$addTransactionCommittedListener$0(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "listener"    # Landroid/view/SurfaceControl$TransactionCommittedListener;

    .line 5091
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceControl$TransactionCommittedListener;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$addTransactionCompletedListener$1(Ljava/util/function/Consumer;Landroid/view/SurfaceControl$TransactionStats;)V
    .registers 3
    .param p0, "listener"    # Ljava/util/function/Consumer;
    .param p1, "stats"    # Landroid/view/SurfaceControl$TransactionStats;

    .line 5118
    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$addTransactionCompletedListener$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$TransactionStats;)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "listener"    # Ljava/util/function/Consumer;
    .param p2, "stats"    # Landroid/view/SurfaceControl$TransactionStats;

    .line 5117
    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/view/SurfaceControl$TransactionStats;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 5290
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 5291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 5292
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeReadTransactionFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 5293
    sget-object v0, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 5295
    :cond_1a
    return-void
.end method

.method public static blacklist sendSurfaceFlushJankData(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p0, "sc"    # Landroid/view/SurfaceControl;

    .line 4929
    invoke-static {p0}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 4930
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSurfaceFlushJankData(J)V

    .line 4931
    return-void
.end method

.method public static blacklist setDefaultApplyToken(Landroid/os/IBinder;)V
    .registers 1
    .param p0, "token"    # Landroid/os/IBinder;

    .line 3108
    invoke-static {p0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDefaultApplyToken(Landroid/os/IBinder;)V

    .line 3109
    return-void
.end method

.method private blacklist setUpForSurfaceControlRegistry()V
    .registers 4

    .line 3076
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingInitialized:Z

    if-nez v0, :cond_7

    .line 3077
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->initializeCallStackDebugging()V

    .line 3079
    :cond_7
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sLogAllTxCallsOnApply:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 3080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_13

    .line 3081
    :cond_12
    move-object v0, v1

    :goto_13
    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    .line 3082
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_22

    .line 3083
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string v2, "ctor"

    invoke-virtual {v0, v2, p0, v1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3086
    :cond_22
    return-void
.end method


# virtual methods
.method public whitelist addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/view/SurfaceControl$TransactionCommittedListener;

    .line 5090
    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)V

    .line 5092
    .local v0, "listenerInner":Landroid/view/SurfaceControl$TransactionCommittedListener;
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v1, v2, v0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V

    .line 5093
    return-object p0
.end method

.method public whitelist addTransactionCompletedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$TransactionStats;",
            ">;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    .line 5113
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$TransactionStats;>;"
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->sdkDesiredPresentTime()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5114
    const-string v0, "SurfaceControl"

    const-string v1, "addTransactionCompletedListener was called but flag is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5115
    return-object p0

    .line 5117
    :cond_e
    new-instance v0, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceControl$Transaction$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 5119
    .local v0, "listenerInner":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$TransactionStats;>;"
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v1, v2, v0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V

    .line 5120
    return-object p0
.end method

.method public blacklist addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 3507
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V

    .line 3508
    return-object p0
.end method

.method public whitelist apply()V
    .registers 2

    .line 3127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 3128
    return-void
.end method

.method public greylist-max-o apply(Z)V
    .registers 3
    .param p1, "sync"    # Z

    .line 3177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->apply(ZZ)V

    .line 3178
    return-void
.end method

.method public blacklist applyAsyncUnsafe()V
    .registers 3

    .line 3138
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->apply(ZZ)V

    .line 3139
    return-void
.end method

.method protected greylist-max-o applyResizedSurfaces()V
    .registers 7

    .line 3198
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2d

    .line 3199
    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 3200
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 3201
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3202
    :try_start_1f
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl;->resize(II)V

    .line 3203
    monitor-exit v3

    .line 3198
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3203
    .restart local v1    # "size":Landroid/graphics/Point;
    .restart local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    :catchall_2a
    move-exception v4

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2a

    throw v4

    .line 3205
    .end local v0    # "i":I
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_2d
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3206
    return-void
.end method

.method protected blacklist checkPreconditions(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3047
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 3048
    return-void
.end method

.method public blacklist clear()V
    .registers 5

    .line 3148
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3149
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3150
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 3151
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeClearTransaction(J)V

    .line 3153
    :cond_17
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 3154
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3156
    :cond_20
    return-void
.end method

.method public whitelist clearFrameRate(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 4291
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4292
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRate(JJFII)V

    .line 4295
    return-object p0
.end method

.method public whitelist clearTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5219
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 5220
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeClearTrustedPresentationCallback(JJ)V

    .line 5221
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 5222
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl$TrustedPresentationCallback;->-$$Nest$fgetmFreeNativeResources(Landroid/view/SurfaceControl$TrustedPresentationCallback;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5223
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/SurfaceControl;->-$$Nest$fputmTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationCallback;)V

    .line 5225
    :cond_1f
    return-object p0
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 3163
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3164
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3165
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 3167
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 3168
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3170
    :cond_1c
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 5299
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getId()J
    .registers 3

    .line 4085
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeGetTransactionId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3284
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3285
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_11

    .line 3286
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string v1, "hide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3289
    :cond_11
    iget-wide v3, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3290
    return-object p0
.end method

.method public whitelist merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "other"    # Landroid/view/SurfaceControl$Transaction;

    .line 4969
    if-ne p0, p1, :cond_3

    .line 4970
    return-object p0

    .line 4972
    :cond_3
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_3c

    .line 4973
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otherTx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4974
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4973
    const-string v2, "merge"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 4975
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    .line 4976
    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    .line 4977
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4978
    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4982
    :cond_3c
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4983
    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4984
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4985
    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4986
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeMergeTransaction(JJ)V

    .line 4987
    return-object p0
.end method

.method protected blacklist notifyReparentedSurfaces()V
    .registers 9

    .line 3212
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3213
    .local v0, "reparentCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_4f

    .line 3214
    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 3215
    .local v2, "child":Landroid/view/SurfaceControl;
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3216
    :try_start_17
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 3217
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    .line 3218
    .local v4, "listenerCount":I
    :goto_27
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_28
    if-ge v5, v4, :cond_42

    .line 3219
    invoke-static {v2}, Landroid/view/SurfaceControl;->-$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$OnReparentListener;

    .line 3220
    .local v6, "listener":Landroid/view/SurfaceControl$OnReparentListener;
    iget-object v7, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl;

    invoke-interface {v6, p0, v7}, Landroid/view/SurfaceControl$OnReparentListener;->onReparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 3218
    .end local v6    # "listener":Landroid/view/SurfaceControl$OnReparentListener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 3222
    .end local v5    # "j":I
    :cond_42
    iget-object v5, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 3223
    nop

    .end local v4    # "listenerCount":I
    monitor-exit v3

    .line 3213
    .end local v2    # "child":Landroid/view/SurfaceControl;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3223
    .restart local v2    # "child":Landroid/view/SurfaceControl;
    :catchall_4c
    move-exception v4

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_17 .. :try_end_4e} :catchall_4c

    throw v4

    .line 3225
    .end local v1    # "i":I
    .end local v2    # "child":Landroid/view/SurfaceControl;
    :cond_4f
    return-void
.end method

.method blacklist onMergeWithNextTransaction(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "windowName"    # Ljava/lang/CharSequence;

    .line 4995
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_30

    .line 4996
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "merge"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 4998
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    .line 4999
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mCalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5001
    :cond_2b
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeEnableDebugLogCallPoints(J)V

    .line 5003
    :cond_30
    return-void
.end method

.method public blacklist remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 3
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 5018
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5019
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 5020
    return-object p0
.end method

.method public blacklist removeCurrentInputFocus(I)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "displayId"    # I

    .line 4409
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeRemoveCurrentInputFocus(JI)V

    .line 4410
    return-object p0
.end method

.method public whitelist reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 3841
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3842
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_24

    .line 3843
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reparent"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3846
    :cond_24
    const-wide/16 v0, 0x0

    .line 3847
    .local v0, "otherObject":J
    if-eqz p2, :cond_2f

    .line 3848
    invoke-static {p2}, Landroid/view/SurfaceControl;->-$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V

    .line 3849
    iget-wide v0, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    move-wide v6, v0

    goto :goto_30

    .line 3847
    :cond_2f
    move-wide v6, v0

    .line 3851
    .end local v0    # "otherObject":J
    .local v6, "otherObject":J
    :goto_30
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeReparent(JJJ)V

    .line 3852
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3853
    return-object p0
.end method

.method public blacklist sanitize(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 4937
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSanitize(JII)V

    .line 4938
    return-void
.end method

.method public whitelist setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "alpha"    # F

    .line 3477
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3478
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_24

    .line 3479
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setAlpha"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3482
    :cond_24
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetAlpha(JJF)V

    .line 3483
    return-object p0
.end method

.method public greylist-max-o setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    .line 4050
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetAnimationTransaction(J)V

    .line 4051
    return-object p0
.end method

.method public blacklist setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "radius"    # I

    .line 3765
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3766
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_25

    .line 3767
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setBackgroundBlurRadius"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3770
    :cond_25
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBackgroundBlurRadius(JJI)V

    .line 3771
    return-object p0
.end method

.method public blacklist setBlurRegions(Landroid/view/SurfaceControl;[[F)Landroid/view/SurfaceControl$Transaction;
    .registers 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "regions"    # [[F

    .line 3784
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3785
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    array-length v5, p2

    move-object v4, p2

    .end local p2    # "regions":[[F
    .local v4, "regions":[[F
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBlurRegions(JJ[[FI)V

    .line 3786
    return-object p0
.end method

.method public blacklist setBorderSettings(Landroid/view/SurfaceControl;Landroid/gui/BorderSettings;)Landroid/view/SurfaceControl$Transaction;
    .registers 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "settings"    # Landroid/gui/BorderSettings;

    .line 4151
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4152
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_25

    .line 4153
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setBorderSettings"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 4157
    :cond_25
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->enableBorderSettings()Z

    move-result v0

    if-nez v0, :cond_34

    .line 4158
    const-string v0, "SurfaceControl"

    const-string/jumbo v1, "setBorderSettings was called butenable_border_settings flag is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    return-object p0

    .line 4163
    :cond_34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4164
    .local v0, "settingsParcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/gui/BorderSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4165
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4166
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v1, v2, v3, v4, v0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBorderSettings(JJLandroid/os/Parcel;)V

    .line 4167
    return-object p0
.end method

.method public blacklist setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "buffer"    # Landroid/graphics/GraphicBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4438
    invoke-static {p2}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 4454
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "buffer"    # Landroid/hardware/HardwareBuffer;
    .param p3, "fence"    # Landroid/hardware/SyncFence;

    .line 4500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/hardware/SyncFence;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;
    .registers 24
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "buffer"    # Landroid/hardware/HardwareBuffer;
    .param p3, "fence"    # Landroid/hardware/SyncFence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Landroid/hardware/HardwareBuffer;",
            "Landroid/hardware/SyncFence;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    .line 4543
    .local p4, "releaseCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/SyncFence;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4544
    if-eqz p3, :cond_22

    .line 4545
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/SyncFence;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4546
    :try_start_e
    iget-wide v4, v1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v6, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 4547
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/SyncFence;->getNativeFence()J

    move-result-wide v9

    .line 4546
    move-object/from16 v8, p2

    move-object/from16 v11, p4

    invoke-static/range {v4 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    .line 4548
    monitor-exit v3

    goto :goto_2f

    :catchall_1f
    move-exception v0

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    throw v0

    .line 4550
    :cond_22
    iget-wide v11, v1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v13, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v16, 0x0

    move-object/from16 v15, p2

    move-object/from16 v18, p4

    invoke-static/range {v11 .. v18}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    .line 4552
    :goto_2f
    return-object v1
.end method

.method public whitelist setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 3347
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3348
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_2f

    .line 3349
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setBufferSize"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3352
    :cond_2f
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3353
    return-object p0
.end method

.method public whitelist setBufferTransform(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "transform"    # I

    .line 4570
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4571
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetBufferTransform(JJI)V

    .line 4572
    return-object p0
.end method

.method public blacklist setCachingHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "cachingHint"    # I

    .line 4850
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4851
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetCachingHint(JJI)V

    .line 4852
    return-object p0
.end method

.method public blacklist setCanOccludePresentation(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 10
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "canOccludePresentation"    # Z

    .line 4918
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4919
    if-eqz p2, :cond_8

    const/16 v0, 0x1000

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v5, v0

    .line 4920
    .local v5, "value":I
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v6, 0x1000

    invoke-static/range {v1 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 4921
    return-object p0
.end method

.method public blacklist setClientDrawnCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "clientDrawnCornerRadius"    # F

    .line 3739
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3740
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_24

    .line 3741
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientDrawnCornerRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setClientDrawnCornerRadius"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3745
    :cond_24
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->ignoreCornerRadiusAndShadows()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3746
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetClientDrawnCornerRadius(JJF)V

    goto :goto_3a

    .line 3749
    :cond_32
    const-string v0, "SurfaceControl"

    const-string/jumbo v1, "setClientDrawnCornerRadius was called butignore_corner_radius_and_shadows flag is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    :goto_3a
    return-object p0
.end method

.method public greylist setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "color"    # [F

    .line 3865
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3866
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_42

    .line 3867
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " g="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setColor"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3871
    :cond_42
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColor(JJ[F)V

    .line 3872
    return-object p0
.end method

.method public blacklist setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4623
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4624
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 4625
    const/high16 v0, 0x88a0000

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1a

    .line 4627
    :cond_15
    const/high16 v0, 0x8810000

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4629
    :goto_1a
    return-object p0
.end method

.method public blacklist setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "agnostic"    # Z

    .line 3591
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3592
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColorSpaceAgnostic(JJZ)V

    .line 3593
    return-object p0
.end method

.method public blacklist setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;
    .registers 10
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "matrix"    # [F
    .param p3, "translation"    # [F

    .line 3579
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3580
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v4, p2

    move-object v5, p3

    .end local p2    # "matrix":[F
    .end local p3    # "translation":[F
    .local v4, "matrix":[F
    .local v5, "translation":[F
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColorTransform(JJ[F[F)V

    .line 3581
    return-object p0
.end method

.method public whitelist setContentPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "priority"    # I

    .line 4832
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4834
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetContentPriority(JJI)V

    .line 4835
    return-object p0
.end method

.method public greylist-max-r setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "cornerRadius"    # F

    .line 3715
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3716
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_24

    .line 3717
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cornerRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setCornerRadius"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3720
    :cond_24
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetCornerRadius(JJF)V

    .line 3722
    return-object p0
.end method

.method public blacklist setCrop(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    .registers 16
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .line 3691
    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3692
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_48

    .line 3693
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crop={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v9, p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v8, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setCrop"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_4a

    .line 3692
    :cond_48
    move v8, p4

    move v9, p5

    .line 3697
    :goto_4a
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v9}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetCrop(JJFFFF)V

    .line 3698
    return-object p0
.end method

.method public whitelist setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 24
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "crop"    # Landroid/graphics/Rect;

    .line 3640
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3641
    sget-boolean v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v3, :cond_2a

    .line 3642
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setCrop"

    invoke-virtual {v3, v5, v0, v1, v4}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3645
    :cond_2a
    if-eqz v2, :cond_5c

    .line 3646
    invoke-virtual {v2}, Landroid/graphics/Rect;->isValid()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isn\'t valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3648
    iget-wide v5, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v7, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v5 .. v12}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    goto :goto_6c

    .line 3651
    :cond_5c
    iget-wide v13, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide v15, v3

    invoke-static/range {v13 .. v20}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    .line 3654
    :goto_6c
    return-object v0
.end method

.method public whitelist setDamageRegion(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 4588
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDamageRegion(JJLandroid/graphics/Region;)V

    .line 4589
    return-object p0
.end method

.method public whitelist setDataSpace(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "dataspace"    # I

    .line 4642
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4643
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDataSpace(JJI)V

    .line 4644
    return-object p0
.end method

.method public blacklist setDefaultFrameRateCompatibility(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "compatibility"    # I

    .line 4312
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4313
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDefaultFrameRateCompatibility(JJI)V

    .line 4314
    return-object p0
.end method

.method public whitelist setDesiredHdrHeadroom(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "desiredRatio"    # F

    .line 4737
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4738
    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_14

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1c

    .line 4742
    :cond_14
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDesiredHdrHeadroom(JJF)V

    .line 4743
    return-object p0

    .line 4739
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desiredRatio must be finite && >= 1.0f or 0; got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDesiredPresentTimeNanos(J)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "desiredPresentTimeNanos"    # J

    .line 5245
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->sdkDesiredPresentTime()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5246
    const-string v0, "SurfaceControl"

    const-string v1, "addTransactionCompletedListener was called but flag is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5247
    return-object p0

    .line 5249
    :cond_e
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDesiredPresentTimeNanos(JJ)V

    .line 5250
    return-object p0
.end method

.method public blacklist setDestinationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 12
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 4955
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4956
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move v7, p3

    .end local p2    # "width":I
    .end local p3    # "height":I
    .local v6, "width":I
    .local v7, "height":I
    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDestinationFrame(JJIIII)V

    .line 4957
    return-object p0
.end method

.method public blacklist setDestinationFrame(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "destinationFrame"    # Landroid/graphics/Rect;

    .line 4944
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4945
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDestinationFrame(JJIIII)V

    .line 4948
    return-object p0
.end method

.method public blacklist setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "dimmingEnabled"    # Z

    .line 4608
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4609
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDimmingEnabled(JJZ)V

    .line 4610
    return-object p0
.end method

.method public blacklist setDisplayDecoration(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "displayDecoration"    # Z

    .line 3914
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3915
    if-eqz p2, :cond_11

    .line 3916
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x200

    const/16 v5, 0x200

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_1b

    .line 3919
    :cond_11
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x200

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3921
    :goto_1b
    return-object p0
.end method

.method public blacklist setDisplayFlags(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 4004
    if-eqz p1, :cond_8

    .line 4007
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayFlags(JLandroid/os/IBinder;I)V

    .line 4008
    return-object p0

    .line 4005
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "layerStack"    # I

    .line 3993
    if-eqz p1, :cond_8

    .line 3996
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    .line 3997
    return-object p0

    .line 3994
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 19
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "orientation"    # I
    .param p3, "layerStackRect"    # Landroid/graphics/Rect;
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    .line 4016
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eqz p1, :cond_33

    .line 4019
    if-eqz v0, :cond_2b

    .line 4022
    if-eqz v1, :cond_23

    .line 4025
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    move-object v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v13}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    .line 4028
    return-object p0

    .line 4023
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "displayRect must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4020
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "layerStackRect must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4017
    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "displayToken must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist-max-o setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 4035
    if-eqz p1, :cond_15

    .line 4038
    if-lez p2, :cond_c

    if-lez p3, :cond_c

    .line 4042
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySize(JLandroid/os/IBinder;II)V

    .line 4043
    return-object p0

    .line 4039
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4036
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;
    .registers 8
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 3972
    if-eqz p1, :cond_1b

    .line 3976
    if-eqz p2, :cond_13

    .line 3977
    iget-object v0, p2, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3978
    :try_start_7
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p2, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v1, v2, p1, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    .line 3979
    monitor-exit v0

    goto :goto_1a

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 3981
    :cond_13
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    .line 3983
    :goto_1a
    return-object p0

    .line 3973
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "mode"    # I

    .line 4896
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4897
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetDropInputMode(JJI)V

    .line 4898
    return-object p0
.end method

.method public blacklist setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    .line 4075
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetEarlyWakeupEnd(J)V

    .line 4076
    return-object p0
.end method

.method public blacklist setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    .line 4064
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetEarlyWakeupStart(J)V

    .line 4065
    return-object p0
.end method

.method public blacklist setEdgeExtensionEffect(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 13
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "edge"    # I

    .line 3807
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3809
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    and-int/lit8 v4, p2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_f

    move v4, v6

    goto :goto_10

    :cond_f
    move v4, v5

    :goto_10
    and-int/lit8 v7, p2, 0x4

    if-eqz v7, :cond_17

    move v7, v5

    move v5, v6

    goto :goto_18

    :cond_17
    move v7, v5

    :goto_18
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_1e

    move v8, v6

    goto :goto_20

    :cond_1e
    move v8, v6

    move v6, v7

    :goto_20
    and-int/lit8 v9, p2, 0x8

    if-eqz v9, :cond_25

    move v7, v8

    :cond_25
    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetEdgeExtensionEffect(JJZZZZ)V

    .line 3813
    return-object p0
.end method

.method public whitelist setExtendedRangeBrightness(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "currentBufferRatio"    # F
    .param p3, "desiredRatio"    # F

    .line 4688
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4689
    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_3e

    .line 4693
    invoke-static {p3}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_23

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_23

    .line 4697
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v5, p2

    move v6, p3

    .end local p2    # "currentBufferRatio":F
    .end local p3    # "desiredRatio":F
    .local v5, "currentBufferRatio":F
    .local v6, "desiredRatio":F
    invoke-static/range {v1 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetExtendedRangeBrightness(JJFF)V

    .line 4699
    return-object p0

    .line 4693
    .end local v5    # "currentBufferRatio":F
    .end local v6    # "desiredRatio":F
    .restart local p2    # "currentBufferRatio":F
    .restart local p3    # "desiredRatio":F
    :cond_23
    move v5, p2

    move v6, p3

    .line 4694
    .end local p2    # "currentBufferRatio":F
    .end local p3    # "desiredRatio":F
    .restart local v5    # "currentBufferRatio":F
    .restart local v6    # "desiredRatio":F
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "desiredRatio must be finite && >= 1.0f; got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4689
    .end local v5    # "currentBufferRatio":F
    .end local v6    # "desiredRatio":F
    .restart local p2    # "currentBufferRatio":F
    .restart local p3    # "desiredRatio":F
    :cond_3e
    move v5, p2

    move v6, p3

    .line 4690
    .end local p2    # "currentBufferRatio":F
    .end local p3    # "desiredRatio":F
    .restart local v5    # "currentBufferRatio":F
    .restart local v6    # "desiredRatio":F
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentBufferRatio must be finite && >= 1.0f; got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "transformHint"    # I

    .line 3371
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3372
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_24

    .line 3373
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setFixedTransformHint"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3376
    :cond_24
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFixedTransformHint(JJI)V

    .line 3377
    return-object p0
.end method

.method public blacklist setFocusedWindow(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowName"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 4398
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V

    .line 4399
    return-object p0
.end method

.method public whitelist setFrameRate(Landroid/view/SurfaceControl;FI)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "frameRate"    # F
    .param p3, "compatibility"    # I

    .line 4180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;
    .registers 12
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "frameRate"    # F
    .param p3, "compatibility"    # I
    .param p4, "changeFrameRateStrategy"    # I

    .line 4222
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4223
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p2    # "frameRate":F
    .end local p3    # "compatibility":I
    .end local p4    # "changeFrameRateStrategy":I
    .local v4, "frameRate":F
    .local v5, "compatibility":I
    .local v6, "changeFrameRateStrategy":I
    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRate(JJFII)V

    .line 4225
    return-object p0
.end method

.method public blacklist setFrameRate(Landroid/view/SurfaceControl;Landroid/view/Surface$FrameRateParams;)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "frameRateParams"    # Landroid/view/Surface$FrameRateParams;

    .line 4255
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4257
    invoke-static {}, Lcom/android/graphics/surfaceflinger/flags/Flags;->arrSetframerateApi()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4260
    invoke-virtual {p2}, Landroid/view/Surface$FrameRateParams;->getFixedSourceRate()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    .line 4261
    const/4 v0, 0x0

    goto :goto_15

    .line 4262
    :cond_14
    const/4 v0, 0x1

    :goto_15
    move v6, v0

    .line 4263
    .local v6, "compatibility":I
    if-nez v6, :cond_1e

    .line 4264
    invoke-virtual {p2}, Landroid/view/Surface$FrameRateParams;->getDesiredMinRate()F

    move-result v0

    move v5, v0

    goto :goto_23

    .line 4265
    :cond_1e
    invoke-virtual {p2}, Landroid/view/Surface$FrameRateParams;->getFixedSourceRate()F

    move-result v0

    move v5, v0

    :goto_23
    nop

    .line 4266
    .local v5, "frameRate":F
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 4267
    invoke-virtual {p2}, Landroid/view/Surface$FrameRateParams;->getChangeFrameRateStrategy()I

    move-result v7

    .line 4266
    invoke-static/range {v1 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRate(JJFII)V

    .line 4268
    .end local v5    # "frameRate":F
    .end local v6    # "compatibility":I
    goto :goto_38

    .line 4269
    :cond_30
    const-string v0, "SurfaceControl"

    const-string/jumbo v1, "setFrameRate was called but flag arr_setframerate_api is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4271
    :goto_38
    return-object p0
.end method

.method public blacklist setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;
    .registers 10
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "category"    # I
    .param p3, "smoothSwitchOnly"    # Z

    .line 4355
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4356
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    .end local p2    # "category":I
    .end local p3    # "smoothSwitchOnly":Z
    .local v4, "category":I
    .local v5, "smoothSwitchOnly":Z
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRateCategory(JJIZ)V

    .line 4357
    return-object p0
.end method

.method public blacklist setFrameRateSelectionPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "priority"    # I

    .line 3252
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3253
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRateSelectionPriority(JJI)V

    .line 3254
    return-object p0
.end method

.method public blacklist setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "strategy"    # I

    .line 4380
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4381
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameRateSelectionStrategy(JJI)V

    .line 4382
    return-object p0
.end method

.method public whitelist setFrameTimeline(J)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "vsyncId"    # J

    .line 5044
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->sdkDesiredPresentTime()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5045
    const-string v0, "SurfaceControl"

    const-string v1, "addTransactionCompletedListener was called but flag is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5046
    return-object p0

    .line 5048
    :cond_e
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_31

    .line 5049
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vsyncId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setFrameTimeline"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 5052
    :cond_31
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameTimelineVsync(JJ)V

    .line 5053
    return-object p0
.end method

.method public blacklist setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "frameTimelineVsyncId"    # J

    .line 5059
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_22

    .line 5060
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameTimelineVsyncId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setFrameTimelineVsync"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 5064
    :cond_22
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFrameTimelineVsync(JJ)V

    .line 5065
    return-object p0
.end method

.method public whitelist setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;
    .registers 13
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "sourceCrop"    # Landroid/graphics/Rect;
    .param p3, "destFrame"    # Landroid/graphics/Rect;
    .param p4, "orientation"    # I

    .line 3529
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3530
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v6, p4

    move-object v4, p2

    move-object v5, p3

    .end local p2    # "sourceCrop":Landroid/graphics/Rect;
    .end local p3    # "destFrame":Landroid/graphics/Rect;
    .local v4, "sourceCrop":Landroid/graphics/Rect;
    .local v5, "destFrame":Landroid/graphics/Rect;
    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    .line 3531
    return-object p0
.end method

.method public blacklist setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "handle"    # Landroid/view/InputWindowHandle;

    .line 3494
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3495
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    .line 3496
    return-object p0
.end method

.method public whitelist setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "z"    # I

    .line 3412
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3413
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_25

    .line 3414
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setLayer"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3417
    :cond_25
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLayer(JJI)V

    .line 3418
    return-object p0
.end method

.method public greylist-max-o setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "layerStack"    # I

    .line 3824
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3825
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLayerStack(JJI)V

    .line 3826
    return-object p0
.end method

.method public whitelist setLuts(Landroid/view/SurfaceControl;Landroid/hardware/DisplayLuts;)Landroid/view/SurfaceControl$Transaction;
    .registers 24
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "displayLuts"    # Landroid/hardware/DisplayLuts;

    .line 4763
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4764
    if-eqz p2, :cond_2b

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/DisplayLuts;->valid()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 4765
    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/DisplayLuts;->getLutBuffers()[F

    move-result-object v7

    .line 4766
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/DisplayLuts;->getOffsets()[I

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/DisplayLuts;->getLutDimensions()[I

    move-result-object v9

    .line 4767
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/DisplayLuts;->getLutSizes()[I

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/DisplayLuts;->getLutSamplingKeys()[I

    move-result-object v11

    .line 4765
    invoke-static/range {v3 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLuts(JJ[F[I[I[I[I)V

    goto :goto_3c

    .line 4769
    :cond_2b
    iget-wide v12, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v14, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetLuts(JJ[F[I[I[I[I)V

    .line 4771
    :goto_3c
    return-object v0
.end method

.method public greylist setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    .registers 16
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dtdy"    # F
    .param p5, "dsdy"    # F

    .line 3540
    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3541
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_45

    .line 3542
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dtdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dtdy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v8, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dsdy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v9, p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setMatrix"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_47

    .line 3541
    :cond_45
    move v8, p4

    move v9, p5

    .line 3546
    :goto_47
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v9}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMatrix(JJFFFF)V

    .line 3548
    return-object p0
.end method

.method public greylist setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "float9"    # [F

    .line 3562
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3563
    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 v0, 0x3

    aget v4, p3, v0

    const/4 v0, 0x1

    aget v5, p3, v0

    const/4 v0, 0x4

    aget v6, p3, v0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "sc":Landroid/view/SurfaceControl;
    .local v2, "sc":Landroid/view/SurfaceControl;
    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 3565
    const/4 p1, 0x2

    aget p1, p3, p1

    const/4 v0, 0x5

    aget v0, p3, v0

    invoke-virtual {p0, v2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 3566
    return-object v1
.end method

.method public blacklist setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "key"    # I
    .param p3, "data"    # I

    .line 4093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4094
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4096
    :try_start_7
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;ILandroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 4098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4099
    nop

    .line 4100
    return-object p0

    .line 4098
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4099
    throw v1
.end method

.method public blacklist setMetadata(Landroid/view/SurfaceControl;ILandroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    .registers 10
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "key"    # I
    .param p3, "data"    # Landroid/os/Parcel;

    .line 4108
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4109
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move-object v5, p3

    .end local p2    # "key":I
    .end local p3    # "data":Landroid/os/Parcel;
    .local v4, "key":I
    .local v5, "data":Landroid/os/Parcel;
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetMetadata(JJILandroid/os/Parcel;)V

    .line 4110
    return-object p0
.end method

.method public whitelist setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 21
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "isOpaque"    # Z

    .line 3953
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3954
    sget-boolean v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v3, :cond_2a

    .line 3955
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "opaque="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setOpaque"

    invoke-virtual {v3, v5, v0, v1, v4}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3958
    :cond_2a
    if-eqz v2, :cond_36

    .line 3959
    iget-wide v6, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_41

    .line 3961
    :cond_36
    iget-wide v12, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v14, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v12 .. v17}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3963
    :goto_41
    return-object v0
.end method

.method public whitelist setPictureProfileHandle(Landroid/view/SurfaceControl;Landroid/media/quality/PictureProfileHandle;)Landroid/view/SurfaceControl$Transaction;
    .registers 9
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "handle"    # Landroid/media/quality/PictureProfileHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4802
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4804
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-virtual {p2}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetPictureProfileId(JJJ)V

    .line 4805
    return-object p0
.end method

.method public whitelist setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .registers 13
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 3304
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3305
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_2f

    .line 3306
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setPosition"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3309
    :cond_2f
    iget-wide v3, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v7, p2

    move v8, p3

    .end local p2    # "x":F
    .end local p3    # "y":F
    .local v7, "x":F
    .local v8, "y":F
    invoke-static/range {v3 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetPosition(JJFF)V

    .line 3310
    return-object p0
.end method

.method public blacklist setRecoverableFromBufferStuffing(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 8
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 5261
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 5262
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x2000

    const/16 v5, 0x2000

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 5264
    return-object p0
.end method

.method public greylist-max-o setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 14
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "z"    # I

    .line 3441
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3442
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_2f

    .line 3443
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "relTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setRelativeLayer"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3446
    :cond_2f
    iget-wide v3, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v7, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    move v9, p3

    .end local p3    # "z":I
    .local v9, "z":I
    invoke-static/range {v3 .. v9}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetRelativeLayer(JJJI)V

    .line 3447
    return-object p0
.end method

.method public whitelist setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .registers 13
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F

    .line 3324
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3325
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    const-string v4, "Negative value passed in for scaleX"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3326
    cmpl-float v0, p3, v0

    if-ltz v0, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    const-string v0, "Negative value passed in for scaleY"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3327
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_49

    .line 3328
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setScale"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3331
    :cond_49
    iget-wide v3, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v7, p2

    move v8, p3

    .end local p2    # "scaleX":F
    .end local p3    # "scaleY":F
    .local v7, "scaleX":F
    .local v8, "scaleY":F
    invoke-static/range {v3 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetScale(JJFF)V

    .line 3332
    return-object p0
.end method

.method public greylist-max-o setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 21
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "isSecure"    # Z

    .line 3896
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3897
    sget-boolean v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v3, :cond_2b

    .line 3898
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "secure="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setSecure"

    invoke-virtual {v3, v5, v0, v1, v4}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3901
    :cond_2b
    if-eqz v2, :cond_39

    .line 3902
    iget-wide v6, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v10, 0x80

    const/16 v11, 0x80

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_44

    .line 3904
    :cond_39
    iget-wide v12, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v14, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v16, 0x0

    const/16 v17, 0x80

    invoke-static/range {v12 .. v17}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3906
    :goto_44
    return-object v0
.end method

.method public blacklist setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "shadowRadius"    # F

    .line 4131
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4132
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_25

    .line 4133
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setShadowRadius"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 4136
    :cond_25
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetShadowRadius(JJF)V

    .line 4137
    return-object p0
.end method

.method public blacklist setSkipScreenshot(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "skipScrenshot"    # Z

    .line 4420
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4421
    if-eqz p2, :cond_11

    .line 4422
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x40

    const/16 v5, 0x40

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    goto :goto_1b

    .line 4424
    :cond_11
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x40

    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 4426
    :goto_1b
    return-object p0
.end method

.method public blacklist setStretchEffect(Landroid/view/SurfaceControl;FFFFFFFFFF)Landroid/view/SurfaceControl$Transaction;
    .registers 28
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "vecX"    # F
    .param p5, "vecY"    # F
    .param p6, "maxStretchAmountX"    # F
    .param p7, "maxStretchAmountY"    # F
    .param p8, "childRelativeLeft"    # F
    .param p9, "childRelativeTop"    # F
    .param p10, "childRelativeRight"    # F
    .param p11, "childRelativeBottom"    # F

    .line 3796
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3797
    iget-wide v1, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Landroid/view/SurfaceControl;->mNativeObject:J

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v1 .. v14}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetStretchEffect(JJFFFFFFFFFF)V

    .line 3800
    return-object v0
.end method

.method public greylist-max-o setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "transparentRegion"    # Landroid/graphics/Region;

    .line 3457
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3458
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_25

    .line 3459
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unsetFixedTransformHint"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3462
    :cond_25
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    .line 3464
    return-object p0
.end method

.method public blacklist setTrustedOverlay(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "trustedOverlay"    # I

    .line 4885
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 4886
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetTrustedOverlay(JJI)V

    .line 4887
    return-object p0
.end method

.method public blacklist setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "isTrustedOverlay"    # Z

    .line 4860
    nop

    .line 4861
    if-eqz p2, :cond_5

    const/4 v0, 0x2

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 4860
    :goto_6
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationThresholds;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;
    .registers 14
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "thresholds"    # Landroid/view/SurfaceControl$TrustedPresentationThresholds;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl$TrustedPresentationThresholds;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/view/SurfaceControl$Transaction;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5189
    .local p4, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 5190
    new-instance v0, Landroid/view/SurfaceControl$Transaction$1;

    invoke-direct {v0, p0, p3, p4}, Landroid/view/SurfaceControl$Transaction$1;-><init>(Landroid/view/SurfaceControl$Transaction;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 5198
    .local v0, "tpc":Landroid/view/SurfaceControl$TrustedPresentationCallback;
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 5199
    invoke-static {p1}, Landroid/view/SurfaceControl;->-$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;

    move-result-object v1

    invoke-static {v1}, Landroid/view/SurfaceControl$TrustedPresentationCallback;->-$$Nest$fgetmFreeNativeResources(Landroid/view/SurfaceControl$TrustedPresentationCallback;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 5202
    :cond_19
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0}, Landroid/view/SurfaceControl$TrustedPresentationCallback;->-$$Nest$fgetmNativeObject(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J

    move-result-wide v6

    move-object v8, p2

    .end local p2    # "thresholds":Landroid/view/SurfaceControl$TrustedPresentationThresholds;
    .local v8, "thresholds":Landroid/view/SurfaceControl$TrustedPresentationThresholds;
    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V

    .line 5204
    invoke-static {p1, v0}, Landroid/view/SurfaceControl;->-$$Nest$fputmTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationCallback;)V

    .line 5205
    return-object p0
.end method

.method public whitelist setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "visible"    # Z

    .line 3236
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3237
    if-eqz p2, :cond_a

    .line 3238
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0

    .line 3240
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 15
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 3667
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3668
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_2f

    .line 3669
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setWindowCrop"

    invoke-virtual {v0, v2, p0, p1, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3672
    :cond_2f
    iget-wide v3, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, p2

    move v10, p3

    .end local p2    # "width":I
    .end local p3    # "height":I
    .local v9, "width":I
    .local v10, "height":I
    invoke-static/range {v3 .. v10}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    .line 3673
    return-object p0
.end method

.method public greylist setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 25
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3612
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3613
    sget-boolean v3, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v3, :cond_2a

    .line 3614
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setWindowCrop"

    invoke-virtual {v3, v5, v0, v1, v4}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3617
    :cond_2a
    if-eqz v2, :cond_3c

    .line 3618
    iget-wide v6, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v6 .. v13}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    goto :goto_4d

    .line 3621
    :cond_3c
    iget-wide v14, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v16, v3

    invoke-static/range {v14 .. v21}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetWindowCrop(JJIIII)V

    .line 3624
    :goto_4d
    return-object v0
.end method

.method public greylist show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 11
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3266
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3267
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_12

    .line 3268
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string/jumbo v1, "show"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3271
    :cond_12
    iget-wide v3, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFlags(JJII)V

    .line 3272
    return-object p0
.end method

.method public blacklist unsetBuffer(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 4469
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->-$$Nest$smnativeUnsetBuffer(JJ)V

    .line 4470
    return-object p0
.end method

.method public blacklist unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3881
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3882
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_12

    .line 3883
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string/jumbo v1, "unsetColor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3886
    :cond_12
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    sget-object v4, Landroid/view/SurfaceControl$Transaction;->INVALID_COLOR:[F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetColor(JJ[F)V

    .line 3887
    return-object p0
.end method

.method public blacklist unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 3388
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    .line 3389
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    if-eqz v0, :cond_12

    .line 3390
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string/jumbo v1, "unsetFixedTransformHint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 3393
    :cond_12
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->-$$Nest$smnativeSetFixedTransformHint(JJI)V

    .line 3394
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5277
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 5278
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5279
    return-void

    .line 5282
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5283
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    .line 5284
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1f

    .line 5285
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeClearTransaction(J)V

    .line 5287
    :cond_1f
    return-void
.end method

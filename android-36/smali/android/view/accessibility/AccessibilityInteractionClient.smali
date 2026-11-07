.class public final Landroid/view/accessibility/AccessibilityInteractionClient;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "AccessibilityInteractionClient.java"


# static fields
.field public static final blacklist CALL_STACK:Ljava/lang/String; = "call_stack"

.field private static final greylist-max-o CHECK_INTEGRITY:Z = true

.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DISABLE_PREFETCHING_FOR_SCROLLING_MILLIS:J

.field public static final blacklist IGNORE_CALL_STACK:Ljava/lang/String; = "ignore_call_stack"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionClient"

.field public static final greylist-max-o NO_ID:I = -0x1

.field private static final greylist-max-o TIMEOUT_INTERACTION_MILLIS:J = 0x1388L

.field private static blacklist sCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sClients:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityInteractionClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sConnectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDirectConnectionCount:I

.field private static blacklist sDirectConnectionIdCounter:I

.field private static final blacklist sScrollingWindows:Landroid/util/SparseLongArray;

.field private static final greylist-max-o sStaticLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final blacklist mAttachAccessibilityOverlayCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/IntConsumer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mCallStackOfCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mCallingUid:I

.field private blacklist mConnectionIdWaitingForPrefetchResult:I

.field private greylist-max-o mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private greylist-max-o mFindAccessibilityNodeInfosResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInstanceLock:Ljava/lang/Object;

.field private volatile greylist-max-o mInteractionId:I

.field private final greylist-max-o mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mInteractionIdWaitingForPrefetchResult:I

.field private blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

.field private greylist-max-o mPerformAccessibilityActionResult:Z

.field private greylist-max-o mSameThreadMessage:Landroid/os/Message;

.field private final blacklist mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$GZq7IVQvbAaczSoYj7xiUKVBLaA(Landroid/view/accessibility/AccessibilityInteractionClient;ILandroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityInteractionClient;->lambda$takeScreenshotOfWindow$1(ILandroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UPDVTld8nMJiRGHviqFR5bcj2Ss(Landroid/view/accessibility/AccessibilityInteractionClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->lambda$attachAccessibilityOverlayToWindow$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dXWDqOSK_eHaFl5mnbzc_mvGJsw(Landroid/view/accessibility/AccessibilityInteractionClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->lambda$attachAccessibilityOverlayToDisplay$9(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oijLFXcZaZO_4Ao1eTVGcss00kY(Landroid/view/accessibility/AccessibilityInteractionClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->lambda$takeScreenshotOfWindow$2(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 117
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityInteractionClient;->DISABLE_PREFETCHING_FOR_SCROLLING_MILLIS:J

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    .line 129
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sDirectConnectionIdCounter:I

    .line 130
    const/4 v0, 0x0

    sput v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sDirectConnectionCount:I

    .line 134
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 343
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 145
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 160
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;

    .line 164
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAttachAccessibilityOverlayCallbacks:Landroid/util/SparseArray;

    .line 168
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mMainHandler:Landroid/os/Handler;

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 346
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 348
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 145
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 160
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;

    .line 164
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAttachAccessibilityOverlayCallbacks:Landroid/util/SparseArray;

    .line 168
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mMainHandler:Landroid/os/Handler;

    .line 349
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 350
    return-void
.end method

.method public static blacklist addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Z)V
    .registers 8
    .param p0, "connectionId"    # I
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "initializeCache"    # Z

    .line 254
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 255
    return-void

    .line 257
    :cond_4
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 258
    :try_start_7
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 259
    .local v1, "existingConnection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    instance-of v2, v1, Landroid/view/accessibility/DirectAccessibilityConnection;

    if-nez v2, :cond_29

    .line 264
    sget-object v2, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    if-nez p2, :cond_18

    .line 266
    monitor-exit v0

    return-void

    .line 268
    :cond_18
    sget-object v2, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    new-instance v3, Landroid/view/accessibility/AccessibilityCache;

    new-instance v4, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    invoke-direct {v4}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;-><init>()V

    invoke-direct {v3, v4}, Landroid/view/accessibility/AccessibilityCache;-><init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    .end local v1    # "existingConnection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v0

    .line 271
    return-void

    .line 260
    .restart local v1    # "existingConnection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add service connection with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which conflicts with existing direct connection."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "connectionId":I
    .end local p1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local p2    # "initializeCache":Z
    throw v2

    .line 270
    .end local v1    # "existingConnection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local p0    # "connectionId":I
    .restart local p1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local p2    # "initializeCache":Z
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public static blacklist addDirectConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;Landroid/view/accessibility/AccessibilityManager;)I
    .registers 7
    .param p0, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p1, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .line 286
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 287
    :try_start_3
    sget v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sDirectConnectionIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/view/accessibility/AccessibilityInteractionClient;->sDirectConnectionIdCounter:I

    .line 288
    .local v1, "connectionId":I
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    if-nez v2, :cond_21

    .line 292
    new-instance v2, Landroid/view/accessibility/DirectAccessibilityConnection;

    invoke-direct {v2, p0, p1}, Landroid/view/accessibility/DirectAccessibilityConnection;-><init>(Landroid/view/accessibility/IAccessibilityInteractionConnection;Landroid/view/accessibility/AccessibilityManager;)V

    .line 294
    .local v2, "directAccessibilityConnection":Landroid/view/accessibility/DirectAccessibilityConnection;
    sget-object v3, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    sget v3, Landroid/view/accessibility/AccessibilityInteractionClient;->sDirectConnectionCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/view/accessibility/AccessibilityInteractionClient;->sDirectConnectionCount:I

    .line 298
    monitor-exit v0

    return v1

    .line 289
    .end local v2    # "directAccessibilityConnection":Landroid/view/accessibility/DirectAccessibilityConnection;
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add direct connection with existing id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local p1    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    throw v2

    .line 299
    .end local v1    # "connectionId":I
    .restart local p0    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local p1    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private greylist-max-o checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1520
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 1521
    return-void

    .line 1524
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1525
    .local v0, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1526
    .local v1, "infoCount":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_32

    .line 1527
    move v3, v2

    .local v3, "j":I
    :goto_16
    if-ge v3, v1, :cond_2f

    .line 1528
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1529
    .local v4, "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_2c

    .line 1530
    move-object v0, v4

    .line 1531
    goto :goto_2f

    .line 1527
    .end local v4    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1526
    .end local v3    # "j":I
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1535
    .end local v2    # "i":I
    :cond_32
    const-string v2, "AccessibilityInteractionClient"

    if-nez v0, :cond_3b

    .line 1536
    const-string v3, "No root."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_3b
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1540
    .local v3, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 1541
    .local v4, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1542
    :goto_48
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_86

    .line 1543
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1544
    .local v5, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 1545
    const-string v6, "Duplicate node."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return-void

    .line 1548
    :cond_60
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    .line 1549
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_65
    if-ge v7, v6, :cond_85

    .line 1550
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v8

    .line 1551
    .local v8, "childId":J
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_6c
    if-ge v10, v1, :cond_82

    .line 1552
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1553
    .local v11, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v12

    cmp-long v12, v12, v8

    if-nez v12, :cond_7f

    .line 1554
    invoke-interface {v4, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1551
    .end local v11    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_7f
    add-int/lit8 v10, v10, 0x1

    goto :goto_6c

    .line 1549
    .end local v8    # "childId":J
    .end local v10    # "j":I
    :cond_82
    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    .line 1558
    .end local v5    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "childCount":I
    .end local v7    # "i":I
    :cond_85
    goto :goto_48

    .line 1559
    :cond_86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1560
    .local v5, "disconnectedCount":I
    if-lez v5, :cond_a7

    .line 1561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Disconnected nodes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_a7
    return-void
.end method

.method private greylist-max-o clearResultLocked()V
    .registers 2

    .line 1402
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1403
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1404
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 1405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 1406
    return-void
.end method

.method private blacklist deleteScrollingWindow(I)V
    .registers 4
    .param p1, "windowId"    # I

    .line 1583
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 1584
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1585
    monitor-exit v0

    .line 1586
    return-void

    .line 1585
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private greylist-max-o finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "connectionId"    # I
    .param p3, "bypassCache"    # Z
    .param p4, "packageNames"    # [Ljava/lang/String;

    .line 1453
    if-eqz p1, :cond_31

    .line 1454
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 1456
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1457
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1458
    .local v0, "packageName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1b

    .line 1459
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1462
    :cond_1b
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1465
    .end local v0    # "packageName":Ljava/lang/CharSequence;
    :cond_21
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    .line 1466
    if-nez p3, :cond_31

    .line 1467
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 1468
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_2e

    .line 1472
    return-void

    .line 1474
    :cond_2e
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1477
    .end local v0    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :cond_31
    return-void
.end method

.method private greylist-max-o finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V
    .registers 8
    .param p2, "connectionId"    # I
    .param p3, "bypassCache"    # Z
    .param p4, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;IZ[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1490
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_15

    .line 1491
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1492
    .local v0, "infosCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 1493
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1494
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v2, p2, p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 1492
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1498
    .end local v0    # "infosCount":I
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method public static blacklist getCache(I)Landroid/view/accessibility/AccessibilityCache;
    .registers 3
    .param p0, "connectionId"    # I

    .line 312
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 313
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityCache;

    monitor-exit v0

    return-object v1

    .line 314
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static greylist-max-o getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .registers 3
    .param p0, "connectionId"    # I

    .line 239
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 240
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    monitor-exit v0

    return-object v1

    .line 241
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private greylist-max-o getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5
    .param p1, "interactionId"    # I

    .line 1183
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1184
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 1185
    .local v1, "success":Z
    if-eqz v1, :cond_c

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 1186
    .local v2, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_d
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 1187
    monitor-exit v0

    return-object v2

    .line 1188
    .end local v1    # "success":Z
    .end local v2    # "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;
    .registers 6
    .param p1, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 1221
    .local v1, "success":Z
    if-eqz v1, :cond_c

    .line 1222
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    goto :goto_10

    .line 1224
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1226
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_10
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 1227
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_1a

    .line 1228
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V

    .line 1230
    :cond_1a
    monitor-exit v0

    return-object v2

    .line 1231
    .end local v1    # "success":Z
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public static greylist getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 3

    .line 178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 179
    .local v0, "threadId":J
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 206
    .local v0, "threadId":J
    if-eqz p0, :cond_f

    .line 207
    invoke-static {v0, v1, p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(JLandroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2

    .line 209
    :cond_f
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 5
    .param p0, "threadId"    # J

    .line 191
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 193
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v1, :cond_18

    .line 194
    new-instance v2, Landroid/view/accessibility/AccessibilityInteractionClient;

    invoke-direct {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>()V

    move-object v1, v2

    .line 195
    sget-object v2, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 197
    :cond_18
    monitor-exit v0

    return-object v1

    .line 198
    .end local v1    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static blacklist getInstanceForThread(JLandroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;
    .registers 6
    .param p0, "threadId"    # J
    .param p2, "context"    # Landroid/content/Context;

    .line 222
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 224
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v1, :cond_18

    .line 225
    new-instance v2, Landroid/view/accessibility/AccessibilityInteractionClient;

    invoke-direct {v2, p2}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 226
    sget-object v2, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 228
    :cond_18
    monitor-exit v0

    return-object v1

    .line 229
    .end local v1    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private greylist-max-o getPerformAccessibilityActionResultAndClear(I)Z
    .registers 5
    .param p1, "interactionId"    # I

    .line 1322
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_3
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 1324
    .local v1, "success":Z
    if-eqz v1, :cond_c

    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 1325
    .local v2, "result":Z
    :goto_d
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 1326
    monitor-exit v0

    return v2

    .line 1327
    .end local v1    # "success":Z
    .end local v2    # "result":Z
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o getSameProcessMessageAndClear()Landroid/os/Message;
    .registers 4

    .line 1507
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1508
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 1509
    .local v1, "result":Landroid/os/Message;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 1510
    monitor-exit v0

    return-object v1

    .line 1511
    .end local v1    # "result":Landroid/os/Message;
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static blacklist hasAnyDirectConnection()Z
    .registers 1

    .line 304
    sget v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sDirectConnectionCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static greylist-max-o idToString(IJ)Ljava/lang/String;
    .registers 5
    .param p0, "accessibilityWindowId"    # I
    .param p1, "accessibilityNodeId"    # J

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 737
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->idToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    return-object v0
.end method

.method private blacklist isWindowScrolling(I)Z
    .registers 11
    .param p1, "windowId"    # I

    .line 1595
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 1596
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    .line 1597
    .local v1, "latestScrollingTime":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    .line 1598
    monitor-exit v0

    return v4

    .line 1600
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1601
    .local v5, "currentUptime":J
    sget-wide v7, Landroid/view/accessibility/AccessibilityInteractionClient;->DISABLE_PREFETCHING_FOR_SCROLLING_MILLIS:J

    add-long/2addr v7, v1

    cmp-long v3, v5, v7

    if-lez v3, :cond_24

    .line 1602
    sget-object v3, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1603
    monitor-exit v0

    return v4

    .line 1605
    .end local v1    # "latestScrollingTime":J
    .end local v5    # "currentUptime":J
    :cond_24
    monitor-exit v0

    .line 1606
    const/4 v0, 0x1

    return v0

    .line 1605
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method static synthetic blacklist lambda$attachAccessibilityOverlayToDisplay$8(Ljava/util/function/IntConsumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/IntConsumer;

    .line 1710
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private synthetic blacklist lambda$attachAccessibilityOverlayToDisplay$9(I)V
    .registers 3
    .param p1, "interactionId"    # I

    .line 1721
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAttachAccessibilityOverlayCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1722
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->sendAttachOverlayResult(II)V

    .line 1726
    :cond_c
    return-void
.end method

.method static synthetic blacklist lambda$attachAccessibilityOverlayToWindow$6(Ljava/util/function/IntConsumer;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/IntConsumer;

    .line 1670
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private synthetic blacklist lambda$attachAccessibilityOverlayToWindow$7(I)V
    .registers 4
    .param p1, "interactionId"    # I

    .line 1681
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1683
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAttachAccessibilityOverlayCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1684
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->sendAttachOverlayResult(II)V

    .line 1688
    :cond_f
    monitor-exit v0

    .line 1689
    return-void

    .line 1688
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method static synthetic blacklist lambda$sendAttachOverlayResult$10(Ljava/util/function/IntConsumer;I)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/IntConsumer;
    .param p1, "result"    # I

    .line 1759
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendTakeScreenshotOfWindowError$5(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    .param p1, "errorCode"    # I

    .line 1392
    invoke-interface {p0, p1}, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;->onFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendWindowScreenshotSuccess$4(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    .param p1, "result"    # Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    .line 1370
    invoke-interface {p0, p1}, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;->onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V

    return-void
.end method

.method static synthetic blacklist lambda$takeScreenshotOfWindow$0(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 821
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;->onFailure(I)V

    return-void
.end method

.method private synthetic blacklist lambda$takeScreenshotOfWindow$1(ILandroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V
    .registers 5
    .param p1, "interactionId"    # I
    .param p2, "screenshot"    # Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .param p3, "status"    # I

    .line 836
    if-eqz p3, :cond_7

    .line 837
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->sendTakeScreenshotOfWindowError(II)V

    goto :goto_a

    .line 842
    :cond_7
    invoke-direct {p0, p2, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->sendWindowScreenshotSuccess(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V

    .line 845
    :goto_a
    return-void
.end method

.method private synthetic blacklist lambda$takeScreenshotOfWindow$2(I)V
    .registers 4
    .param p1, "interactionId"    # I

    .line 849
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 852
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->sendTakeScreenshotOfWindowError(II)V

    .line 856
    :cond_f
    monitor-exit v0

    .line 857
    return-void

    .line 856
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method static synthetic blacklist lambda$takeScreenshotOfWindow$3(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 862
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;->onFailure(I)V

    return-void
.end method

.method private blacklist logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V
    .registers 25
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p7, "logTypes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1624
    .local p5, "callStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    .local p6, "ignoreSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v1, p6

    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    .line 1625
    .local v13, "b":Landroid/os/Bundle;
    const-string v0, "call_stack"

    new-instance v2, Ljava/util/ArrayList;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_52

    move-object/from16 v14, p5

    :try_start_e
    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v13, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1626
    if-eqz v1, :cond_1b

    .line 1627
    const-string v0, "ignore_call_stack"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1629
    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessibilityInteractionClient."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2a} :catch_4e

    move-object/from16 v15, p2

    :try_start_2c
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1631
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    .line 1629
    move-object/from16 v2, p1

    move-object/from16 v8, p3

    move/from16 v12, p4

    move-wide/from16 v6, p7

    invoke-interface/range {v2 .. v13}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_4b} :catch_4c

    .line 1635
    .end local v13    # "b":Landroid/os/Bundle;
    goto :goto_6f

    .line 1633
    :catch_4c
    move-exception v0

    goto :goto_57

    :catch_4e
    move-exception v0

    move-object/from16 v15, p2

    goto :goto_57

    :catch_52
    move-exception v0

    move-object/from16 v15, p2

    move-object/from16 v14, p5

    .line 1634
    .local v0, "e":Landroid/os/RemoteException;
    :goto_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log trace. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessibilityInteractionClient"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6f
    return-void
.end method

.method private blacklist logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    iget-object v6, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    new-instance v7, Ljava/util/HashSet;

    const-string v0, "getStackTrace"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1641
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1640
    const-wide/16 v8, 0x20

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .end local p1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local p3    # "params":Ljava/lang/String;
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v4, "params":Ljava/lang/String;
    invoke-direct/range {v1 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V

    .line 1643
    return-void
.end method

.method private blacklist logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 1647
    nop

    .line 1651
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1652
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    const-string v0, "getStackTrace"

    const-string v1, "logTraceClient"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1653
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1647
    const-wide/32 v7, 0x40000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "params":Ljava/lang/String;
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v2, "method":Ljava/lang/String;
    .local v3, "params":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V

    .line 1655
    return-void
.end method

.method public static greylist-max-o removeConnection(I)V
    .registers 3
    .param p0, "connectionId"    # I

    .line 323
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 324
    :try_start_3
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    instance-of v1, v1, Landroid/view/accessibility/DirectAccessibilityConnection;

    if-eqz v1, :cond_11

    .line 325
    sget v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sDirectConnectionCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sDirectConnectionCount:I

    .line 327
    :cond_11
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 328
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 329
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private blacklist sendWindowScreenshotSuccess(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V
    .registers 9
    .param p1, "screenshot"    # Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .param p2, "interactionId"    # I

    .line 1356
    if-nez p1, :cond_7

    .line 1357
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->sendTakeScreenshotOfWindowError(II)V

    .line 1359
    return-void

    .line 1361
    :cond_7
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1362
    :try_start_a
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1363
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    .line 1364
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    .line 1365
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;J)V

    .line 1366
    .local v1, "result":Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;

    .line 1367
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1368
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 1369
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 1370
    .local v4, "callback":Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    new-instance v5, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda8;

    invoke-direct {v5, v4, v1}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda8;-><init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1371
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1373
    .end local v1    # "result":Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;>;"
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "callback":Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    :cond_40
    monitor-exit v0

    .line 1374
    return-void

    .line 1373
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_42

    throw v1
.end method

.method public static blacklist setCache(ILandroid/view/accessibility/AccessibilityCache;)V
    .registers 4
    .param p0, "connectionId"    # I
    .param p1, "cache"    # Landroid/view/accessibility/AccessibilityCache;

    .line 338
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 339
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist setInteractionWaitingForPrefetchResult(II[Ljava/lang/String;)V
    .registers 6
    .param p1, "interactionId"    # I
    .param p2, "connectionId"    # I
    .param p3, "packageNames"    # [Ljava/lang/String;

    .line 728
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_3
    iput p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    .line 730
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mConnectionIdWaitingForPrefetchResult:I

    .line 731
    iput-object p3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    .line 732
    monitor-exit v0

    .line 733
    return-void

    .line 732
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private blacklist shouldTraceCallback()Z
    .registers 2

    .line 1615
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1616
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isA11yInteractionConnectionCBTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1615
    :goto_f
    return v0
.end method

.method private blacklist shouldTraceClient()Z
    .registers 2

    .line 1610
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1611
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isA11yInteractionClientTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1610
    :goto_f
    return v0
.end method

.method private blacklist updateScrollingWindow(IJ)V
    .registers 6
    .param p1, "windowId"    # I
    .param p2, "uptimeMillis"    # J

    .line 1572
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 1573
    :try_start_3
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1574
    monitor-exit v0

    .line 1575
    return-void

    .line 1574
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private greylist-max-o waitForResultTimedLocked(I)Z
    .registers 13
    .param p1, "interactionId"    # I

    .line 1415
    const-wide/16 v0, 0x1388

    .line 1416
    .local v0, "waitTimeMillis":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1419
    .local v2, "startTimeMillis":J
    :goto_6
    :try_start_6
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getSameProcessMessageAndClear()Landroid/os/Message;

    move-result-object v4

    .line 1420
    .local v4, "sameProcessMessage":Landroid/os/Message;
    if-eqz v4, :cond_13

    .line 1421
    invoke-virtual {v4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1424
    :cond_13
    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-ne v5, p1, :cond_19

    .line 1425
    const/4 v5, 0x1

    return v5

    .line 1427
    :cond_19
    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    const/4 v6, 0x0

    if-le v5, p1, :cond_1f

    .line 1428
    return v6

    .line 1430
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    .line 1431
    .local v7, "elapsedTimeMillis":J
    const-wide/16 v9, 0x1388

    sub-long v0, v9, v7

    .line 1432
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-gtz v5, :cond_2f

    .line 1433
    return v6

    .line 1435
    :cond_2f
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_34} :catch_35

    .end local v4    # "sameProcessMessage":Landroid/os/Message;
    .end local v7    # "elapsedTimeMillis":J
    goto :goto_36

    .line 1436
    :catch_35
    move-exception v4

    .line 1438
    :goto_36
    goto :goto_6
.end method


# virtual methods
.method public blacklist attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 13
    .param p1, "connectionId"    # I
    .param p2, "displayId"    # I
    .param p3, "sc"    # Landroid/view/SurfaceControl;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Ljava/util/function/IntConsumer;

    .line 1704
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1706
    :try_start_3
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 1707
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-nez v1, :cond_13

    .line 1708
    new-instance v2, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda9;

    invoke-direct {v2, p5}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda9;-><init>(Ljava/util/function/IntConsumer;)V

    invoke-interface {p4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_34
    .catchall {:try_start_3 .. :try_end_11} :catchall_32

    .line 1712
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_32

    return-void

    .line 1714
    :cond_13
    :try_start_13
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 1715
    .local v2, "interactionId":I
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAttachAccessibilityOverlayCallbacks:Landroid/util/SparseArray;

    .line 1716
    invoke-static {p4, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 1715
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1717
    invoke-interface {v1, v2, p2, p3, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 1718
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v2}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda10;-><init>(Landroid/view/accessibility/AccessibilityInteractionClient;I)V

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_31} :catch_34
    .catchall {:try_start_13 .. :try_end_31} :catchall_32

    .line 1730
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "interactionId":I
    goto :goto_38

    .line 1731
    :catchall_32
    move-exception v1

    goto :goto_3a

    .line 1728
    :catch_34
    move-exception v1

    .line 1729
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_35
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1731
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_38
    monitor-exit v0

    .line 1732
    return-void

    .line 1731
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_32

    throw v1
.end method

.method public blacklist attachAccessibilityOverlayToWindow(IILandroid/view/SurfaceControl;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 13
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "sc"    # Landroid/view/SurfaceControl;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Ljava/util/function/IntConsumer;

    .line 1664
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1666
    :try_start_3
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 1667
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-nez v1, :cond_13

    .line 1668
    new-instance v2, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda5;

    invoke-direct {v2, p5}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/IntConsumer;)V

    invoke-interface {p4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_34
    .catchall {:try_start_3 .. :try_end_11} :catchall_32

    .line 1672
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_32

    return-void

    .line 1674
    :cond_13
    :try_start_13
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 1675
    .local v2, "interactionId":I
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAttachAccessibilityOverlayCallbacks:Landroid/util/SparseArray;

    .line 1676
    invoke-static {p4, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 1675
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1677
    invoke-interface {v1, v2, p2, p3, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->attachAccessibilityOverlayToWindow(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 1679
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v2}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda6;-><init>(Landroid/view/accessibility/AccessibilityInteractionClient;I)V

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_31} :catch_34
    .catchall {:try_start_13 .. :try_end_31} :catchall_32

    .line 1693
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "interactionId":I
    goto :goto_38

    .line 1694
    :catchall_32
    move-exception v1

    goto :goto_3a

    .line 1691
    :catch_34
    move-exception v1

    .line 1692
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_35
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1694
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_38
    monitor-exit v0

    .line 1695
    return-void

    .line 1694
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_32

    throw v1
.end method

.method public clearCache(I)V
    .registers 3
    .param p1, "connectionId"    # I

    .line 1141
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 1142
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_7

    .line 1143
    return-void

    .line 1145
    :cond_7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 1146
    return-void
.end method

.method public greylist-max-o findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 28
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "bypassCache"    # Z
    .param p6, "prefetchFlags"    # I
    .param p7, "arguments"    # Landroid/os/Bundle;

    .line 608
    move-object/from16 v6, p0

    move/from16 v11, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v12, p5

    move/from16 v1, p6

    move-object/from16 v10, p7

    :try_start_e
    invoke-static {v11}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_1dd

    move-object v5, v0

    .line 609
    .local v5, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v5, :cond_1dc

    .line 610
    const-string v0, ";arguments="

    const-string v7, ";prefetchFlags="

    const-string v8, ";bypassCache="

    const-string v9, ";accessibilityNodeId="

    const-string v13, ";accessibilityWindowId="

    const-string v14, "connectionId="

    if-nez v12, :cond_8b

    .line 611
    :try_start_23
    invoke-static {v11}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v15

    .line 612
    .local v15, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-eqz v15, :cond_88

    .line 613
    invoke-virtual {v15, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v16

    .line 615
    .local v16, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v16, :cond_7d

    .line 620
    invoke-direct {v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v17

    if-eqz v17, :cond_7a

    .line 621
    move-object/from16 v17, v15

    .end local v15    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .local v17, "cache":Landroid/view/accessibility/AccessibilityCache;
    const-string v15, "findAccessibilityNodeInfoByAccessibilityId cache"

    move-object/from16 v18, v5

    .end local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v18, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v18

    .end local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    invoke-direct {v6, v5, v15, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 620
    .end local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v15    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :cond_7a
    move-object/from16 v17, v15

    .line 629
    .end local v15    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :goto_7c
    return-object v16

    .line 631
    .end local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v15    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :cond_7d
    move-object/from16 v17, v15

    .end local v15    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityCache;->isEnabled()Z

    move-result v15
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_83} :catch_1dd

    if-nez v15, :cond_8a

    .line 633
    and-int/lit8 v1, v1, -0x40

    .end local p6    # "prefetchFlags":I
    .local v1, "prefetchFlags":I
    goto :goto_8a

    .line 612
    .end local v1    # "prefetchFlags":I
    .end local v16    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v15    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local p6    # "prefetchFlags":I
    :cond_88
    move-object/from16 v17, v15

    .line 644
    .end local v15    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local p6    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    :cond_8a
    :goto_8a
    goto :goto_8d

    .line 646
    .end local v1    # "prefetchFlags":I
    .restart local p6    # "prefetchFlags":I
    :cond_8b
    and-int/lit8 v1, v1, -0x40

    .line 649
    .end local p6    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    :goto_8d
    and-int/lit8 v15, v1, 0x3f

    if-eqz v15, :cond_9e

    .line 650
    :try_start_91
    invoke-direct {v6, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->isWindowScrolling(I)Z

    move-result v15
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_95} :catch_9a

    if-eqz v15, :cond_9e

    .line 651
    and-int/lit8 v1, v1, -0x40

    goto :goto_9e

    .line 719
    .end local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_9a
    move-exception v0

    move v7, v1

    goto/16 :goto_1df

    .line 654
    .restart local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_9e
    :goto_9e
    and-int/lit8 v15, v1, 0x1c

    .line 655
    .local v15, "descendantPrefetchFlags":I
    add-int/lit8 v16, v15, -0x1

    and-int v16, v15, v16

    if-nez v16, :cond_1cf

    .line 659
    move/from16 p6, v15

    .end local v15    # "descendantPrefetchFlags":I
    .local p6, "descendantPrefetchFlags":I
    :try_start_a8
    iget-object v15, v6, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v15

    .line 660
    .local v15, "interactionId":I
    invoke-direct {v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v16
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b2} :catch_1cc

    move-object/from16 v18, v5

    .end local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    const-string v5, "InteractionId:"

    const-string v6, "findAccessibilityNodeInfoByAccessibilityId"

    if-eqz v16, :cond_10d

    .line 661
    move-object/from16 v16, v6

    :try_start_bc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_fd} :catch_108

    move-object/from16 v6, p0

    move v7, v1

    move-object/from16 v8, v16

    move-object/from16 v1, v18

    .end local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v7, "prefetchFlags":I
    :try_start_104
    invoke-direct {v6, v1, v8, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_113

    .line 719
    .end local v7    # "prefetchFlags":I
    .end local v15    # "interactionId":I
    .end local p6    # "descendantPrefetchFlags":I
    .local v1, "prefetchFlags":I
    :catch_108
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_1cd

    .line 660
    .restart local v15    # "interactionId":I
    .restart local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local p6    # "descendantPrefetchFlags":I
    :cond_10d
    move v7, v1

    move-object v8, v6

    move-object/from16 v1, v18

    move-object/from16 v6, p0

    .line 669
    .end local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v7    # "prefetchFlags":I
    :goto_113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_117
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_117} :catch_1da

    .line 671
    .local v13, "identityToken":J
    nop

    .line 673
    :try_start_118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16
    :try_end_120
    .catchall {:try_start_118 .. :try_end_120} :catchall_1c4

    .line 671
    move-object v0, v5

    move v5, v15

    move-object v15, v8

    move-wide/from16 v8, v16

    .end local v15    # "interactionId":I
    .local v5, "interactionId":I
    :try_start_125
    invoke-interface/range {v1 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v8
    :try_end_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_1bd

    move/from16 v19, v5

    move-object v5, v1

    move/from16 v1, v19

    .line 675
    .local v1, "interactionId":I
    .local v5, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v8, "packageNames":[Ljava/lang/String;
    :try_start_12e
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_12e .. :try_end_131} :catch_1da

    .line 676
    nop

    .line 677
    if-eqz v8, :cond_1bb

    .line 678
    and-int/lit8 v2, v7, 0x20

    const-string v3, ";Result: "

    const-string v4, ";connectionId="

    if-eqz v2, :cond_17f

    .line 680
    nop

    .line 681
    :try_start_13d
    invoke-direct {v6, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v2

    .line 683
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v9

    if-eqz v9, :cond_16b

    .line 684
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v5, v15, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_16b
    invoke-direct {v6, v2, v11, v12, v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 691
    if-eqz v2, :cond_17e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17e

    .line 692
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0

    .line 694
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_17e
    goto :goto_1bb

    .line 695
    :cond_17f
    nop

    .line 696
    invoke-direct {v6, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 697
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v9

    if-eqz v9, :cond_1ae

    .line 698
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v5, v15, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_1ae
    and-int/lit8 v0, v7, 0x3f

    if-eqz v0, :cond_1b7

    if-eqz v2, :cond_1b7

    .line 705
    invoke-direct {v6, v1, v11, v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->setInteractionWaitingForPrefetchResult(II[Ljava/lang/String;)V

    .line 708
    :cond_1b7
    invoke-direct {v6, v2, v11, v12, v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 710
    return-object v2

    .line 722
    .end local v1    # "interactionId":I
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v8    # "packageNames":[Ljava/lang/String;
    .end local v13    # "identityToken":J
    .end local p6    # "descendantPrefetchFlags":I
    :cond_1bb
    :goto_1bb
    move v1, v7

    goto :goto_1dc

    .line 675
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v5, "interactionId":I
    .restart local v13    # "identityToken":J
    .restart local p6    # "descendantPrefetchFlags":I
    :catchall_1bd
    move-exception v0

    move/from16 v19, v5

    move-object v5, v1

    move/from16 v1, v19

    .local v1, "interactionId":I
    .local v5, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    goto :goto_1c7

    .end local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v15    # "interactionId":I
    :catchall_1c4
    move-exception v0

    move-object v5, v1

    move v1, v15

    .end local v15    # "interactionId":I
    .local v1, "interactionId":I
    .restart local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :goto_1c7
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    nop

    .end local v7    # "prefetchFlags":I
    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "bypassCache":Z
    .end local p7    # "arguments":Landroid/os/Bundle;
    throw v0

    .line 719
    .end local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "identityToken":J
    .end local p6    # "descendantPrefetchFlags":I
    .local v1, "prefetchFlags":I
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "bypassCache":Z
    .restart local p7    # "arguments":Landroid/os/Bundle;
    :catch_1cc
    move-exception v0

    :goto_1cd
    move v7, v1

    .end local v1    # "prefetchFlags":I
    .restart local v7    # "prefetchFlags":I
    goto :goto_1df

    .line 656
    .end local v7    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    .restart local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v15, "descendantPrefetchFlags":I
    :cond_1cf
    move v7, v1

    move/from16 p6, v15

    .end local v1    # "prefetchFlags":I
    .end local v15    # "descendantPrefetchFlags":I
    .restart local v7    # "prefetchFlags":I
    .restart local p6    # "descendantPrefetchFlags":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There can be no more than one descendant prefetching strategy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v7    # "prefetchFlags":I
    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "bypassCache":Z
    .end local p7    # "arguments":Landroid/os/Bundle;
    throw v0
    :try_end_1da
    .catch Landroid/os/RemoteException; {:try_start_13d .. :try_end_1da} :catch_1da

    .line 719
    .end local v5    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local p6    # "descendantPrefetchFlags":I
    .restart local v7    # "prefetchFlags":I
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "bypassCache":Z
    .restart local p7    # "arguments":Landroid/os/Bundle;
    :catch_1da
    move-exception v0

    goto :goto_1df

    .line 722
    .end local v7    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    :cond_1dc
    :goto_1dc
    goto :goto_1e7

    .line 719
    .end local v1    # "prefetchFlags":I
    .local p6, "prefetchFlags":I
    :catch_1dd
    move-exception v0

    move v7, v1

    .line 720
    .end local p6    # "prefetchFlags":I
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v7    # "prefetchFlags":I
    :goto_1df
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfoByAccessibilityId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 723
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v7    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    :goto_1e7
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityId(ILandroid/os/IBinder;JZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 22
    .param p1, "connectionId"    # I
    .param p2, "leashToken"    # Landroid/os/IBinder;
    .param p3, "accessibilityNodeId"    # J
    .param p5, "bypassCache"    # Z
    .param p6, "prefetchFlags"    # I
    .param p7, "arguments"    # Landroid/os/Bundle;

    .line 566
    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 567
    return-object v2

    .line 569
    :cond_6
    const/4 v3, -0x1

    .line 571
    .local v3, "windowId":I
    :try_start_7
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 572
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_12

    .line 573
    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindowIdForLeashToken(Landroid/os/IBinder;)I

    move-result v4
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_14

    move v3, v4

    .line 581
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_12
    move v8, v3

    goto :goto_1d

    .line 579
    :catch_14
    move-exception v0

    .line 580
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityInteractionClient"

    const-string v5, "Error while calling remote getWindowIdForLeashToken"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v3

    .line 582
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v3    # "windowId":I
    .local v8, "windowId":I
    :goto_1d
    const/4 v0, -0x1

    if-ne v8, v0, :cond_21

    .line 583
    return-object v2

    .line 585
    :cond_21
    move-object v6, p0

    move v7, p1

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v6 .. v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;
    .registers 19
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 888
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v1, v0

    .line 889
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v1, :cond_bf

    .line 890
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    .line 891
    .local v6, "interactionId":I
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_c0

    const-string v10, "findAccessibilityNodeInfosByText"

    if-eqz v0, :cond_60

    .line 892
    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InteractionId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "connectionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";accessibilityWindowId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";accessibilityNodeId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_3e} :catch_5a

    move-wide/from16 v3, p3

    :try_start_40
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4a} :catch_58

    move-object/from16 v5, p5

    :try_start_4c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v10, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 926
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6    # "interactionId":I
    :catch_58
    move-exception v0

    goto :goto_5d

    :catch_5a
    move-exception v0

    move-wide/from16 v3, p3

    :goto_5d
    move-object/from16 v5, p5

    goto :goto_c1

    .line 891
    .restart local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v6    # "interactionId":I
    :cond_60
    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 898
    :goto_64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_68} :catch_c0

    move-wide v11, v7

    .line 900
    .local v11, "identityToken":J
    nop

    .line 902
    :try_start_6a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 900
    move-object v7, p0

    move v2, p2

    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_78
    .catchall {:try_start_6a .. :try_end_78} :catchall_b9

    .line 904
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_78
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    nop

    .line 907
    if-eqz v0, :cond_bf

    .line 908
    invoke-direct {p0, v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v2

    .line 910
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InteractionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";connectionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v10, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_b2
    if-eqz v2, :cond_bf

    .line 916
    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 918
    return-object v2

    .line 904
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_b9
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "text":Ljava/lang/String;
    throw v0
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_bf} :catch_c0

    .line 929
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6    # "interactionId":I
    .end local v11    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "text":Ljava/lang/String;
    :cond_bf
    goto :goto_c8

    .line 926
    :catch_c0
    move-exception v0

    .line 927
    .local v0, "re":Landroid/os/RemoteException;
    :goto_c1
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfosByViewText"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_c8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;
    .registers 22
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 759
    move-object/from16 v7, p0

    move/from16 v10, p1

    :try_start_4
    invoke-static {v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 760
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v1, :cond_c4

    .line 761
    iget-object v0, v7, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    .line 763
    .local v6, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_c5

    move-wide v11, v2

    .line 765
    .local v11, "identityToken":J
    :try_start_15
    invoke-direct {v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_be

    const-string v13, ";connectionId="

    const-string v14, "InteractionId="

    const-string v15, "findAccessibilityNodeInfosByViewId"

    if-eqz v0, :cond_6e

    .line 766
    :try_start_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";accessibilityWindowId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_66

    move/from16 v2, p2

    :try_start_3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";accessibilityNodeId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_64

    move-wide/from16 v3, p3

    :try_start_4a
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ";viewId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_62

    move-object/from16 v5, p5

    :try_start_56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v1, v15, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    .line 777
    :catchall_62
    move-exception v0

    goto :goto_6b

    :catchall_64
    move-exception v0

    goto :goto_69

    :catchall_66
    move-exception v0

    move/from16 v2, p2

    :goto_69
    move-wide/from16 v3, p3

    :goto_6b
    move-object/from16 v5, p5

    goto :goto_bf

    .line 765
    :cond_6e
    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 773
    :goto_74
    nop

    .line 775
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 773
    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_81
    .catchall {:try_start_56 .. :try_end_81} :catchall_be

    .line 777
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_81
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    nop

    .line 780
    if-eqz v0, :cond_c4

    .line 781
    invoke-direct {v7, v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v2

    .line 783
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v1, v15, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :cond_b7
    if-eqz v2, :cond_c4

    .line 789
    const/4 v3, 0x0

    invoke-direct {v7, v2, v10, v3, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 791
    return-object v2

    .line 777
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_be
    move-exception v0

    :goto_bf
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "viewId":Ljava/lang/String;
    throw v0
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_c4} :catch_c5

    .line 802
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6    # "interactionId":I
    .end local v11    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "viewId":Ljava/lang/String;
    :cond_c4
    goto :goto_cd

    .line 799
    :catch_c5
    move-exception v0

    .line 800
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfoByViewIdInActiveWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_cd
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 21
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "focusType"    # I

    .line 953
    move/from16 v1, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    :try_start_8
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 954
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_c0

    .line 955
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    move-object v11, v0

    .line 956
    .local v11, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-eqz v11, :cond_1c

    .line 957
    invoke-virtual {v11, v6, v4, v5, v3}, Landroid/view/accessibility/AccessibilityCache;->getFocus(IJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 959
    .local v0, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1c

    .line 965
    return-object v0

    .line 976
    .end local v0    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1c
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    .line 977
    .local v7, "interactionId":I
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_26} :catch_c1

    const-string v12, "findFocus"

    if-eqz v0, :cond_68

    .line 978
    :try_start_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InteractionId:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "connectionId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ";accessibilityWindowId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ";accessibilityNodeId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ";focusType="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v12, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_6c} :catch_c1

    move-wide v13, v8

    .line 987
    .local v13, "identityToken":J
    nop

    .line 989
    :try_start_6e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    .line 987
    move-object v8, p0

    invoke-interface/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_ba

    .line 991
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_7b
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 992
    nop

    .line 994
    if-eqz v0, :cond_c0

    .line 995
    invoke-direct {p0, v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 997
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 998
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InteractionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";connectionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";Result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v12, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :cond_b5
    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 1002
    return-object v3

    .line 991
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v3    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_ba
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 992
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "focusType":I
    throw v0
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_c0} :catch_c1

    .line 1011
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "interactionId":I
    .end local v11    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v13    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "focusType":I
    :cond_c0
    goto :goto_c9

    .line 1009
    :catch_c1
    move-exception v0

    .line 1010
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityInteractionClient"

    const-string v3, "Error while calling remote findFocus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1012
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_c9
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 19
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "direction"    # I

    .line 1034
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v1, v0

    .line 1035
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v1, :cond_bd

    .line 1036
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    .line 1037
    .local v6, "interactionId":I
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_be

    const-string v10, "focusSearch"

    if-eqz v0, :cond_60

    .line 1038
    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InteractionId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "connectionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";accessibilityWindowId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";accessibilityNodeId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_3e} :catch_5a

    move-wide/from16 v3, p3

    :try_start_40
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";direction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4a} :catch_58

    move/from16 v5, p5

    :try_start_4c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v10, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 1069
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6    # "interactionId":I
    :catch_58
    move-exception v0

    goto :goto_5d

    :catch_5a
    move-exception v0

    move-wide/from16 v3, p3

    :goto_5d
    move/from16 v5, p5

    goto :goto_bf

    .line 1037
    .restart local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v6    # "interactionId":I
    :cond_60
    move-wide/from16 v3, p3

    move/from16 v5, p5

    .line 1045
    :goto_64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_68} :catch_be

    move-wide v11, v7

    .line 1047
    .local v11, "identityToken":J
    nop

    .line 1049
    :try_start_6a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 1047
    move-object v7, p0

    move v2, p2

    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_78
    .catchall {:try_start_6a .. :try_end_78} :catchall_b7

    .line 1051
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_78
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1052
    nop

    .line 1054
    if-eqz v0, :cond_bd

    .line 1055
    invoke-direct {p0, v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 1057
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 1058
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InteractionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";connectionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v10, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_b6
    return-object v2

    .line 1051
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_b7
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1052
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "direction":I
    throw v0
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_bd} :catch_be

    .line 1071
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6    # "interactionId":I
    .end local v11    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "direction":I
    :cond_bd
    goto :goto_c6

    .line 1069
    :catch_be
    move-exception v0

    .line 1070
    .local v0, "re":Landroid/os/RemoteException;
    :goto_bf
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote accessibilityFocusSearch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1072
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_c6
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRootInActiveWindow(II)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 11
    .param p1, "connectionId"    # I
    .param p2, "strategy"    # I

    .line 374
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v2, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v6, p2

    .end local p1    # "connectionId":I
    .end local p2    # "strategy":I
    .local v1, "connectionId":I
    .local v6, "strategy":I
    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 4
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 13
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "bypassCache"    # Z

    .line 405
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 406
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_8d

    .line 408
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_8e

    .line 409
    .local v1, "cache":Landroid/view/accessibility/AccessibilityCache;
    const-string v2, ";accessibilityWindowId="

    const-string v3, "connectionId="

    if-eqz v1, :cond_43

    .line 410
    if-nez p3, :cond_43

    .line 411
    :try_start_12
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityCache;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 412
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v4, :cond_43

    .line 416
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 417
    const-string v5, "getWindow cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";bypassCache=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v5, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_42
    return-object v4

    .line 433
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_47} :catch_8e

    .line 435
    .local v4, "identityToken":J
    :try_start_47
    invoke-interface {v0, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_87

    .line 437
    .local v6, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_start_4b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    nop

    .line 439
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 440
    const-string v7, "getWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";bypassCache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v7, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_7d
    if-eqz v6, :cond_8d

    .line 446
    if-nez p3, :cond_86

    if-eqz v1, :cond_86

    .line 447
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 449
    :cond_86
    return-object v6

    .line 437
    .end local v6    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_87
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "bypassCache":Z
    throw v2
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_8d} :catch_8e

    .line 458
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v4    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "bypassCache":Z
    :cond_8d
    goto :goto_96

    .line 456
    :catch_8e
    move-exception v0

    .line 457
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote getWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_96
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getWindows(I)Ljava/util/List;
    .registers 3
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnDisplay(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindowsOnAllDisplays(I)Landroid/util/SparseArray;
    .registers 12
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 492
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 493
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_6b

    .line 495
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_6c

    .line 496
    .local v1, "cache":Landroid/view/accessibility/AccessibilityCache;
    const-string v2, "connectionId="

    if-eqz v1, :cond_31

    .line 497
    :try_start_e
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityCache;->getWindowsOnAllDisplays()Landroid/util/SparseArray;

    move-result-object v3

    .line 498
    .local v3, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    if-eqz v3, :cond_31

    .line 502
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 503
    const-string v4, "getWindows cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_30
    return-object v3

    .line 518
    .end local v3    # "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    :cond_31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_35} :catch_6c

    .line 520
    .local v3, "identityToken":J
    :try_start_35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 521
    .local v5, "populationTimeStamp":J
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object v7
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_65

    .line 523
    .local v7, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    :try_start_3d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    nop

    .line 525
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 526
    const-string v8, "getWindows"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v8, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_5d
    if-eqz v7, :cond_6b

    .line 529
    if-eqz v1, :cond_64

    .line 530
    invoke-virtual {v1, v7, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->setWindowsOnAllDisplays(Landroid/util/SparseArray;J)V

    .line 532
    :cond_64
    return-object v7

    .line 523
    .end local v5    # "populationTimeStamp":J
    .end local v7    # "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    :catchall_65
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    throw v2
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_6b} :catch_6c

    .line 541
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v3    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    :cond_6b
    goto :goto_74

    .line 539
    :catch_6c
    move-exception v0

    .line 540
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote getWindowsOnAllDisplays"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 544
    .local v0, "emptyWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    return-object v0
.end method

.method public blacklist getWindowsOnDisplay(II)Ljava/util/List;
    .registers 5
    .param p1, "connectionId"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 479
    nop

    .line 480
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnAllDisplays(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 481
    .local v0, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public blacklist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "connectionId"    # I

    .line 1154
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_2e

    goto :goto_23

    .line 1159
    :sswitch_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 1160
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->deleteScrollingWindow(I)V

    goto :goto_23

    .line 1156
    :sswitch_17
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->updateScrollingWindow(IJ)V

    .line 1157
    nop

    .line 1166
    :cond_23
    :goto_23
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 1167
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_2a

    .line 1171
    return-void

    .line 1173
    :cond_2a
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1174
    return-void

    :sswitch_data_2e
    .sparse-switch
        0x1000 -> :sswitch_17
        0x400000 -> :sswitch_8
    .end sparse-switch
.end method

.method public greylist-max-o performAccessibilityAction(IIJILandroid/os/Bundle;)Z
    .registers 22
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "action"    # I
    .param p6, "arguments"    # Landroid/os/Bundle;

    .line 1093
    move/from16 v1, p1

    :try_start_2
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v2, v0

    .line 1094
    .local v2, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_d5

    .line 1095
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v8

    .line 1096
    .local v8, "interactionId":I
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_d6

    const-string v12, "performAccessibilityAction"

    if-eqz v0, :cond_78

    .line 1097
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractionId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "connectionId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";accessibilityWindowId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_36} :catch_6e

    move/from16 v3, p2

    :try_start_38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";accessibilityNodeId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_42} :catch_6c

    move-wide/from16 v4, p3

    :try_start_44
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ";action="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4e} :catch_6a

    move/from16 v6, p5

    :try_start_50
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ";arguments="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5a} :catch_68

    move-object/from16 v7, p6

    :try_start_5c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v12, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 1128
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v8    # "interactionId":I
    :catch_68
    move-exception v0

    goto :goto_75

    :catch_6a
    move-exception v0

    goto :goto_73

    :catch_6c
    move-exception v0

    goto :goto_71

    :catch_6e
    move-exception v0

    move/from16 v3, p2

    :goto_71
    move-wide/from16 v4, p3

    :goto_73
    move/from16 v6, p5

    :goto_75
    move-object/from16 v7, p6

    goto :goto_d7

    .line 1096
    .restart local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v8    # "interactionId":I
    :cond_78
    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 1104
    :goto_80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_84} :catch_d6

    move-wide v13, v9

    .line 1106
    .local v13, "identityToken":J
    nop

    .line 1108
    :try_start_86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    .line 1106
    move-object v9, p0

    invoke-interface/range {v2 .. v11}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v0
    :try_end_93
    .catchall {:try_start_86 .. :try_end_93} :catchall_cf

    .line 1110
    .local v0, "success":Z
    :try_start_93
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    nop

    .line 1113
    if-eqz v0, :cond_d5

    .line 1114
    nop

    .line 1115
    invoke-direct {p0, v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->getPerformAccessibilityActionResultAndClear(I)Z

    move-result v3

    .line 1116
    .local v3, "result":Z
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 1117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InteractionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";connectionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v12, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_ce
    return v3

    .line 1110
    .end local v0    # "success":Z
    .end local v3    # "result":Z
    :catchall_cf
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "action":I
    .end local p6    # "arguments":Landroid/os/Bundle;
    throw v0
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_d5} :catch_d6

    .line 1130
    .end local v2    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v8    # "interactionId":I
    .end local v13    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "action":I
    .restart local p6    # "arguments":Landroid/os/Bundle;
    :cond_d5
    goto :goto_de

    .line 1128
    :catch_d6
    move-exception v0

    .line 1129
    .local v0, "re":Landroid/os/RemoteException;
    :goto_d7
    const-string v2, "AccessibilityInteractionClient"

    const-string v3, "Error while calling remote performAccessibilityAction"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1131
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_de
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendAttachOverlayResult(II)V
    .registers 8
    .param p1, "result"    # I
    .param p2, "interactionId"    # I

    .line 1744
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yOverlayCallbacks()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1745
    return-void

    .line 1747
    :cond_7
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1748
    :try_start_a
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAttachAccessibilityOverlayCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1749
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAttachAccessibilityOverlayCallbacks:Landroid/util/SparseArray;

    .line 1750
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1751
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;>;"
    if-nez v1, :cond_1e

    .line 1752
    monitor-exit v0

    return-void

    .line 1754
    :cond_1e
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 1755
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/function/IntConsumer;

    .line 1756
    .local v3, "callback":Ljava/util/function/IntConsumer;
    if-eqz v2, :cond_39

    if-nez v3, :cond_2b

    goto :goto_39

    .line 1759
    :cond_2b
    new-instance v4, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda7;

    invoke-direct {v4, v3, p1}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1760
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAttachAccessibilityOverlayCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3b

    .line 1757
    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    .line 1762
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;>;"
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "callback":Ljava/util/function/IntConsumer;
    :cond_3b
    :goto_3b
    monitor-exit v0

    .line 1763
    return-void

    .line 1762
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public blacklist sendTakeScreenshotOfWindowError(II)V
    .registers 8
    .param p1, "errorCode"    # I
    .param p2, "interactionId"    # I

    .line 1386
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1387
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1388
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;

    .line 1389
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1390
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 1391
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 1392
    .local v3, "callback":Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    new-instance v4, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1393
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1395
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;>;"
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "callback":Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    :cond_28
    monitor-exit v0

    .line 1396
    return-void

    .line 1395
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public greylist-max-o setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactionId"    # I

    .line 1198
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1199
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_24

    .line 1200
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1201
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1202
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 1203
    new-instance v1, Ljava/util/ArrayList;

    .line 1204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    .line 1206
    :cond_24
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1207
    monitor-exit v0

    .line 1208
    return-void

    .line 1207
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public greylist-max-o setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .registers 6
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1241
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1242
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_44

    .line 1243
    if-eqz p1, :cond_23

    .line 1246
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 1247
    .local v1, "isIpcCall":Z
    :goto_16
    if-nez v1, :cond_20

    .line 1248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    goto :goto_22

    .line 1250
    :cond_20
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 1252
    .end local v1    # "isIpcCall":Z
    :goto_22
    goto :goto_29

    .line 1253
    :cond_23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 1255
    :goto_29
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 1257
    new-instance v1, Ljava/util/ArrayList;

    .line 1258
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    .line 1260
    :cond_44
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1261
    monitor-exit v0

    .line 1262
    return-void

    .line 1261
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public greylist-max-o setPerformAccessibilityActionResult(ZI)V
    .registers 6
    .param p1, "succeeded"    # Z
    .param p2, "interactionId"    # I

    .line 1336
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1337
    :try_start_3
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_24

    .line 1338
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 1339
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 1341
    new-instance v1, Ljava/util/ArrayList;

    .line 1342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    .line 1344
    :cond_24
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1345
    monitor-exit v0

    .line 1346
    return-void

    .line 1345
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    .registers 16
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1271
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v1, -0x1

    .line 1272
    .local v1, "interactionIdWaitingForPrefetchResultCopy":I
    const/4 v2, -0x1

    .line 1273
    .local v2, "connectionIdWaitingForPrefetchResultCopy":I
    const/4 v3, 0x0

    .line 1275
    .local v3, "packageNamesForNextPrefetchResultCopy":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1276
    return-void

    .line 1279
    :cond_a
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1280
    :try_start_d
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    if-ne v0, p2, :cond_30

    .line 1281
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    move v1, v0

    .line 1282
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mConnectionIdWaitingForPrefetchResult:I

    move v2, v0

    .line 1284
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 1285
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    move-object v3, v0

    .line 1287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_30

    .line 1288
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    aget-object v5, v5, v0

    aput-object v5, v3, v0

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1293
    .end local v0    # "i":I
    :cond_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_8d

    .line 1295
    if-ne v1, p2, :cond_8c

    .line 1296
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 1299
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1300
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v5

    const-string/jumbo v6, "setPrefetchAccessibilityNodeInfoResult"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InteractionId:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";connectionId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";Result: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/HashSet;

    const-string v0, "getStackTrace"

    .line 1306
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1300
    const-wide/16 v11, 0x20

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V

    .line 1313
    :cond_8c
    return-void

    .line 1293
    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0
.end method

.method public greylist-max-r setSameThreadMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 360
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 362
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist takeScreenshotOfWindow(IILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .registers 15
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 817
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_3
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 820
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-nez v1, :cond_13

    .line 821
    new-instance v2, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda1;

    invoke-direct {v2, p4}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_4c
    .catchall {:try_start_3 .. :try_end_11} :catchall_4a

    .line 823
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_4a

    return-void

    .line 825
    :cond_13
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_4c
    .catchall {:try_start_13 .. :try_end_17} :catchall_4a

    .line 827
    .local v2, "identityToken":J
    :try_start_17
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 828
    .local v4, "interactionId":I
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTakeScreenshotOfWindowCallbacks:Landroid/util/SparseArray;

    .line 829
    invoke-static {p3, p4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 828
    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    new-instance v5, Landroid/window/ScreenCapture$ScreenCaptureListener;

    new-instance v6, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v4}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda2;-><init>(Landroid/view/accessibility/AccessibilityInteractionClient;I)V

    invoke-direct {v5, v6}, Landroid/window/ScreenCapture$ScreenCaptureListener;-><init>(Ljava/util/function/ObjIntConsumer;)V

    .line 846
    .local v5, "listener":Landroid/window/ScreenCapture$ScreenCaptureListener;
    invoke-interface {v1, p2, v4, v5, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->takeScreenshotOfWindow(IILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 848
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v4}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda3;-><init>(Landroid/view/accessibility/AccessibilityInteractionClient;I)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_44

    .line 859
    .end local v4    # "interactionId":I
    .end local v5    # "listener":Landroid/window/ScreenCapture$ScreenCaptureListener;
    :try_start_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    nop

    .line 864
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "identityToken":J
    goto :goto_55

    .line 859
    .restart local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v2    # "identityToken":J
    :catchall_44
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    throw v4
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_4a} :catch_4c
    .catchall {:try_start_3f .. :try_end_4a} :catchall_4a

    .line 865
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v2    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;
    :catchall_4a
    move-exception v1

    goto :goto_57

    .line 861
    :catch_4c
    move-exception v1

    .line 862
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_4d
    new-instance v2, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda4;

    invoke-direct {v2, p4}, Landroid/view/accessibility/AccessibilityInteractionClient$$ExternalSyntheticLambda4;-><init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 865
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_55
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_4a

    throw v1
.end method

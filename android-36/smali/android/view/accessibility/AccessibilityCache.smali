.class public Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;,
        Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o CACHE_CRITICAL_EVENTS_MASK:I = 0x41b83d

.field private static final greylist-max-o CHECK_INTEGRITY:Z

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityCache"

.field private static final blacklist VERBOSE:Z


# instance fields
.field private greylist-max-o mAccessibilityFocus:J

.field private blacklist mAccessibilityFocusedWindow:I

.field private final greylist-max-o mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

.field private blacklist mEnabled:Z

.field private greylist-max-o mInputFocus:J

.field private blacklist mInputFocusWindow:I

.field private greylist-max-o mIsAllWindowsCached:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

.field private final greylist-max-o mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mValidWindowCacheTimeStamp:J

.field private final blacklist mWindowCacheByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mWindowIdToEventSourceClassName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 43
    const/4 v0, 0x3

    const-string v1, "AccessibilityCache"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v3

    :goto_12
    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    .line 45
    nop

    .line 46
    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    sput-boolean v2, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    .line 48
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V
    .registers 4
    .param p1, "nodeRefresher"    # Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowIdToEventSourceClassName:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 80
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 81
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 89
    iput v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 105
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .line 106
    return-void
.end method

.method private blacklist addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "window"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 194
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 195
    .local v0, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v0, :cond_15

    .line 196
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 197
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    :cond_15
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    .line 200
    .local v1, "windowId":I
    new-instance v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v2, p2}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method private greylist-max-o clearNodesForWindowLocked(I)V
    .registers 4
    .param p1, "windowId"    # I

    .line 701
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearNodesForWindowLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_22
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 705
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v0, :cond_2d

    .line 706
    return-void

    .line 708
    :cond_2d
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 709
    return-void
.end method

.method private greylist-max-o clearSubTreeLocked(IJ)V
    .registers 6
    .param p1, "windowId"    # I
    .param p2, "rootNodeId"    # J

    .line 736
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 737
    const-string v0, "AccessibilityCache"

    const-string v1, "Clearing cached subtree."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 740
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v0, :cond_18

    .line 741
    invoke-direct {p0, v0, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z

    .line 743
    :cond_18
    return-void
.end method

.method private blacklist clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z
    .registers 11
    .param p2, "rootNodeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)Z"
        }
    .end annotation

    .line 756
    .local p1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 757
    .local v0, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 759
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 760
    return v1

    .line 762
    :cond_d
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 763
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    .line 764
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_25

    .line 765
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    .line 766
    .local v4, "childNodeId":J
    invoke-direct {p0, p1, v4, v5}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 767
    return v1

    .line 764
    .end local v4    # "childNodeId":J
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 770
    .end local v3    # "i":I
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist clearWindowCacheLocked()V
    .registers 6

    .line 591
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 592
    const-string v0, "AccessibilityCache"

    const-string v1, "clearWindowCacheLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 596
    .local v0, "displayCounts":I
    if-lez v0, :cond_32

    .line 597
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_32

    .line 598
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 599
    .local v2, "displayId":I
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 600
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 601
    .local v3, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-eqz v3, :cond_2a

    .line 602
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 604
    :cond_2a
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 597
    .end local v2    # "displayId":I
    .end local v3    # "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 607
    .end local v1    # "i":I
    :cond_32
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 608
    return-void
.end method

.method private blacklist isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z
    .registers 14
    .param p1, "nodeId"    # J
    .param p3, "ancestorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 687
    .local p5, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    cmp-long v0, p3, p1

    if-nez v0, :cond_6

    .line 688
    const/4 v0, 0x1

    return v0

    .line 690
    :cond_6
    invoke-virtual {p5, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 691
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_10

    .line 692
    const/4 v1, 0x0

    return v1

    .line 694
    :cond_10
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v3

    move-object v2, p0

    move-wide v5, p3

    move-object v7, p5

    .end local p3    # "ancestorId":J
    .end local p5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v5, "ancestorId":J
    .local v7, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityCache;->isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z

    move-result p3

    return p3
.end method

.method private blacklist removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 7
    .param p1, "windowId"    # I
    .param p2, "sourceId"    # J

    .line 319
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 320
    const-string v0, "AccessibilityCache"

    const-string v1, "Removing cached node."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 323
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 324
    return-object v1

    .line 326
    :cond_17
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 328
    .local v2, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_20

    .line 329
    return-object v1

    .line 331
    :cond_20
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 332
    return-object v2
.end method


# virtual methods
.method public greylist-max-o add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 14
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 489
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    .line 491
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 492
    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_12
    monitor-exit v0

    return-void

    .line 496
    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_36

    .line 497
    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_36
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    .line 501
    .local v1, "windowId":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 502
    .local v2, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v2, :cond_4f

    .line 503
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    move-object v2, v3

    .line 504
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    :cond_4f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v3

    .line 508
    .local v3, "sourceId":J
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 509
    .local v5, "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v5, :cond_92

    .line 514
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v6

    .line 516
    .local v6, "newChildrenIds":Landroid/util/LongArray;
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v7

    .line 517
    .local v7, "oldChildCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_64
    if-ge v8, v7, :cond_83

    .line 518
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v9

    .line 520
    .local v9, "oldChildId":J
    if-eqz v6, :cond_72

    invoke-virtual {v6, v9, v10}, Landroid/util/LongArray;->indexOf(J)I

    move-result v11

    if-gez v11, :cond_75

    .line 521
    :cond_72
    invoke-direct {p0, v1, v9, v10}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 523
    :cond_75
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_80

    .line 527
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 528
    monitor-exit v0

    return-void

    .line 517
    .end local v9    # "oldChildId":J
    :cond_80
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    .line 535
    .end local v8    # "i":I
    :cond_83
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v8

    .line 536
    .local v8, "oldParentId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_92

    .line 537
    invoke-direct {p0, v1, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 543
    .end local v6    # "newChildrenIds":Landroid/util/LongArray;
    .end local v7    # "oldChildCount":I
    .end local v8    # "oldParentId":J
    :cond_92
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 544
    .local v6, "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v2, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 545
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v7

    const-wide/32 v8, 0x7fffffff

    if-eqz v7, :cond_b9

    .line 546
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_b4

    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v7, v7, v3

    if-eqz v7, :cond_b4

    .line 548
    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v1, v7, v8}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 550
    :cond_b4
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 551
    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    goto :goto_c4

    .line 552
    :cond_b9
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v7, v10, v3

    if-nez v7, :cond_c4

    .line 553
    iput-wide v8, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 554
    const/4 v7, -0x1

    iput v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 556
    :cond_c4
    :goto_c4
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 557
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 558
    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 561
    :cond_ce
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    if-eqz v7, :cond_d7

    .line 562
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    invoke-interface {v7, v6}, Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;->onNodeAdded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 564
    .end local v1    # "windowId":I
    .end local v2    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "sourceId":J
    .end local v5    # "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_d7
    monitor-exit v0

    .line 565
    return-void

    .line 564
    :catchall_d9
    move-exception v1

    monitor-exit v0
    :try_end_db
    .catchall {:try_start_3 .. :try_end_db} :catchall_d9

    throw v1
.end method

.method public greylist-max-o addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 6
    .param p1, "window"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 178
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    .line 180
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 181
    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_12
    monitor-exit v0

    return-void

    .line 185
    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_48

    .line 186
    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at display Id [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_48
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/view/accessibility/AccessibilityCache;->addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public greylist-max-o checkIntegrity()V
    .registers 23

    .line 781
    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 783
    :try_start_5
    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_17

    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 784
    monitor-exit v2

    return-void

    .line 787
    :cond_17
    const/4 v0, 0x0

    .line 788
    .local v0, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v3, 0x0

    .line 790
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget-object v4, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 791
    .local v4, "displayCounts":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-ge v5, v4, :cond_84

    .line 792
    iget-object v6, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 793
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 795
    .local v6, "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v6, :cond_2d

    .line 796
    goto :goto_81

    .line 799
    :cond_2d
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 800
    .local v7, "windowCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_32
    if-ge v8, v7, :cond_81

    .line 801
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 804
    .local v9, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 805
    if-eqz v3, :cond_5b

    .line 806
    const-string v10, "AccessibilityCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Duplicate active window:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 808
    :cond_5b
    move-object v3, v9

    .line 812
    :cond_5c
    :goto_5c
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 813
    if-eqz v0, :cond_7d

    .line 814
    const-string v10, "AccessibilityCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Duplicate focused window:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 816
    :cond_7d
    move-object v0, v9

    .line 800
    .end local v9    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_7e
    :goto_7e
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 791
    .end local v6    # "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v7    # "windowCount":I
    .end local v8    # "j":I
    :cond_81
    :goto_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 823
    .end local v5    # "i":I
    :cond_84
    const/4 v5, 0x0

    .line 824
    .local v5, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v6, 0x0

    .line 826
    .local v6, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v7, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 827
    .local v7, "nodesForWindowCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8d
    if-ge v8, v7, :cond_22d

    .line 828
    iget-object v9, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    .line 829
    .local v9, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-gtz v10, :cond_a6

    .line 830
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object v4, v2

    goto/16 :goto_220

    .line 833
    :cond_a6
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 834
    .local v10, "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v11, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 836
    .local v11, "windowId":I
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    .line 837
    .local v12, "nodeCount":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_b6
    if-ge v13, v12, :cond_219

    .line 838
    invoke-virtual {v9, v13}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 841
    .local v14, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ef

    .line 842
    const-string v15, "AccessibilityCache"

    move-object/from16 v16, v0

    .end local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v16, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object v4, v2

    goto/16 :goto_20c

    .line 849
    .end local v16    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_ef
    move-object/from16 v16, v0

    .end local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v16    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 850
    if-eqz v5, :cond_11c

    .line 851
    const-string v0, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate accessibility focus:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " in window:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d

    .line 854
    :cond_11c
    move-object v5, v14

    .line 859
    :cond_11d
    :goto_11d
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_149

    .line 860
    if-eqz v6, :cond_148

    .line 861
    const-string v0, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate input focus: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " in window:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_149

    .line 864
    :cond_148
    move-object v6, v14

    .line 869
    :cond_149
    :goto_149
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 870
    .local v0, "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1ac

    .line 871
    const/4 v1, 0x0

    .line 872
    .local v1, "childOfItsParent":Z
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v15

    .line 873
    .local v15, "childCount":I
    const/16 v17, 0x0

    move/from16 v18, v1

    move/from16 v1, v17

    .local v1, "k":I
    .local v18, "childOfItsParent":Z
    :goto_160
    if-ge v1, v15, :cond_17c

    .line 874
    move-object/from16 v17, v3

    move/from16 v19, v4

    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "displayCounts":I
    .local v17, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v19, "displayCounts":I
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 875
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-ne v3, v14, :cond_175

    .line 876
    const/4 v4, 0x1

    .line 877
    .end local v18    # "childOfItsParent":Z
    .local v4, "childOfItsParent":Z
    move v1, v4

    goto :goto_182

    .line 873
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "childOfItsParent":Z
    .restart local v18    # "childOfItsParent":Z
    :cond_175
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v19

    goto :goto_160

    .end local v17    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v19    # "displayCounts":I
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v4, "displayCounts":I
    :cond_17c
    move-object/from16 v17, v3

    move/from16 v19, v4

    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "displayCounts":I
    .restart local v17    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v19    # "displayCounts":I
    move/from16 v1, v18

    .line 880
    .end local v18    # "childOfItsParent":Z
    .local v1, "childOfItsParent":Z
    :goto_182
    if-nez v1, :cond_1a9

    .line 881
    const-string v3, "AccessibilityCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v1

    .end local v1    # "childOfItsParent":Z
    .restart local v18    # "childOfItsParent":Z
    const-string v1, "Invalid parent-child relation between parent: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and child: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b0

    .line 880
    .end local v18    # "childOfItsParent":Z
    .restart local v1    # "childOfItsParent":Z
    :cond_1a9
    move/from16 v18, v1

    .end local v1    # "childOfItsParent":Z
    .restart local v18    # "childOfItsParent":Z
    goto :goto_1b0

    .line 870
    .end local v15    # "childCount":I
    .end local v17    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v18    # "childOfItsParent":Z
    .end local v19    # "displayCounts":I
    .restart local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v4    # "displayCounts":I
    :cond_1ac
    move-object/from16 v17, v3

    move/from16 v19, v4

    .line 887
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "displayCounts":I
    .restart local v17    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v19    # "displayCounts":I
    :goto_1b0
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1
    :try_end_1b4
    .catchall {:try_start_5 .. :try_end_1b4} :catchall_236

    .line 888
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1b5
    if-ge v3, v1, :cond_208

    .line 889
    move v15, v1

    move-object v4, v2

    .end local v1    # "childCount":I
    .restart local v15    # "childCount":I
    :try_start_1b9
    invoke-virtual {v14, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 890
    .local v1, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_1ff

    .line 891
    move-object/from16 v18, v1

    .end local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v18, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 892
    .local v1, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eq v1, v14, :cond_1fa

    .line 893
    const-string v2, "AccessibilityCache"

    move-object/from16 v20, v1

    .end local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v20, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v3

    .end local v3    # "k":I
    .local v21, "k":I
    const-string v3, "Invalid child-parent relation between child: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and parent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_203

    .line 892
    .end local v20    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v21    # "k":I
    .restart local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v3    # "k":I
    :cond_1fa
    move-object/from16 v20, v1

    move/from16 v21, v3

    .end local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "k":I
    .restart local v20    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v21    # "k":I
    goto :goto_203

    .line 890
    .end local v18    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v20    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v21    # "k":I
    .local v1, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v3    # "k":I
    :cond_1ff
    move-object/from16 v18, v1

    move/from16 v21, v3

    .line 888
    .end local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "k":I
    .restart local v21    # "k":I
    :goto_203
    add-int/lit8 v3, v21, 0x1

    move-object v2, v4

    move v1, v15

    .end local v21    # "k":I
    .restart local v3    # "k":I
    goto :goto_1b5

    .end local v15    # "childCount":I
    .local v1, "childCount":I
    :cond_208
    move v15, v1

    move-object v4, v2

    move/from16 v21, v3

    .line 837
    .end local v0    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "childCount":I
    .end local v3    # "k":I
    .end local v14    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_20c
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move/from16 v4, v19

    goto/16 :goto_b6

    .end local v16    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v17    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v19    # "displayCounts":I
    .local v0, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v4    # "displayCounts":I
    :cond_219
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object v4, v2

    .line 827
    .end local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "displayCounts":I
    .end local v9    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v10    # "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v11    # "windowId":I
    .end local v12    # "nodeCount":I
    .end local v13    # "j":I
    .restart local v16    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v17    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v19    # "displayCounts":I
    :goto_220
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    move/from16 v4, v19

    goto/16 :goto_8d

    .end local v16    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v17    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v19    # "displayCounts":I
    .restart local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .restart local v4    # "displayCounts":I
    :cond_22d
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object v4, v2

    .line 900
    .end local v0    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v4    # "displayCounts":I
    .end local v5    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "nodesForWindowCount":I
    .end local v8    # "i":I
    monitor-exit v4

    .line 901
    return-void

    .line 900
    :catchall_236
    move-exception v0

    move-object v4, v2

    :goto_238
    monitor-exit v4
    :try_end_239
    .catchall {:try_start_1b9 .. :try_end_239} :catchall_23a

    throw v0

    :catchall_23a
    move-exception v0

    goto :goto_238
.end method

.method public greylist-max-o clear()V
    .registers 5

    .line 571
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_3
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 573
    const-string v1, "AccessibilityCache"

    const-string v2, "clear()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_e
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    .line 576
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 577
    .local v1, "nodesForWindowCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_27

    .line 578
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 579
    .local v3, "windowId":I
    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 577
    .end local v3    # "windowId":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 582
    .end local v2    # "i":I
    :cond_27
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 583
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 585
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 586
    iput v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 587
    .end local v1    # "nodesForWindowCount":I
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public blacklist clearOnNodeAddedListener()V
    .registers 3

    .line 918
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    .line 920
    monitor-exit v0

    .line 921
    return-void

    .line 920
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist clearSubTree(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 713
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 714
    return v0

    .line 716
    :cond_4
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_7
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v2, :cond_18

    .line 718
    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_16

    .line 719
    const-string v2, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_16
    monitor-exit v1

    return v0

    .line 723
    :cond_18
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 724
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 725
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public blacklist getEventSourceClassName(I)Ljava/lang/String;
    .registers 3
    .param p1, "windowId"    # I

    .line 926
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowIdToEventSourceClassName:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFocus(IJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 20
    .param p1, "focusType"    # I
    .param p2, "initialNodeId"    # J
    .param p4, "windowId"    # I

    .line 624
    move/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 625
    :try_start_7
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v4, 0x0

    if-nez v0, :cond_19

    .line 626
    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_17

    .line 627
    const-string v0, "AccessibilityCache"

    const-string v5, "Cache is disabled"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_17
    monitor-exit v3

    return-object v4

    .line 633
    :cond_19
    const/4 v0, 0x2

    if-ne v1, v0, :cond_21

    .line 634
    iget v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 635
    .local v5, "currentFocusWindowId":I
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .local v6, "currentFocusId":J
    goto :goto_25

    .line 637
    .end local v5    # "currentFocusWindowId":I
    .end local v6    # "currentFocusId":J
    :cond_21
    iget v5, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 638
    .restart local v5    # "currentFocusWindowId":I
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 641
    .restart local v6    # "currentFocusId":J
    :goto_25
    const/4 v8, -0x1

    if-ne v5, v8, :cond_2a

    .line 642
    monitor-exit v3

    return-object v4

    .line 645
    :cond_2a
    const/4 v8, -0x2

    if-eq v2, v8, :cond_31

    if-eq v2, v5, :cond_31

    .line 647
    monitor-exit v3

    return-object v4

    .line 650
    :cond_31
    iget-object v8, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 651
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseArray;

    move-object v14, v8

    .line 652
    .local v14, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v14, :cond_3e

    .line 653
    monitor-exit v3

    return-object v4

    .line 656
    :cond_3e
    invoke-virtual {v14, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 657
    .local v8, "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v8, :cond_48

    .line 658
    monitor-exit v3

    return-object v4

    .line 661
    :cond_48
    cmp-long v9, p2, v6

    if-eqz v9, :cond_7f

    .line 662
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    .line 661
    move-object v9, p0

    move-wide/from16 v12, p2

    invoke-direct/range {v9 .. v14}, Landroid/view/accessibility/AccessibilityCache;->isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z

    move-result v10

    if-eqz v10, :cond_5a

    goto :goto_7f

    .line 675
    :cond_5a
    sget-boolean v9, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v9, :cond_7d

    .line 676
    const-string v9, "AccessibilityCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFocus is null with type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 677
    if-ne v1, v0, :cond_70

    .line 678
    const-string v0, "FOCUS_ACCESSIBILITY"

    goto :goto_72

    .line 679
    :cond_70
    const-string v0, "FOCUS_INPUT"

    :goto_72
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_7d
    monitor-exit v3

    return-object v4

    .line 663
    :cond_7f
    :goto_7f
    sget-boolean v4, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v4, :cond_ba

    .line 664
    const-string v4, "AccessibilityCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFocus(0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 666
    if-ne v1, v0, :cond_ad

    .line 667
    const-string v0, "FOCUS_ACCESSIBILITY"

    goto :goto_af

    .line 668
    :cond_ad
    const-string v0, "FOCUS_INPUT"

    :goto_af
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_ba
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    monitor-exit v3

    return-object v0

    .line 682
    .end local v5    # "currentFocusWindowId":I
    .end local v6    # "currentFocusId":J
    .end local v8    # "currentFocusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v14    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_c1
    move-exception v0

    monitor-exit v3
    :try_end_c3
    .catchall {:try_start_7 .. :try_end_c3} :catchall_c1

    throw v0
.end method

.method public greylist-max-o getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10
    .param p1, "windowId"    # I
    .param p2, "accessibilityNodeId"    # J

    .line 344
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 346
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 347
    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_13
    monitor-exit v0

    return-object v2

    .line 351
    :cond_15
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    .line 352
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_21

    .line 353
    monitor-exit v0

    return-object v2

    .line 355
    :cond_21
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 356
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_2f

    .line 359
    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v3

    .line 361
    :cond_2f
    sget-boolean v3, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v3, :cond_59

    .line 362
    const-string v3, "AccessibilityCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get(0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_59
    monitor-exit v0

    return-object v2

    .line 365
    .end local v1    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public greylist-max-o getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 8
    .param p1, "windowId"    # I

    .line 459
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 461
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 462
    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_13
    monitor-exit v0

    return-object v2

    .line 466
    :cond_15
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 467
    .local v1, "displayCounts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v1, :cond_3b

    .line 468
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 469
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 470
    .local v4, "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v4, :cond_29

    .line 471
    goto :goto_38

    .line 474
    :cond_29
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 475
    .local v5, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v5, :cond_38

    .line 476
    new-instance v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v2, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    monitor-exit v0

    return-object v2

    .line 467
    .end local v4    # "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v5    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 479
    .end local v3    # "i":I
    :cond_3b
    monitor-exit v0

    return-object v2

    .line 480
    .end local v1    # "displayCounts":I
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public blacklist getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 399
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 400
    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_13
    monitor-exit v0

    return-object v2

    .line 404
    :cond_15
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    if-nez v1, :cond_1b

    .line 405
    monitor-exit v0

    return-object v2

    .line 407
    :cond_1b
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 408
    .local v1, "returnWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 410
    .local v3, "displayCounts":I
    if-lez v3, :cond_83

    .line 411
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-ge v2, v3, :cond_81

    .line 412
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 413
    .local v4, "displayId":I
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    .line 414
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 416
    .local v5, "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v5, :cond_3c

    .line 417
    goto :goto_7e

    .line 420
    :cond_3c
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 421
    .local v6, "windowCount":I
    if-lez v6, :cond_7e

    .line 423
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 424
    .local v7, "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 426
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_48
    if-ge v8, v6, :cond_5a

    .line 427
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 428
    .local v9, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v10

    invoke-virtual {v7, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    .end local v9    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 434
    .end local v8    # "j":I
    :cond_5a
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 435
    .local v8, "sortedWindowCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 437
    .local v9, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    add-int/lit8 v10, v8, -0x1

    .local v10, "j":I
    :goto_65
    if-ltz v10, :cond_7b

    .line 438
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 439
    .local v11, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    new-instance v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v12, v11}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->removeAt(I)V

    .line 437
    .end local v11    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v10, v10, -0x1

    goto :goto_65

    .line 442
    .end local v10    # "j":I
    :cond_7b
    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    .end local v4    # "displayId":I
    .end local v5    # "windowsOfDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v6    # "windowCount":I
    .end local v7    # "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v8    # "sortedWindowCount":I
    .end local v9    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_7e
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 445
    .end local v2    # "i":I
    :cond_81
    monitor-exit v0

    return-object v1

    .line 447
    :cond_83
    monitor-exit v0

    return-object v2

    .line 448
    .end local v1    # "returnWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    .end local v3    # "displayCounts":I
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_85

    throw v1
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 112
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 9
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 370
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 371
    return v0

    .line 373
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    .line 374
    .local v1, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    .line 375
    .local v2, "accessibilityNodeId":J
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 376
    :try_start_f
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v5, :cond_20

    .line 377
    sget-boolean v5, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v5, :cond_1e

    .line 378
    const-string v5, "AccessibilityCache"

    const-string v6, "Cache is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1e
    monitor-exit v4

    return v0

    .line 382
    :cond_20
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 383
    .local v5, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v5, :cond_2c

    .line 384
    monitor-exit v4

    return v0

    .line 386
    :cond_2c
    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_33

    const/4 v0, 0x1

    :cond_33
    monitor-exit v4

    return v0

    .line 387
    .end local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_35
    move-exception v0

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_35

    throw v0
.end method

.method public greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_4
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v2, :cond_15

    .line 215
    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_13

    .line 216
    const-string v2, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_13
    monitor-exit v1

    return-void

    .line 220
    :cond_15
    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_37

    .line 221
    const-string v2, "AccessibilityCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAccessibilityEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_37
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    .line 224
    .local v2, "eventType":I
    const/4 v3, 0x1

    const-wide/32 v4, 0x7fffffff

    sparse-switch v2, :sswitch_data_15e

    goto/16 :goto_13a

    .line 280
    :sswitch_44
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    .line 281
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5a

    .line 282
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowIdToEventSourceClassName:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 284
    :cond_5a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_67

    .line 288
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    .line 289
    goto/16 :goto_13a

    .line 291
    :cond_67
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 293
    goto/16 :goto_13a

    .line 236
    :sswitch_6c
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_13a

    iget v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 237
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v7

    if-ne v6, v7, :cond_13a

    .line 238
    iget v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v6, v7, v8}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    move-object v0, v6

    .line 240
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 241
    const/4 v4, -0x1

    iput v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    goto/16 :goto_13a

    .line 226
    :sswitch_8e
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_9b

    .line 227
    iget v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 229
    :cond_9b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 230
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    .line 231
    iget v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 233
    .end local v0    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v4, "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v0, v4

    goto/16 :goto_13a

    .line 276
    .end local v4    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v0    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    :sswitch_b2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v5

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 277
    goto/16 :goto_13a

    .line 263
    :sswitch_bf
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_c2
    .catchall {:try_start_4 .. :try_end_c2} :catchall_15b

    .line 264
    :try_start_c2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    .line 265
    .local v5, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 266
    .local v6, "sourceId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v8

    and-int/2addr v8, v3

    if-eqz v8, :cond_d5

    .line 268
    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_da

    .line 270
    :cond_d5
    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    move-object v0, v8

    .line 272
    .end local v5    # "windowId":I
    .end local v6    # "sourceId":J
    :goto_da
    monitor-exit v4

    .line 273
    goto :goto_13a

    .line 272
    :catchall_dc
    move-exception v3

    monitor-exit v4
    :try_end_de
    .catchall {:try_start_c2 .. :try_end_de} :catchall_dc

    .end local v0    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local p0    # "this":Landroid/view/accessibility/AccessibilityCache;
    .end local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :try_start_de
    throw v3

    .line 295
    .restart local v0    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityCache;
    .restart local p1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_df
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    .line 296
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v4

    if-nez v4, :cond_102

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_102

    .line 297
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowIdToEventSourceClassName:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    .line 298
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    :cond_102
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    goto :goto_13a

    .line 246
    :sswitch_106
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_115

    .line 247
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 249
    :cond_115
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 250
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    .line 251
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 252
    .end local v0    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v4    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v0, v4

    goto :goto_13a

    .line 258
    .end local v4    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v0    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    :sswitch_12d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    .line 259
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v5

    .line 258
    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 260
    .end local v0    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v4    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v0, v4

    .line 303
    .end local v2    # "eventType":I
    .end local v4    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v0    # "nodeToRefresh":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_13a
    :goto_13a
    monitor-exit v1
    :try_end_13b
    .catchall {:try_start_de .. :try_end_13b} :catchall_15b

    .line 305
    if-eqz v0, :cond_153

    .line 306
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_148

    .line 307
    const-string v1, "AccessibilityCache"

    const-string v2, "Refreshing and re-adding cached node."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_148
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    invoke-virtual {v1, v0, v3}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;->refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 310
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 313
    :cond_153
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    if-eqz v1, :cond_15a

    .line 314
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    .line 316
    :cond_15a
    return-void

    .line 303
    :catchall_15b
    move-exception v2

    :try_start_15c
    monitor-exit v1
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15b

    throw v2

    :sswitch_data_15e
    .sparse-switch
        0x1 -> :sswitch_12d
        0x4 -> :sswitch_12d
        0x8 -> :sswitch_106
        0x10 -> :sswitch_12d
        0x20 -> :sswitch_df
        0x800 -> :sswitch_bf
        0x1000 -> :sswitch_b2
        0x2000 -> :sswitch_12d
        0x8000 -> :sswitch_8e
        0x10000 -> :sswitch_6c
        0x400000 -> :sswitch_44
    .end sparse-switch
.end method

.method public blacklist registerOnNodeAddedListener(Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    .line 909
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_3
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    .line 911
    monitor-exit v0

    .line 912
    return-void

    .line 911
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 117
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    .line 119
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist setWindowsOnAllDisplays(Landroid/util/SparseArray;J)V
    .registers 12
    .param p2, "populationTimeStamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;J)V"
        }
    .end annotation

    .line 134
    .local p1, "windowsOnAllDisplays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_14

    .line 136
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 137
    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_12
    monitor-exit v0

    return-void

    .line 141
    :cond_14
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 142
    const-string v1, "AccessibilityCache"

    const-string v2, "Set windows"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1f
    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_27

    .line 146
    monitor-exit v0

    return-void

    .line 148
    :cond_27
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    .line 149
    if-nez p1, :cond_2e

    .line 150
    monitor-exit v0

    return-void

    .line 153
    :cond_2e
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 154
    .local v1, "displayCounts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v1, :cond_59

    .line 155
    nop

    .line 156
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 158
    .local v3, "windowsOfDisplay":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v3, :cond_3f

    .line 159
    goto :goto_56

    .line 162
    :cond_3f
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 163
    .local v4, "displayId":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 164
    .local v5, "windowCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_48
    if-ge v6, v5, :cond_56

    .line 165
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {p0, v4, v7}, Landroid/view/accessibility/AccessibilityCache;->addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 154
    .end local v3    # "windowsOfDisplay":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v4    # "displayId":I
    .end local v5    # "windowCount":I
    .end local v6    # "j":I
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 168
    .end local v2    # "i":I
    :cond_59
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 169
    .end local v1    # "displayCounts":I
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method

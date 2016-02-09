.class final Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# static fields
.field private static final CHECK_INTEGRITY:Z

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityCache"


# instance fields
.field private mAccessibilityFocus:J

.field private mInputFocus:J

.field private final mLock:Ljava/lang/Object;

.field private final mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 39
    const-string/jumbo v0, "eng"

    #@3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    #@b
    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 4

    #@0
    .prologue
    const-wide/32 v2, 0x7fffffff

    #@3
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 41
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    #@d
    .line 43
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    #@f
    .line 44
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    #@11
    .line 47
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    .line 46
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@18
    .line 50
    new-instance v0, Landroid/util/SparseArray;

    #@1a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1d
    .line 49
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@1f
    .line 53
    new-instance v0, Landroid/util/SparseArray;

    #@21
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@24
    .line 52
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    #@26
    .line 33
    return-void
.end method

.method private clearNodesForWindowLocked(I)V
    .locals 5
    .param p1, "windowId"    # I

    #@0
    .prologue
    .line 304
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/util/LongSparseArray;

    #@8
    .line 305
    .local v3, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v3, :cond_0

    #@a
    .line 306
    return-void

    #@b
    .line 309
    :cond_0
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    #@e
    move-result v2

    #@f
    .line 310
    .local v2, "nodeCount":I
    add-int/lit8 v0, v2, -0x1

    #@11
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@13
    .line 311
    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@19
    .line 312
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    #@1c
    .line 313
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@1f
    .line 310
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 315
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    #@27
    .line 300
    return-void
.end method

.method private clearSubTreeLocked(IJ)V
    .locals 2
    .param p1, "windowId"    # I
    .param p2, "rootNodeId"    # J

    #@0
    .prologue
    .line 329
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/LongSparseArray;

    #@8
    .line 330
    .local v0, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v0, :cond_0

    #@a
    .line 331
    invoke-direct {p0, v0, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    #@d
    .line 325
    :cond_0
    return-void
.end method

.method private clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V
    .locals 6
    .param p2, "rootNodeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 344
    .local p1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@6
    .line 345
    .local v1, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_0

    #@8
    .line 346
    return-void

    #@9
    .line 348
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    #@c
    .line 349
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@f
    move-result v0

    #@10
    .line 350
    .local v0, "childCount":I
    const/4 v4, 0x0

    #@11
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@13
    .line 351
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    #@16
    move-result-wide v2

    #@17
    .line 352
    .local v2, "childNodeId":J
    invoke-direct {p0, p1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    #@1a
    .line 350
    add-int/lit8 v4, v4, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 343
    .end local v2    # "childNodeId":J
    :cond_1
    return-void
.end method

.method private refreshCachedNodeLocked(IJ)V
    .locals 4
    .param p1, "windowId"    # I
    .param p2, "sourceId"    # J

    #@0
    .prologue
    .line 143
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/LongSparseArray;

    #@8
    .line 144
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_0

    #@a
    .line 145
    return-void

    #@b
    .line 147
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@11
    .line 149
    .local v0, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1

    #@13
    .line 150
    return-void

    #@14
    .line 153
    :cond_1
    const/4 v2, 0x1

    #@15
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Z)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 154
    return-void

    #@1c
    .line 157
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    #@1f
    .line 138
    return-void
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 20
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 229
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    #@4
    move-object/from16 v16, v0

    #@6
    monitor-enter v16

    #@7
    .line 234
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    #@a
    move-result v14

    #@b
    .line 235
    .local v14, "windowId":I
    move-object/from16 v0, p0

    #@d
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v5

    #@13
    check-cast v5, Landroid/util/LongSparseArray;

    #@15
    .line 236
    .local v5, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v5, :cond_0

    #@17
    .line 237
    new-instance v5, Landroid/util/LongSparseArray;

    #@19
    .end local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    #@1c
    .line 238
    .restart local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    #@1e
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v15, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@23
    .line 241
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@26
    move-result-wide v12

    #@27
    .line 242
    .local v12, "sourceId":J
    invoke-virtual {v5, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@2a
    move-result-object v7

    #@2b
    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2d
    .line 243
    .local v7, "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v7, :cond_4

    #@2f
    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    #@32
    move-result-object v4

    #@33
    .line 250
    .local v4, "newChildrenIds":Landroid/util/LongArray;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@36
    move-result v6

    #@37
    .line 251
    .local v6, "oldChildCount":I
    const/4 v3, 0x0

    #@38
    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    #@3a
    .line 252
    invoke-virtual {v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    #@3d
    move-result-wide v8

    #@3e
    .line 254
    .local v8, "oldChildId":J
    if-eqz v4, :cond_1

    #@40
    invoke-virtual {v4, v8, v9}, Landroid/util/LongArray;->indexOf(J)I

    #@43
    move-result v15

    #@44
    if-gez v15, :cond_2

    #@46
    .line 255
    :cond_1
    move-object/from16 v0, p0

    #@48
    invoke-direct {v0, v14, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    #@4b
    .line 251
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 262
    .end local v8    # "oldChildId":J
    :cond_3
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    #@51
    move-result-wide v10

    #@52
    .line 263
    .local v10, "oldParentId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    #@55
    move-result-wide v18

    #@56
    cmp-long v15, v18, v10

    #@58
    if-eqz v15, :cond_4

    #@5a
    .line 264
    move-object/from16 v0, p0

    #@5c
    invoke-direct {v0, v14, v10, v11}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    #@5f
    .line 270
    .end local v3    # "i":I
    .end local v4    # "newChildrenIds":Landroid/util/LongArray;
    .end local v6    # "oldChildCount":I
    .end local v10    # "oldParentId":J
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@62
    move-result-object v2

    #@63
    .line 271
    .local v2, "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v5, v12, v13, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    monitor-exit v16

    #@67
    .line 228
    return-void

    #@68
    .line 229
    .end local v2    # "clone":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v7    # "oldInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "sourceId":J
    .end local v14    # "windowId":I
    :catchall_0
    move-exception v15

    #@69
    monitor-exit v16

    #@6a
    throw v15
.end method

.method public addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 5
    .param p1, "window"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    #@0
    .prologue
    .line 56
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    #@6
    move-result v1

    #@7
    .line 61
    .local v1, "windowId":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@f
    .line 62
    .local v0, "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_0

    #@11
    .line 63
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    #@14
    .line 65
    :cond_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@16
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v3

    #@1e
    .line 55
    return-void

    #@1f
    .line 56
    .end local v0    # "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v1    # "windowId":I
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2
.end method

.method public checkIntegrity()V
    .locals 26

    #@0
    .prologue
    .line 364
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    #@4
    move-object/from16 v23, v0

    #@6
    monitor-enter v23

    #@7
    .line 366
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@b
    move-object/from16 v22, v0

    #@d
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@10
    move-result v22

    #@11
    if-gtz v22, :cond_0

    #@13
    move-object/from16 v0, p0

    #@15
    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@17
    move-object/from16 v22, v0

    #@19
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v22

    #@1d
    if-nez v22, :cond_0

    #@1f
    monitor-exit v23

    #@20
    .line 367
    return-void

    #@21
    .line 370
    :cond_0
    const/4 v7, 0x0

    #@22
    .line 371
    .local v7, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v3, 0x0

    #@23
    .line 373
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_start_1
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@27
    move-object/from16 v22, v0

    #@29
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@2c
    move-result v20

    #@2d
    .line 374
    .local v20, "windowCount":I
    const/4 v8, 0x0

    #@2e
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v7    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .local v8, "i":I
    :goto_0
    move/from16 v0, v20

    #@30
    if-ge v8, v0, :cond_5

    #@32
    .line 375
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@36
    move-object/from16 v22, v0

    #@38
    move-object/from16 v0, v22

    #@3a
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@3d
    move-result-object v19

    #@3e
    check-cast v19, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@40
    .line 378
    .local v19, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    #@43
    move-result v22

    #@44
    if-eqz v22, :cond_1

    #@46
    .line 379
    if-eqz v3, :cond_3

    #@48
    .line 380
    const-string/jumbo v22, "AccessibilityCache"

    #@4b
    new-instance v24, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v25, "Duplicate active window:"

    #@53
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v24

    #@57
    move-object/from16 v0, v24

    #@59
    move-object/from16 v1, v19

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v24

    #@5f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v24

    #@63
    move-object/from16 v0, v22

    #@65
    move-object/from16 v1, v24

    #@67
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 387
    :cond_1
    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    #@6d
    move-result v22

    #@6e
    if-eqz v22, :cond_2

    #@70
    .line 388
    if-eqz v7, :cond_4

    #@72
    .line 389
    const-string/jumbo v22, "AccessibilityCache"

    #@75
    new-instance v24, Ljava/lang/StringBuilder;

    #@77
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v25, "Duplicate focused window:"

    #@7d
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v24

    #@81
    move-object/from16 v0, v24

    #@83
    move-object/from16 v1, v19

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v24

    #@89
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v24

    #@8d
    move-object/from16 v0, v22

    #@8f
    move-object/from16 v1, v24

    #@91
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 374
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@96
    goto :goto_0

    #@97
    .line 382
    :cond_3
    move-object/from16 v3, v19

    #@99
    .local v3, "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_1

    #@9a
    .line 391
    .end local v3    # "activeWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_4
    move-object/from16 v7, v19

    #@9c
    .local v7, "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_2

    #@9d
    .line 397
    .end local v7    # "focusedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v19    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_5
    const/4 v2, 0x0

    #@9e
    .line 398
    .local v2, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v9, 0x0

    #@9f
    .line 400
    .local v9, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p0

    #@a1
    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@a3
    move-object/from16 v22, v0

    #@a5
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@a8
    move-result v16

    #@a9
    .line 401
    .local v16, "nodesForWindowCount":I
    const/4 v8, 0x0

    #@aa
    .end local v2    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_3
    move/from16 v0, v16

    #@ac
    if-ge v8, v0, :cond_12

    #@ae
    .line 402
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@b2
    move-object/from16 v22, v0

    #@b4
    move-object/from16 v0, v22

    #@b6
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@b9
    move-result-object v15

    #@ba
    check-cast v15, Landroid/util/LongSparseArray;

    #@bc
    .line 403
    .local v15, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    #@bf
    move-result v22

    #@c0
    if-gtz v22, :cond_7

    #@c2
    .line 401
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@c4
    goto :goto_3

    #@c5
    .line 407
    :cond_7
    new-instance v18, Landroid/util/ArraySet;

    #@c7
    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    #@ca
    .line 408
    .local v18, "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    #@cc
    iget-object v0, v0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@ce
    move-object/from16 v22, v0

    #@d0
    move-object/from16 v0, v22

    #@d2
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    #@d5
    move-result v21

    #@d6
    .line 410
    .local v21, "windowId":I
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    #@d9
    move-result v13

    #@da
    .line 411
    .local v13, "nodeCount":I
    const/4 v10, 0x0

    #@db
    .local v10, "j":I
    :goto_4
    if-ge v10, v13, :cond_6

    #@dd
    .line 412
    invoke-virtual {v15, v10}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@e0
    move-result-object v12

    #@e1
    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@e3
    .line 415
    .local v12, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v18

    #@e5
    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@e8
    move-result v22

    #@e9
    if-nez v22, :cond_9

    #@eb
    .line 416
    const-string/jumbo v22, "AccessibilityCache"

    #@ee
    new-instance v24, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v25, "Duplicate node: "

    #@f6
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v24

    #@fa
    move-object/from16 v0, v24

    #@fc
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v24

    #@100
    .line 417
    const-string/jumbo v25, " in window:"

    #@103
    .line 416
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v24

    #@107
    move-object/from16 v0, v24

    #@109
    move/from16 v1, v21

    #@10b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v24

    #@10f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v24

    #@113
    move-object/from16 v0, v22

    #@115
    move-object/from16 v1, v24

    #@117
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11a
    .line 411
    :cond_8
    add-int/lit8 v10, v10, 0x1

    #@11c
    goto :goto_4

    #@11d
    .line 423
    :cond_9
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    #@120
    move-result v22

    #@121
    if-eqz v22, :cond_a

    #@123
    .line 424
    if-eqz v2, :cond_f

    #@125
    .line 425
    const-string/jumbo v22, "AccessibilityCache"

    #@128
    new-instance v24, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v25, "Duplicate accessibility focus:"

    #@130
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v24

    #@134
    move-object/from16 v0, v24

    #@136
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v24

    #@13a
    .line 426
    const-string/jumbo v25, " in window:"

    #@13d
    .line 425
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v24

    #@141
    move-object/from16 v0, v24

    #@143
    move/from16 v1, v21

    #@145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@148
    move-result-object v24

    #@149
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v24

    #@14d
    move-object/from16 v0, v22

    #@14f
    move-object/from16 v1, v24

    #@151
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@154
    .line 433
    :cond_a
    :goto_5
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    #@157
    move-result v22

    #@158
    if-eqz v22, :cond_b

    #@15a
    .line 434
    if-eqz v9, :cond_10

    #@15c
    .line 435
    const-string/jumbo v22, "AccessibilityCache"

    #@15f
    new-instance v24, Ljava/lang/StringBuilder;

    #@161
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@164
    const-string/jumbo v25, "Duplicate input focus: "

    #@167
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v24

    #@16b
    move-object/from16 v0, v24

    #@16d
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v24

    #@171
    .line 436
    const-string/jumbo v25, " in window:"

    #@174
    .line 435
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v24

    #@178
    move-object/from16 v0, v24

    #@17a
    move/from16 v1, v21

    #@17c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v24

    #@180
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v24

    #@184
    move-object/from16 v0, v22

    #@186
    move-object/from16 v1, v24

    #@188
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18b
    .line 443
    :cond_b
    :goto_6
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    #@18e
    move-result-wide v24

    #@18f
    move-wide/from16 v0, v24

    #@191
    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@194
    move-result-object v14

    #@195
    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@197
    .line 444
    .local v14, "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v14, :cond_d

    #@199
    .line 445
    const/4 v6, 0x0

    #@19a
    .line 446
    .local v6, "childOfItsParent":Z
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@19d
    move-result v5

    #@19e
    .line 447
    .local v5, "childCount":I
    const/4 v11, 0x0

    #@19f
    .local v11, "k":I
    :goto_7
    if-ge v11, v5, :cond_c

    #@1a1
    .line 448
    invoke-virtual {v14, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    #@1a4
    move-result-wide v24

    #@1a5
    move-wide/from16 v0, v24

    #@1a7
    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@1aa
    move-result-object v4

    #@1ab
    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1ad
    .line 449
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-ne v4, v12, :cond_11

    #@1af
    .line 450
    const/4 v6, 0x1

    #@1b0
    .line 454
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_c
    if-nez v6, :cond_d

    #@1b2
    .line 455
    const-string/jumbo v22, "AccessibilityCache"

    #@1b5
    new-instance v24, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v25, "Invalid parent-child relation between parent: "

    #@1bd
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v24

    #@1c1
    move-object/from16 v0, v24

    #@1c3
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v24

    #@1c7
    .line 456
    const-string/jumbo v25, " and child: "

    #@1ca
    .line 455
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v24

    #@1ce
    move-object/from16 v0, v24

    #@1d0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v24

    #@1d4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d7
    move-result-object v24

    #@1d8
    move-object/from16 v0, v22

    #@1da
    move-object/from16 v1, v24

    #@1dc
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1df
    .line 461
    .end local v5    # "childCount":I
    .end local v6    # "childOfItsParent":Z
    .end local v11    # "k":I
    :cond_d
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@1e2
    move-result v5

    #@1e3
    .line 462
    .restart local v5    # "childCount":I
    const/4 v11, 0x0

    #@1e4
    .restart local v11    # "k":I
    :goto_8
    if-ge v11, v5, :cond_8

    #@1e6
    .line 463
    invoke-virtual {v12, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    #@1e9
    move-result-wide v24

    #@1ea
    move-wide/from16 v0, v24

    #@1ec
    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@1ef
    move-result-object v4

    #@1f0
    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1f2
    .line 464
    .restart local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_e

    #@1f4
    .line 465
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    #@1f7
    move-result-wide v24

    #@1f8
    move-wide/from16 v0, v24

    #@1fa
    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@1fd
    move-result-object v17

    #@1fe
    check-cast v17, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@200
    .line 466
    .local v17, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v17

    #@202
    if-eq v0, v12, :cond_e

    #@204
    .line 467
    const-string/jumbo v22, "AccessibilityCache"

    #@207
    new-instance v24, Ljava/lang/StringBuilder;

    #@209
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@20c
    const-string/jumbo v25, "Invalid child-parent relation between child: "

    #@20f
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v24

    #@213
    move-object/from16 v0, v24

    #@215
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v24

    #@219
    .line 468
    const-string/jumbo v25, " and parent: "

    #@21c
    .line 467
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v24

    #@220
    move-object/from16 v0, v24

    #@222
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v24

    #@226
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@229
    move-result-object v24

    #@22a
    move-object/from16 v0, v22

    #@22c
    move-object/from16 v1, v24

    #@22e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@231
    .line 462
    .end local v17    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    #@233
    goto :goto_8

    #@234
    .line 428
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "childCount":I
    .end local v11    # "k":I
    .end local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_f
    move-object v2, v12

    #@235
    .local v2, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto/16 :goto_5

    #@237
    .line 438
    .end local v2    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_10
    move-object v9, v12

    #@238
    .local v9, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto/16 :goto_6

    #@23a
    .line 447
    .end local v9    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v5    # "childCount":I
    .restart local v6    # "childOfItsParent":Z
    .restart local v11    # "k":I
    .restart local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_11
    add-int/lit8 v11, v11, 0x1

    #@23c
    goto/16 :goto_7

    #@23e
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "childCount":I
    .end local v6    # "childOfItsParent":Z
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v12    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "nodeCount":I
    .end local v14    # "nodeParent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v15    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v18    # "seen":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v21    # "windowId":I
    :cond_12
    monitor-exit v23

    #@23f
    .line 363
    return-void

    #@240
    .line 364
    .end local v8    # "i":I
    .end local v16    # "nodesForWindowCount":I
    .end local v20    # "windowCount":I
    :catchall_0
    move-exception v22

    #@241
    monitor-exit v23

    #@242
    throw v22
.end method

.method public clear()V
    .locals 10

    #@0
    .prologue
    .line 279
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 283
    :try_start_0
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v3

    #@9
    .line 284
    .local v3, "windowCount":I
    add-int/lit8 v0, v3, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@d
    .line 285
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@15
    .line 286
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    #@18
    .line 287
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->removeAt(I)V

    #@1d
    .line 284
    add-int/lit8 v0, v0, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 289
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@25
    move-result v1

    #@26
    .line 290
    .local v1, "nodesForWindowCount":I
    const/4 v0, 0x0

    #@27
    :goto_1
    if-ge v0, v1, :cond_1

    #@29
    .line 291
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@2e
    move-result v4

    #@2f
    .line 292
    .local v4, "windowId":I
    invoke-direct {p0, v4}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    #@32
    .line 290
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_1

    #@35
    .line 295
    .end local v4    # "windowId":I
    :cond_1
    const-wide/32 v8, 0x7fffffff

    #@38
    iput-wide v8, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    #@3a
    .line 296
    const-wide/32 v8, 0x7fffffff

    #@3d
    iput-wide v8, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    monitor-exit v6

    #@40
    .line 278
    return-void

    #@41
    .line 279
    .end local v0    # "i":I
    .end local v1    # "nodesForWindowCount":I
    .end local v3    # "windowCount":I
    :catchall_0
    move-exception v5

    #@42
    monitor-exit v6

    #@43
    throw v5
.end method

.method public getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "windowId"    # I
    .param p2, "accessibilityNodeId"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 169
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 170
    :try_start_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/util/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 171
    .local v1, "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez v1, :cond_0

    #@e
    monitor-exit v3

    #@f
    .line 172
    return-object v4

    #@10
    .line 174
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@16
    .line 175
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_1

    #@18
    .line 178
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result-object v0

    #@1c
    :cond_1
    monitor-exit v3

    #@1d
    .line 183
    return-object v0

    #@1e
    .line 169
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "nodes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit v3

    #@20
    throw v2
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 4
    .param p1, "windowId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 214
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 215
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@c
    .line 216
    .local v0, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_0

    #@e
    .line 217
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v1

    #@12
    monitor-exit v2

    #@13
    return-object v1

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 219
    return-object v3

    #@16
    .line 214
    .end local v0    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 188
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 189
    :try_start_0
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v3

    #@9
    .line 190
    .local v3, "windowCount":I
    if-lez v3, :cond_2

    #@b
    .line 192
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    #@d
    .line 193
    .local v1, "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@10
    .line 195
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@13
    .line 196
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@1b
    .line 197
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    #@1e
    move-result v5

    #@1f
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@22
    .line 195
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 200
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    #@27
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@2a
    .line 201
    .local v4, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    add-int/lit8 v0, v3, -0x1

    #@2c
    :goto_1
    if-ltz v0, :cond_1

    #@2e
    .line 202
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    #@34
    .line 203
    .restart local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@37
    move-result-object v5

    #@38
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    .line 204
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 201
    add-int/lit8 v0, v0, -0x1

    #@40
    goto :goto_1

    #@41
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1
    monitor-exit v6

    #@42
    .line 207
    return-object v4

    #@43
    .line 209
    .end local v0    # "i":I
    .end local v1    # "sortedWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v4    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_2
    const/4 v5, 0x0

    #@44
    monitor-exit v6

    #@45
    return-object v5

    #@46
    .line 188
    .end local v3    # "windowCount":I
    :catchall_0
    move-exception v5

    #@47
    monitor-exit v6

    #@48
    throw v5
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const-wide/32 v8, 0x7fffffff

    #@3
    .line 76
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v5

    #@6
    .line 77
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    .line 78
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_0

    #@d
    :cond_0
    :goto_0
    monitor-exit v5

    #@e
    .line 133
    sget-boolean v4, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 134
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    #@15
    .line 75
    :cond_1
    return-void

    #@16
    .line 80
    :sswitch_0
    :try_start_1
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    #@18
    cmp-long v4, v6, v8

    #@1a
    if-eqz v4, :cond_2

    #@1c
    .line 81
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@1f
    move-result v4

    #@20
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    #@22
    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    #@25
    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@28
    move-result-wide v6

    #@29
    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    #@2b
    .line 84
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@2e
    move-result v4

    #@2f
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    #@31
    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 76
    .end local v0    # "eventType":I
    :catchall_0
    move-exception v4

    #@36
    monitor-exit v5

    #@37
    throw v4

    #@38
    .line 88
    .restart local v0    # "eventType":I
    :sswitch_1
    :try_start_2
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    #@3a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@3d
    move-result-wide v8

    #@3e
    cmp-long v4, v6, v8

    #@40
    if-nez v4, :cond_0

    #@42
    .line 89
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@45
    move-result v4

    #@46
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    #@48
    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    #@4b
    .line 90
    const-wide/32 v6, 0x7fffffff

    #@4e
    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    #@50
    goto :goto_0

    #@51
    .line 95
    :sswitch_2
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    #@53
    cmp-long v4, v6, v8

    #@55
    if-eqz v4, :cond_3

    #@57
    .line 96
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@5a
    move-result v4

    #@5b
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    #@5d
    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    #@60
    .line 98
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@63
    move-result-wide v6

    #@64
    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    #@66
    .line 99
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@69
    move-result v4

    #@6a
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    #@6c
    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    #@6f
    goto :goto_0

    #@70
    .line 106
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@73
    move-result v4

    #@74
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@77
    move-result-wide v6

    #@78
    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    #@7b
    goto :goto_0

    #@7c
    .line 110
    :sswitch_4
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    #@7e
    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7f
    .line 111
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@82
    move-result v1

    #@83
    .line 112
    .local v1, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@86
    move-result-wide v2

    #@87
    .line 113
    .local v2, "sourceId":J
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    #@8a
    move-result v4

    #@8b
    and-int/lit8 v4, v4, 0x1

    #@8d
    if-eqz v4, :cond_4

    #@8f
    .line 115
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@92
    :goto_1
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@93
    goto/16 :goto_0

    #@95
    .line 117
    :cond_4
    :try_start_5
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@98
    goto :goto_1

    #@99
    .line 110
    .end local v1    # "windowId":I
    .end local v2    # "sourceId":J
    :catchall_1
    move-exception v4

    #@9a
    :try_start_6
    monitor-exit v6

    #@9b
    throw v4

    #@9c
    .line 123
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    #@9f
    move-result v4

    #@a0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    #@a3
    move-result-wide v6

    #@a4
    invoke-direct {p0, v4, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    #@a7
    goto/16 :goto_0

    #@a9
    .line 128
    :sswitch_6
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@ac
    goto/16 :goto_0

    #@ae
    .line 78
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_6
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_3
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

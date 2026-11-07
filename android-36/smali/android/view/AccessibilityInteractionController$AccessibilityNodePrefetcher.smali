.class Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityNodePrefetcher"
.end annotation


# instance fields
.field private blacklist mFetchFlags:I

.field private blacklist mInterruptPrefetch:Z

.field private final greylist-max-o mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmFetchFlags(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;I)V
    .registers 2

    iput p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mFetchFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInterruptPrefetch(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mInterruptPrefetch:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1323
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;)V

    return-void
.end method

.method private blacklist addChildrenOfRoot(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "rootProvider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .param p4, "deque"    # Landroid/view/AccessibilityInteractionController$PrefetchDeque;

    .line 1378
    if-nez p3, :cond_a

    .line 1379
    new-instance v0, Landroid/view/AccessibilityInteractionController$ViewNode;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, v1, p1}, Landroid/view/AccessibilityInteractionController$ViewNode;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)V

    .local v0, "rootDequeNode":Landroid/view/AccessibilityInteractionController$DequeNode;
    goto :goto_13

    .line 1381
    .end local v0    # "rootDequeNode":Landroid/view/AccessibilityInteractionController$DequeNode;
    :cond_a
    new-instance v0, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3, p3}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    .line 1384
    .restart local v0    # "rootDequeNode":Landroid/view/AccessibilityInteractionController$DequeNode;
    :goto_13
    invoke-interface {v0, p2, p4}, Landroid/view/AccessibilityInteractionController$DequeNode;->addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V

    .line 1385
    return-void
.end method

.method private blacklist enforceNodeTreeConsistent(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V
    .registers 16
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1399
    .local p2, "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 1401
    .local v0, "nodeMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 1402
    .local v1, "nodeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1c

    .line 1403
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1404
    .local v3, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1402
    .end local v3    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1409
    .end local v2    # "i":I
    :cond_1c
    move-object v2, p1

    .line 1410
    .local v2, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1d
    if-eqz v2, :cond_2c

    .line 1411
    move-object p1, v2

    .line 1412
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_1d

    .line 1416
    :cond_2c
    const/4 v3, 0x0

    .line 1417
    .local v3, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v4, 0x0

    .line 1418
    .local v4, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1419
    .local v5, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1420
    .local v6, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v6, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1422
    :goto_3b
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_ff

    .line 1423
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1426
    .local v7, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " in window:"

    if-eqz v8, :cond_d4

    .line 1433
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v8

    if-eqz v8, :cond_84

    .line 1434
    if-nez v3, :cond_59

    .line 1439
    move-object v3, v7

    goto :goto_84

    .line 1435
    :cond_59
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate accessibility focus:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v10}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmViewRootImpl(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v10

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1444
    :cond_84
    :goto_84
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 1445
    if-nez v4, :cond_8e

    .line 1450
    move-object v4, v7

    goto :goto_b9

    .line 1446
    :cond_8e
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate input focus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v10}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmViewRootImpl(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v10

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1454
    :cond_b9
    :goto_b9
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v8

    .line 1455
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_be
    if-ge v9, v8, :cond_d2

    .line 1456
    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v10

    .line 1457
    .local v10, "childId":J
    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1458
    .local v12, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v12, :cond_cf

    .line 1459
    invoke-interface {v6, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1455
    .end local v10    # "childId":J
    .end local v12    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_cf
    add-int/lit8 v9, v9, 0x1

    goto :goto_be

    .line 1462
    .end local v7    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "childCount":I
    .end local v9    # "j":I
    :cond_d2
    goto/16 :goto_3b

    .line 1427
    .restart local v7    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_d4
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate node: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v10}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmViewRootImpl(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v10

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1465
    .end local v7    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_ff
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_105
    if-ltz v7, :cond_12f

    .line 1466
    invoke-virtual {v0, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1467
    .local v8, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_116

    .line 1465
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v7, v7, -0x1

    goto :goto_105

    .line 1468
    .restart local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_116
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disconnected node: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1471
    .end local v7    # "j":I
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_12f
    return-void
.end method

.method private blacklist isFlagSet(I)Z
    .registers 3
    .param p1, "strategy"    # I

    .line 1388
    iget v0, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mFetchFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .registers 11
    .param p1, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1538
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_9b

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    goto/16 :goto_9b

    .line 1541
    :cond_c
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1543
    .local v0, "addedChildren":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 1544
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1546
    :try_start_16
    invoke-virtual {p1, v1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1547
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1548
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v2, :cond_5c

    .line 1549
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v4
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_96

    if-eqz v4, :cond_2a

    .line 1572
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1550
    return-void

    .line 1552
    :cond_2a
    :try_start_2a
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1553
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v5, v4}, Landroid/view/AccessibilityInteractionController;->-$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 1554
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    .line 1555
    .local v5, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v5, :cond_4c

    .line 1556
    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 1557
    .local v6, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v6, :cond_4b

    .line 1558
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4b
    goto :goto_59

    .line 1562
    :cond_4c
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 1564
    .restart local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v6, :cond_59

    .line 1565
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    invoke-virtual {v0, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_2a .. :try_end_59} :catchall_96

    .line 1548
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1572
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_5c
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1573
    nop

    .line 1574
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 1575
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1576
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1577
    .local v4, "addedChild":Landroid/view/View;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1578
    .local v5, "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v5, :cond_8c

    .line 1579
    invoke-direct {p0, v4, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_94

    .line 1581
    :cond_8c
    nop

    .line 1582
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v6

    .line 1583
    .local v6, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    invoke-direct {p0, v5, v6, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1585
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v4    # "addedChild":Landroid/view/View;
    .end local v5    # "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_94
    goto :goto_6e

    .line 1587
    :cond_95
    return-void

    .line 1572
    :catchall_96
    move-exception v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1573
    throw v2

    .line 1539
    .end local v0    # "addedChildren":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v1    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_9b
    :goto_9b
    return-void
.end method

.method private greylist-max-o prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .registers 10
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1667
    .local p3, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 1668
    .local v0, "initialOutInfosSize":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 1669
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_27

    .line 1670
    invoke-virtual {p0, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1671
    return-void

    .line 1673
    :cond_12
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    .line 1674
    .local v3, "childNodeId":J
    nop

    .line 1675
    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 1674
    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 1676
    .local v5, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v5, :cond_24

    .line 1677
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1669
    .end local v3    # "childNodeId":J
    .end local v5    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1680
    .end local v2    # "i":I
    :cond_27
    invoke-virtual {p0, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1681
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 1682
    .local v2, "addedChildCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    if-ge v3, v2, :cond_43

    .line 1683
    add-int v4, v0, v3

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1684
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v4, p2, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1682
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1687
    .end local v2    # "addedChildCount":I
    .end local v3    # "i":I
    :cond_43
    return-void
.end method

.method private greylist-max-o prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1475
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1476
    return-void

    .line 1478
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1479
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_b
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_26

    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1480
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 1481
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 1482
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_21

    .line 1483
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    :cond_21
    invoke-interface {v0}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1486
    .end local v1    # "parentView":Landroid/view/View;
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_b

    .line 1487
    :cond_26
    return-void
.end method

.method private greylist-max-o prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .registers 13
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1592
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 1593
    .local v0, "initialResultSize":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    .line 1594
    .local v1, "parentNodeId":J
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    .line 1595
    .local v3, "accessibilityViewId":I
    :goto_c
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_4d

    .line 1596
    invoke-virtual {p0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1597
    return-void

    .line 1599
    :cond_18
    nop

    .line 1600
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    .line 1601
    .local v4, "virtualDescendantId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2b

    .line 1602
    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v5

    if-ne v3, v5, :cond_27

    goto :goto_2b

    .line 1621
    :cond_27
    invoke-direct {p0, p2, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 1622
    return-void

    .line 1604
    :cond_2b
    :goto_2b
    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 1605
    .local v5, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v5, :cond_40

    .line 1608
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    .line 1609
    .local v6, "currentResultSize":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_37
    if-lt v7, v0, :cond_3f

    .line 1610
    invoke-interface {p4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1609
    add-int/lit8 v7, v7, -0x1

    goto :goto_37

    .line 1614
    .end local v7    # "i":I
    :cond_3f
    return-void

    .line 1616
    .end local v6    # "currentResultSize":I
    :cond_40
    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    .line 1618
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    .line 1620
    .end local v5    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    nop

    .line 1624
    .end local v4    # "virtualDescendantId":I
    goto :goto_c

    .line 1625
    :cond_4d
    return-void
.end method

.method private blacklist prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;Z)V
    .registers 13
    .param p1, "current"    # Landroid/view/View;
    .param p3, "predecessorsPrefetched"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1491
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1492
    return-void

    .line 1494
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1495
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_74

    .line 1496
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1497
    .local v1, "parentGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 1498
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1500
    if-nez p3, :cond_25

    .line 1501
    :try_start_19
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 1502
    invoke-virtual {v3}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 1503
    .local v3, "parentInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v3, :cond_25

    .line 1504
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    .end local v3    # "parentInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_25
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1508
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1509
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2d
    if-ge v4, v3, :cond_6b

    .line 1510
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v5
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_6f

    if-eqz v5, :cond_39

    .line 1531
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1511
    return-void

    .line 1513
    :cond_39
    :try_start_39
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1514
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v7

    if-eq v6, v7, :cond_68

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 1515
    invoke-static {v6, v5}, Landroid/view/AccessibilityInteractionController;->-$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 1516
    const/4 v6, 0x0

    .line 1517
    .local v6, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    nop

    .line 1518
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    .line 1519
    .local v7, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v7, :cond_5e

    .line 1520
    invoke-virtual {v5}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v8, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_63

    .line 1522
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_5e
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 1525
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_63
    if-eqz v8, :cond_68

    .line 1526
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catchall {:try_start_39 .. :try_end_68} :catchall_6f

    .line 1509
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 1531
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_6b
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1532
    goto :goto_74

    .line 1531
    :catchall_6f
    move-exception v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1532
    throw v3

    .line 1534
    .end local v1    # "parentGroup":Landroid/view/ViewGroup;
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_74
    :goto_74
    return-void
.end method

.method private blacklist prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;Z)V
    .registers 22
    .param p1, "current"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .param p5, "predecessorsPrefetched"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1630
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v4

    .line 1631
    .local v4, "parentNodeId":J
    nop

    .line 1632
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v6

    .line 1633
    .local v6, "parentAccessibilityViewId":I
    nop

    .line 1634
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v7

    .line 1635
    .local v7, "parentVirtualDescendantId":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_28

    .line 1636
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v8

    if-ne v6, v8, :cond_22

    move-object/from16 v8, p2

    goto :goto_2a

    .line 1661
    :cond_22
    move-object/from16 v8, p2

    invoke-direct {v0, v8, v2, v3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;Z)V

    goto :goto_62

    .line 1635
    :cond_28
    move-object/from16 v8, p2

    .line 1637
    :goto_2a
    nop

    .line 1638
    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 1639
    .local v9, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v9, :cond_61

    .line 1640
    if-nez v3, :cond_36

    .line 1641
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    :cond_36
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v10

    .line 1644
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3b
    if-ge v11, v10, :cond_61

    .line 1645
    invoke-virtual {v0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_44

    .line 1646
    return-void

    .line 1648
    :cond_44
    invoke-virtual {v9, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v12

    .line 1649
    .local v12, "childNodeId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v14

    cmp-long v14, v12, v14

    if-eqz v14, :cond_5e

    .line 1650
    nop

    .line 1651
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v14

    .line 1652
    .local v14, "childVirtualDescendantId":I
    invoke-virtual {v1, v14}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    .line 1654
    .local v15, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v15, :cond_5e

    .line 1655
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1644
    .end local v12    # "childNodeId":J
    .end local v14    # "childVirtualDescendantId":I
    .end local v15    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_5e
    add-int/lit8 v11, v11, 0x1

    goto :goto_3b

    .line 1660
    .end local v9    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "childCount":I
    .end local v11    # "i":I
    :cond_61
    nop

    .line 1663
    :goto_62
    return-void
.end method


# virtual methods
.method public blacklist prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1331
    .local p3, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez p2, :cond_3

    .line 1332
    return-void

    .line 1334
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 1335
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    nop

    .line 1336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v5

    .line 1337
    .local v5, "prefetchPredecessors":Z
    const/4 v6, 0x4

    const/4 v0, 0x2

    if-nez v3, :cond_32

    .line 1338
    if-eqz v5, :cond_16

    .line 1339
    invoke-direct {p0, p1, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 1341
    :cond_16
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1342
    invoke-direct {p0, p1, p3, v5}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;Z)V

    .line 1344
    :cond_1f
    invoke-direct {p0, v6}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1345
    invoke-direct {p0, p1, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v4, p3

    goto :goto_52

    .line 1344
    :cond_2d
    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v4, p3

    goto :goto_52

    .line 1348
    :cond_32
    if-eqz v5, :cond_37

    .line 1349
    invoke-direct {p0, p2, p1, v3, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1351
    :cond_37
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1352
    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v4, p3

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local p3    # "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v1, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v2, "view":Landroid/view/View;
    .local v4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;Z)V

    goto :goto_49

    .line 1351
    .end local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "view":Landroid/view/View;
    .end local v4    # "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local p3    # "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_45
    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v4, p3

    .line 1355
    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local p3    # "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2    # "view":Landroid/view/View;
    .restart local v4    # "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_49
    invoke-direct {p0, v6}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 1356
    invoke-direct {p0, v1, v3, v4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1359
    :cond_52
    :goto_52
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result p1

    if-nez p1, :cond_62

    .line 1360
    const/16 p1, 0x10

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 1361
    :cond_62
    invoke-virtual {p0, v4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 1362
    return-void

    .line 1364
    :cond_69
    new-instance p1, Landroid/view/AccessibilityInteractionController$PrefetchDeque;

    iget-object p2, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    iget p3, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mFetchFlags:I

    and-int/lit8 p3, p3, 0x1c

    invoke-direct {p1, p2, p3, v4}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;-><init>(Landroid/view/AccessibilityInteractionController;ILjava/util/List;)V

    .line 1367
    .local p1, "deque":Landroid/view/AccessibilityInteractionController$PrefetchDeque;, "Landroid/view/AccessibilityInteractionController$PrefetchDeque<Landroid/view/AccessibilityInteractionController$DequeNode;>;"
    invoke-direct {p0, v2, v1, v3, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->addChildrenOfRoot(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V

    .line 1368
    invoke-virtual {p1}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->performTraversalAndPrefetch()V

    .line 1373
    .end local p1    # "deque":Landroid/view/AccessibilityInteractionController$PrefetchDeque;, "Landroid/view/AccessibilityInteractionController$PrefetchDeque<Landroid/view/AccessibilityInteractionController$DequeNode;>;"
    :cond_7a
    return-void
.end method

.method public blacklist shouldStopPrefetching(Ljava/util/List;)Z
    .registers 4
    .param p1, "prefetchedInfos"    # Ljava/util/List;

    .line 1392
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v0}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmHandler(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$PrivateHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasUserInteractiveMessagesWaiting()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mInterruptPrefetch:Z

    if-nez v0, :cond_18

    .line 1393
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1392
    :goto_1b
    return v0
.end method

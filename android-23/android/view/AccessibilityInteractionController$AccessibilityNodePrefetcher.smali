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


# static fields
.field private static final MAX_ACCESSIBILITY_NODE_INFO_BATCH_SIZE:I = 0x32


# instance fields
.field private final mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method private constructor <init>(Landroid/view/AccessibilityInteractionController;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/AccessibilityInteractionController;

    #@0
    .prologue
    .line 824
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 828
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    #@c
    .line 824
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/AccessibilityInteractionController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;)V

    #@3
    return-void
.end method

.method private enforceNodeTreeConsistent(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 875
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v15, Landroid/util/LongSparseArray;

    #@2
    invoke-direct {v15}, Landroid/util/LongSparseArray;-><init>()V

    #@5
    .line 876
    .local v15, "nodeMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@8
    move-result v14

    #@9
    .line 877
    .local v14, "nodeCount":I
    const/4 v9, 0x0

    #@a
    .local v9, "i":I
    :goto_0
    if-ge v9, v14, :cond_0

    #@c
    .line 878
    move-object/from16 v0, p1

    #@e
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v13

    #@12
    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@14
    .line 879
    .local v13, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@17
    move-result-wide v20

    #@18
    move-wide/from16 v0, v20

    #@1a
    invoke-virtual {v15, v0, v1, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@1d
    .line 877
    add-int/lit8 v9, v9, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 884
    .end local v13    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    const/16 v19, 0x0

    #@22
    move/from16 v0, v19

    #@24
    invoke-virtual {v15, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@27
    move-result-object v17

    #@28
    check-cast v17, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2a
    .line 885
    .local v17, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v16, v17

    #@2c
    .line 886
    .local v16, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v16, :cond_1

    #@2e
    .line 887
    move-object/from16 v17, v16

    #@30
    .line 888
    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    #@33
    move-result-wide v20

    #@34
    move-wide/from16 v0, v20

    #@36
    invoke-virtual {v15, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@39
    move-result-object v16

    #@3a
    .end local v16    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    check-cast v16, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3c
    .restart local v16    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    #@3d
    .line 892
    :cond_1
    const/4 v2, 0x0

    #@3e
    .line 893
    .local v2, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    #@3f
    .line 894
    .local v11, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v18, Ljava/util/HashSet;

    #@41
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    #@44
    .line 895
    .local v18, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v8, Ljava/util/LinkedList;

    #@46
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    #@49
    .line 896
    .local v8, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, v17

    #@4b
    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@4e
    .line 898
    .end local v2    # "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    #@51
    move-result v19

    #@52
    if-nez v19, :cond_9

    #@54
    .line 899
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@57
    move-result-object v5

    #@58
    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5a
    .line 902
    .local v5, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v18

    #@5c
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5f
    move-result v19

    #@60
    if-nez v19, :cond_3

    #@62
    .line 903
    new-instance v19, Ljava/lang/IllegalStateException;

    #@64
    new-instance v20, Ljava/lang/StringBuilder;

    #@66
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v21, "Duplicate node: "

    #@6c
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v20

    #@70
    move-object/from16 v0, v20

    #@72
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v20

    #@76
    .line 904
    const-string/jumbo v21, " in window:"

    #@79
    .line 903
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v20

    #@7d
    .line 905
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    #@81
    move-object/from16 v21, v0

    #@83
    invoke-static/range {v21 .. v21}, Landroid/view/AccessibilityInteractionController;->-get0(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    #@86
    move-result-object v21

    #@87
    move-object/from16 v0, v21

    #@89
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@8b
    move-object/from16 v21, v0

    #@8d
    move-object/from16 v0, v21

    #@8f
    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    #@91
    move/from16 v21, v0

    #@93
    .line 903
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v20

    #@97
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v20

    #@9b
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v19

    #@9f
    .line 909
    :cond_3
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    #@a2
    move-result v19

    #@a3
    if-eqz v19, :cond_5

    #@a5
    .line 910
    if-eqz v2, :cond_4

    #@a7
    .line 911
    new-instance v19, Ljava/lang/IllegalStateException;

    #@a9
    new-instance v20, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v21, "Duplicate accessibility focus:"

    #@b1
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v20

    #@b5
    move-object/from16 v0, v20

    #@b7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v20

    #@bb
    .line 913
    const-string/jumbo v21, " in window:"

    #@be
    .line 911
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v20

    #@c2
    .line 913
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    #@c6
    move-object/from16 v21, v0

    #@c8
    invoke-static/range {v21 .. v21}, Landroid/view/AccessibilityInteractionController;->-get0(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    #@cb
    move-result-object v21

    #@cc
    move-object/from16 v0, v21

    #@ce
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d0
    move-object/from16 v21, v0

    #@d2
    move-object/from16 v0, v21

    #@d4
    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    #@d6
    move/from16 v21, v0

    #@d8
    .line 911
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@db
    move-result-object v20

    #@dc
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v20

    #@e0
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e3
    throw v19

    #@e4
    .line 915
    :cond_4
    move-object v2, v5

    #@e5
    .line 920
    :cond_5
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    #@e8
    move-result v19

    #@e9
    if-eqz v19, :cond_7

    #@eb
    .line 921
    if-eqz v11, :cond_6

    #@ed
    .line 922
    new-instance v19, Ljava/lang/IllegalStateException;

    #@ef
    new-instance v20, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v21, "Duplicate input focus: "

    #@f7
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v20

    #@fb
    move-object/from16 v0, v20

    #@fd
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v20

    #@101
    .line 923
    const-string/jumbo v21, " in window:"

    #@104
    .line 922
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v20

    #@108
    .line 924
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    #@10c
    move-object/from16 v21, v0

    #@10e
    invoke-static/range {v21 .. v21}, Landroid/view/AccessibilityInteractionController;->-get0(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    #@111
    move-result-object v21

    #@112
    move-object/from16 v0, v21

    #@114
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@116
    move-object/from16 v21, v0

    #@118
    move-object/from16 v0, v21

    #@11a
    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    #@11c
    move/from16 v21, v0

    #@11e
    .line 922
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@121
    move-result-object v20

    #@122
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v20

    #@126
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@129
    throw v19

    #@12a
    .line 926
    :cond_6
    move-object v11, v5

    #@12b
    .line 930
    :cond_7
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@12e
    move-result v4

    #@12f
    .line 931
    .local v4, "childCount":I
    const/4 v12, 0x0

    #@130
    .local v12, "j":I
    :goto_2
    if-ge v12, v4, :cond_2

    #@132
    .line 932
    invoke-virtual {v5, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    #@135
    move-result-wide v6

    #@136
    .line 933
    .local v6, "childId":J
    invoke-virtual {v15, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@139
    move-result-object v3

    #@13a
    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@13c
    .line 934
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v3, :cond_8

    #@13e
    .line 935
    invoke-interface {v8, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    #@141
    .line 931
    :cond_8
    add-int/lit8 v12, v12, 0x1

    #@143
    goto :goto_2

    #@144
    .line 941
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "childCount":I
    .end local v5    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "childId":J
    .end local v12    # "j":I
    :cond_9
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    #@147
    move-result v19

    #@148
    add-int/lit8 v12, v19, -0x1

    #@14a
    .restart local v12    # "j":I
    :goto_3
    if-ltz v12, :cond_b

    #@14c
    .line 942
    invoke-virtual {v15, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@14f
    move-result-object v10

    #@150
    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@152
    .line 943
    .local v10, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, v18

    #@154
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@157
    move-result v19

    #@158
    if-nez v19, :cond_a

    #@15a
    .line 944
    new-instance v19, Ljava/lang/IllegalStateException;

    #@15c
    new-instance v20, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v21, "Disconnected node: "

    #@164
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v20

    #@168
    move-object/from16 v0, v20

    #@16a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v20

    #@16e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v20

    #@172
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@175
    throw v19

    #@176
    .line 941
    :cond_a
    add-int/lit8 v12, v12, -0x1

    #@178
    goto :goto_3

    #@179
    .line 873
    .end local v10    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_b
    return-void
.end method

.method private prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 13
    .param p1, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/16 v12, 0x32

    #@2
    .line 1002
    instance-of v11, p1, Landroid/view/ViewGroup;

    #@4
    if-nez v11, :cond_0

    #@6
    .line 1003
    return-void

    #@7
    .line 1006
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    #@9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 1007
    .local v1, "addedChildren":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    #@e
    .line 1008
    .local v4, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@11
    .line 1010
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    #@14
    .line 1011
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    .line 1012
    .local v3, "childCount":I
    const/4 v7, 0x0

    #@19
    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_4

    #@1b
    .line 1013
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v11

    #@1f
    if-lt v11, v12, :cond_1

    #@21
    .line 1036
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@24
    .line 1014
    return-void

    #@25
    .line 1016
    :cond_1
    :try_start_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/view/View;

    #@2b
    .line 1017
    .local v2, "child":Landroid/view/View;
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    #@2d
    invoke-static {v11, v2}, Landroid/view/AccessibilityInteractionController;->-wrap0(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    #@30
    move-result v11

    #@31
    if-eqz v11, :cond_2

    #@33
    .line 1018
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@36
    move-result-object v9

    #@37
    .line 1019
    .local v9, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v9, :cond_3

    #@39
    .line 1020
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3c
    move-result-object v8

    #@3d
    .line 1021
    .local v8, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_2

    #@3f
    .line 1022
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@42
    .line 1023
    const/4 v11, 0x0

    #@43
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 1012
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@48
    goto :goto_0

    #@49
    .line 1027
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    const/4 v11, -0x1

    #@4a
    .line 1026
    invoke-virtual {v9, v11}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4d
    move-result-object v8

    #@4e
    .line 1028
    .restart local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_2

    #@50
    .line 1029
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 1030
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    goto :goto_1

    #@57
    .line 1035
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v7    # "i":I
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :catchall_0
    move-exception v11

    #@58
    .line 1036
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@5b
    .line 1035
    throw v11

    #@5c
    .line 1036
    .restart local v3    # "childCount":I
    .restart local v7    # "i":I
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@5f
    .line 1038
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@62
    move-result v11

    #@63
    if-ge v11, v12, :cond_6

    #@65
    .line 1039
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@68
    move-result-object v11

    #@69
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6c
    move-result-object v6

    #@6d
    .local v6, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@70
    move-result v11

    #@71
    if-eqz v11, :cond_6

    #@73
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@76
    move-result-object v5

    #@77
    check-cast v5, Ljava/util/Map$Entry;

    #@79
    .line 1040
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Landroid/view/View;

    #@7f
    .line 1041
    .local v0, "addedChild":Landroid/view/View;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@82
    move-result-object v10

    #@83
    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@85
    .line 1042
    .local v10, "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v10, :cond_5

    #@87
    .line 1043
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    #@8a
    goto :goto_2

    #@8b
    .line 1046
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@8e
    move-result-object v9

    #@8f
    .line 1047
    .restart local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    invoke-direct {p0, v10, v9, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    #@92
    goto :goto_2

    #@93
    .line 1001
    .end local v0    # "addedChild":Landroid/view/View;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v10    # "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    return-void
.end method

.method private prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 9
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/16 v8, 0x32

    #@2
    .line 1130
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@5
    move-result v6

    #@6
    .line 1131
    .local v6, "initialOutInfosSize":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@9
    move-result v2

    #@a
    .line 1132
    .local v2, "childCount":I
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@d
    .line 1133
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@10
    move-result v7

    #@11
    if-lt v7, v8, :cond_0

    #@13
    .line 1134
    return-void

    #@14
    .line 1136
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    #@17
    move-result-wide v4

    #@18
    .line 1138
    .local v4, "childNodeId":J
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@1b
    move-result v7

    #@1c
    .line 1137
    invoke-virtual {p2, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1f
    move-result-object v1

    #@20
    .line 1139
    .local v1, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_1

    #@22
    .line 1140
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 1132
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1143
    .end local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "childNodeId":J
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@2b
    move-result v7

    #@2c
    if-ge v7, v8, :cond_3

    #@2e
    .line 1144
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@31
    move-result v7

    #@32
    sub-int v0, v7, v6

    #@34
    .line 1145
    .local v0, "addedChildCount":I
    const/4 v3, 0x0

    #@35
    :goto_1
    if-ge v3, v0, :cond_3

    #@37
    .line 1146
    add-int v7, v6, v3

    #@39
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3f
    .line 1147
    .restart local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    #@42
    .line 1145
    add-int/lit8 v3, v3, 0x1

    #@44
    goto :goto_1

    #@45
    .line 1129
    .end local v0    # "addedChildCount":I
    .end local v1    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    return-void
.end method

.method private prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 951
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    #@3
    move-result-object v1

    #@4
    .line 952
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 953
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@b
    move-result v3

    #@c
    const/16 v4, 0x32

    #@e
    if-ge v3, v4, :cond_1

    #@10
    move-object v2, v1

    #@11
    .line 954
    check-cast v2, Landroid/view/View;

    #@13
    .line 955
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@16
    move-result-object v0

    #@17
    .line 956
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    #@19
    .line 957
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    .line 959
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    #@1f
    move-result-object v1

    #@20
    goto :goto_0

    #@21
    .line 950
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "parentView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 8
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const v7, 0x7fffffff

    #@3
    .line 1056
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    #@6
    move-result-wide v2

    #@7
    .line 1057
    .local v2, "parentNodeId":J
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@a
    move-result v0

    #@b
    .line 1058
    .local v0, "accessibilityViewId":I
    :goto_0
    if-eq v0, v7, :cond_5

    #@d
    .line 1059
    invoke-interface {p4}, Ljava/util/List;->size()I

    #@10
    move-result v5

    #@11
    const/16 v6, 0x32

    #@13
    if-lt v5, v6, :cond_0

    #@15
    .line 1060
    return-void

    #@16
    .line 1063
    :cond_0
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@19
    move-result v4

    #@1a
    .line 1064
    .local v4, "virtualDescendantId":I
    if-ne v4, v7, :cond_1

    #@1c
    .line 1065
    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityViewId()I

    #@1f
    move-result v5

    #@20
    if-ne v0, v5, :cond_4

    #@22
    .line 1067
    :cond_1
    if-eq v4, v7, :cond_2

    #@24
    .line 1068
    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@27
    move-result-object v1

    #@28
    .line 1073
    .local v1, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-nez v1, :cond_3

    #@2a
    .line 1076
    return-void

    #@2b
    .line 1071
    .end local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    const/4 v5, -0x1

    #@2c
    .line 1070
    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2f
    move-result-object v1

    #@30
    .restart local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    #@31
    .line 1078
    :cond_3
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34
    .line 1079
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    #@37
    move-result-wide v2

    #@38
    .line 1080
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@3b
    move-result v0

    #@3c
    goto :goto_0

    #@3d
    .line 1083
    .end local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    invoke-direct {p0, p2, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    #@40
    .line 1084
    return-void

    #@41
    .line 1055
    .end local v4    # "virtualDescendantId":I
    :cond_5
    return-void
.end method

.method private prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 10
    .param p1, "current"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 965
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    #@3
    move-result-object v5

    #@4
    .line 966
    .local v5, "parent":Landroid/view/ViewParent;
    instance-of v8, v5, Landroid/view/ViewGroup;

    #@6
    if-eqz v8, :cond_4

    #@8
    move-object v6, v5

    #@9
    .line 967
    check-cast v6, Landroid/view/ViewGroup;

    #@b
    .line 968
    .local v6, "parentGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    #@d
    .line 969
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@10
    .line 971
    :try_start_0
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    #@13
    .line 972
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v1

    #@17
    .line 973
    .local v1, "childCount":I
    const/4 v3, 0x0

    #@18
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    #@1a
    .line 974
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v8

    #@1e
    const/16 v9, 0x32

    #@20
    if-lt v8, v9, :cond_0

    #@22
    .line 995
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@25
    .line 975
    return-void

    #@26
    .line 977
    :cond_0
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Landroid/view/View;

    #@2c
    .line 978
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    #@2f
    move-result v8

    #@30
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    #@33
    move-result v9

    #@34
    if-eq v8, v9, :cond_1

    #@36
    .line 979
    iget-object v8, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    #@38
    invoke-static {v8, v0}, Landroid/view/AccessibilityInteractionController;->-wrap0(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    #@3b
    move-result v8

    #@3c
    .line 978
    if-eqz v8, :cond_1

    #@3e
    .line 980
    const/4 v4, 0x0

    #@3f
    .line 982
    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@42
    move-result-object v7

    #@43
    .line 983
    .local v7, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v7, :cond_2

    #@45
    .line 984
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@48
    move-result-object v4

    #@49
    .line 989
    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v4, :cond_1

    #@4b
    .line 990
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4e
    .line 973
    .end local v4    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@50
    goto :goto_0

    #@51
    .line 987
    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    const/4 v8, -0x1

    #@52
    .line 986
    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    move-result-object v4

    #@56
    .local v4, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    #@57
    .line 995
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@5a
    .line 964
    .end local v1    # "childCount":I
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "i":I
    .end local v6    # "parentGroup":Landroid/view/ViewGroup;
    :cond_4
    return-void

    #@5b
    .line 994
    .restart local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6    # "parentGroup":Landroid/view/ViewGroup;
    :catchall_0
    move-exception v8

    #@5c
    .line 995
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@5f
    .line 994
    throw v8
.end method

.method private prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 18
    .param p1, "current"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1091
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    #@3
    move-result-wide v12

    #@4
    .line 1093
    .local v12, "parentNodeId":J
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@7
    move-result v11

    #@8
    .line 1095
    .local v11, "parentAccessibilityViewId":I
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@b
    move-result v14

    #@c
    .line 1096
    .local v14, "parentVirtualDescendantId":I
    const v15, 0x7fffffff

    #@f
    if-ne v14, v15, :cond_0

    #@11
    .line 1097
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAccessibilityViewId()I

    #@14
    move-result v15

    #@15
    if-ne v11, v15, :cond_4

    #@17
    .line 1099
    :cond_0
    const v15, 0x7fffffff

    #@1a
    if-eq v14, v15, :cond_1

    #@1c
    .line 1100
    move-object/from16 v0, p3

    #@1e
    invoke-virtual {v0, v14}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@21
    move-result-object v10

    #@22
    .line 1105
    .local v10, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    if-eqz v10, :cond_5

    #@24
    .line 1106
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@27
    move-result v5

    #@28
    .line 1107
    .local v5, "childCount":I
    const/4 v9, 0x0

    #@29
    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_5

    #@2b
    .line 1108
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@2e
    move-result v15

    #@2f
    const/16 v16, 0x32

    #@31
    move/from16 v0, v16

    #@33
    if-lt v15, v0, :cond_2

    #@35
    .line 1109
    return-void

    #@36
    .line 1103
    .end local v5    # "childCount":I
    .end local v9    # "i":I
    .end local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    const/4 v15, -0x1

    #@37
    .line 1102
    move-object/from16 v0, p3

    #@39
    invoke-virtual {v0, v15}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3c
    move-result-object v10

    #@3d
    .restart local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    #@3e
    .line 1111
    .restart local v5    # "childCount":I
    .restart local v9    # "i":I
    :cond_2
    invoke-virtual {v10, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    #@41
    move-result-wide v6

    #@42
    .line 1112
    .local v6, "childNodeId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    #@45
    move-result-wide v16

    #@46
    cmp-long v15, v6, v16

    #@48
    if-eqz v15, :cond_3

    #@4a
    .line 1114
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@4d
    move-result v8

    #@4e
    .line 1115
    .local v8, "childVirtualDescendantId":I
    move-object/from16 v0, p3

    #@50
    invoke-virtual {v0, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@53
    move-result-object v4

    #@54
    .line 1117
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_3

    #@56
    .line 1118
    move-object/from16 v0, p4

    #@58
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    .line 1107
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "childVirtualDescendantId":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 1124
    .end local v5    # "childCount":I
    .end local v6    # "childNodeId":J
    .end local v9    # "i":I
    .end local v10    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    move-object/from16 v0, p0

    #@60
    move-object/from16 v1, p2

    #@62
    move-object/from16 v2, p4

    #@64
    invoke-direct {v0, v1, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    #@67
    .line 1090
    :cond_5
    return-void
.end method


# virtual methods
.method public prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualViewId"    # I
    .param p3, "fetchFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 832
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@3
    move-result-object v0

    #@4
    .line 833
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_3

    #@6
    .line 834
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@9
    move-result-object v1

    #@a
    .line 835
    .local v1, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v1, :cond_2

    #@c
    .line 836
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f
    .line 837
    and-int/lit8 v2, p3, 0x1

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 838
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    #@16
    .line 840
    :cond_0
    and-int/lit8 v2, p3, 0x2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 841
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    #@1d
    .line 843
    :cond_1
    and-int/lit8 v2, p3, 0x4

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 844
    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    #@24
    .line 831
    :cond_2
    :goto_0
    return-void

    #@25
    .line 849
    .end local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    const v2, 0x7fffffff

    #@28
    if-eq p2, v2, :cond_6

    #@2a
    .line 850
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2d
    move-result-object v1

    #@2e
    .line 855
    .restart local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v1, :cond_2

    #@30
    .line 856
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    .line 857
    and-int/lit8 v2, p3, 0x1

    #@35
    if-eqz v2, :cond_4

    #@37
    .line 858
    invoke-direct {p0, v1, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    #@3a
    .line 860
    :cond_4
    and-int/lit8 v2, p3, 0x2

    #@3c
    if-eqz v2, :cond_5

    #@3e
    .line 861
    invoke-direct {p0, v1, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    #@41
    .line 863
    :cond_5
    and-int/lit8 v2, p3, 0x4

    #@43
    if-eqz v2, :cond_2

    #@45
    .line 864
    invoke-direct {p0, v1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    #@48
    goto :goto_0

    #@49
    .line 853
    .end local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    const/4 v2, -0x1

    #@4a
    .line 852
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4d
    move-result-object v1

    #@4e
    .restart local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1
.end method

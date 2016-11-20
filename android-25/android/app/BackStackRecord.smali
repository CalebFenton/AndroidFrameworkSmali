.class final Landroid/app/BackStackRecord;
.super Landroid/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BackStackRecord$Op;,
        Landroid/app/BackStackRecord$TransitionState;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Landroid/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Landroid/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTail:Landroid/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method static synthetic -wrap0(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "isBack"    # Z
    .param p3, "inFragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/BackStackRecord;->mapSharedElementsIn(Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V
    .locals 0
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/app/Fragment;
    .param p3, "outFragment"    # Landroid/app/Fragment;
    .param p4, "isBack"    # Z
    .param p5, "namedViews"    # Landroid/util/ArrayMap;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/BackStackRecord;->callSharedElementEnd(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/app/BackStackRecord;Ljava/util/ArrayList;ILandroid/transition/Transition;)V
    .locals 0
    .param p1, "hiddenFragmentViews"    # Ljava/util/ArrayList;
    .param p2, "containerId"    # I
    .param p3, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/BackStackRecord;->excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "fromTransition"    # Landroid/transition/Transition;
    .param p2, "views"    # Ljava/util/ArrayList;
    .param p3, "exclude"    # Z

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/app/BackStackRecord;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/app/BackStackRecord;Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p1, "namedViews"    # Landroid/util/ArrayMap;
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/BackStackRecord;->setEpicenterIn(Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/app/BackStackRecord;Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/BackStackRecord;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "transition"    # Landroid/transition/TransitionSet;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p2, "namedViews"    # Landroid/util/ArrayMap;
    .param p3, "sharedElementTargets"    # Ljava/util/ArrayList;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/app/BackStackRecord;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManagerImpl;

    #@0
    .prologue
    .line 405
    invoke-direct {p0}, Landroid/app/FragmentTransaction;-><init>()V

    #@3
    .line 242
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@6
    .line 245
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@9
    .line 406
    iput-object p1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@b
    .line 405
    return-void
.end method

.method public static addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1529
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v6, p0, Landroid/transition/TransitionSet;

    #@2
    if-eqz v6, :cond_0

    #@4
    move-object v4, p0

    #@5
    .line 1530
    check-cast v4, Landroid/transition/TransitionSet;

    #@7
    .line 1531
    .local v4, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@a
    move-result v2

    #@b
    .line 1532
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@e
    .line 1533
    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    #@11
    move-result-object v0

    #@12
    .line 1534
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@15
    .line 1532
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1536
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v4    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {p0}, Landroid/app/BackStackRecord;->hasSimpleTarget(Landroid/transition/Transition;)Z

    #@1b
    move-result v6

    #@1c
    if-nez v6, :cond_1

    #@1e
    .line 1537
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    #@21
    move-result-object v5

    #@22
    .line 1538
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v5}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_1

    #@28
    .line 1540
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v3

    #@2c
    .line 1541
    .local v3, "numViews":I
    const/4 v1, 0x0

    #@2d
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    #@2f
    .line 1542
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v6

    #@33
    check-cast v6, Landroid/view/View;

    #@35
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@38
    .line 1541
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 1528
    .end local v1    # "i":I
    .end local v3    # "numViews":I
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "enterTransition"    # Landroid/transition/Transition;
    .param p3, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p4, "exitTransition"    # Landroid/transition/Transition;
    .param p5, "overallTransition"    # Landroid/transition/Transition;
    .param p6, "container"    # Landroid/view/View;
    .param p7, "inFragment"    # Landroid/app/Fragment;
    .param p8, "outFragment"    # Landroid/app/Fragment;
    .param p10, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/transition/Transition;",
            "Landroid/transition/TransitionSet;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1131
    .local p9, "hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p11, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p2, :cond_0

    #@2
    if-nez p3, :cond_0

    #@4
    .line 1132
    if-nez p5, :cond_0

    #@6
    .line 1133
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 1135
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    #@a
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 1136
    .local v13, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@10
    move-result-object v14

    #@11
    .line 1137
    new-instance v0, Landroid/app/BackStackRecord$1;

    #@13
    move-object v1, p0

    #@14
    move-object/from16 v2, p6

    #@16
    move-object/from16 v3, p7

    #@18
    move-object/from16 v4, p9

    #@1a
    move-object/from16 v5, p5

    #@1c
    move-object/from16 v6, p3

    #@1e
    move-object/from16 v7, p1

    #@20
    move/from16 v8, p10

    #@22
    move-object/from16 v9, p11

    #@24
    move-object/from16 v10, p4

    #@26
    move-object/from16 v11, p2

    #@28
    move-object/from16 v12, p8

    #@2a
    invoke-direct/range {v0 .. v13}, Landroid/app/BackStackRecord$1;-><init>(Landroid/app/BackStackRecord;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/app/BackStackRecord$TransitionState;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Ljava/util/ArrayList;)V

    #@2d
    .line 1136
    invoke-virtual {v14, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@30
    .line 1191
    return-object v13
.end method

.method private beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;
    .locals 7
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;Z)",
            "Landroid/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    #@0
    .prologue
    .line 1006
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v2, Landroid/app/BackStackRecord$TransitionState;

    #@2
    invoke-direct {v2, p0}, Landroid/app/BackStackRecord$TransitionState;-><init>(Landroid/app/BackStackRecord;)V

    #@5
    .line 1011
    .local v2, "state":Landroid/app/BackStackRecord$TransitionState;
    new-instance v0, Landroid/view/View;

    #@7
    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@9
    iget-object v3, v3, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@b
    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@e
    move-result-object v3

    #@f
    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@12
    iput-object v0, v2, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@14
    .line 1014
    const/4 v6, 0x0

    #@15
    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    #@18
    move-result v0

    #@19
    if-ge v6, v0, :cond_0

    #@1b
    .line 1015
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    #@1e
    move-result v1

    #@1f
    .local v1, "containerId":I
    move-object v0, p0

    #@20
    move v3, p3

    #@21
    move-object v4, p1

    #@22
    move-object v5, p2

    #@23
    .line 1016
    invoke-direct/range {v0 .. v5}, Landroid/app/BackStackRecord;->configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@26
    .line 1014
    add-int/lit8 v6, v6, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1021
    .end local v1    # "containerId":I
    :cond_0
    const/4 v6, 0x0

    #@2a
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    #@2d
    move-result v0

    #@2e
    if-ge v6, v0, :cond_2

    #@30
    .line 1022
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->keyAt(I)I

    #@33
    move-result v1

    #@34
    .line 1023
    .restart local v1    # "containerId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    if-nez v0, :cond_1

    #@3a
    move-object v0, p0

    #@3b
    move v3, p3

    #@3c
    move-object v4, p1

    #@3d
    move-object v5, p2

    #@3e
    .line 1024
    invoke-direct/range {v0 .. v5}, Landroid/app/BackStackRecord;->configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@41
    .line 1021
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_1

    #@44
    .line 1028
    .end local v1    # "containerId":I
    :cond_2
    return-object v2
.end method

.method private static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .param p1, "startView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1411
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v4

    #@4
    .line 1412
    .local v4, "startIndex":I
    invoke-static {p0, p1, v4}, Landroid/app/BackStackRecord;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    #@7
    move-result v7

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 1413
    return-void

    #@b
    .line 1415
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    .line 1416
    move v3, v4

    #@f
    .local v3, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@12
    move-result v7

    #@13
    if-ge v3, v7, :cond_3

    #@15
    .line 1417
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Landroid/view/View;

    #@1b
    .line 1418
    .local v5, "view":Landroid/view/View;
    instance-of v7, v5, Landroid/view/ViewGroup;

    #@1d
    if-eqz v7, :cond_2

    #@1f
    move-object v6, v5

    #@20
    .line 1419
    check-cast v6, Landroid/view/ViewGroup;

    #@22
    .line 1420
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    #@25
    move-result v1

    #@26
    .line 1421
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@27
    .local v2, "childIndex":I
    :goto_1
    if-ge v2, v1, :cond_2

    #@29
    .line 1422
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@2c
    move-result-object v0

    #@2d
    .line 1423
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0, v4}, Landroid/app/BackStackRecord;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    #@30
    move-result v7

    #@31
    if-nez v7, :cond_1

    #@33
    .line 1424
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 1421
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_1

    #@39
    .line 1416
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childIndex":I
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1410
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 876
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@2
    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    #@4
    invoke-virtual {v4}, Landroid/app/FragmentContainer;->onHasView()Z

    #@7
    move-result v4

    #@8
    if-nez v4, :cond_0

    #@a
    .line 877
    return-void

    #@b
    .line 879
    :cond_0
    iget-object v3, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@d
    .line 880
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_5

    #@f
    .line 881
    iget v4, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    #@11
    packed-switch v4, :pswitch_data_0

    #@14
    .line 920
    :goto_1
    iget-object v3, v3, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@16
    goto :goto_0

    #@17
    .line 883
    :pswitch_0
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@19
    invoke-direct {p0, p1, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@1c
    goto :goto_1

    #@1d
    .line 886
    :pswitch_1
    iget-object v0, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@1f
    .line 887
    .local v0, "f":Landroid/app/Fragment;
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@21
    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@23
    if-eqz v4, :cond_4

    #@25
    .line 888
    const/4 v1, 0x0

    #@26
    .end local v0    # "f":Landroid/app/Fragment;
    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@28
    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v4

    #@2e
    if-ge v1, v4, :cond_4

    #@30
    .line 889
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@32
    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Landroid/app/Fragment;

    #@3a
    .line 890
    .local v2, "old":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    #@3c
    iget v4, v2, Landroid/app/Fragment;->mContainerId:I

    #@3e
    iget v5, v0, Landroid/app/Fragment;->mContainerId:I

    #@40
    if-ne v4, v5, :cond_2

    #@42
    .line 891
    :cond_1
    if-ne v2, v0, :cond_3

    #@44
    .line 892
    const/4 v0, 0x0

    #@45
    .line 893
    .local v0, "f":Landroid/app/Fragment;
    iget v4, v2, Landroid/app/Fragment;->mContainerId:I

    #@47
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->remove(I)V

    #@4a
    .line 888
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_2

    #@4d
    .line 895
    :cond_3
    invoke-static {p1, p2, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@50
    goto :goto_3

    #@51
    .line 900
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/app/Fragment;
    :cond_4
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@53
    invoke-direct {p0, p1, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@56
    goto :goto_1

    #@57
    .line 904
    :pswitch_2
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@59
    invoke-static {p1, p2, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@5c
    goto :goto_1

    #@5d
    .line 907
    :pswitch_3
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@5f
    invoke-static {p1, p2, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@62
    goto :goto_1

    #@63
    .line 910
    :pswitch_4
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@65
    invoke-direct {p0, p1, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@68
    goto :goto_1

    #@69
    .line 913
    :pswitch_5
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@6b
    invoke-static {p1, p2, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@6e
    goto :goto_1

    #@6f
    .line 916
    :pswitch_6
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@71
    invoke-direct {p0, p1, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@74
    goto :goto_1

    #@75
    .line 875
    :cond_5
    return-void

    #@76
    .line 881
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private callSharedElementEnd(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/app/Fragment;
    .param p3, "outFragment"    # Landroid/app/Fragment;
    .param p4, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/app/Fragment;",
            "Landroid/app/Fragment;",
            "Z",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1196
    .local p5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p4, :cond_0

    #@2
    .line 1197
    iget-object v1, p3, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@4
    .line 1199
    .local v1, "sharedElementCallback":Landroid/app/SharedElementCallback;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-virtual {p5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@9
    move-result-object v3

    #@a
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@d
    .line 1200
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@f
    invoke-virtual {p5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@12
    move-result-object v3

    #@13
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@16
    .line 1201
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    #@17
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@1a
    .line 1195
    return-void

    #@1b
    .line 1198
    .end local v0    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    .end local v2    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    iget-object v1, p2, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@1d
    .restart local v1    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    goto :goto_0
.end method

.method private static captureExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Landroid/util/ArrayMap;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "exitTransition"    # Landroid/transition/Transition;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1072
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v1, 0x0

    #@1
    .line 1073
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    #@3
    .line 1074
    new-instance v1, Ljava/util/ArrayList;

    #@5
    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 1075
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 1076
    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    #@f
    .line 1077
    if-eqz p2, :cond_0

    #@11
    .line 1078
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@18
    .line 1080
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_1

    #@1e
    .line 1081
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 1082
    invoke-static {p0, v1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@24
    .line 1085
    .end local v0    # "root":Landroid/view/View;
    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-object v1
.end method

.method private static cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0
    .param p0, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1032
    if-eqz p0, :cond_0

    #@2
    .line 1033
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@5
    move-result-object p0

    #@6
    .line 1035
    :cond_0
    return-object p0
.end method

.method private configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 31
    .param p1, "containerId"    # I
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1303
    .local p4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p5, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@4
    iget-object v3, v3, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    #@6
    move/from16 v0, p1

    #@8
    invoke-virtual {v3, v0}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    #@b
    move-result-object v9

    #@c
    check-cast v9, Landroid/view/ViewGroup;

    #@e
    .line 1304
    .local v9, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v9, :cond_7

    #@10
    .line 1305
    move-object/from16 v0, p5

    #@12
    move/from16 v1, p1

    #@14
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v10

    #@18
    check-cast v10, Landroid/app/Fragment;

    #@1a
    .line 1306
    .local v10, "inFragment":Landroid/app/Fragment;
    move-object/from16 v0, p4

    #@1c
    move/from16 v1, p1

    #@1e
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v11

    #@22
    check-cast v11, Landroid/app/Fragment;

    #@24
    .line 1308
    .local v11, "outFragment":Landroid/app/Fragment;
    move/from16 v0, p3

    #@26
    invoke-static {v10, v0}, Landroid/app/BackStackRecord;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    #@29
    move-result-object v5

    #@2a
    .line 1310
    .local v5, "enterTransition":Landroid/transition/Transition;
    move/from16 v0, p3

    #@2c
    invoke-static {v10, v11, v0}, Landroid/app/BackStackRecord;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    #@2f
    move-result-object v6

    #@30
    .line 1311
    .local v6, "sharedElementTransition":Landroid/transition/TransitionSet;
    move/from16 v0, p3

    #@32
    invoke-static {v11, v0}, Landroid/app/BackStackRecord;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    #@35
    move-result-object v7

    #@36
    .line 1313
    .local v7, "exitTransition":Landroid/transition/Transition;
    if-nez v5, :cond_0

    #@38
    if-nez v6, :cond_0

    #@3a
    .line 1314
    if-nez v7, :cond_0

    #@3c
    .line 1315
    return-void

    #@3d
    .line 1317
    :cond_0
    if-eqz v5, :cond_1

    #@3f
    .line 1318
    move-object/from16 v0, p2

    #@41
    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@43
    invoke-virtual {v5, v3}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@46
    .line 1320
    :cond_1
    const/16 v28, 0x0

    #@48
    .line 1321
    .local v28, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v14, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@4d
    .line 1322
    .local v14, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v6, :cond_2

    #@4f
    .line 1323
    move-object/from16 v0, p0

    #@51
    move-object/from16 v1, p2

    #@53
    move/from16 v2, p3

    #@55
    invoke-direct {v0, v1, v11, v2}, Landroid/app/BackStackRecord;->remapSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;

    #@58
    move-result-object v28

    #@59
    .line 1325
    .local v28, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v0, p2

    #@5b
    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@5d
    .line 1324
    move-object/from16 v0, v28

    #@5f
    invoke-static {v6, v3, v0, v14}, Landroid/app/BackStackRecord;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    #@62
    .line 1328
    if-eqz p3, :cond_8

    #@64
    .line 1329
    iget-object v0, v11, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@66
    move-object/from16 v26, v0

    #@68
    .line 1331
    .local v26, "callback":Landroid/app/SharedElementCallback;
    :goto_0
    new-instance v29, Ljava/util/ArrayList;

    #@6a
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@6d
    move-result-object v3

    #@6e
    move-object/from16 v0, v29

    #@70
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@73
    .line 1332
    .local v29, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v30, Ljava/util/ArrayList;

    #@75
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@78
    move-result-object v3

    #@79
    move-object/from16 v0, v30

    #@7b
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7e
    .line 1333
    .local v30, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    #@7f
    move-object/from16 v0, v26

    #@81
    move-object/from16 v1, v29

    #@83
    move-object/from16 v2, v30

    #@85
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@88
    .line 1337
    .end local v26    # "callback":Landroid/app/SharedElementCallback;
    .end local v28    # "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v29    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v30    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    move-object/from16 v0, p2

    #@8a
    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@8c
    .line 1336
    move-object/from16 v0, v28

    #@8e
    invoke-static {v7, v11, v0, v3}, Landroid/app/BackStackRecord;->captureExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Landroid/util/ArrayMap;Landroid/view/View;)Ljava/util/ArrayList;

    #@91
    move-result-object v21

    #@92
    .line 1338
    .local v21, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v21, :cond_3

    #@94
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    #@97
    move-result v3

    #@98
    if-eqz v3, :cond_4

    #@9a
    .line 1339
    :cond_3
    const/4 v7, 0x0

    #@9b
    .line 1341
    .end local v7    # "exitTransition":Landroid/transition/Transition;
    :cond_4
    const/4 v3, 0x1

    #@9c
    move-object/from16 v0, v21

    #@9e
    invoke-static {v5, v7, v0, v3}, Landroid/app/BackStackRecord;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@a1
    .line 1342
    const/4 v3, 0x1

    #@a2
    invoke-static {v5, v6, v14, v3}, Landroid/app/BackStackRecord;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@a5
    .line 1343
    const/4 v3, 0x1

    #@a6
    invoke-static {v7, v6, v14, v3}, Landroid/app/BackStackRecord;->excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    #@a9
    .line 1346
    move-object/from16 v0, p0

    #@ab
    iget-object v3, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@ad
    if-eqz v3, :cond_6

    #@af
    if-eqz v28, :cond_6

    #@b1
    .line 1347
    move-object/from16 v0, p0

    #@b3
    iget-object v3, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@b5
    const/4 v4, 0x0

    #@b6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b9
    move-result-object v3

    #@ba
    move-object/from16 v0, v28

    #@bc
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    move-result-object v27

    #@c0
    check-cast v27, Landroid/view/View;

    #@c2
    .line 1348
    .local v27, "epicenterView":Landroid/view/View;
    if-eqz v27, :cond_6

    #@c4
    .line 1349
    if-eqz v7, :cond_5

    #@c6
    .line 1350
    move-object/from16 v0, v27

    #@c8
    invoke-static {v7, v0}, Landroid/app/BackStackRecord;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    #@cb
    .line 1352
    :cond_5
    if-eqz v6, :cond_6

    #@cd
    .line 1353
    move-object/from16 v0, v27

    #@cf
    invoke-static {v6, v0}, Landroid/app/BackStackRecord;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    #@d2
    .line 1358
    .end local v27    # "epicenterView":Landroid/view/View;
    :cond_6
    move/from16 v0, p3

    #@d4
    invoke-static {v5, v7, v6, v10, v0}, Landroid/app/BackStackRecord;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    #@d7
    move-result-object v8

    #@d8
    .line 1361
    .local v8, "transition":Landroid/transition/Transition;
    if-eqz v8, :cond_7

    #@da
    .line 1362
    new-instance v12, Ljava/util/ArrayList;

    #@dc
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@df
    .local v12, "hiddenFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p0

    #@e1
    move-object/from16 v4, p2

    #@e3
    move/from16 v13, p3

    #@e5
    .line 1363
    invoke-direct/range {v3 .. v14}, Landroid/app/BackStackRecord;->addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    #@e8
    move-result-object v19

    #@e9
    .line 1367
    .local v19, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p2

    #@eb
    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@ed
    invoke-virtual {v8, v3}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    #@f0
    .line 1370
    move-object/from16 v0, p2

    #@f2
    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@f4
    const/4 v4, 0x1

    #@f5
    invoke-virtual {v8, v3, v4}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@f8
    .line 1372
    move-object/from16 v0, p0

    #@fa
    move/from16 v1, p1

    #@fc
    invoke-direct {v0, v12, v1, v8}, Landroid/app/BackStackRecord;->excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    #@ff
    .line 1373
    invoke-static {v9, v8}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@102
    .line 1375
    move-object/from16 v0, p2

    #@104
    iget-object v0, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@106
    move-object/from16 v17, v0

    #@108
    move-object/from16 v15, p0

    #@10a
    move-object/from16 v16, v9

    #@10c
    move-object/from16 v18, v5

    #@10e
    move-object/from16 v20, v7

    #@110
    move-object/from16 v22, v6

    #@112
    move-object/from16 v23, v14

    #@114
    move-object/from16 v24, v8

    #@116
    move-object/from16 v25, v12

    #@118
    invoke-direct/range {v15 .. v25}, Landroid/app/BackStackRecord;->removeTargetedViewsFromTransitions(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@11b
    .line 1302
    .end local v5    # "enterTransition":Landroid/transition/Transition;
    .end local v6    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .end local v8    # "transition":Landroid/transition/Transition;
    .end local v10    # "inFragment":Landroid/app/Fragment;
    .end local v11    # "outFragment":Landroid/app/Fragment;
    .end local v12    # "hiddenFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v14    # "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v19    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v21    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_7
    return-void

    #@11c
    .line 1330
    .restart local v5    # "enterTransition":Landroid/transition/Transition;
    .restart local v6    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .restart local v7    # "exitTransition":Landroid/transition/Transition;
    .restart local v10    # "inFragment":Landroid/app/Fragment;
    .restart local v11    # "outFragment":Landroid/app/Fragment;
    .restart local v14    # "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v28    # "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_8
    iget-object v0, v10, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@11e
    move-object/from16 v26, v0

    #@120
    .restart local v26    # "callback":Landroid/app/SharedElementCallback;
    goto/16 :goto_0
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1436
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@3
    .line 1437
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-ne v1, p1, :cond_0

    #@9
    .line 1438
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 1436
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 1441
    :cond_1
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method private doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V
    .locals 4
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    #@0
    .prologue
    .line 466
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@2
    iput-object v1, p2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    .line 468
    if-eqz p3, :cond_1

    #@6
    .line 469
    iget-object v1, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@c
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 474
    :cond_0
    iput-object p3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@14
    .line 477
    :cond_1
    if-eqz p1, :cond_5

    #@16
    .line 478
    const/4 v1, -0x1

    #@17
    if-ne p1, v1, :cond_3

    #@19
    .line 479
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Can\'t add fragment "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 480
    const-string/jumbo v3, " with tag "

    #@2e
    .line 479
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 480
    const-string/jumbo v3, " to container view with no id"

    #@39
    .line 479
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 470
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    #@47
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v3, "Can\'t change tag of fragment "

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    .line 471
    const-string/jumbo v3, ": was "

    #@5a
    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    .line 471
    iget-object v3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@60
    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    .line 472
    const-string/jumbo v3, " now "

    #@67
    .line 470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@76
    throw v1

    #@77
    .line 482
    :cond_3
    iget v1, p2, Landroid/app/Fragment;->mFragmentId:I

    #@79
    if-eqz v1, :cond_4

    #@7b
    iget v1, p2, Landroid/app/Fragment;->mFragmentId:I

    #@7d
    if-eq v1, p1, :cond_4

    #@7f
    .line 483
    new-instance v1, Ljava/lang/IllegalStateException;

    #@81
    new-instance v2, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v3, "Can\'t change container ID of fragment "

    #@89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    .line 484
    const-string/jumbo v3, ": was "

    #@94
    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    .line 484
    iget v3, p2, Landroid/app/Fragment;->mFragmentId:I

    #@9a
    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    .line 485
    const-string/jumbo v3, " now "

    #@a1
    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b0
    throw v1

    #@b1
    .line 487
    :cond_4
    iput p1, p2, Landroid/app/Fragment;->mFragmentId:I

    #@b3
    iput p1, p2, Landroid/app/Fragment;->mContainerId:I

    #@b5
    .line 490
    :cond_5
    new-instance v0, Landroid/app/BackStackRecord$Op;

    #@b7
    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    #@ba
    .line 491
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    iput p4, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    #@bc
    .line 492
    iput-object p2, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@be
    .line 493
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    #@c1
    .line 465
    return-void
.end method

.method private excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V
    .locals 4
    .param p2, "containerId"    # I
    .param p3, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I",
            "Landroid/transition/Transition;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1611
    .local p1, "hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@2
    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 1612
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@9
    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    if-ge v1, v2, :cond_2

    #@11
    .line 1613
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@13
    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/app/Fragment;

    #@1b
    .line 1614
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@1d
    if-eqz v2, :cond_0

    #@1f
    iget-object v2, v0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 1615
    iget v2, v0, Landroid/app/Fragment;->mContainerId:I

    #@25
    if-ne v2, p2, :cond_0

    #@27
    .line 1616
    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 1617
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@2d
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_0

    #@33
    .line 1618
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@35
    const/4 v3, 0x1

    #@36
    invoke-virtual {p3, v2, v3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@39
    .line 1619
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3b
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 1612
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1622
    :cond_1
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@43
    const/4 v3, 0x0

    #@44
    invoke-virtual {p3, v2, v3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@47
    .line 1623
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@49
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@4c
    goto :goto_1

    #@4d
    .line 1610
    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static excludeViews(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "fromTransition"    # Landroid/transition/Transition;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1446
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    #@2
    .line 1447
    if-nez p1, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    .line 1448
    .local v1, "viewCount":I
    :goto_0
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@8
    .line 1449
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/view/View;

    #@e
    invoke-virtual {p0, v2, p3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@11
    .line 1448
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_1

    #@14
    .line 1447
    .end local v0    # "i":I
    .end local v1    # "viewCount":I
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v1

    #@18
    .restart local v1    # "viewCount":I
    goto :goto_0

    #@19
    .line 1445
    .end local v1    # "viewCount":I
    :cond_1
    return-void
.end method

.method private static getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "isBack"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1039
    if-nez p0, :cond_0

    #@3
    .line 1040
    return-object v0

    #@4
    .line 1042
    :cond_0
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/app/Fragment;->getReenterTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    :goto_0
    invoke-static {v0}, Landroid/app/BackStackRecord;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1043
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method private static getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "outFragment"    # Landroid/app/Fragment;
    .param p1, "isBack"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1047
    if-nez p0, :cond_0

    #@3
    .line 1048
    return-object v0

    #@4
    .line 1050
    :cond_0
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/app/Fragment;->getReturnTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    :goto_0
    invoke-static {v0}, Landroid/app/BackStackRecord;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1051
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method private static getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;
    .locals 4
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p2, "isBack"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1056
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 1057
    :cond_0
    return-object v3

    #@6
    .line 1059
    :cond_1
    if-eqz p2, :cond_2

    #@8
    .line 1060
    invoke-virtual {p1}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    #@b
    move-result-object v2

    #@c
    .line 1059
    :goto_0
    invoke-static {v2}, Landroid/app/BackStackRecord;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    #@f
    move-result-object v0

    #@10
    .line 1062
    .local v0, "transition":Landroid/transition/Transition;
    if-nez v0, :cond_3

    #@12
    .line 1063
    return-object v3

    #@13
    .line 1061
    .end local v0    # "transition":Landroid/transition/Transition;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    #@16
    move-result-object v2

    #@17
    goto :goto_0

    #@18
    .line 1065
    .restart local v0    # "transition":Landroid/transition/Transition;
    :cond_3
    new-instance v1, Landroid/transition/TransitionSet;

    #@1a
    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    #@1d
    .line 1066
    .local v1, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@20
    .line 1067
    return-object v1
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1549
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1550
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1551
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    invoke-static {v1}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    const/4 v0, 0x0

    #@20
    .line 1549
    :cond_0
    return v0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    #@0
    .prologue
    .line 1555
    if-eqz p0, :cond_0

    #@2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method private mapEnteringSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/app/Fragment;",
            "Z)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1593
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 1594
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    #@8
    move-result-object v1

    #@9
    .line 1595
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    #@b
    .line 1596
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1597
    invoke-virtual {v1, v0}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    #@12
    .line 1598
    if-eqz p3, :cond_1

    #@14
    .line 1599
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@16
    .line 1600
    iget-object v3, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@18
    .line 1599
    invoke-static {v2, v3, v0}, Landroid/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    #@1b
    move-result-object v0

    #@1c
    .line 1606
    :cond_0
    :goto_0
    return-object v0

    #@1d
    .line 1602
    :cond_1
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    #@22
    goto :goto_0
.end method

.method private mapSharedElementsIn(Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "isBack"    # Z
    .param p3, "inFragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/app/Fragment;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1218
    invoke-direct {p0, p1, p3, p2}, Landroid/app/BackStackRecord;->mapEnteringSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;

    #@4
    move-result-object v0

    #@5
    .line 1222
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_0

    #@7
    .line 1223
    iget-object v1, p3, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    #@9
    .line 1224
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@b
    .line 1223
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@e
    .line 1225
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    #@11
    .line 1231
    :goto_0
    return-object v0

    #@12
    .line 1227
    :cond_0
    iget-object v1, p3, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@14
    .line 1228
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@16
    .line 1227
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@19
    .line 1229
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    #@1c
    goto :goto_0
.end method

.method private static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 7
    .param p0, "enterTransition"    # Landroid/transition/Transition;
    .param p1, "exitTransition"    # Landroid/transition/Transition;
    .param p2, "sharedElementTransition"    # Landroid/transition/Transition;
    .param p3, "inFragment"    # Landroid/app/Fragment;
    .param p4, "isBack"    # Z

    #@0
    .prologue
    .line 1237
    const/4 v0, 0x1

    #@1
    .line 1238
    .local v0, "overlap":Z
    if-eqz p0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    if-eqz p3, :cond_0

    #@7
    .line 1239
    if-eqz p4, :cond_4

    #@9
    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowReturnTransitionOverlap()Z

    #@c
    move-result v0

    #@d
    .line 1248
    .end local v0    # "overlap":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    #@f
    .line 1250
    new-instance v4, Landroid/transition/TransitionSet;

    #@11
    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    #@14
    .line 1251
    .local v4, "transitionSet":Landroid/transition/TransitionSet;
    if-eqz p0, :cond_1

    #@16
    .line 1252
    invoke-virtual {v4, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@19
    .line 1254
    :cond_1
    if-eqz p1, :cond_2

    #@1b
    .line 1255
    invoke-virtual {v4, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@1e
    .line 1257
    :cond_2
    if-eqz p2, :cond_3

    #@20
    .line 1258
    invoke-virtual {v4, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@23
    .line 1260
    :cond_3
    move-object v3, v4

    #@24
    .line 1286
    .end local v4    # "transitionSet":Landroid/transition/TransitionSet;
    .local v3, "transition":Landroid/transition/Transition;
    :goto_1
    return-object v3

    #@25
    .line 1240
    .end local v3    # "transition":Landroid/transition/Transition;
    .restart local v0    # "overlap":Z
    :cond_4
    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowEnterTransitionOverlap()Z

    #@28
    move-result v0

    #@29
    .local v0, "overlap":Z
    goto :goto_0

    #@2a
    .line 1264
    .end local v0    # "overlap":Z
    :cond_5
    const/4 v1, 0x0

    #@2b
    .line 1265
    .local v1, "staggered":Landroid/transition/Transition;
    if-eqz p1, :cond_8

    #@2d
    if-eqz p0, :cond_8

    #@2f
    .line 1266
    new-instance v5, Landroid/transition/TransitionSet;

    #@31
    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    #@34
    invoke-virtual {v5, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@3b
    move-result-object v5

    #@3c
    .line 1269
    const/4 v6, 0x1

    #@3d
    .line 1266
    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    #@40
    move-result-object v1

    #@41
    .line 1275
    .end local v1    # "staggered":Landroid/transition/Transition;
    :cond_6
    :goto_2
    if-eqz p2, :cond_a

    #@43
    .line 1276
    new-instance v2, Landroid/transition/TransitionSet;

    #@45
    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    #@48
    .line 1277
    .local v2, "together":Landroid/transition/TransitionSet;
    if-eqz v1, :cond_7

    #@4a
    .line 1278
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@4d
    .line 1280
    :cond_7
    invoke-virtual {v2, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@50
    .line 1281
    move-object v3, v2

    #@51
    .restart local v3    # "transition":Landroid/transition/Transition;
    goto :goto_1

    #@52
    .line 1270
    .end local v2    # "together":Landroid/transition/TransitionSet;
    .end local v3    # "transition":Landroid/transition/Transition;
    .restart local v1    # "staggered":Landroid/transition/Transition;
    :cond_8
    if-eqz p1, :cond_9

    #@54
    .line 1271
    move-object v1, p1

    #@55
    .local v1, "staggered":Landroid/transition/Transition;
    goto :goto_2

    #@56
    .line 1272
    .local v1, "staggered":Landroid/transition/Transition;
    :cond_9
    if-eqz p0, :cond_6

    #@58
    .line 1273
    move-object v1, p0

    #@59
    .local v1, "staggered":Landroid/transition/Transition;
    goto :goto_2

    #@5a
    .line 1283
    .end local v1    # "staggered":Landroid/transition/Transition;
    :cond_a
    move-object v3, v1

    #@5b
    .restart local v3    # "transition":Landroid/transition/Transition;
    goto :goto_1
.end method

.method private static remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1568
    .local p0, "inMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "toGoInMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v2, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 1569
    .local v2, "remappedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_1

    #@b
    .line 1570
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    .line 1571
    .local v1, "numKeys":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@12
    .line 1572
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroid/view/View;

    #@1c
    .line 1574
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    #@1e
    .line 1575
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Ljava/lang/String;

    #@24
    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 1571
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1579
    .end local v0    # "i":I
    .end local v1    # "numKeys":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-object v2
.end method

.method private remapSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "outFragment"    # Landroid/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/app/Fragment;",
            "Z)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1090
    new-instance v0, Landroid/util/ArrayMap;

    #@3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@6
    .line 1091
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1092
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, v0}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    #@11
    .line 1093
    if-eqz p3, :cond_1

    #@13
    .line 1094
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    #@18
    .line 1101
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    #@1a
    .line 1102
    iget-object v1, p2, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@1c
    .line 1103
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@1e
    .line 1102
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@21
    .line 1104
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    #@24
    .line 1111
    :goto_1
    return-object v0

    #@25
    .line 1096
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@27
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@29
    invoke-static {v1, v2, v0}, Landroid/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    #@2c
    move-result-object v0

    #@2d
    goto :goto_0

    #@2e
    .line 1106
    :cond_2
    iget-object v1, p2, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    #@30
    .line 1107
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@32
    .line 1106
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@35
    .line 1108
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    #@38
    goto :goto_1
.end method

.method private removeTargetedViewsFromTransitions(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistingView"    # Landroid/view/View;
    .param p3, "enterTransition"    # Landroid/transition/Transition;
    .param p5, "exitTransition"    # Landroid/transition/Transition;
    .param p7, "sharedElementTransition"    # Landroid/transition/Transition;
    .param p9, "overallTransition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1464
    .local p4, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p10, "hiddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p9, :cond_0

    #@2
    .line 1465
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v12

    #@6
    new-instance v0, Landroid/app/BackStackRecord$2;

    #@8
    move-object v1, p0

    #@9
    move-object v2, p1

    #@a
    move-object/from16 v3, p3

    #@c
    move-object/from16 v4, p4

    #@e
    move-object/from16 v5, p5

    #@10
    move-object/from16 v6, p6

    #@12
    move-object/from16 v7, p7

    #@14
    move-object/from16 v8, p8

    #@16
    move-object/from16 v9, p10

    #@18
    move-object/from16 v10, p9

    #@1a
    move-object v11, p2

    #@1b
    invoke-direct/range {v0 .. v11}, Landroid/app/BackStackRecord$2;-><init>(Landroid/app/BackStackRecord;Landroid/view/ViewGroup;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V

    #@1e
    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@21
    .line 1463
    :cond_0
    return-void
.end method

.method public static removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1501
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v5, p0, Landroid/transition/TransitionSet;

    #@2
    if-eqz v5, :cond_0

    #@4
    move-object v3, p0

    #@5
    .line 1502
    check-cast v3, Landroid/transition/TransitionSet;

    #@7
    .line 1503
    .local v3, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@a
    move-result v2

    #@b
    .line 1504
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@e
    .line 1505
    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    #@11
    move-result-object v0

    #@12
    .line 1506
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@15
    .line 1504
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1508
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v3    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {p0}, Landroid/app/BackStackRecord;->hasSimpleTarget(Landroid/transition/Transition;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_1

    #@1e
    .line 1509
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    #@21
    move-result-object v4

    #@22
    .line 1510
    .local v4, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v4, :cond_1

    #@24
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@27
    move-result v5

    #@28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v6

    #@2c
    if-ne v5, v6, :cond_1

    #@2e
    .line 1511
    invoke-interface {v4, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    #@31
    move-result v5

    #@32
    .line 1510
    if-eqz v5, :cond_1

    #@34
    .line 1513
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v5

    #@38
    add-int/lit8 v1, v5, -0x1

    #@3a
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    #@3c
    .line 1514
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    check-cast v5, Landroid/view/View;

    #@42
    invoke-virtual {p0, v5}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@45
    .line 1513
    add-int/lit8 v1, v1, -0x1

    #@47
    goto :goto_1

    #@48
    .line 1500
    .end local v1    # "i":I
    .end local v4    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V
    .locals 9
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1788
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@2
    if-nez v8, :cond_1

    #@4
    const/4 v6, 0x0

    #@5
    .line 1789
    .local v6, "targetCount":I
    :goto_0
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@7
    if-nez v8, :cond_2

    #@9
    const/4 v4, 0x0

    #@a
    .line 1790
    .local v4, "sourceCount":I
    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    .line 1791
    .local v0, "count":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_4

    #@11
    .line 1792
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljava/lang/String;

    #@19
    .line 1793
    .local v3, "source":Ljava/lang/String;
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/lang/String;

    #@21
    .line 1794
    .local v2, "originalTarget":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    check-cast v7, Landroid/view/View;

    #@27
    .line 1795
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_0

    #@29
    .line 1796
    invoke-virtual {v7}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    .line 1797
    .local v5, "target":Ljava/lang/String;
    if-eqz p3, :cond_3

    #@2f
    .line 1798
    iget-object v8, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@31
    invoke-static {v8, v3, v5}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 1791
    .end local v5    # "target":Ljava/lang/String;
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_2

    #@37
    .line 1788
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v4    # "sourceCount":I
    .end local v6    # "targetCount":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v6

    #@3d
    .restart local v6    # "targetCount":I
    goto :goto_0

    #@3e
    .line 1789
    :cond_2
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v4

    #@44
    goto :goto_1

    #@45
    .line 1800
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "originalTarget":Ljava/lang/String;
    .restart local v3    # "source":Ljava/lang/String;
    .restart local v4    # "sourceCount":I
    .restart local v5    # "target":Ljava/lang/String;
    .restart local v7    # "view":Landroid/view/View;
    :cond_3
    iget-object v8, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@47
    invoke-static {v8, v5, v3}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    goto :goto_3

    #@4b
    .line 1787
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v5    # "target":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private static setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1631
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 1632
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    #@8
    .line 1634
    new-instance v1, Landroid/app/BackStackRecord$3;

    #@a
    invoke-direct {v1, v0}, Landroid/app/BackStackRecord$3;-><init>(Landroid/graphics/Rect;)V

    #@d
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@10
    .line 1630
    return-void
.end method

.method private setEpicenterIn(Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 3
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/BackStackRecord$TransitionState;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1205
    .local p1, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1204
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1208
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .line 1207
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/view/View;

    #@18
    .line 1209
    .local v0, "epicenter":Landroid/view/View;
    if-eqz v0, :cond_0

    #@1a
    .line 1210
    iput-object v0, p2, Landroid/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/view/View;

    #@1c
    goto :goto_0
.end method

.method private static setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V
    .locals 2
    .param p2, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 826
    .local p0, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p1, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    if-eqz p2, :cond_0

    #@2
    .line 827
    iget v0, p2, Landroid/app/Fragment;->mContainerId:I

    #@4
    .line 828
    .local v0, "containerId":I
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p2}, Landroid/app/Fragment;->isHidden()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 825
    .end local v0    # "containerId":I
    :cond_0
    :goto_0
    return-void

    #@d
    .line 829
    .restart local v0    # "containerId":I
    :cond_1
    invoke-virtual {p2}, Landroid/app/Fragment;->isAdded()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_2

    #@13
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 830
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 831
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@22
    .line 833
    :cond_2
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    if-ne v1, p2, :cond_0

    #@28
    .line 834
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    #@2b
    goto :goto_0
.end method

.method private setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V
    .locals 7
    .param p3, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 842
    if-eqz p3, :cond_2

    #@4
    .line 843
    iget v6, p3, Landroid/app/Fragment;->mContainerId:I

    #@6
    .line 844
    .local v6, "containerId":I
    if-eqz v6, :cond_1

    #@8
    .line 845
    invoke-virtual {p3}, Landroid/app/Fragment;->isAdded()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 846
    invoke-virtual {p2, v6, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@11
    .line 848
    :cond_0
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    if-ne v0, p3, :cond_1

    #@17
    .line 849
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->remove(I)V

    #@1a
    .line 856
    :cond_1
    iget v0, p3, Landroid/app/Fragment;->mState:I

    #@1c
    if-ge v0, v2, :cond_2

    #@1e
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@20
    iget v0, v0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@22
    if-lt v0, v2, :cond_2

    #@24
    .line 857
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@26
    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@28
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2f
    move-result-object v0

    #@30
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@32
    .line 858
    const/16 v1, 0x18

    #@34
    .line 857
    if-lt v0, v1, :cond_2

    #@36
    .line 859
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@38
    invoke-virtual {v0, p3}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    #@3b
    .line 860
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@3d
    move-object v1, p3

    #@3e
    move v4, v3

    #@3f
    move v5, v3

    #@40
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@43
    .line 841
    .end local v6    # "containerId":I
    :cond_2
    return-void
.end method

.method private static setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1764
    .local p0, "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    #@2
    if-eqz p2, :cond_0

    #@4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1763
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1765
    :cond_1
    const/4 v0, 0x0

    #@c
    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v1

    #@10
    if-ge v0, v1, :cond_3

    #@12
    .line 1766
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 1767
    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 1768
    return-void

    #@20
    .line 1765
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_1

    #@23
    .line 1771
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    goto :goto_0
.end method

.method private setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V
    .locals 5
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1808
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-nez p2, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    .line 1809
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@6
    .line 1810
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Ljava/lang/String;

    #@c
    .line 1811
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroid/view/View;

    #@12
    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 1812
    .local v3, "target":Ljava/lang/String;
    if-eqz p3, :cond_1

    #@18
    .line 1813
    iget-object v4, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@1a
    invoke-static {v4, v2, v3}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 1809
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 1808
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    #@23
    move-result v0

    #@24
    .restart local v0    # "count":I
    goto :goto_0

    #@25
    .line 1815
    .restart local v1    # "i":I
    .restart local v2    # "source":Ljava/lang/String;
    .restart local v3    # "target":Ljava/lang/String;
    :cond_1
    iget-object v4, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@27
    invoke-static {v4, v3, v2}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    goto :goto_2

    #@2b
    .line 1807
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1777
    .local p1, "sourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "targetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    #@2
    if-eqz p2, :cond_0

    #@4
    .line 1778
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    if-ge v0, v3, :cond_0

    #@b
    .line 1779
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/String;

    #@11
    .line 1780
    .local v1, "source":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    .line 1781
    .local v2, "target":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@19
    invoke-static {v3, v1, v2}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 1778
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1776
    .end local v0    # "i":I
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSharedElementEpicenter(Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;

    #@0
    .prologue
    .line 1643
    new-instance v0, Landroid/app/BackStackRecord$4;

    #@2
    invoke-direct {v0, p0, p2}, Landroid/app/BackStackRecord$4;-><init>(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;)V

    #@5
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@8
    .line 1642
    return-void
.end method

.method private static setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "transition"    # Landroid/transition/TransitionSet;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/TransitionSet;",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1392
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p3, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    #@3
    .line 1393
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 1395
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    #@d
    move-result-object v3

    #@e
    .line 1396
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@11
    .line 1397
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    .line 1398
    .local v0, "count":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@18
    .line 1399
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroid/view/View;

    #@1e
    .line 1400
    .local v2, "view":Landroid/view/View;
    invoke-static {v3, v2}, Landroid/app/BackStackRecord;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    #@21
    .line 1398
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1402
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 1403
    invoke-static {p0, p3}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@2a
    .line 1391
    return-void
.end method


# virtual methods
.method public add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 456
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    #@5
    .line 457
    return-object p0
.end method

.method public add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 461
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    #@4
    .line 462
    return-object p0
.end method

.method public add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 451
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    #@5
    .line 452
    return-object p0
.end method

.method addOp(Landroid/app/BackStackRecord$Op;)V
    .locals 1
    .param p1, "op"    # Landroid/app/BackStackRecord$Op;

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 437
    iput-object p1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    #@6
    iput-object p1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@8
    .line 443
    :goto_0
    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    #@a
    iput v0, p1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@c
    .line 444
    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    #@e
    iput v0, p1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@10
    .line 445
    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    #@12
    iput v0, p1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@14
    .line 446
    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    #@16
    iput v0, p1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@18
    .line 447
    iget v0, p0, Landroid/app/BackStackRecord;->mNumOp:I

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    iput v0, p0, Landroid/app/BackStackRecord;->mNumOp:I

    #@1e
    .line 435
    return-void

    #@1f
    .line 439
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    #@21
    iput-object v0, p1, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    #@23
    .line 440
    iget-object v0, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    #@25
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@27
    .line 441
    iput-object p1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    #@29
    goto :goto_0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 575
    .local v0, "transitionName":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 576
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Unique transitionNames are required for all sharedElements"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 579
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@11
    if-nez v1, :cond_1

    #@13
    .line 580
    new-instance v1, Ljava/util/ArrayList;

    #@15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@1a
    .line 581
    new-instance v1, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@21
    .line 583
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 584
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 585
    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 594
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 595
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 596
    const-string/jumbo v1, "This FragmentTransaction is not allowed to be added to the back stack."

    #@9
    .line 595
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 598
    :cond_0
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@10
    .line 599
    iput-object p1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@12
    .line 600
    return-object p0
.end method

.method public attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 546
    new-instance v0, Landroid/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 547
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x7

    #@6
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 548
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@a
    .line 549
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    #@d
    .line 551
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 6
    .param p1, "amt"    # I

    #@0
    .prologue
    .line 641
    iget-boolean v3, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@2
    if-nez v3, :cond_0

    #@4
    .line 642
    return-void

    #@5
    .line 644
    :cond_0
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 645
    const-string/jumbo v3, "FragmentManager"

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Bump nesting in "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 646
    const-string/jumbo v5, " by "

    #@1f
    .line 645
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 648
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@30
    .line 649
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_5

    #@32
    .line 650
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 651
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@38
    iget v4, v3, Landroid/app/Fragment;->mBackStackNesting:I

    #@3a
    add-int/2addr v4, p1

    #@3b
    iput v4, v3, Landroid/app/Fragment;->mBackStackNesting:I

    #@3d
    .line 652
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 653
    const-string/jumbo v3, "FragmentManager"

    #@44
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "Bump nesting of "

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    .line 654
    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@52
    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    .line 654
    const-string/jumbo v5, " to "

    #@59
    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 654
    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@5f
    iget v5, v5, Landroid/app/Fragment;->mBackStackNesting:I

    #@61
    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 657
    :cond_2
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@6e
    if-eqz v3, :cond_4

    #@70
    .line 658
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@75
    move-result v3

    #@76
    add-int/lit8 v0, v3, -0x1

    #@78
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    #@7a
    .line 659
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v2

    #@80
    check-cast v2, Landroid/app/Fragment;

    #@82
    .line 660
    .local v2, "r":Landroid/app/Fragment;
    iget v3, v2, Landroid/app/Fragment;->mBackStackNesting:I

    #@84
    add-int/2addr v3, p1

    #@85
    iput v3, v2, Landroid/app/Fragment;->mBackStackNesting:I

    #@87
    .line 661
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@89
    if-eqz v3, :cond_3

    #@8b
    .line 662
    const-string/jumbo v3, "FragmentManager"

    #@8e
    new-instance v4, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v5, "Bump nesting of "

    #@96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    .line 663
    const-string/jumbo v5, " to "

    #@a1
    .line 662
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    .line 663
    iget v5, v2, Landroid/app/Fragment;->mBackStackNesting:I

    #@a7
    .line 662
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 658
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@b4
    goto :goto_1

    #@b5
    .line 667
    .end local v0    # "i":I
    .end local v2    # "r":Landroid/app/Fragment;
    :cond_4
    iget-object v1, v1, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@b7
    goto/16 :goto_0

    #@b9
    .line 640
    :cond_5
    return-void
.end method

.method public calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 935
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@2
    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    #@4
    invoke-virtual {v2}, Landroid/app/FragmentContainer;->onHasView()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 936
    return-void

    #@b
    .line 938
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    #@d
    .line 939
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_2

    #@f
    .line 940
    iget v2, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    #@11
    packed-switch v2, :pswitch_data_0

    #@14
    .line 969
    :goto_1
    iget-object v1, v1, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    #@16
    goto :goto_0

    #@17
    .line 942
    :pswitch_0
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@19
    invoke-static {p1, p2, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@1c
    goto :goto_1

    #@1d
    .line 945
    :pswitch_1
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 946
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v2

    #@27
    add-int/lit8 v0, v2, -0x1

    #@29
    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_1

    #@2b
    .line 947
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/app/Fragment;

    #@33
    invoke-direct {p0, p1, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@36
    .line 946
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_2

    #@39
    .line 950
    .end local v0    # "i":I
    :cond_1
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@3b
    invoke-static {p1, p2, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@3e
    goto :goto_1

    #@3f
    .line 953
    :pswitch_2
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@41
    invoke-direct {p0, p1, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@44
    goto :goto_1

    #@45
    .line 956
    :pswitch_3
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@47
    invoke-direct {p0, p1, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@4a
    goto :goto_1

    #@4b
    .line 959
    :pswitch_4
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@4d
    invoke-static {p1, p2, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@50
    goto :goto_1

    #@51
    .line 962
    :pswitch_5
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@53
    invoke-direct {p0, p1, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@56
    goto :goto_1

    #@57
    .line 965
    :pswitch_6
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@59
    invoke-static {p1, p2, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@5c
    goto :goto_1

    #@5d
    .line 934
    :cond_2
    return-void

    #@5e
    .line 940
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public commit()I
    .locals 1

    #@0
    .prologue
    .line 672
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    #@0
    .prologue
    .line 676
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method commitInternal(Z)I
    .locals 6
    .param p1, "allowStateLoss"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 692
    iget-boolean v2, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 693
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v3, "commit already called"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 695
    :cond_0
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 696
    const-string/jumbo v2, "FragmentManager"

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Commit: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 697
    new-instance v0, Landroid/util/LogWriter;

    #@2e
    const-string/jumbo v2, "FragmentManager"

    #@31
    const/4 v3, 0x2

    #@32
    invoke-direct {v0, v3, v2}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    #@35
    .line 698
    .local v0, "logw":Landroid/util/LogWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@37
    const/4 v2, 0x0

    #@38
    const/16 v3, 0x400

    #@3a
    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@3d
    .line 699
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "  "

    #@40
    invoke-virtual {p0, v2, v5, v1, v5}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@43
    .line 700
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@46
    .line 702
    .end local v0    # "logw":Landroid/util/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v2, 0x1

    #@47
    iput-boolean v2, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    #@49
    .line 703
    iget-boolean v2, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@4b
    if-eqz v2, :cond_2

    #@4d
    .line 704
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@4f
    invoke-virtual {v2, p0}, Landroid/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/app/BackStackRecord;)I

    #@52
    move-result v2

    #@53
    iput v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@55
    .line 708
    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@57
    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@5a
    .line 709
    iget v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@5c
    return v2

    #@5d
    .line 706
    :cond_2
    const/4 v2, -0x1

    #@5e
    iput v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@60
    goto :goto_0
.end method

.method public commitNow()V
    .locals 2

    #@0
    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/app/BackStackRecord;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    #@3
    .line 682
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentManagerImpl;->execSingleAction(Ljava/lang/Runnable;Z)V

    #@9
    .line 680
    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 2

    #@0
    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/app/BackStackRecord;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    #@3
    .line 688
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentManagerImpl;->execSingleAction(Ljava/lang/Runnable;Z)V

    #@9
    .line 686
    return-void
.end method

.method public detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 537
    new-instance v0, Landroid/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 538
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x6

    #@6
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 539
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@a
    .line 540
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    #@d
    .line 542
    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/app/FragmentTransaction;
    .locals 2

    #@0
    .prologue
    .line 608
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 609
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 610
    const-string/jumbo v1, "This transaction is already being added to the back stack"

    #@9
    .line 609
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 612
    :cond_0
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@10
    .line 613
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 273
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p3, v0}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    #@4
    .line 272
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    #@0
    .prologue
    .line 277
    if-eqz p3, :cond_8

    #@2
    .line 278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    .line 279
    const-string/jumbo v5, "mName="

    #@8
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 280
    iget-object v5, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 281
    const-string/jumbo v5, " mIndex="

    #@13
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 282
    iget v5, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@18
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@1b
    .line 283
    const-string/jumbo v5, " mCommitted="

    #@1e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 284
    iget-boolean v5, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    #@23
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@26
    .line 285
    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@28
    if-eqz v5, :cond_0

    #@2a
    .line 286
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    .line 287
    const-string/jumbo v5, "mTransition=#"

    #@30
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33
    .line 288
    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@35
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 289
    const-string/jumbo v5, " mTransitionStyle=#"

    #@3f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 290
    iget v5, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@44
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 292
    :cond_0
    iget v5, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    #@4d
    if-nez v5, :cond_1

    #@4f
    iget v5, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    #@51
    if-eqz v5, :cond_2

    #@53
    .line 293
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 294
    const-string/jumbo v5, "mEnterAnim=#"

    #@59
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    .line 295
    iget v5, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    #@5e
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    .line 296
    const-string/jumbo v5, " mExitAnim=#"

    #@68
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    .line 297
    iget v5, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    #@6d
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 299
    :cond_2
    iget v5, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    #@76
    if-nez v5, :cond_3

    #@78
    iget v5, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    #@7a
    if-eqz v5, :cond_4

    #@7c
    .line 300
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 301
    const-string/jumbo v5, "mPopEnterAnim=#"

    #@82
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    .line 302
    iget v5, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    #@87
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    .line 303
    const-string/jumbo v5, " mPopExitAnim=#"

    #@91
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    .line 304
    iget v5, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    #@96
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 306
    :cond_4
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@9f
    if-nez v5, :cond_5

    #@a1
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@a3
    if-eqz v5, :cond_6

    #@a5
    .line 307
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    .line 308
    const-string/jumbo v5, "mBreadCrumbTitleRes=#"

    #@ab
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    .line 309
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@b0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b7
    .line 310
    const-string/jumbo v5, " mBreadCrumbTitleText="

    #@ba
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    .line 311
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@bf
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@c2
    .line 313
    :cond_6
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@c4
    if-nez v5, :cond_7

    #@c6
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@c8
    if-eqz v5, :cond_8

    #@ca
    .line 314
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    .line 315
    const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"

    #@d0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    .line 316
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@d5
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d8
    move-result-object v5

    #@d9
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc
    .line 317
    const-string/jumbo v5, " mBreadCrumbShortTitleText="

    #@df
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    .line 318
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@e4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e7
    .line 322
    :cond_8
    iget-object v5, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@e9
    if-eqz v5, :cond_10

    #@eb
    .line 323
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    .line 324
    const-string/jumbo v5, "Operations:"

    #@f1
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v5

    #@fd
    const-string/jumbo v6, "    "

    #@100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v5

    #@104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v2

    #@108
    .line 326
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@10a
    .line 327
    .local v4, "op":Landroid/app/BackStackRecord$Op;
    const/4 v3, 0x0

    #@10b
    .line 328
    .local v3, "num":I
    :goto_0
    if-eqz v4, :cond_10

    #@10d
    .line 330
    iget v5, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    #@10f
    packed-switch v5, :pswitch_data_0

    #@112
    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string/jumbo v6, "cmd="

    #@11a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v5

    #@11e
    iget v6, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    #@120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@123
    move-result-object v5

    #@124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v0

    #@128
    .line 359
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12b
    .line 360
    const-string/jumbo v5, "  Op #"

    #@12e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@131
    .line 361
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    #@134
    .line 362
    const-string/jumbo v5, ": "

    #@137
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13a
    .line 363
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    .line 364
    const-string/jumbo v5, " "

    #@140
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    .line 365
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@145
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@148
    .line 366
    if-eqz p3, :cond_c

    #@14a
    .line 367
    iget v5, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@14c
    if-nez v5, :cond_9

    #@14e
    iget v5, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@150
    if-eqz v5, :cond_a

    #@152
    .line 368
    :cond_9
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@155
    .line 369
    const-string/jumbo v5, "enterAnim=#"

    #@158
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    .line 370
    iget v5, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@15d
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@160
    move-result-object v5

    #@161
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@164
    .line 371
    const-string/jumbo v5, " exitAnim=#"

    #@167
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16a
    .line 372
    iget v5, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@16c
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16f
    move-result-object v5

    #@170
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@173
    .line 374
    :cond_a
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@175
    if-nez v5, :cond_b

    #@177
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@179
    if-eqz v5, :cond_c

    #@17b
    .line 375
    :cond_b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17e
    .line 376
    const-string/jumbo v5, "popEnterAnim=#"

    #@181
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    .line 377
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@186
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@189
    move-result-object v5

    #@18a
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    .line 378
    const-string/jumbo v5, " popExitAnim=#"

    #@190
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@193
    .line 379
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@195
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@198
    move-result-object v5

    #@199
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19c
    .line 382
    :cond_c
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@19e
    if-eqz v5, :cond_f

    #@1a0
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1a2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1a5
    move-result v5

    #@1a6
    if-lez v5, :cond_f

    #@1a8
    .line 383
    const/4 v1, 0x0

    #@1a9
    .local v1, "i":I
    :goto_2
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1ab
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1ae
    move-result v5

    #@1af
    if-ge v1, v5, :cond_f

    #@1b1
    .line 384
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b4
    .line 385
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1b6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1b9
    move-result v5

    #@1ba
    const/4 v6, 0x1

    #@1bb
    if-ne v5, v6, :cond_d

    #@1bd
    .line 386
    const-string/jumbo v5, "Removed: "

    #@1c0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c3
    .line 396
    :goto_3
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1c5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c8
    move-result-object v5

    #@1c9
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1cc
    .line 383
    add-int/lit8 v1, v1, 0x1

    #@1ce
    goto :goto_2

    #@1cf
    .line 332
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_0
    const-string/jumbo v0, "NULL"

    #@1d2
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1d4
    .line 335
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "ADD"

    #@1d7
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1d9
    .line 338
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REPLACE"

    #@1dc
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1de
    .line 341
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "REMOVE"

    #@1e1
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1e3
    .line 344
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "HIDE"

    #@1e6
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1e8
    .line 347
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SHOW"

    #@1eb
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1ed
    .line 350
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "DETACH"

    #@1f0
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1f2
    .line 353
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "ATTACH"

    #@1f5
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1f7
    .line 388
    .restart local v1    # "i":I
    :cond_d
    if-nez v1, :cond_e

    #@1f9
    .line 389
    const-string/jumbo v5, "Removed:"

    #@1fc
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ff
    .line 391
    :cond_e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@202
    .line 392
    const-string/jumbo v5, "  #"

    #@205
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@208
    .line 393
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@20b
    .line 394
    const-string/jumbo v5, ": "

    #@20e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@211
    goto :goto_3

    #@212
    .line 399
    .end local v1    # "i":I
    :cond_f
    iget-object v4, v4, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@214
    .line 400
    add-int/lit8 v3, v3, 0x1

    #@216
    goto/16 :goto_0

    #@218
    .line 276
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "innerPrefix":Ljava/lang/String;
    .end local v3    # "num":I
    .end local v4    # "op":Landroid/app/BackStackRecord$Op;
    :cond_10
    return-void

    #@219
    .line 330
    nop

    #@21a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 429
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 430
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@6
    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 432
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@15
    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    #@0
    .prologue
    .line 418
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 422
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 423
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@6
    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 425
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@15
    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    #@0
    .prologue
    .line 414
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 410
    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1821
    iget-object v0, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTransition()I
    .locals 1

    #@0
    .prologue
    .line 1825
    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@2
    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    #@0
    .prologue
    .line 1829
    iget v0, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@2
    return v0
.end method

.method public hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 519
    new-instance v0, Landroid/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 520
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x4

    #@6
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 521
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@a
    .line 522
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    #@d
    .line 524
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 604
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@2
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1833
    iget v1, p0, Landroid/app/BackStackRecord;->mNumOp:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;
    .locals 11
    .param p1, "doStateMove"    # Z
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)",
            "Landroid/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    #@0
    .prologue
    .line 1659
    .local p3, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    .line 1660
    const-string/jumbo v6, "FragmentManager"

    #@7
    new-instance v7, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v8, "popFromBackStack: "

    #@f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v7

    #@1b
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1661
    new-instance v2, Landroid/util/LogWriter;

    #@20
    const-string/jumbo v6, "FragmentManager"

    #@23
    const/4 v7, 0x2

    #@24
    invoke-direct {v2, v7, v6}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    #@27
    .line 1662
    .local v2, "logw":Landroid/util/LogWriter;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    #@29
    const/4 v6, 0x0

    #@2a
    const/16 v7, 0x400

    #@2c
    invoke-direct {v5, v2, v6, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@2f
    .line 1663
    .local v5, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v6, "  "

    #@32
    const/4 v7, 0x0

    #@33
    const/4 v8, 0x0

    #@34
    invoke-virtual {p0, v6, v7, v5, v8}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@37
    .line 1664
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    #@3a
    .line 1667
    .end local v2    # "logw":Landroid/util/LogWriter;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@3c
    iget v6, v6, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@3e
    const/4 v7, 0x1

    #@3f
    if-lt v6, v7, :cond_2

    #@41
    .line 1668
    if-nez p2, :cond_3

    #@43
    .line 1669
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    #@46
    move-result v6

    #@47
    if-nez v6, :cond_1

    #@49
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_2

    #@4f
    .line 1670
    :cond_1
    const/4 v6, 0x1

    #@50
    invoke-direct {p0, p3, p4, v6}, Landroid/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;

    #@53
    move-result-object p2

    #@54
    .line 1677
    :cond_2
    :goto_0
    const/4 v6, -0x1

    #@55
    invoke-virtual {p0, v6}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@58
    .line 1679
    iget-object v4, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    #@5a
    .line 1680
    .local v4, "op":Landroid/app/BackStackRecord$Op;
    :goto_1
    if-eqz v4, :cond_6

    #@5c
    .line 1681
    iget v6, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    #@5e
    packed-switch v6, :pswitch_data_0

    #@61
    .line 1742
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@63
    new-instance v7, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v8, "Unknown cmd: "

    #@6b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    iget v8, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v6

    #@7d
    .line 1672
    .end local v4    # "op":Landroid/app/BackStackRecord$Op;
    :cond_3
    if-nez p1, :cond_2

    #@7f
    .line 1673
    iget-object v6, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@81
    iget-object v7, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@83
    invoke-static {p2, v6, v7}, Landroid/app/BackStackRecord;->setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@86
    goto :goto_0

    #@87
    .line 1683
    .restart local v4    # "op":Landroid/app/BackStackRecord$Op;
    :pswitch_0
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@89
    .line 1684
    .local v0, "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@8b
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@8d
    .line 1685
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@8f
    .line 1686
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@91
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@94
    move-result v7

    #@95
    .line 1687
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@97
    .line 1685
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    #@9a
    .line 1746
    :cond_4
    :goto_2
    iget-object v4, v4, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    #@9c
    goto :goto_1

    #@9d
    .line 1691
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_1
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@9f
    .line 1692
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_5

    #@a1
    .line 1693
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@a3
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@a5
    .line 1694
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@a7
    .line 1695
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@a9
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@ac
    move-result v7

    #@ad
    .line 1696
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@af
    .line 1694
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    #@b2
    .line 1698
    :cond_5
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@b4
    if-eqz v6, :cond_4

    #@b6
    .line 1699
    const/4 v1, 0x0

    #@b7
    .local v1, "i":I
    :goto_3
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@b9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@bc
    move-result v6

    #@bd
    if-ge v1, v6, :cond_4

    #@bf
    .line 1700
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@c1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c4
    move-result-object v3

    #@c5
    check-cast v3, Landroid/app/Fragment;

    #@c7
    .line 1701
    .local v3, "old":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@c9
    iput v6, v3, Landroid/app/Fragment;->mNextAnim:I

    #@cb
    .line 1702
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@cd
    const/4 v7, 0x0

    #@ce
    invoke-virtual {v6, v3, v7}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    #@d1
    .line 1699
    add-int/lit8 v1, v1, 0x1

    #@d3
    goto :goto_3

    #@d4
    .line 1708
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    .end local v3    # "old":Landroid/app/Fragment;
    :pswitch_2
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@d6
    .line 1709
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@d8
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@da
    .line 1710
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@dc
    const/4 v7, 0x0

    #@dd
    invoke-virtual {v6, v0, v7}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    #@e0
    goto :goto_2

    #@e1
    .line 1714
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_3
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@e3
    .line 1715
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@e5
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@e7
    .line 1716
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@e9
    .line 1717
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@eb
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@ee
    move-result v7

    #@ef
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@f1
    .line 1716
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V

    #@f4
    goto :goto_2

    #@f5
    .line 1721
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_4
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@f7
    .line 1722
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@f9
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@fb
    .line 1723
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@fd
    .line 1724
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@ff
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@102
    move-result v7

    #@103
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@105
    .line 1723
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V

    #@108
    goto :goto_2

    #@109
    .line 1728
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_5
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@10b
    .line 1729
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@10d
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@10f
    .line 1730
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@111
    .line 1731
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@113
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@116
    move-result v7

    #@117
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@119
    .line 1730
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;II)V

    #@11c
    goto/16 :goto_2

    #@11e
    .line 1735
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_6
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@120
    .line 1736
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@122
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@124
    .line 1737
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@126
    .line 1738
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@128
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@12b
    move-result v7

    #@12c
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@12e
    .line 1737
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;II)V

    #@131
    goto/16 :goto_2

    #@133
    .line 1749
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_6
    if-eqz p1, :cond_7

    #@135
    .line 1750
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@137
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@139
    iget v7, v7, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@13b
    .line 1751
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@13d
    invoke-static {v8}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@140
    move-result v8

    #@141
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@143
    const/4 v10, 0x1

    #@144
    .line 1750
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@147
    .line 1752
    const/4 p2, 0x0

    #@148
    .line 1755
    .end local p2    # "state":Landroid/app/BackStackRecord$TransitionState;
    :cond_7
    iget v6, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@14a
    if-ltz v6, :cond_8

    #@14c
    .line 1756
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@14e
    iget v7, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@150
    invoke-virtual {v6, v7}, Landroid/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    #@153
    .line 1757
    const/4 v6, -0x1

    #@154
    iput v6, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@156
    .line 1759
    :cond_8
    return-object p2

    #@157
    .line 1681
    nop

    #@158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 510
    new-instance v0, Landroid/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 511
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x3

    #@6
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 512
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@a
    .line 513
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    #@d
    .line 515
    return-object p0
.end method

.method public replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 497
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/BackStackRecord;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 501
    if-nez p1, :cond_0

    #@2
    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Must use non-zero containerViewId"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 505
    :cond_0
    const/4 v0, 0x2

    #@c
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    #@f
    .line 506
    return-object p0
.end method

.method public run()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 713
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 714
    const-string/jumbo v7, "FragmentManager"

    #@a
    new-instance v8, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v9, "Run: "

    #@12
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v8

    #@16
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v8

    #@1a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 717
    :cond_0
    iget-boolean v7, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@23
    if-eqz v7, :cond_1

    #@25
    .line 718
    iget v7, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@27
    if-gez v7, :cond_1

    #@29
    .line 719
    new-instance v7, Ljava/lang/IllegalStateException;

    #@2b
    const-string/jumbo v8, "addToBackStack() called after commit()"

    #@2e
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v7

    #@32
    .line 723
    :cond_1
    invoke-virtual {p0, v12}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@35
    .line 725
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@37
    iget v7, v7, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@39
    if-lt v7, v12, :cond_2

    #@3b
    .line 726
    new-instance v2, Landroid/util/SparseArray;

    #@3d
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@40
    .line 727
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v4, Landroid/util/SparseArray;

    #@42
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@45
    .line 728
    .local v4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    invoke-direct {p0, v2, v4}, Landroid/app/BackStackRecord;->calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@48
    .line 729
    invoke-direct {p0, v2, v4, v10}, Landroid/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;

    #@4b
    .line 732
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .end local v4    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    :cond_2
    iget-object v6, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@4d
    .line 733
    .local v6, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v6, :cond_a

    #@4f
    .line 734
    iget v7, v6, Landroid/app/BackStackRecord$Op;->cmd:I

    #@51
    packed-switch v7, :pswitch_data_0

    #@54
    .line 809
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@56
    new-instance v8, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v9, "Unknown cmd: "

    #@5e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    iget v9, v6, Landroid/app/BackStackRecord$Op;->cmd:I

    #@64
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v8

    #@6c
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v7

    #@70
    .line 736
    :pswitch_0
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@72
    .line 737
    .local v1, "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@74
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@76
    .line 738
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@78
    invoke-virtual {v7, v1, v10}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    #@7b
    .line 813
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_3
    :goto_1
    iget-object v6, v6, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@7d
    goto :goto_0

    #@7e
    .line 742
    :pswitch_1
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@80
    .line 743
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v0, v1, Landroid/app/Fragment;->mContainerId:I

    #@82
    .line 744
    .local v0, "containerId":I
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@84
    iget-object v7, v7, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@86
    if-eqz v7, :cond_9

    #@88
    .line 745
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@8a
    iget-object v7, v7, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@8c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@8f
    move-result v7

    #@90
    add-int/lit8 v3, v7, -0x1

    #@92
    .end local v1    # "f":Landroid/app/Fragment;
    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    #@94
    .line 746
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@96
    iget-object v7, v7, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@98
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9b
    move-result-object v5

    #@9c
    check-cast v5, Landroid/app/Fragment;

    #@9e
    .line 747
    .local v5, "old":Landroid/app/Fragment;
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@a0
    if-eqz v7, :cond_4

    #@a2
    .line 748
    const-string/jumbo v7, "FragmentManager"

    #@a5
    .line 749
    new-instance v8, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v9, "OP_REPLACE: adding="

    #@ad
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v8

    #@b1
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v8

    #@b5
    const-string/jumbo v9, " old="

    #@b8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v8

    #@bc
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v8

    #@c0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v8

    #@c4
    .line 748
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    .line 751
    :cond_4
    iget v7, v5, Landroid/app/Fragment;->mContainerId:I

    #@c9
    if-ne v7, v0, :cond_5

    #@cb
    .line 752
    if-ne v5, v1, :cond_6

    #@cd
    .line 753
    const/4 v1, 0x0

    #@ce
    .local v1, "f":Landroid/app/Fragment;
    iput-object v11, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@d0
    .line 745
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    #@d2
    goto :goto_2

    #@d3
    .line 755
    :cond_6
    iget-object v7, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@d5
    if-nez v7, :cond_7

    #@d7
    .line 756
    new-instance v7, Ljava/util/ArrayList;

    #@d9
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@dc
    iput-object v7, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@de
    .line 758
    :cond_7
    iget-object v7, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@e0
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e3
    .line 759
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@e5
    iput v7, v5, Landroid/app/Fragment;->mNextAnim:I

    #@e7
    .line 760
    iget-boolean v7, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@e9
    if-eqz v7, :cond_8

    #@eb
    .line 761
    iget v7, v5, Landroid/app/Fragment;->mBackStackNesting:I

    #@ed
    add-int/lit8 v7, v7, 0x1

    #@ef
    iput v7, v5, Landroid/app/Fragment;->mBackStackNesting:I

    #@f1
    .line 762
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@f3
    if-eqz v7, :cond_8

    #@f5
    .line 763
    const-string/jumbo v7, "FragmentManager"

    #@f8
    new-instance v8, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v9, "Bump nesting of "

    #@100
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v8

    #@104
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v8

    #@108
    .line 764
    const-string/jumbo v9, " to "

    #@10b
    .line 763
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v8

    #@10f
    .line 764
    iget v9, v5, Landroid/app/Fragment;->mBackStackNesting:I

    #@111
    .line 763
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@114
    move-result-object v8

    #@115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v8

    #@119
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11c
    .line 767
    :cond_8
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@11e
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@120
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@122
    invoke-virtual {v7, v5, v8, v9}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    #@125
    goto :goto_3

    #@126
    .line 772
    .end local v3    # "i":I
    .end local v5    # "old":Landroid/app/Fragment;
    :cond_9
    if-eqz v1, :cond_3

    #@128
    .line 773
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@12a
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@12c
    .line 774
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@12e
    invoke-virtual {v7, v1, v10}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    #@131
    goto/16 :goto_1

    #@133
    .line 779
    .end local v0    # "containerId":I
    :pswitch_2
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@135
    .line 780
    .local v1, "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@137
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@139
    .line 781
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@13b
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@13d
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@13f
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    #@142
    goto/16 :goto_1

    #@144
    .line 785
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_3
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@146
    .line 786
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@148
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@14a
    .line 787
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@14c
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@14e
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@150
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V

    #@153
    goto/16 :goto_1

    #@155
    .line 791
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_4
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@157
    .line 792
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@159
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@15b
    .line 793
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@15d
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@15f
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@161
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V

    #@164
    goto/16 :goto_1

    #@166
    .line 797
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_5
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@168
    .line 798
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@16a
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@16c
    .line 799
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@16e
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@170
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@172
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;II)V

    #@175
    goto/16 :goto_1

    #@177
    .line 803
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_6
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@179
    .line 804
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@17b
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@17d
    .line 805
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@17f
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@181
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@183
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;II)V

    #@186
    goto/16 :goto_1

    #@188
    .line 816
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_a
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@18a
    iget-object v8, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@18c
    iget v8, v8, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@18e
    iget v9, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@190
    .line 817
    iget v10, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@192
    .line 816
    invoke-virtual {v7, v8, v9, v10, v12}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@195
    .line 819
    iget-boolean v7, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@197
    if-eqz v7, :cond_b

    #@199
    .line 820
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@19b
    invoke-virtual {v7, p0}, Landroid/app/FragmentManagerImpl;->addBackStackState(Landroid/app/BackStackRecord;)V

    #@19e
    .line 712
    :cond_b
    return-void

    #@19f
    .line 734
    nop

    #@1a0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    #@0
    .prologue
    .line 629
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    .line 630
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@5
    .line 631
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 635
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@3
    .line 636
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@5
    .line 637
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    #@0
    .prologue
    .line 617
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    .line 618
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@5
    .line 619
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 623
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@3
    .line 624
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@5
    .line 625
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 555
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    #@0
    .prologue
    .line 560
    iput p1, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    #@2
    .line 561
    iput p2, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    #@4
    .line 562
    iput p3, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    #@6
    .line 563
    iput p4, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    #@8
    .line 564
    return-object p0
.end method

.method public setTransition(I)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    #@0
    .prologue
    .line 568
    iput p1, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@2
    .line 569
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I

    #@0
    .prologue
    .line 589
    iput p1, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@2
    .line 590
    return-object p0
.end method

.method public show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 528
    new-instance v0, Landroid/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 529
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x5

    #@6
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 530
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@a
    .line 531
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    #@d
    .line 533
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 258
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BackStackEntry{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 259
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 260
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@1a
    if-ltz v1, :cond_0

    #@1c
    .line 261
    const-string/jumbo v1, " #"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 262
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    .line 264
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 265
    const-string/jumbo v1, " "

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 266
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 268
    :cond_1
    const-string/jumbo v1, "}"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    return-object v1
.end method

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

.method static synthetic -wrap3(Landroid/app/BackStackRecord;Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p1, "namedViews"    # Landroid/util/ArrayMap;
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/BackStackRecord;->setEpicenterIn(Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/app/BackStackRecord;Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/BackStackRecord;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V
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
    .line 400
    invoke-direct {p0}, Landroid/app/FragmentTransaction;-><init>()V

    #@3
    .line 237
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@6
    .line 240
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@9
    .line 401
    iput-object p1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@b
    .line 400
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
    .line 1451
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v6, p0, Landroid/transition/TransitionSet;

    #@2
    if-eqz v6, :cond_0

    #@4
    move-object v4, p0

    #@5
    .line 1452
    check-cast v4, Landroid/transition/TransitionSet;

    #@7
    .line 1453
    .local v4, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@a
    move-result v2

    #@b
    .line 1454
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@e
    .line 1455
    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    #@11
    move-result-object v0

    #@12
    .line 1456
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@15
    .line 1454
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1458
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
    .line 1459
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    #@21
    move-result-object v5

    #@22
    .line 1460
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v5}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_1

    #@28
    .line 1462
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v3

    #@2c
    .line 1463
    .local v3, "numViews":I
    const/4 v1, 0x0

    #@2d
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    #@2f
    .line 1464
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v6

    #@33
    check-cast v6, Landroid/view/View;

    #@35
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@38
    .line 1463
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 1450
    .end local v1    # "i":I
    .end local v3    # "numViews":I
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "enterTransition"    # Landroid/transition/Transition;
    .param p3, "sharedElementTransition"    # Landroid/transition/TransitionSet;
    .param p4, "overallTransition"    # Landroid/transition/Transition;
    .param p5, "container"    # Landroid/view/View;
    .param p6, "inFragment"    # Landroid/app/Fragment;
    .param p7, "outFragment"    # Landroid/app/Fragment;
    .param p9, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/transition/Transition;",
            "Landroid/transition/TransitionSet;",
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
    .line 1085
    .local p8, "hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p10, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p2, :cond_0

    #@2
    if-nez p3, :cond_0

    #@4
    .line 1086
    if-nez p4, :cond_0

    #@6
    .line 1087
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 1089
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    #@a
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 1090
    .local v12, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@10
    move-result-object v13

    #@11
    .line 1091
    new-instance v0, Landroid/app/BackStackRecord$1;

    #@13
    move-object v1, p0

    #@14
    move-object/from16 v2, p5

    #@16
    move-object/from16 v3, p6

    #@18
    move-object/from16 v4, p8

    #@1a
    move-object/from16 v5, p4

    #@1c
    move-object/from16 v6, p3

    #@1e
    move-object v7, p1

    #@1f
    move/from16 v8, p9

    #@21
    move-object/from16 v9, p10

    #@23
    move-object/from16 v10, p7

    #@25
    move-object/from16 v11, p2

    #@27
    invoke-direct/range {v0 .. v12}, Landroid/app/BackStackRecord$1;-><init>(Landroid/app/BackStackRecord;Landroid/view/View;Landroid/app/Fragment;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/app/BackStackRecord$TransitionState;ZLjava/util/ArrayList;Landroid/app/Fragment;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@2a
    .line 1090
    invoke-virtual {v13, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@2d
    .line 1132
    return-object v12
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
    .line 960
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v2, Landroid/app/BackStackRecord$TransitionState;

    #@2
    invoke-direct {v2, p0}, Landroid/app/BackStackRecord$TransitionState;-><init>(Landroid/app/BackStackRecord;)V

    #@5
    .line 965
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
    .line 968
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
    .line 969
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
    .line 970
    invoke-direct/range {v0 .. v5}, Landroid/app/BackStackRecord;->configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@26
    .line 968
    add-int/lit8 v6, v6, 0x1

    #@28
    goto :goto_0

    #@29
    .line 975
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
    .line 976
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->keyAt(I)I

    #@33
    move-result v1

    #@34
    .line 977
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
    .line 978
    invoke-direct/range {v0 .. v5}, Landroid/app/BackStackRecord;->configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@41
    .line 975
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@43
    goto :goto_1

    #@44
    .line 982
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
    .line 1349
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v4

    #@4
    .line 1350
    .local v4, "startIndex":I
    invoke-static {p0, p1, v4}, Landroid/app/BackStackRecord;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    #@7
    move-result v7

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 1351
    return-void

    #@b
    .line 1353
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    .line 1354
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
    .line 1355
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Landroid/view/View;

    #@1b
    .line 1356
    .local v5, "view":Landroid/view/View;
    instance-of v7, v5, Landroid/view/ViewGroup;

    #@1d
    if-eqz v7, :cond_2

    #@1f
    move-object v6, v5

    #@20
    .line 1357
    check-cast v6, Landroid/view/ViewGroup;

    #@22
    .line 1358
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    #@25
    move-result v1

    #@26
    .line 1359
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@27
    .local v2, "childIndex":I
    :goto_1
    if-ge v2, v1, :cond_2

    #@29
    .line 1360
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@2c
    move-result-object v0

    #@2d
    .line 1361
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0, v4}, Landroid/app/BackStackRecord;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    #@30
    move-result v7

    #@31
    if-nez v7, :cond_1

    #@33
    .line 1362
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 1359
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_1

    #@39
    .line 1354
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childIndex":I
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1348
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
    .line 831
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
    .line 832
    return-void

    #@b
    .line 834
    :cond_0
    iget-object v3, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@d
    .line 835
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_5

    #@f
    .line 836
    iget v4, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    #@11
    packed-switch v4, :pswitch_data_0

    #@14
    .line 874
    :goto_1
    iget-object v3, v3, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@16
    goto :goto_0

    #@17
    .line 838
    :pswitch_0
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@19
    invoke-direct {p0, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@1c
    goto :goto_1

    #@1d
    .line 841
    :pswitch_1
    iget-object v0, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@1f
    .line 842
    .local v0, "f":Landroid/app/Fragment;
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@21
    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@23
    if-eqz v4, :cond_4

    #@25
    .line 843
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
    .line 844
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
    .line 845
    .local v2, "old":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    #@3c
    iget v4, v2, Landroid/app/Fragment;->mContainerId:I

    #@3e
    iget v5, v0, Landroid/app/Fragment;->mContainerId:I

    #@40
    if-ne v4, v5, :cond_2

    #@42
    .line 846
    :cond_1
    if-ne v2, v0, :cond_3

    #@44
    .line 847
    const/4 v0, 0x0

    #@45
    .line 843
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_2

    #@48
    .line 849
    :cond_3
    invoke-static {p1, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@4b
    goto :goto_3

    #@4c
    .line 854
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/app/Fragment;
    :cond_4
    invoke-direct {p0, p2, v0}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@4f
    goto :goto_1

    #@50
    .line 858
    :pswitch_2
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@52
    invoke-static {p1, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@55
    goto :goto_1

    #@56
    .line 861
    :pswitch_3
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@58
    invoke-static {p1, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@5b
    goto :goto_1

    #@5c
    .line 864
    :pswitch_4
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@5e
    invoke-direct {p0, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@61
    goto :goto_1

    #@62
    .line 867
    :pswitch_5
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@64
    invoke-static {p1, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@67
    goto :goto_1

    #@68
    .line 870
    :pswitch_6
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@6a
    invoke-direct {p0, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@6d
    goto :goto_1

    #@6e
    .line 830
    :cond_5
    return-void

    #@6f
    .line 836
    nop

    #@70
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
    .line 1137
    .local p5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p4, :cond_0

    #@2
    .line 1138
    iget-object v1, p3, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@4
    .line 1140
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
    .line 1141
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@f
    invoke-virtual {p5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@12
    move-result-object v3

    #@13
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@16
    .line 1142
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    #@17
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@1a
    .line 1136
    return-void

    #@1b
    .line 1139
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
    .line 1026
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v1, 0x0

    #@1
    .line 1027
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    #@3
    .line 1028
    new-instance v1, Ljava/util/ArrayList;

    #@5
    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 1029
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 1030
    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    #@f
    .line 1031
    if-eqz p2, :cond_0

    #@11
    .line 1032
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@18
    .line 1034
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_1

    #@1e
    .line 1035
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 1036
    invoke-static {p0, v1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@24
    .line 1039
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
    .line 986
    if-eqz p0, :cond_0

    #@2
    .line 987
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@5
    move-result-object p0

    #@6
    .line 989
    :cond_0
    return-object p0
.end method

.method private configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 30
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
    .line 1244
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
    move-result-object v8

    #@c
    check-cast v8, Landroid/view/ViewGroup;

    #@e
    .line 1245
    .local v8, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v8, :cond_7

    #@10
    .line 1246
    move-object/from16 v0, p5

    #@12
    move/from16 v1, p1

    #@14
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v9

    #@18
    check-cast v9, Landroid/app/Fragment;

    #@1a
    .line 1247
    .local v9, "inFragment":Landroid/app/Fragment;
    move-object/from16 v0, p4

    #@1c
    move/from16 v1, p1

    #@1e
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v10

    #@22
    check-cast v10, Landroid/app/Fragment;

    #@24
    .line 1249
    .local v10, "outFragment":Landroid/app/Fragment;
    move/from16 v0, p3

    #@26
    invoke-static {v9, v0}, Landroid/app/BackStackRecord;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    #@29
    move-result-object v5

    #@2a
    .line 1251
    .local v5, "enterTransition":Landroid/transition/Transition;
    move/from16 v0, p3

    #@2c
    invoke-static {v9, v10, v0}, Landroid/app/BackStackRecord;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/TransitionSet;

    #@2f
    move-result-object v6

    #@30
    .line 1252
    .local v6, "sharedElementTransition":Landroid/transition/TransitionSet;
    move/from16 v0, p3

    #@32
    invoke-static {v10, v0}, Landroid/app/BackStackRecord;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    #@35
    move-result-object v19

    #@36
    .line 1254
    .local v19, "exitTransition":Landroid/transition/Transition;
    if-nez v5, :cond_0

    #@38
    if-nez v6, :cond_0

    #@3a
    .line 1255
    if-nez v19, :cond_0

    #@3c
    .line 1256
    return-void

    #@3d
    .line 1258
    :cond_0
    if-eqz v5, :cond_1

    #@3f
    .line 1259
    move-object/from16 v0, p2

    #@41
    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@43
    invoke-virtual {v5, v3}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@46
    .line 1261
    :cond_1
    const/16 v27, 0x0

    #@48
    .line 1262
    .local v27, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v13, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@4d
    .line 1263
    .local v13, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v6, :cond_2

    #@4f
    .line 1264
    move-object/from16 v0, p0

    #@51
    move-object/from16 v1, p2

    #@53
    move/from16 v2, p3

    #@55
    invoke-direct {v0, v1, v10, v2}, Landroid/app/BackStackRecord;->remapSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;

    #@58
    move-result-object v27

    #@59
    .line 1266
    .local v27, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v0, p2

    #@5b
    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@5d
    .line 1265
    move-object/from16 v0, v27

    #@5f
    invoke-static {v6, v3, v0, v13}, Landroid/app/BackStackRecord;->setSharedElementTargets(Landroid/transition/TransitionSet;Landroid/view/View;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    #@62
    .line 1269
    if-eqz p3, :cond_8

    #@64
    .line 1270
    iget-object v0, v10, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@66
    move-object/from16 v25, v0

    #@68
    .line 1272
    .local v25, "callback":Landroid/app/SharedElementCallback;
    :goto_0
    new-instance v28, Ljava/util/ArrayList;

    #@6a
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@6d
    move-result-object v3

    #@6e
    move-object/from16 v0, v28

    #@70
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@73
    .line 1273
    .local v28, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v29, Ljava/util/ArrayList;

    #@75
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@78
    move-result-object v3

    #@79
    move-object/from16 v0, v29

    #@7b
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7e
    .line 1274
    .local v29, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    #@7f
    move-object/from16 v0, v25

    #@81
    move-object/from16 v1, v28

    #@83
    move-object/from16 v2, v29

    #@85
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@88
    .line 1278
    .end local v25    # "callback":Landroid/app/SharedElementCallback;
    .end local v27    # "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v28    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    move-object/from16 v0, p2

    #@8a
    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@8c
    .line 1277
    move-object/from16 v0, v19

    #@8e
    move-object/from16 v1, v27

    #@90
    invoke-static {v0, v10, v1, v3}, Landroid/app/BackStackRecord;->captureExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Landroid/util/ArrayMap;Landroid/view/View;)Ljava/util/ArrayList;

    #@93
    move-result-object v20

    #@94
    .line 1279
    .local v20, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v20, :cond_3

    #@96
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    #@99
    move-result v3

    #@9a
    if-eqz v3, :cond_4

    #@9c
    .line 1280
    :cond_3
    const/16 v19, 0x0

    #@9e
    .line 1284
    .end local v19    # "exitTransition":Landroid/transition/Transition;
    :cond_4
    move-object/from16 v0, p0

    #@a0
    iget-object v3, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@a2
    if-eqz v3, :cond_6

    #@a4
    if-eqz v27, :cond_6

    #@a6
    .line 1285
    move-object/from16 v0, p0

    #@a8
    iget-object v3, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@aa
    const/4 v4, 0x0

    #@ab
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ae
    move-result-object v3

    #@af
    move-object/from16 v0, v27

    #@b1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    move-result-object v26

    #@b5
    check-cast v26, Landroid/view/View;

    #@b7
    .line 1286
    .local v26, "epicenterView":Landroid/view/View;
    if-eqz v26, :cond_6

    #@b9
    .line 1287
    if-eqz v19, :cond_5

    #@bb
    .line 1288
    move-object/from16 v0, v19

    #@bd
    move-object/from16 v1, v26

    #@bf
    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    #@c2
    .line 1290
    :cond_5
    if-eqz v6, :cond_6

    #@c4
    .line 1291
    move-object/from16 v0, v26

    #@c6
    invoke-static {v6, v0}, Landroid/app/BackStackRecord;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    #@c9
    .line 1296
    .end local v26    # "epicenterView":Landroid/view/View;
    :cond_6
    move-object/from16 v0, v19

    #@cb
    move/from16 v1, p3

    #@cd
    invoke-static {v5, v0, v6, v9, v1}, Landroid/app/BackStackRecord;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    #@d0
    move-result-object v7

    #@d1
    .line 1299
    .local v7, "transition":Landroid/transition/Transition;
    if-eqz v7, :cond_7

    #@d3
    .line 1300
    new-instance v11, Ljava/util/ArrayList;

    #@d5
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@d8
    .local v11, "hiddenFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p0

    #@da
    move-object/from16 v4, p2

    #@dc
    move/from16 v12, p3

    #@de
    .line 1301
    invoke-direct/range {v3 .. v13}, Landroid/app/BackStackRecord;->addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/TransitionSet;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    #@e1
    move-result-object v18

    #@e2
    .line 1305
    .local v18, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p2

    #@e4
    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@e6
    invoke-virtual {v7, v3}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    #@e9
    .line 1308
    move-object/from16 v0, p2

    #@eb
    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@ed
    const/4 v4, 0x1

    #@ee
    invoke-virtual {v7, v3, v4}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@f1
    .line 1310
    move-object/from16 v0, p0

    #@f3
    move/from16 v1, p1

    #@f5
    invoke-direct {v0, v11, v1, v7}, Landroid/app/BackStackRecord;->excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    #@f8
    .line 1311
    invoke-static {v8, v7}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@fb
    .line 1313
    move-object/from16 v0, p2

    #@fd
    iget-object v0, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    #@ff
    move-object/from16 v16, v0

    #@101
    move-object/from16 v14, p0

    #@103
    move-object v15, v8

    #@104
    move-object/from16 v17, v5

    #@106
    move-object/from16 v21, v6

    #@108
    move-object/from16 v22, v13

    #@10a
    move-object/from16 v23, v7

    #@10c
    move-object/from16 v24, v11

    #@10e
    invoke-direct/range {v14 .. v24}, Landroid/app/BackStackRecord;->removeTargetedViewsFromTransitions(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@111
    .line 1243
    .end local v5    # "enterTransition":Landroid/transition/Transition;
    .end local v6    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .end local v7    # "transition":Landroid/transition/Transition;
    .end local v9    # "inFragment":Landroid/app/Fragment;
    .end local v10    # "outFragment":Landroid/app/Fragment;
    .end local v11    # "hiddenFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13    # "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v18    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v20    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_7
    return-void

    #@112
    .line 1271
    .restart local v5    # "enterTransition":Landroid/transition/Transition;
    .restart local v6    # "sharedElementTransition":Landroid/transition/TransitionSet;
    .restart local v9    # "inFragment":Landroid/app/Fragment;
    .restart local v10    # "outFragment":Landroid/app/Fragment;
    .restart local v13    # "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v19    # "exitTransition":Landroid/transition/Transition;
    .restart local v27    # "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_8
    iget-object v0, v9, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@114
    move-object/from16 v25, v0

    #@116
    .restart local v25    # "callback":Landroid/app/SharedElementCallback;
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
    .line 1374
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@3
    .line 1375
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-ne v1, p1, :cond_0

    #@9
    .line 1376
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 1374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 1379
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
    .line 461
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@2
    iput-object v1, p2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    .line 463
    if-eqz p3, :cond_1

    #@6
    .line 464
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
    .line 469
    :cond_0
    iput-object p3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@14
    .line 472
    :cond_1
    if-eqz p1, :cond_4

    #@16
    .line 473
    iget v1, p2, Landroid/app/Fragment;->mFragmentId:I

    #@18
    if-eqz v1, :cond_3

    #@1a
    iget v1, p2, Landroid/app/Fragment;->mFragmentId:I

    #@1c
    if-eq v1, p1, :cond_3

    #@1e
    .line 474
    new-instance v1, Ljava/lang/IllegalStateException;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Can\'t change container ID of fragment "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 475
    const-string/jumbo v3, ": was "

    #@33
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 475
    iget v3, p2, Landroid/app/Fragment;->mFragmentId:I

    #@39
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 476
    const-string/jumbo v3, " now "

    #@40
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1

    #@50
    .line 465
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    #@52
    new-instance v2, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v3, "Can\'t change tag of fragment "

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 466
    const-string/jumbo v3, ": was "

    #@65
    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    .line 466
    iget-object v3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@6b
    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    .line 467
    const-string/jumbo v3, " now "

    #@72
    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@81
    throw v1

    #@82
    .line 478
    :cond_3
    iput p1, p2, Landroid/app/Fragment;->mFragmentId:I

    #@84
    iput p1, p2, Landroid/app/Fragment;->mContainerId:I

    #@86
    .line 481
    :cond_4
    new-instance v0, Landroid/app/BackStackRecord$Op;

    #@88
    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    #@8b
    .line 482
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    iput p4, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    #@8d
    .line 483
    iput-object p2, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@8f
    .line 484
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    #@92
    .line 460
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
    .line 1533
    .local p1, "hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@2
    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4
    if-eqz v2, :cond_2

    #@6
    .line 1534
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
    .line 1535
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
    .line 1536
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@1d
    if-eqz v2, :cond_0

    #@1f
    iget-object v2, v0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 1537
    iget v2, v0, Landroid/app/Fragment;->mContainerId:I

    #@25
    if-ne v2, p2, :cond_0

    #@27
    .line 1538
    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 1539
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@2d
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_0

    #@33
    .line 1540
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@35
    const/4 v3, 0x1

    #@36
    invoke-virtual {p3, v2, v3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@39
    .line 1541
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3b
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3e
    .line 1534
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1544
    :cond_1
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@43
    const/4 v3, 0x0

    #@44
    invoke-virtual {p3, v2, v3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@47
    .line 1545
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@49
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@4c
    goto :goto_1

    #@4d
    .line 1532
    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2
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
    .line 993
    if-nez p0, :cond_0

    #@3
    .line 994
    return-object v0

    #@4
    .line 996
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
    .line 997
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
    .line 1001
    if-nez p0, :cond_0

    #@3
    .line 1002
    return-object v0

    #@4
    .line 1004
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
    .line 1005
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
    .line 1010
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 1011
    :cond_0
    return-object v3

    #@6
    .line 1013
    :cond_1
    if-eqz p2, :cond_2

    #@8
    .line 1014
    invoke-virtual {p1}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    #@b
    move-result-object v2

    #@c
    .line 1013
    :goto_0
    invoke-static {v2}, Landroid/app/BackStackRecord;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    #@f
    move-result-object v0

    #@10
    .line 1016
    .local v0, "transition":Landroid/transition/Transition;
    if-nez v0, :cond_3

    #@12
    .line 1017
    return-object v3

    #@13
    .line 1015
    .end local v0    # "transition":Landroid/transition/Transition;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    #@16
    move-result-object v2

    #@17
    goto :goto_0

    #@18
    .line 1019
    .restart local v0    # "transition":Landroid/transition/Transition;
    :cond_3
    new-instance v1, Landroid/transition/TransitionSet;

    #@1a
    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    #@1d
    .line 1020
    .local v1, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@20
    .line 1021
    return-object v1
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1471
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
    .line 1472
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
    .line 1473
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
    .line 1471
    :cond_0
    return v0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    #@0
    .prologue
    .line 1477
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
    .line 1515
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 1516
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    #@8
    move-result-object v1

    #@9
    .line 1517
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    #@b
    .line 1518
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1519
    invoke-virtual {v1, v0}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    #@12
    .line 1520
    if-eqz p3, :cond_1

    #@14
    .line 1521
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@16
    .line 1522
    iget-object v3, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@18
    .line 1521
    invoke-static {v2, v3, v0}, Landroid/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    #@1b
    move-result-object v0

    #@1c
    .line 1528
    :cond_0
    :goto_0
    return-object v0

    #@1d
    .line 1524
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
    .line 1159
    invoke-direct {p0, p1, p3, p2}, Landroid/app/BackStackRecord;->mapEnteringSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;

    #@4
    move-result-object v0

    #@5
    .line 1163
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_0

    #@7
    .line 1164
    iget-object v1, p3, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    #@9
    .line 1165
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@b
    .line 1164
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@e
    .line 1166
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    #@11
    .line 1172
    :goto_0
    return-object v0

    #@12
    .line 1168
    :cond_0
    iget-object v1, p3, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@14
    .line 1169
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@16
    .line 1168
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@19
    .line 1170
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
    .line 1178
    const/4 v0, 0x1

    #@1
    .line 1179
    .local v0, "overlap":Z
    if-eqz p0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    if-eqz p3, :cond_0

    #@7
    .line 1180
    if-eqz p4, :cond_4

    #@9
    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowReturnTransitionOverlap()Z

    #@c
    move-result v0

    #@d
    .line 1189
    .end local v0    # "overlap":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    #@f
    .line 1191
    new-instance v4, Landroid/transition/TransitionSet;

    #@11
    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    #@14
    .line 1192
    .local v4, "transitionSet":Landroid/transition/TransitionSet;
    if-eqz p0, :cond_1

    #@16
    .line 1193
    invoke-virtual {v4, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@19
    .line 1195
    :cond_1
    if-eqz p1, :cond_2

    #@1b
    .line 1196
    invoke-virtual {v4, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@1e
    .line 1198
    :cond_2
    if-eqz p2, :cond_3

    #@20
    .line 1199
    invoke-virtual {v4, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@23
    .line 1201
    :cond_3
    move-object v3, v4

    #@24
    .line 1227
    .end local v4    # "transitionSet":Landroid/transition/TransitionSet;
    .local v3, "transition":Landroid/transition/Transition;
    :goto_1
    return-object v3

    #@25
    .line 1181
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
    .line 1205
    .end local v0    # "overlap":Z
    :cond_5
    const/4 v1, 0x0

    #@2b
    .line 1206
    .local v1, "staggered":Landroid/transition/Transition;
    if-eqz p1, :cond_8

    #@2d
    if-eqz p0, :cond_8

    #@2f
    .line 1207
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
    .line 1210
    const/4 v6, 0x1

    #@3d
    .line 1207
    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    #@40
    move-result-object v1

    #@41
    .line 1216
    .end local v1    # "staggered":Landroid/transition/Transition;
    :cond_6
    :goto_2
    if-eqz p2, :cond_a

    #@43
    .line 1217
    new-instance v2, Landroid/transition/TransitionSet;

    #@45
    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    #@48
    .line 1218
    .local v2, "together":Landroid/transition/TransitionSet;
    if-eqz v1, :cond_7

    #@4a
    .line 1219
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@4d
    .line 1221
    :cond_7
    invoke-virtual {v2, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@50
    .line 1222
    move-object v3, v2

    #@51
    .restart local v3    # "transition":Landroid/transition/Transition;
    goto :goto_1

    #@52
    .line 1211
    .end local v2    # "together":Landroid/transition/TransitionSet;
    .end local v3    # "transition":Landroid/transition/Transition;
    .restart local v1    # "staggered":Landroid/transition/Transition;
    :cond_8
    if-eqz p1, :cond_9

    #@54
    .line 1212
    move-object v1, p1

    #@55
    .local v1, "staggered":Landroid/transition/Transition;
    goto :goto_2

    #@56
    .line 1213
    .local v1, "staggered":Landroid/transition/Transition;
    :cond_9
    if-eqz p0, :cond_6

    #@58
    .line 1214
    move-object v1, p0

    #@59
    .local v1, "staggered":Landroid/transition/Transition;
    goto :goto_2

    #@5a
    .line 1224
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
    .line 1490
    .local p0, "inMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "toGoInMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v2, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 1491
    .local v2, "remappedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_1

    #@b
    .line 1492
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    .line 1493
    .local v1, "numKeys":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@12
    .line 1494
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
    .line 1496
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    #@1e
    .line 1497
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Ljava/lang/String;

    #@24
    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 1493
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1501
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
    .line 1044
    new-instance v0, Landroid/util/ArrayMap;

    #@3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@6
    .line 1045
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1046
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, v0}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    #@11
    .line 1047
    if-eqz p3, :cond_1

    #@13
    .line 1048
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    #@18
    .line 1055
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    #@1a
    .line 1056
    iget-object v1, p2, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@1c
    .line 1057
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@1e
    .line 1056
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@21
    .line 1058
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    #@24
    .line 1065
    :goto_1
    return-object v0

    #@25
    .line 1050
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
    .line 1060
    :cond_2
    iget-object v1, p2, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    #@30
    .line 1061
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@32
    .line 1060
    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@35
    .line 1062
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
    .line 1392
    .local p4, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p10, "hiddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p9, :cond_0

    #@2
    .line 1393
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
    .line 1391
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
    .line 1423
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v5, p0, Landroid/transition/TransitionSet;

    #@2
    if-eqz v5, :cond_0

    #@4
    move-object v3, p0

    #@5
    .line 1424
    check-cast v3, Landroid/transition/TransitionSet;

    #@7
    .line 1425
    .local v3, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@a
    move-result v2

    #@b
    .line 1426
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@e
    .line 1427
    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    #@11
    move-result-object v0

    #@12
    .line 1428
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@15
    .line 1426
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1430
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
    .line 1431
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    #@21
    move-result-object v4

    #@22
    .line 1432
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
    .line 1433
    invoke-interface {v4, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    #@31
    move-result v5

    #@32
    .line 1432
    if-eqz v5, :cond_1

    #@34
    .line 1435
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
    .line 1436
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    check-cast v5, Landroid/view/View;

    #@42
    invoke-virtual {p0, v5}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@45
    .line 1435
    add-int/lit8 v1, v1, -0x1

    #@47
    goto :goto_1

    #@48
    .line 1422
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
    .line 1708
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@2
    if-nez v8, :cond_1

    #@4
    const/4 v6, 0x0

    #@5
    .line 1709
    .local v6, "targetCount":I
    :goto_0
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@7
    if-nez v8, :cond_2

    #@9
    const/4 v4, 0x0

    #@a
    .line 1710
    .local v4, "sourceCount":I
    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    .line 1711
    .local v0, "count":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_4

    #@11
    .line 1712
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Ljava/lang/String;

    #@19
    .line 1713
    .local v3, "source":Ljava/lang/String;
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/lang/String;

    #@21
    .line 1714
    .local v2, "originalTarget":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    check-cast v7, Landroid/view/View;

    #@27
    .line 1715
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_0

    #@29
    .line 1716
    invoke-virtual {v7}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    .line 1717
    .local v5, "target":Ljava/lang/String;
    if-eqz p3, :cond_3

    #@2f
    .line 1718
    iget-object v8, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@31
    invoke-static {v8, v3, v5}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 1711
    .end local v5    # "target":Ljava/lang/String;
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_2

    #@37
    .line 1708
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
    .line 1709
    :cond_2
    iget-object v8, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v4

    #@44
    .restart local v4    # "sourceCount":I
    goto :goto_1

    #@45
    .line 1720
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "originalTarget":Ljava/lang/String;
    .restart local v3    # "source":Ljava/lang/String;
    .restart local v5    # "target":Ljava/lang/String;
    .restart local v7    # "view":Landroid/view/View;
    :cond_3
    iget-object v8, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@47
    invoke-static {v8, v5, v3}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    goto :goto_3

    #@4b
    .line 1707
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
    .line 1553
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 1554
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    #@8
    .line 1556
    new-instance v1, Landroid/app/BackStackRecord$3;

    #@a
    invoke-direct {v1, v0}, Landroid/app/BackStackRecord$3;-><init>(Landroid/graphics/Rect;)V

    #@d
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@10
    .line 1552
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
    .line 1146
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
    .line 1145
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1149
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .line 1148
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/view/View;

    #@18
    .line 1150
    .local v0, "epicenter":Landroid/view/View;
    if-eqz v0, :cond_0

    #@1a
    .line 1151
    iput-object v0, p2, Landroid/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/view/View;

    #@1c
    goto :goto_0
.end method

.method private static setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 802
    .local p0, "fragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    if-eqz p1, :cond_0

    #@2
    .line 803
    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    #@4
    .line 804
    .local v0, "containerId":I
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 801
    .end local v0    # "containerId":I
    :cond_0
    :goto_0
    return-void

    #@d
    .line 804
    .restart local v0    # "containerId":I
    :cond_1
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 805
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_0

    #@19
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 806
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@22
    goto :goto_0
.end method

.method private setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V
    .locals 1
    .param p2, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 812
    .local p1, "fragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    if-eqz p2, :cond_0

    #@2
    .line 813
    iget v0, p2, Landroid/app/Fragment;->mContainerId:I

    #@4
    .line 814
    .local v0, "containerId":I
    if-eqz v0, :cond_0

    #@6
    .line 815
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@9
    .line 811
    .end local v0    # "containerId":I
    :cond_0
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
    .line 1684
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
    .line 1683
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1685
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
    .line 1686
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
    .line 1687
    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 1688
    return-void

    #@20
    .line 1685
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_1

    #@23
    .line 1691
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
    .line 1728
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-nez p2, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    .line 1729
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@6
    .line 1730
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Ljava/lang/String;

    #@c
    .line 1731
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
    .line 1732
    .local v3, "target":Ljava/lang/String;
    if-eqz p3, :cond_1

    #@18
    .line 1733
    iget-object v4, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@1a
    invoke-static {v4, v2, v3}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 1729
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 1728
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
    .line 1735
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
    .line 1727
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
    .line 1697
    .local p1, "sourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "targetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    #@2
    if-eqz p2, :cond_0

    #@4
    .line 1698
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
    .line 1699
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/String;

    #@11
    .line 1700
    .local v1, "source":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    .line 1701
    .local v2, "target":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    #@19
    invoke-static {v3, v1, v2}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 1698
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1696
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
    .line 1565
    new-instance v0, Landroid/app/BackStackRecord$4;

    #@2
    invoke-direct {v0, p0, p2}, Landroid/app/BackStackRecord$4;-><init>(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;)V

    #@5
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@8
    .line 1564
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
    .line 1330
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p3, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    #@3
    .line 1331
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 1333
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    #@d
    move-result-object v3

    #@e
    .line 1334
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@11
    .line 1335
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    .line 1336
    .local v0, "count":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@18
    .line 1337
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroid/view/View;

    #@1e
    .line 1338
    .local v2, "view":Landroid/view/View;
    invoke-static {v3, v2}, Landroid/app/BackStackRecord;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    #@21
    .line 1336
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1340
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 1341
    invoke-static {p0, p3}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    #@2a
    .line 1329
    return-void
.end method


# virtual methods
.method public add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 451
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    #@5
    .line 452
    return-object p0
.end method

.method public add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 456
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    #@4
    .line 457
    return-object p0
.end method

.method public add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 446
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    #@5
    .line 447
    return-object p0
.end method

.method addOp(Landroid/app/BackStackRecord$Op;)V
    .locals 1
    .param p1, "op"    # Landroid/app/BackStackRecord$Op;

    #@0
    .prologue
    .line 431
    iget-object v0, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 432
    iput-object p1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    #@6
    iput-object p1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@8
    .line 438
    :goto_0
    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    #@a
    iput v0, p1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@c
    .line 439
    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    #@e
    iput v0, p1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@10
    .line 440
    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    #@12
    iput v0, p1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@14
    .line 441
    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    #@16
    iput v0, p1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@18
    .line 442
    iget v0, p0, Landroid/app/BackStackRecord;->mNumOp:I

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    iput v0, p0, Landroid/app/BackStackRecord;->mNumOp:I

    #@1e
    .line 430
    return-void

    #@1f
    .line 434
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    #@21
    iput-object v0, p1, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    #@23
    .line 435
    iget-object v0, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    #@25
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@27
    .line 436
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
    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 566
    .local v0, "transitionName":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 567
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Unique transitionNames are required for all sharedElements"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 570
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@11
    if-nez v1, :cond_1

    #@13
    .line 571
    new-instance v1, Ljava/util/ArrayList;

    #@15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@1a
    .line 572
    new-instance v1, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@21
    .line 574
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 575
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 576
    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 585
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 586
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 587
    const-string/jumbo v1, "This FragmentTransaction is not allowed to be added to the back stack."

    #@9
    .line 586
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 589
    :cond_0
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@10
    .line 590
    iput-object p1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@12
    .line 591
    return-object p0
.end method

.method public attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
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
    const/4 v1, 0x7

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

.method bumpBackStackNesting(I)V
    .locals 6
    .param p1, "amt"    # I

    #@0
    .prologue
    .line 632
    iget-boolean v3, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@2
    if-nez v3, :cond_0

    #@4
    .line 633
    return-void

    #@5
    .line 635
    :cond_0
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 636
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
    .line 637
    const-string/jumbo v5, " by "

    #@1f
    .line 636
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
    .line 639
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@30
    .line 640
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_5

    #@32
    .line 641
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 642
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@38
    iget v4, v3, Landroid/app/Fragment;->mBackStackNesting:I

    #@3a
    add-int/2addr v4, p1

    #@3b
    iput v4, v3, Landroid/app/Fragment;->mBackStackNesting:I

    #@3d
    .line 643
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 644
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
    .line 645
    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@52
    .line 644
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    .line 645
    const-string/jumbo v5, " to "

    #@59
    .line 644
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 645
    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@5f
    iget v5, v5, Landroid/app/Fragment;->mBackStackNesting:I

    #@61
    .line 644
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
    .line 648
    :cond_2
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@6e
    if-eqz v3, :cond_4

    #@70
    .line 649
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
    .line 650
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v2

    #@80
    check-cast v2, Landroid/app/Fragment;

    #@82
    .line 651
    .local v2, "r":Landroid/app/Fragment;
    iget v3, v2, Landroid/app/Fragment;->mBackStackNesting:I

    #@84
    add-int/2addr v3, p1

    #@85
    iput v3, v2, Landroid/app/Fragment;->mBackStackNesting:I

    #@87
    .line 652
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@89
    if-eqz v3, :cond_3

    #@8b
    .line 653
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
    .line 654
    const-string/jumbo v5, " to "

    #@a1
    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    .line 654
    iget v5, v2, Landroid/app/Fragment;->mBackStackNesting:I

    #@a7
    .line 653
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
    .line 649
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@b4
    goto :goto_1

    #@b5
    .line 658
    .end local v0    # "i":I
    .end local v2    # "r":Landroid/app/Fragment;
    :cond_4
    iget-object v1, v1, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@b7
    goto/16 :goto_0

    #@b9
    .line 631
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
    .line 889
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
    .line 890
    return-void

    #@b
    .line 892
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@d
    .line 893
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_2

    #@f
    .line 894
    iget v2, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    #@11
    packed-switch v2, :pswitch_data_0

    #@14
    .line 923
    :goto_1
    iget-object v1, v1, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@16
    goto :goto_0

    #@17
    .line 896
    :pswitch_0
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@19
    invoke-static {p1, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@1c
    goto :goto_1

    #@1d
    .line 899
    :pswitch_1
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 900
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
    .line 901
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/app/Fragment;

    #@33
    invoke-direct {p0, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@36
    .line 900
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_2

    #@39
    .line 904
    .end local v0    # "i":I
    :cond_1
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@3b
    invoke-static {p1, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@3e
    goto :goto_1

    #@3f
    .line 907
    :pswitch_2
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@41
    invoke-direct {p0, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@44
    goto :goto_1

    #@45
    .line 910
    :pswitch_3
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@47
    invoke-direct {p0, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@4a
    goto :goto_1

    #@4b
    .line 913
    :pswitch_4
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@4d
    invoke-static {p1, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@50
    goto :goto_1

    #@51
    .line 916
    :pswitch_5
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@53
    invoke-direct {p0, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@56
    goto :goto_1

    #@57
    .line 919
    :pswitch_6
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@59
    invoke-static {p1, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    #@5c
    goto :goto_1

    #@5d
    .line 888
    :cond_2
    return-void

    #@5e
    .line 894
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
    .line 663
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
    .line 667
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
    .line 671
    iget-boolean v2, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 672
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v3, "commit already called"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 674
    :cond_0
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 675
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
    .line 676
    new-instance v0, Landroid/util/LogWriter;

    #@2e
    const-string/jumbo v2, "FragmentManager"

    #@31
    const/4 v3, 0x2

    #@32
    invoke-direct {v0, v3, v2}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    #@35
    .line 677
    .local v0, "logw":Landroid/util/LogWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@37
    const/4 v2, 0x0

    #@38
    const/16 v3, 0x400

    #@3a
    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@3d
    .line 678
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "  "

    #@40
    invoke-virtual {p0, v2, v5, v1, v5}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@43
    .line 679
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@46
    .line 681
    .end local v0    # "logw":Landroid/util/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v2, 0x1

    #@47
    iput-boolean v2, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    #@49
    .line 682
    iget-boolean v2, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@4b
    if-eqz v2, :cond_2

    #@4d
    .line 683
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@4f
    invoke-virtual {v2, p0}, Landroid/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/app/BackStackRecord;)I

    #@52
    move-result v2

    #@53
    iput v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@55
    .line 687
    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@57
    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@5a
    .line 688
    iget v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@5c
    return v2

    #@5d
    .line 685
    :cond_2
    const/4 v2, -0x1

    #@5e
    iput v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@60
    goto :goto_0
.end method

.method public detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
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
    const/4 v1, 0x6

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

.method public disallowAddToBackStack()Landroid/app/FragmentTransaction;
    .locals 2

    #@0
    .prologue
    .line 599
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 601
    const-string/jumbo v1, "This transaction is already being added to the back stack"

    #@9
    .line 600
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 603
    :cond_0
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@10
    .line 604
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
    .line 268
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p3, v0}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    #@4
    .line 267
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    #@0
    .prologue
    .line 272
    if-eqz p3, :cond_8

    #@2
    .line 273
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    .line 274
    const-string/jumbo v5, "mName="

    #@8
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 275
    iget-object v5, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@d
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 276
    const-string/jumbo v5, " mIndex="

    #@13
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    .line 277
    iget v5, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@18
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    #@1b
    .line 278
    const-string/jumbo v5, " mCommitted="

    #@1e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 279
    iget-boolean v5, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    #@23
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    #@26
    .line 280
    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@28
    if-eqz v5, :cond_0

    #@2a
    .line 281
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    .line 282
    const-string/jumbo v5, "mTransition=#"

    #@30
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33
    .line 283
    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@35
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    .line 284
    const-string/jumbo v5, " mTransitionStyle=#"

    #@3f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 285
    iget v5, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@44
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 287
    :cond_0
    iget v5, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    #@4d
    if-nez v5, :cond_1

    #@4f
    iget v5, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    #@51
    if-eqz v5, :cond_2

    #@53
    .line 288
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 289
    const-string/jumbo v5, "mEnterAnim=#"

    #@59
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    .line 290
    iget v5, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    #@5e
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    .line 291
    const-string/jumbo v5, " mExitAnim=#"

    #@68
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6b
    .line 292
    iget v5, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    #@6d
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 294
    :cond_2
    iget v5, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    #@76
    if-nez v5, :cond_3

    #@78
    iget v5, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    #@7a
    if-eqz v5, :cond_4

    #@7c
    .line 295
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    .line 296
    const-string/jumbo v5, "mPopEnterAnim=#"

    #@82
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    .line 297
    iget v5, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    #@87
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    .line 298
    const-string/jumbo v5, " mPopExitAnim=#"

    #@91
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    .line 299
    iget v5, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    #@96
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 301
    :cond_4
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@9f
    if-nez v5, :cond_5

    #@a1
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@a3
    if-eqz v5, :cond_6

    #@a5
    .line 302
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    .line 303
    const-string/jumbo v5, "mBreadCrumbTitleRes=#"

    #@ab
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    .line 304
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@b0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b7
    .line 305
    const-string/jumbo v5, " mBreadCrumbTitleText="

    #@ba
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    .line 306
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@bf
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@c2
    .line 308
    :cond_6
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@c4
    if-nez v5, :cond_7

    #@c6
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@c8
    if-eqz v5, :cond_8

    #@ca
    .line 309
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    .line 310
    const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"

    #@d0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    .line 311
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@d5
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d8
    move-result-object v5

    #@d9
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc
    .line 312
    const-string/jumbo v5, " mBreadCrumbShortTitleText="

    #@df
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    .line 313
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@e4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e7
    .line 317
    :cond_8
    iget-object v5, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@e9
    if-eqz v5, :cond_10

    #@eb
    .line 318
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    .line 319
    const-string/jumbo v5, "Operations:"

    #@f1
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    .line 320
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
    .line 321
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@10a
    .line 322
    .local v4, "op":Landroid/app/BackStackRecord$Op;
    const/4 v3, 0x0

    #@10b
    .line 323
    .local v3, "num":I
    :goto_0
    if-eqz v4, :cond_10

    #@10d
    .line 325
    iget v5, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    #@10f
    packed-switch v5, :pswitch_data_0

    #@112
    .line 351
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
    .line 354
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12b
    .line 355
    const-string/jumbo v5, "  Op #"

    #@12e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@131
    .line 356
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    #@134
    .line 357
    const-string/jumbo v5, ": "

    #@137
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13a
    .line 358
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    .line 359
    const-string/jumbo v5, " "

    #@140
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    .line 360
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@145
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@148
    .line 361
    if-eqz p3, :cond_c

    #@14a
    .line 362
    iget v5, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@14c
    if-nez v5, :cond_9

    #@14e
    iget v5, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@150
    if-eqz v5, :cond_a

    #@152
    .line 363
    :cond_9
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@155
    .line 364
    const-string/jumbo v5, "enterAnim=#"

    #@158
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    .line 365
    iget v5, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@15d
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@160
    move-result-object v5

    #@161
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@164
    .line 366
    const-string/jumbo v5, " exitAnim=#"

    #@167
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16a
    .line 367
    iget v5, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@16c
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16f
    move-result-object v5

    #@170
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@173
    .line 369
    :cond_a
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@175
    if-nez v5, :cond_b

    #@177
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@179
    if-eqz v5, :cond_c

    #@17b
    .line 370
    :cond_b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17e
    .line 371
    const-string/jumbo v5, "popEnterAnim=#"

    #@181
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    .line 372
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@186
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@189
    move-result-object v5

    #@18a
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18d
    .line 373
    const-string/jumbo v5, " popExitAnim=#"

    #@190
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@193
    .line 374
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@195
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@198
    move-result-object v5

    #@199
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19c
    .line 377
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
    .line 378
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
    .line 379
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b4
    .line 380
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
    .line 381
    const-string/jumbo v5, "Removed: "

    #@1c0
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c3
    .line 391
    :goto_3
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1c5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c8
    move-result-object v5

    #@1c9
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1cc
    .line 378
    add-int/lit8 v1, v1, 0x1

    #@1ce
    goto :goto_2

    #@1cf
    .line 327
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_0
    const-string/jumbo v0, "NULL"

    #@1d2
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1d4
    .line 330
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "ADD"

    #@1d7
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1d9
    .line 333
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REPLACE"

    #@1dc
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1de
    .line 336
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "REMOVE"

    #@1e1
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1e3
    .line 339
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "HIDE"

    #@1e6
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1e8
    .line 342
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SHOW"

    #@1eb
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1ed
    .line 345
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "DETACH"

    #@1f0
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1f2
    .line 348
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "ATTACH"

    #@1f5
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    #@1f7
    .line 383
    .restart local v1    # "i":I
    :cond_d
    if-nez v1, :cond_e

    #@1f9
    .line 384
    const-string/jumbo v5, "Removed:"

    #@1fc
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ff
    .line 386
    :cond_e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@202
    .line 387
    const-string/jumbo v5, "  #"

    #@205
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@208
    .line 388
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    #@20b
    .line 389
    const-string/jumbo v5, ": "

    #@20e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@211
    goto :goto_3

    #@212
    .line 394
    .end local v1    # "i":I
    :cond_f
    iget-object v4, v4, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@214
    .line 395
    add-int/lit8 v3, v3, 0x1

    #@216
    goto/16 :goto_0

    #@218
    .line 271
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "innerPrefix":Ljava/lang/String;
    .end local v3    # "num":I
    .end local v4    # "op":Landroid/app/BackStackRecord$Op;
    :cond_10
    return-void

    #@219
    .line 325
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
    .line 424
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 425
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
    .line 427
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@15
    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    #@0
    .prologue
    .line 413
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 417
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 418
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
    .line 420
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@15
    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    #@0
    .prologue
    .line 409
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 405
    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1741
    iget-object v0, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTransition()I
    .locals 1

    #@0
    .prologue
    .line 1745
    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@2
    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    #@0
    .prologue
    .line 1749
    iget v0, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@2
    return v0
.end method

.method public hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
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
    const/4 v1, 0x4

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

.method public isAddToBackStackAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 595
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
    .line 1753
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
    .line 1581
    .local p3, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    .line 1582
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
    .line 1583
    new-instance v2, Landroid/util/LogWriter;

    #@20
    const-string/jumbo v6, "FragmentManager"

    #@23
    const/4 v7, 0x2

    #@24
    invoke-direct {v2, v7, v6}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    #@27
    .line 1584
    .local v2, "logw":Landroid/util/LogWriter;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    #@29
    const/4 v6, 0x0

    #@2a
    const/16 v7, 0x400

    #@2c
    invoke-direct {v5, v2, v6, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@2f
    .line 1585
    .local v5, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v6, "  "

    #@32
    const/4 v7, 0x0

    #@33
    const/4 v8, 0x0

    #@34
    invoke-virtual {p0, v6, v7, v5, v8}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@37
    .line 1586
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    #@3a
    .line 1589
    .end local v2    # "logw":Landroid/util/LogWriter;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_0
    if-nez p2, :cond_3

    #@3c
    .line 1590
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    #@3f
    move-result v6

    #@40
    if-nez v6, :cond_1

    #@42
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_2

    #@48
    .line 1591
    :cond_1
    const/4 v6, 0x1

    #@49
    invoke-direct {p0, p3, p4, v6}, Landroid/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;

    #@4c
    move-result-object p2

    #@4d
    .line 1597
    :cond_2
    :goto_0
    const/4 v6, -0x1

    #@4e
    invoke-virtual {p0, v6}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@51
    .line 1599
    iget-object v4, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    #@53
    .line 1600
    .local v4, "op":Landroid/app/BackStackRecord$Op;
    :goto_1
    if-eqz v4, :cond_6

    #@55
    .line 1601
    iget v6, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    #@57
    packed-switch v6, :pswitch_data_0

    #@5a
    .line 1662
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@5c
    new-instance v7, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v8, "Unknown cmd: "

    #@64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    iget v8, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    #@6a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@75
    throw v6

    #@76
    .line 1593
    .end local v4    # "op":Landroid/app/BackStackRecord$Op;
    :cond_3
    if-nez p1, :cond_2

    #@78
    .line 1594
    iget-object v6, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@7a
    iget-object v7, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@7c
    invoke-static {p2, v6, v7}, Landroid/app/BackStackRecord;->setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@7f
    goto :goto_0

    #@80
    .line 1603
    .restart local v4    # "op":Landroid/app/BackStackRecord$Op;
    :pswitch_0
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@82
    .line 1604
    .local v0, "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@84
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@86
    .line 1605
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@88
    .line 1606
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@8a
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@8d
    move-result v7

    #@8e
    .line 1607
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@90
    .line 1605
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    #@93
    .line 1666
    :cond_4
    :goto_2
    iget-object v4, v4, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    #@95
    goto :goto_1

    #@96
    .line 1611
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_1
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@98
    .line 1612
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_5

    #@9a
    .line 1613
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@9c
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@9e
    .line 1614
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@a0
    .line 1615
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@a2
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@a5
    move-result v7

    #@a6
    .line 1616
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@a8
    .line 1614
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    #@ab
    .line 1618
    :cond_5
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@ad
    if-eqz v6, :cond_4

    #@af
    .line 1619
    const/4 v1, 0x0

    #@b0
    .local v1, "i":I
    :goto_3
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@b2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@b5
    move-result v6

    #@b6
    if-ge v1, v6, :cond_4

    #@b8
    .line 1620
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@ba
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bd
    move-result-object v3

    #@be
    check-cast v3, Landroid/app/Fragment;

    #@c0
    .line 1621
    .local v3, "old":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@c2
    iput v6, v3, Landroid/app/Fragment;->mNextAnim:I

    #@c4
    .line 1622
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@c6
    const/4 v7, 0x0

    #@c7
    invoke-virtual {v6, v3, v7}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    #@ca
    .line 1619
    add-int/lit8 v1, v1, 0x1

    #@cc
    goto :goto_3

    #@cd
    .line 1628
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    .end local v3    # "old":Landroid/app/Fragment;
    :pswitch_2
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@cf
    .line 1629
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@d1
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@d3
    .line 1630
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@d5
    const/4 v7, 0x0

    #@d6
    invoke-virtual {v6, v0, v7}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    #@d9
    goto :goto_2

    #@da
    .line 1634
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_3
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@dc
    .line 1635
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@de
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@e0
    .line 1636
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@e2
    .line 1637
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@e4
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@e7
    move-result v7

    #@e8
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@ea
    .line 1636
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V

    #@ed
    goto :goto_2

    #@ee
    .line 1641
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_4
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@f0
    .line 1642
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@f2
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@f4
    .line 1643
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@f6
    .line 1644
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@f8
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@fb
    move-result v7

    #@fc
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@fe
    .line 1643
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V

    #@101
    goto :goto_2

    #@102
    .line 1648
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_5
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@104
    .line 1649
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@106
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@108
    .line 1650
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@10a
    .line 1651
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@10c
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@10f
    move-result v7

    #@110
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@112
    .line 1650
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;II)V

    #@115
    goto/16 :goto_2

    #@117
    .line 1655
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_6
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@119
    .line 1656
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@11b
    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    #@11d
    .line 1657
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@11f
    .line 1658
    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@121
    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@124
    move-result v7

    #@125
    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@127
    .line 1657
    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;II)V

    #@12a
    goto/16 :goto_2

    #@12c
    .line 1669
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_6
    if-eqz p1, :cond_7

    #@12e
    .line 1670
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@130
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@132
    iget v7, v7, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@134
    .line 1671
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@136
    invoke-static {v8}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    #@139
    move-result v8

    #@13a
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@13c
    const/4 v10, 0x1

    #@13d
    .line 1670
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@140
    .line 1672
    const/4 p2, 0x0

    #@141
    .line 1675
    .end local p2    # "state":Landroid/app/BackStackRecord$TransitionState;
    :cond_7
    iget v6, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@143
    if-ltz v6, :cond_8

    #@145
    .line 1676
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@147
    iget v7, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@149
    invoke-virtual {v6, v7}, Landroid/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    #@14c
    .line 1677
    const/4 v6, -0x1

    #@14d
    iput v6, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@14f
    .line 1679
    :cond_8
    return-object p2

    #@150
    .line 1601
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
    .line 501
    new-instance v0, Landroid/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    #@5
    .line 502
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x3

    #@6
    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    #@8
    .line 503
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@a
    .line 504
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    #@d
    .line 506
    return-object p0
.end method

.method public replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 488
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
    .line 492
    if-nez p1, :cond_0

    #@2
    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Must use non-zero containerViewId"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 496
    :cond_0
    const/4 v0, 0x2

    #@c
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    #@f
    .line 497
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
    .line 692
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 693
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
    .line 696
    :cond_0
    iget-boolean v7, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@23
    if-eqz v7, :cond_1

    #@25
    .line 697
    iget v7, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@27
    if-gez v7, :cond_1

    #@29
    .line 698
    new-instance v7, Ljava/lang/IllegalStateException;

    #@2b
    const-string/jumbo v8, "addToBackStack() called after commit()"

    #@2e
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v7

    #@32
    .line 702
    :cond_1
    invoke-virtual {p0, v12}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@35
    .line 704
    new-instance v2, Landroid/util/SparseArray;

    #@37
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@3a
    .line 705
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v4, Landroid/util/SparseArray;

    #@3c
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@3f
    .line 706
    .local v4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    invoke-direct {p0, v2, v4}, Landroid/app/BackStackRecord;->calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@42
    .line 707
    invoke-direct {p0, v2, v4, v11}, Landroid/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;

    #@45
    .line 709
    iget-object v6, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@47
    .line 710
    .local v6, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v6, :cond_9

    #@49
    .line 711
    iget v7, v6, Landroid/app/BackStackRecord$Op;->cmd:I

    #@4b
    packed-switch v7, :pswitch_data_0

    #@4e
    .line 786
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@50
    new-instance v8, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v9, "Unknown cmd: "

    #@58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    iget v9, v6, Landroid/app/BackStackRecord$Op;->cmd:I

    #@5e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@69
    throw v7

    #@6a
    .line 713
    :pswitch_0
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@6c
    .line 714
    .local v1, "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@6e
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@70
    .line 715
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@72
    invoke-virtual {v7, v1, v11}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    #@75
    .line 790
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_2
    :goto_1
    iget-object v6, v6, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@77
    goto :goto_0

    #@78
    .line 719
    :pswitch_1
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@7a
    .line 720
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v0, v1, Landroid/app/Fragment;->mContainerId:I

    #@7c
    .line 721
    .local v0, "containerId":I
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@7e
    iget-object v7, v7, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@80
    if-eqz v7, :cond_8

    #@82
    .line 722
    const/4 v3, 0x0

    #@83
    .end local v1    # "f":Landroid/app/Fragment;
    .local v3, "i":I
    :goto_2
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@85
    iget-object v7, v7, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@87
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@8a
    move-result v7

    #@8b
    if-ge v3, v7, :cond_8

    #@8d
    .line 723
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@8f
    iget-object v7, v7, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@91
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@94
    move-result-object v5

    #@95
    check-cast v5, Landroid/app/Fragment;

    #@97
    .line 724
    .local v5, "old":Landroid/app/Fragment;
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@99
    if-eqz v7, :cond_3

    #@9b
    .line 725
    const-string/jumbo v7, "FragmentManager"

    #@9e
    .line 726
    new-instance v8, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v9, "OP_REPLACE: adding="

    #@a6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v8

    #@aa
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v8

    #@ae
    const-string/jumbo v9, " old="

    #@b1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v8

    #@b5
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v8

    #@b9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v8

    #@bd
    .line 725
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    .line 728
    :cond_3
    iget v7, v5, Landroid/app/Fragment;->mContainerId:I

    #@c2
    if-ne v7, v0, :cond_4

    #@c4
    .line 729
    if-ne v5, v1, :cond_5

    #@c6
    .line 730
    const/4 v1, 0x0

    #@c7
    .local v1, "f":Landroid/app/Fragment;
    iput-object v10, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@c9
    .line 722
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@cb
    goto :goto_2

    #@cc
    .line 732
    :cond_5
    iget-object v7, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@ce
    if-nez v7, :cond_6

    #@d0
    .line 733
    new-instance v7, Ljava/util/ArrayList;

    #@d2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@d5
    iput-object v7, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@d7
    .line 735
    :cond_6
    iget-object v7, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@d9
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dc
    .line 736
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@de
    iput v7, v5, Landroid/app/Fragment;->mNextAnim:I

    #@e0
    .line 737
    iget-boolean v7, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@e2
    if-eqz v7, :cond_7

    #@e4
    .line 738
    iget v7, v5, Landroid/app/Fragment;->mBackStackNesting:I

    #@e6
    add-int/lit8 v7, v7, 0x1

    #@e8
    iput v7, v5, Landroid/app/Fragment;->mBackStackNesting:I

    #@ea
    .line 739
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@ec
    if-eqz v7, :cond_7

    #@ee
    .line 740
    const-string/jumbo v7, "FragmentManager"

    #@f1
    new-instance v8, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v9, "Bump nesting of "

    #@f9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v8

    #@fd
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v8

    #@101
    .line 741
    const-string/jumbo v9, " to "

    #@104
    .line 740
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v8

    #@108
    .line 741
    iget v9, v5, Landroid/app/Fragment;->mBackStackNesting:I

    #@10a
    .line 740
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v8

    #@10e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v8

    #@112
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@115
    .line 744
    :cond_7
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@117
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@119
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@11b
    invoke-virtual {v7, v5, v8, v9}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    #@11e
    goto :goto_3

    #@11f
    .line 749
    .end local v3    # "i":I
    .end local v5    # "old":Landroid/app/Fragment;
    :cond_8
    if-eqz v1, :cond_2

    #@121
    .line 750
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@123
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@125
    .line 751
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@127
    invoke-virtual {v7, v1, v11}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    #@12a
    goto/16 :goto_1

    #@12c
    .line 756
    .end local v0    # "containerId":I
    :pswitch_2
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@12e
    .line 757
    .local v1, "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@130
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@132
    .line 758
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@134
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@136
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@138
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    #@13b
    goto/16 :goto_1

    #@13d
    .line 762
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_3
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@13f
    .line 763
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@141
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@143
    .line 764
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@145
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@147
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@149
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V

    #@14c
    goto/16 :goto_1

    #@14e
    .line 768
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_4
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@150
    .line 769
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@152
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@154
    .line 770
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@156
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@158
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@15a
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V

    #@15d
    goto/16 :goto_1

    #@15f
    .line 774
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_5
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@161
    .line 775
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@163
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@165
    .line 776
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@167
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@169
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@16b
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;II)V

    #@16e
    goto/16 :goto_1

    #@170
    .line 780
    .end local v1    # "f":Landroid/app/Fragment;
    :pswitch_6
    iget-object v1, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@172
    .line 781
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@174
    iput v7, v1, Landroid/app/Fragment;->mNextAnim:I

    #@176
    .line 782
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@178
    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@17a
    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@17c
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;II)V

    #@17f
    goto/16 :goto_1

    #@181
    .line 793
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_9
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@183
    iget-object v8, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@185
    iget v8, v8, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@187
    iget v9, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@189
    .line 794
    iget v10, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@18b
    .line 793
    invoke-virtual {v7, v8, v9, v10, v12}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@18e
    .line 796
    iget-boolean v7, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@190
    if-eqz v7, :cond_a

    #@192
    .line 797
    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    #@194
    invoke-virtual {v7, p0}, Landroid/app/FragmentManagerImpl;->addBackStackState(Landroid/app/BackStackRecord;)V

    #@197
    .line 691
    :cond_a
    return-void

    #@198
    .line 711
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
    .line 620
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    .line 621
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@5
    .line 622
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 626
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@3
    .line 627
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@5
    .line 628
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    #@0
    .prologue
    .line 608
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    .line 609
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@5
    .line 610
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 614
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@3
    .line 615
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@5
    .line 616
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
    .line 546
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
    .line 551
    iput p1, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    #@2
    .line 552
    iput p2, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    #@4
    .line 553
    iput p3, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    #@6
    .line 554
    iput p4, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    #@8
    .line 555
    return-object p0
.end method

.method public setTransition(I)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    #@0
    .prologue
    .line 559
    iput p1, p0, Landroid/app/BackStackRecord;->mTransition:I

    #@2
    .line 560
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I

    #@0
    .prologue
    .line 580
    iput p1, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@2
    .line 581
    return-object p0
.end method

.method public show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
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
    const/4 v1, 0x5

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

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 253
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BackStackEntry{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 254
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
    .line 255
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@1a
    if-ltz v1, :cond_0

    #@1c
    .line 256
    const-string/jumbo v1, " #"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 257
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    .line 259
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 260
    const-string/jumbo v1, " "

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 261
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 263
    :cond_1
    const-string/jumbo v1, "}"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    return-object v1
.end method

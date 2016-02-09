.class Landroid/support/v4/app/FragmentTransitionCompat21;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;,
        Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0
    .param p0, "transitioningViews"    # Ljava/util/ArrayList;
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    #@3
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v6, p0

    #@1
    .line 416
    check-cast v6, Landroid/transition/Transition;

    #@3
    .line 417
    .local v6, "transition":Landroid/transition/Transition;
    instance-of v7, v6, Landroid/transition/TransitionSet;

    #@5
    if-eqz v7, :cond_0

    #@7
    move-object v4, v6

    #@8
    .line 418
    check-cast v4, Landroid/transition/TransitionSet;

    #@a
    .line 419
    .local v4, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@d
    move-result v2

    #@e
    .line 420
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@11
    .line 421
    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    #@14
    move-result-object v0

    #@15
    .line 422
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@18
    .line 420
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 424
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v4    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    #@1e
    move-result v7

    #@1f
    if-nez v7, :cond_1

    #@21
    .line 425
    invoke-virtual {v6}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    #@24
    move-result-object v5

    #@25
    .line 426
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_1

    #@2b
    .line 428
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v3

    #@2f
    .line 429
    .local v3, "numViews":I
    const/4 v1, 0x0

    #@30
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    #@32
    .line 430
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v7

    #@36
    check-cast v7, Landroid/view/View;

    #@38
    invoke-virtual {v6, v7}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@3b
    .line 429
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 415
    .end local v1    # "i":I
    .end local v3    # "numViews":I
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method public static addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "enterTransitionObject"    # Ljava/lang/Object;
    .param p1, "sharedElementTransitionObject"    # Ljava/lang/Object;
    .param p2, "container"    # Landroid/view/View;
    .param p3, "inFragment"    # Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .param p5, "epicenterView"    # Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
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
    .line 112
    .local p6, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p9, "renamedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p10, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_0

    #@2
    if-eqz p1, :cond_4

    #@4
    :cond_0
    move-object v4, p0

    #@5
    .line 113
    check-cast v4, Landroid/transition/Transition;

    #@7
    .line 114
    .local v4, "enterTransition":Landroid/transition/Transition;
    if-eqz v4, :cond_1

    #@9
    .line 115
    invoke-virtual {v4, p4}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@c
    .line 117
    :cond_1
    if-eqz p1, :cond_2

    #@e
    .line 118
    move-object/from16 v0, p8

    #@10
    move-object/from16 v1, p10

    #@12
    invoke-static {p1, p4, v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    #@15
    .line 122
    :cond_2
    if-eqz p3, :cond_3

    #@17
    .line 123
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@1a
    move-result-object v10

    #@1b
    .line 124
    new-instance v2, Landroid/support/v4/app/FragmentTransitionCompat21$2;

    #@1d
    move-object v3, p2

    #@1e
    move-object v5, p4

    #@1f
    move-object v6, p3

    #@20
    move-object/from16 v7, p6

    #@22
    move-object/from16 v8, p9

    #@24
    move-object/from16 v9, p7

    #@26
    invoke-direct/range {v2 .. v9}, Landroid/support/v4/app/FragmentTransitionCompat21$2;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    #@29
    .line 123
    invoke-virtual {v10, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@2c
    .line 155
    :cond_3
    move-object/from16 v0, p5

    #@2e
    invoke-static {v4, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V

    #@31
    .line 111
    .end local v4    # "enterTransition":Landroid/transition/Transition;
    :cond_4
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transitionObject"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 66
    check-cast v0, Landroid/transition/Transition;

    #@3
    .line 67
    .local v0, "transition":Landroid/transition/Transition;
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    #@6
    .line 65
    return-void
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
    .line 246
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v4

    #@4
    .line 247
    .local v4, "startIndex":I
    invoke-static {p0, p1, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    #@7
    move-result v7

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 248
    return-void

    #@b
    .line 250
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    .line 251
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
    .line 252
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Landroid/view/View;

    #@1b
    .line 253
    .local v5, "view":Landroid/view/View;
    instance-of v7, v5, Landroid/view/ViewGroup;

    #@1d
    if-eqz v7, :cond_2

    #@1f
    move-object v6, v5

    #@20
    .line 254
    check-cast v6, Landroid/view/ViewGroup;

    #@22
    .line 255
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    #@25
    move-result v1

    #@26
    .line 256
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@27
    .local v2, "childIndex":I
    :goto_1
    if-ge v2, v1, :cond_2

    #@29
    .line 257
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@2c
    move-result-object v0

    #@2d
    .line 258
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    #@30
    move-result v7

    #@31
    if-nez v7, :cond_1

    #@33
    .line 259
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    .line 256
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_1

    #@39
    .line 251
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childIndex":I
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 245
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public static captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "exitTransition"    # Ljava/lang/Object;
    .param p1, "root"    # Landroid/view/View;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    .local p2, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p0, :cond_1

    #@2
    .line 46
    invoke-static {p2, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    #@5
    .line 47
    if-eqz p3, :cond_0

    #@7
    .line 48
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@e
    .line 50
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 51
    const/4 p0, 0x0

    #@15
    .line 57
    .end local p0    # "exitTransition":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p0

    #@16
    .line 53
    .restart local p0    # "exitTransition":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    move-object v0, p0

    #@1a
    .line 54
    check-cast v0, Landroid/transition/Transition;

    #@1c
    invoke-static {v0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@1f
    goto :goto_0
.end method

.method private static captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 306
    .local p0, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 307
    instance-of v4, p1, Landroid/view/ViewGroup;

    #@8
    if-eqz v4, :cond_2

    #@a
    move-object v3, p1

    #@b
    .line 308
    check-cast v3, Landroid/view/ViewGroup;

    #@d
    .line 309
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 310
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 305
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    #@17
    .line 312
    .restart local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    #@1a
    move-result v1

    #@1b
    .line 313
    .local v1, "count":I
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    #@1e
    .line 314
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v0

    #@22
    .line 315
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    #@25
    .line 313
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_1

    #@28
    .line 319
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0
.end method

.method public static cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 13
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p2, "enterTransitionObject"    # Ljava/lang/Object;
    .param p4, "exitTransitionObject"    # Ljava/lang/Object;
    .param p6, "sharedElementTransitionObject"    # Ljava/lang/Object;
    .param p8, "overallTransitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p9, "hiddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p10, "renamedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    move-object v2, p2

    #@1
    .line 347
    check-cast v2, Landroid/transition/Transition;

    #@3
    .local v2, "enterTransition":Landroid/transition/Transition;
    move-object/from16 v4, p4

    #@5
    .line 348
    check-cast v4, Landroid/transition/Transition;

    #@7
    .local v4, "exitTransition":Landroid/transition/Transition;
    move-object/from16 v6, p6

    #@9
    .line 349
    check-cast v6, Landroid/transition/Transition;

    #@b
    .local v6, "sharedElementTransition":Landroid/transition/Transition;
    move-object/from16 v10, p8

    #@d
    .line 350
    check-cast v10, Landroid/transition/Transition;

    #@f
    .line 351
    .local v10, "overallTransition":Landroid/transition/Transition;
    if-eqz v10, :cond_0

    #@11
    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@14
    move-result-object v12

    #@15
    .line 353
    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$4;

    #@17
    move-object v1, p0

    #@18
    move-object/from16 v3, p3

    #@1a
    move-object/from16 v5, p5

    #@1c
    move-object/from16 v7, p7

    #@1e
    move-object/from16 v8, p10

    #@20
    move-object/from16 v9, p9

    #@22
    move-object v11, p1

    #@23
    invoke-direct/range {v0 .. v11}, Landroid/support/v4/app/FragmentTransitionCompat21$4;-><init>(Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V

    #@26
    .line 352
    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@29
    .line 346
    :cond_0
    return-void
.end method

.method public static cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "transition"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 37
    if-eqz p0, :cond_0

    #@2
    .line 38
    check-cast p0, Landroid/transition/Transition;

    #@4
    .end local p0    # "transition":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@7
    move-result-object p0

    #@8
    .line 40
    .restart local p0    # "transition":Ljava/lang/Object;
    :cond_0
    return-object p0
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
    .line 271
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@3
    .line 272
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-ne v1, p1, :cond_0

    #@9
    .line 273
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 276
    :cond_1
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public static excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 1
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    #@0
    .prologue
    move-object v0, p0

    #@1
    .line 61
    check-cast v0, Landroid/transition/Transition;

    #@3
    .line 62
    .local v0, "transition":Landroid/transition/Transition;
    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@6
    .line 60
    return-void
.end method

.method public static findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    .local p0, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_1

    #@6
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 327
    .local v3, "transitionName":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@c
    .line 328
    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 330
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    #@11
    if-eqz v5, :cond_1

    #@13
    move-object v4, p1

    #@14
    .line 331
    check-cast v4, Landroid/view/ViewGroup;

    #@16
    .line 332
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    #@19
    move-result v1

    #@1a
    .line 333
    .local v1, "count":I
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@1d
    .line 334
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v0

    #@21
    .line 335
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    #@24
    .line 333
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 324
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "transitionName":Ljava/lang/String;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private static getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 297
    new-instance v0, Landroid/graphics/Rect;

    #@4
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@7
    .line 298
    .local v0, "epicenter":Landroid/graphics/Rect;
    const/4 v2, 0x2

    #@8
    new-array v1, v2, [I

    #@a
    .line 299
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@d
    .line 301
    aget v2, v1, v4

    #@f
    aget v3, v1, v6

    #@11
    aget v4, v1, v4

    #@13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@16
    move-result v5

    #@17
    add-int/2addr v4, v5

    #@18
    aget v5, v1, v6

    #@1a
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@1d
    move-result v6

    #@1e
    add-int/2addr v5, v6

    #@1f
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@22
    .line 302
    return-object v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 437
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 438
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 439
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    const/4 v0, 0x0

    #@20
    .line 437
    :cond_0
    return v0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    #@0
    .prologue
    .line 443
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

.method public static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 10
    .param p0, "enterTransitionObject"    # Ljava/lang/Object;
    .param p1, "exitTransitionObject"    # Ljava/lang/Object;
    .param p2, "sharedElementTransitionObject"    # Ljava/lang/Object;
    .param p3, "allowOverlap"    # Z

    #@0
    .prologue
    .line 162
    const/4 v2, 0x1

    #@1
    .local v2, "overlap":Z
    move-object v0, p0

    #@2
    .line 163
    check-cast v0, Landroid/transition/Transition;

    #@4
    .local v0, "enterTransition":Landroid/transition/Transition;
    move-object v1, p1

    #@5
    .line 164
    check-cast v1, Landroid/transition/Transition;

    #@7
    .local v1, "exitTransition":Landroid/transition/Transition;
    move-object v3, p2

    #@8
    .line 165
    check-cast v3, Landroid/transition/Transition;

    #@a
    .line 167
    .local v3, "sharedElementTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_0

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 168
    move v2, p3

    #@f
    .line 176
    .end local v2    # "overlap":Z
    :cond_0
    if-eqz v2, :cond_4

    #@11
    .line 178
    new-instance v7, Landroid/transition/TransitionSet;

    #@13
    invoke-direct {v7}, Landroid/transition/TransitionSet;-><init>()V

    #@16
    .line 179
    .local v7, "transitionSet":Landroid/transition/TransitionSet;
    if-eqz v0, :cond_1

    #@18
    .line 180
    invoke-virtual {v7, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@1b
    .line 182
    :cond_1
    if-eqz v1, :cond_2

    #@1d
    .line 183
    invoke-virtual {v7, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@20
    .line 185
    :cond_2
    if-eqz v3, :cond_3

    #@22
    .line 186
    invoke-virtual {v7, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@25
    .line 188
    :cond_3
    move-object v6, v7

    #@26
    .line 214
    .end local v7    # "transitionSet":Landroid/transition/TransitionSet;
    .local v6, "transition":Landroid/transition/Transition;
    :goto_0
    return-object v6

    #@27
    .line 192
    .end local v6    # "transition":Landroid/transition/Transition;
    :cond_4
    const/4 v4, 0x0

    #@28
    .line 193
    .local v4, "staggered":Landroid/transition/Transition;
    if-eqz v1, :cond_7

    #@2a
    if-eqz v0, :cond_7

    #@2c
    .line 194
    new-instance v8, Landroid/transition/TransitionSet;

    #@2e
    invoke-direct {v8}, Landroid/transition/TransitionSet;-><init>()V

    #@31
    invoke-virtual {v8, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v8, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@38
    move-result-object v8

    #@39
    .line 197
    const/4 v9, 0x1

    #@3a
    .line 194
    invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    #@3d
    move-result-object v4

    #@3e
    .line 203
    .end local v4    # "staggered":Landroid/transition/Transition;
    :cond_5
    :goto_1
    if-eqz v3, :cond_9

    #@40
    .line 204
    new-instance v5, Landroid/transition/TransitionSet;

    #@42
    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    #@45
    .line 205
    .local v5, "together":Landroid/transition/TransitionSet;
    if-eqz v4, :cond_6

    #@47
    .line 206
    invoke-virtual {v5, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@4a
    .line 208
    :cond_6
    invoke-virtual {v5, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@4d
    .line 209
    move-object v6, v5

    #@4e
    .restart local v6    # "transition":Landroid/transition/Transition;
    goto :goto_0

    #@4f
    .line 198
    .end local v5    # "together":Landroid/transition/TransitionSet;
    .end local v6    # "transition":Landroid/transition/Transition;
    .restart local v4    # "staggered":Landroid/transition/Transition;
    :cond_7
    if-eqz v1, :cond_8

    #@51
    .line 199
    move-object v4, v1

    #@52
    .local v4, "staggered":Landroid/transition/Transition;
    goto :goto_1

    #@53
    .line 200
    .local v4, "staggered":Landroid/transition/Transition;
    :cond_8
    if-eqz v0, :cond_5

    #@55
    .line 201
    move-object v4, v0

    #@56
    .local v4, "staggered":Landroid/transition/Transition;
    goto :goto_1

    #@57
    .line 211
    .end local v4    # "staggered":Landroid/transition/Transition;
    :cond_9
    move-object v6, v4

    #@58
    .restart local v6    # "transition":Landroid/transition/Transition;
    goto :goto_0
.end method

.method public static removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, p0

    #@1
    .line 387
    check-cast v5, Landroid/transition/Transition;

    #@3
    .line 388
    .local v5, "transition":Landroid/transition/Transition;
    instance-of v6, v5, Landroid/transition/TransitionSet;

    #@5
    if-eqz v6, :cond_0

    #@7
    move-object v3, v5

    #@8
    .line 389
    check-cast v3, Landroid/transition/TransitionSet;

    #@a
    .line 390
    .local v3, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@d
    move-result v2

    #@e
    .line 391
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@11
    .line 392
    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    #@14
    move-result-object v0

    #@15
    .line 393
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@18
    .line 391
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 395
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v3    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_1

    #@21
    .line 396
    invoke-virtual {v5}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    #@24
    move-result-object v4

    #@25
    .line 397
    .local v4, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v4, :cond_1

    #@27
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@2a
    move-result v6

    #@2b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v7

    #@2f
    if-ne v6, v7, :cond_1

    #@31
    .line 398
    invoke-interface {v4, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    #@34
    move-result v6

    #@35
    .line 397
    if-eqz v6, :cond_1

    #@37
    .line 400
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v6

    #@3b
    add-int/lit8 v1, v6, -0x1

    #@3d
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    #@3f
    .line 401
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    check-cast v6, Landroid/view/View;

    #@45
    invoke-virtual {v5, v6}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@48
    .line 400
    add-int/lit8 v1, v1, -0x1

    #@4a
    goto :goto_1

    #@4b
    .line 386
    .end local v1    # "i":I
    .end local v4    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method public static setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    move-object v1, p0

    #@1
    .line 71
    check-cast v1, Landroid/transition/Transition;

    #@3
    .line 72
    .local v1, "transition":Landroid/transition/Transition;
    invoke-static {p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    #@6
    move-result-object v0

    #@7
    .line 74
    .local v0, "epicenter":Landroid/graphics/Rect;
    new-instance v2, Landroid/support/v4/app/FragmentTransitionCompat21$1;

    #@9
    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentTransitionCompat21$1;-><init>(Landroid/graphics/Rect;)V

    #@c
    invoke-virtual {v1, v2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@f
    .line 70
    return-void
.end method

.method private static setSharedElementEpicenter(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V
    .locals 1
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "epicenterView"    # Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    #@0
    .prologue
    .line 281
    if-eqz p0, :cond_0

    #@2
    .line 282
    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$3;

    #@4
    invoke-direct {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21$3;-><init>(Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V

    #@7
    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@a
    .line 280
    :cond_0
    return-void
.end method

.method public static setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "transitionObj"    # Ljava/lang/Object;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/Map",
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
    .local p2, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p3, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v2, p0

    #@1
    .line 226
    check-cast v2, Landroid/transition/TransitionSet;

    #@3
    .line 227
    .local v2, "transition":Landroid/transition/TransitionSet;
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    #@6
    .line 228
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@9
    move-result-object v5

    #@a
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@d
    .line 230
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    #@10
    move-result-object v4

    #@11
    .line 231
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@14
    .line 232
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v0

    #@18
    .line 233
    .local v0, "count":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@1b
    .line 234
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/view/View;

    #@21
    .line 235
    .local v3, "view":Landroid/view/View;
    invoke-static {v4, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    #@24
    .line 233
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 237
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 238
    invoke-static {v2, p3}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    #@2d
    .line 225
    return-void
.end method

.method public static wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "transitionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 83
    if-nez p0, :cond_0

    #@3
    .line 84
    return-object v2

    #@4
    :cond_0
    move-object v0, p0

    #@5
    .line 86
    check-cast v0, Landroid/transition/Transition;

    #@7
    .line 87
    .local v0, "transition":Landroid/transition/Transition;
    if-nez v0, :cond_1

    #@9
    .line 88
    return-object v2

    #@a
    .line 90
    :cond_1
    new-instance v1, Landroid/transition/TransitionSet;

    #@c
    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    #@f
    .line 91
    .local v1, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@12
    .line 92
    return-object v1
.end method

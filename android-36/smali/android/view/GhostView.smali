.class public Landroid/view/GhostView;
.super Landroid/view/View;
.source "GhostView.java"


# instance fields
.field private greylist-max-o mBeingMoved:Z

.field private greylist-max-o mReferences:I

.field private final greylist-max-o mView:Landroid/view/View;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    .line 44
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iput-object p0, v0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 45
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 46
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 47
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 48
    return-void
.end method

.method public static greylist-max-p addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 141
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    move-result-object v0

    return-object v0
.end method

.method public static greylist addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_72

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 104
    .local v0, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v1, v0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 105
    .local v1, "overlayViewGroup":Landroid/view/ViewOverlay$OverlayViewGroup;
    iget-object v2, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 106
    .local v2, "ghostView":Landroid/view/GhostView;
    const/4 v3, 0x0

    .line 107
    .local v3, "previousRefCount":I
    if-eqz v2, :cond_27

    .line 108
    invoke-virtual {v2}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 109
    .local v4, "oldParent":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 110
    .local v5, "oldGrandParent":Landroid/view/ViewGroup;
    if-eq v5, v1, :cond_27

    .line 111
    iget v3, v2, Landroid/view/GhostView;->mReferences:I

    .line 112
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    const/4 v2, 0x0

    .line 116
    .end local v4    # "oldParent":Landroid/view/View;
    .end local v5    # "oldGrandParent":Landroid/view/ViewGroup;
    :cond_27
    if-nez v2, :cond_66

    .line 117
    if-nez p2, :cond_34

    .line 118
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 119
    .end local p2    # "matrix":Landroid/graphics/Matrix;
    .local v4, "matrix":Landroid/graphics/Matrix;
    invoke-static {p0, p1, v4}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    move-object p2, v4

    .line 121
    .end local v4    # "matrix":Landroid/graphics/Matrix;
    .restart local p2    # "matrix":Landroid/graphics/Matrix;
    :cond_34
    new-instance v4, Landroid/view/GhostView;

    invoke-direct {v4, p0}, Landroid/view/GhostView;-><init>(Landroid/view/View;)V

    move-object v2, v4

    .line 122
    invoke-virtual {v2, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    .line 123
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 124
    .local v4, "parent":Landroid/widget/FrameLayout;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 125
    invoke-static {p1, v4}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 126
    invoke-static {p1, v2}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 127
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v5, "tempViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v6, v0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v6, v5}, Landroid/view/GhostView;->moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I

    move-result v6

    .line 130
    .local v6, "firstGhost":I
    iget-object v7, v0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v7, v4, v2, v5, v6}, Landroid/view/GhostView;->insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V

    .line 131
    iput v3, v2, Landroid/view/GhostView;->mReferences:I

    .line 132
    .end local v4    # "parent":Landroid/widget/FrameLayout;
    .end local v5    # "tempViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "firstGhost":I
    :cond_65
    goto :goto_6b

    :cond_66
    if-eqz p2, :cond_65

    .line 133
    invoke-virtual {v2, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    .line 135
    :goto_6b
    iget v4, v2, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/view/GhostView;->mReferences:I

    .line 136
    return-object v2

    .line 101
    .end local v0    # "overlay":Landroid/view/ViewGroupOverlay;
    .end local v1    # "overlayViewGroup":Landroid/view/ViewOverlay$OverlayViewGroup;
    .end local v2    # "ghostView":Landroid/view/GhostView;
    .end local v3    # "previousRefCount":I
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 92
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 93
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 96
    return-void
.end method

.method private static greylist-max-o copySize(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "from"    # Landroid/view/View;
    .param p1, "to"    # Landroid/view/View;

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->setTop(I)V

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBottom(I)V

    .line 166
    return-void
.end method

.method public static greylist-max-o getGhost(Landroid/view/View;)Landroid/view/GhostView;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 158
    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    return-object v0
.end method

.method private static greylist-max-o getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I
    .registers 10
    .param p0, "overlayViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "firstGhost"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    .line 244
    .local p1, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, "tempParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v0, p3

    .line 245
    .local v0, "low":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 247
    .local v1, "high":I
    :goto_7
    if-gt v0, v1, :cond_2e

    .line 248
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 249
    .local v2, "mid":I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 250
    .local v3, "wrapper":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/GhostView;

    .line 251
    .local v4, "midView":Landroid/view/GhostView;
    iget-object v5, v4, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v5, p2}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 252
    invoke-static {p1, p2}, Landroid/view/GhostView;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 253
    add-int/lit8 v0, v2, 0x1

    goto :goto_2a

    .line 255
    :cond_28
    add-int/lit8 v1, v2, -0x1

    .line 257
    :goto_2a
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 258
    .end local v2    # "mid":I
    .end local v3    # "wrapper":Landroid/view/ViewGroup;
    .end local v4    # "midView":Landroid/view/GhostView;
    goto :goto_7

    .line 260
    :cond_2e
    return v0
.end method

.method private static greylist-max-o getParents(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 310
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    .line 311
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p1}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 313
    :cond_10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method private static greylist-max-o insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V
    .registers 8
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "wrapper"    # Landroid/view/ViewGroup;
    .param p2, "ghostView"    # Landroid/view/GhostView;
    .param p4, "firstGhost"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/GhostView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 222
    .local p3, "tempParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, -0x1

    if-ne p4, v0, :cond_7

    .line 223
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_25

    .line 225
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p2, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 228
    invoke-static {p0, v0, p3, p4}, Landroid/view/GhostView;->getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I

    move-result v1

    .line 229
    .local v1, "index":I
    if-ltz v1, :cond_22

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1e

    goto :goto_22

    .line 232
    :cond_1e
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_25

    .line 230
    :cond_22
    :goto_22
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    .end local v0    # "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "index":I
    :goto_25
    return-void
.end method

.method private static greylist-max-o isGhostWrapper(Landroid/view/View;)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 267
    instance-of v0, p0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 268
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 269
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 271
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroid/view/GhostView;

    return v2

    .line 274
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "child":Landroid/view/View;
    :cond_16
    return v1
.end method

.method private static greylist-max-o isOnTop(Landroid/view/View;Landroid/view/View;)Z
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "comparedWith"    # Landroid/view/View;

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 324
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 325
    .local v1, "childrenCount":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v2

    .line 326
    .local v2, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v2, :cond_18

    .line 327
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 332
    .local v3, "customOrder":Z
    :goto_19
    const/4 v4, 0x1

    .line 333
    .local v4, "isOnTop":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    if-ge v5, v1, :cond_3d

    .line 334
    if-eqz v3, :cond_24

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v6

    goto :goto_25

    :cond_24
    move v6, v5

    .line 335
    .local v6, "childIndex":I
    :goto_25
    if-nez v2, :cond_2c

    .line 336
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_32

    :cond_2c
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 337
    .local v7, "child":Landroid/view/View;
    :goto_32
    if-ne v7, p0, :cond_36

    .line 338
    const/4 v4, 0x0

    .line 339
    goto :goto_3d

    .line 340
    :cond_36
    if-ne v7, p1, :cond_3a

    .line 341
    const/4 v4, 0x1

    .line 342
    goto :goto_3d

    .line 333
    .end local v6    # "childIndex":I
    .end local v7    # "child":Landroid/view/View;
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 346
    .end local v5    # "i":I
    :cond_3d
    :goto_3d
    if-eqz v2, :cond_42

    .line 347
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 349
    :cond_42
    return v4
.end method

.method private static greylist-max-o isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 284
    .local p0, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "comparedWith":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_47

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_19

    goto :goto_47

    .line 289
    :cond_19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 290
    .local v2, "depth":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_26
    if-ge v3, v2, :cond_3e

    .line 291
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 292
    .local v4, "viewParent":Landroid/view/View;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 294
    .local v5, "comparedWithParent":Landroid/view/View;
    if-eq v4, v5, :cond_3b

    .line 296
    invoke-static {v4, v5}, Landroid/view/GhostView;->isOnTop(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0

    .line 290
    .end local v4    # "viewParent":Landroid/view/View;
    .end local v5    # "comparedWithParent":Landroid/view/View;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 301
    .end local v3    # "i":I
    :cond_3e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_45

    goto :goto_46

    :cond_45
    move v1, v0

    .line 302
    .local v1, "isComparedWithTheParent":Z
    :goto_46
    return v1

    .line 287
    .end local v1    # "isComparedWithTheParent":Z
    .end local v2    # "depth":I
    :cond_47
    :goto_47
    return v1
.end method

.method private static greylist-max-o moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I
    .registers 8
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .line 175
    .local p1, "tempViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 176
    .local v0, "numChildren":I
    if-nez v0, :cond_8

    .line 177
    const/4 v1, -0x1

    return v1

    .line 178
    :cond_8
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 180
    add-int/lit8 v1, v0, -0x1

    .line 181
    .local v1, "firstGhost":I
    add-int/lit8 v2, v0, -0x2

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_29

    .line 182
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 183
    goto :goto_29

    .line 185
    :cond_25
    move v1, v2

    .line 181
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 187
    .end local v2    # "i":I
    :cond_29
    :goto_29
    return v1

    .line 191
    .end local v1    # "firstGhost":I
    :cond_2a
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_2c
    const/4 v2, 0x1

    if-ltz v1, :cond_50

    .line 192
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 193
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 194
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/GhostView;

    .line 196
    .local v4, "ghostView":Landroid/view/GhostView;
    iput-boolean v2, v4, Landroid/view/GhostView;->mBeingMoved:Z

    .line 197
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 198
    iput-boolean v5, v4, Landroid/view/GhostView;->mBeingMoved:Z

    .line 191
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ghostView":Landroid/view/GhostView;
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 203
    .end local v1    # "i":I
    :cond_50
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 204
    const/4 v1, -0x1

    .local v1, "firstGhost":I
    goto :goto_72

    .line 206
    .end local v1    # "firstGhost":I
    :cond_58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 208
    .restart local v1    # "firstGhost":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_61
    if-ltz v3, :cond_6f

    .line 209
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    add-int/lit8 v3, v3, -0x1

    goto :goto_61

    .line 211
    .end local v3    # "i":I
    :cond_6f
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 213
    :goto_72
    return v1
.end method

.method public static greylist-max-p removeGhost(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 146
    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 147
    .local v0, "ghostView":Landroid/view/GhostView;
    if-eqz v0, :cond_1d

    .line 148
    iget v1, v0, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/view/GhostView;->mReferences:I

    .line 149
    iget v1, v0, Landroid/view/GhostView;->mReferences:I

    if-nez v1, :cond_1d

    .line 150
    invoke-virtual {v0}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 151
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 152
    .local v2, "grandParent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "grandParent":Landroid/view/ViewGroup;
    :cond_1d
    return-void
.end method


# virtual methods
.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 79
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 80
    iget-boolean v0, p0, Landroid/view/GhostView;->mBeingMoved:Z

    if-nez v0, :cond_1f

    .line 81
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 82
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 83
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1f

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 88
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1f
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 52
    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    if-eqz v0, :cond_21

    .line 53
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 54
    .local v0, "dlCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 55
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v1

    .line 56
    .local v1, "renderNode":Landroid/graphics/RenderNode;
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 57
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 59
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->disableZ()V

    .line 62
    .end local v0    # "dlCanvas":Landroid/graphics/RecordingCanvas;
    .end local v1    # "renderNode":Landroid/graphics/RenderNode;
    :cond_21
    return-void
.end method

.method public greylist-max-o setMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 65
    iget-object v0, p0, Landroid/view/GhostView;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    .line 66
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-ne v0, p0, :cond_13

    .line 72
    if-nez p1, :cond_d

    const/4 v0, 0x4

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 73
    .local v0, "inverseVisibility":I
    :goto_e
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 75
    .end local v0    # "inverseVisibility":I
    :cond_13
    return-void
.end method

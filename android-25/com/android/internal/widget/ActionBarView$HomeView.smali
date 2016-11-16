.class Lcom/android/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# static fields
.field private static final DEFAULT_TRANSITION_DURATION:J = 0x96L


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mStartOffset:I

.field private mUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1398
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 1397
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1402
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 1403
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    #@6
    move-result-object v0

    #@7
    .line 1404
    .local v0, "t":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    #@9
    .line 1406
    const-wide/16 v2, 0x96

    #@b
    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    #@e
    .line 1401
    :cond_0
    return-void
.end method

.method private updateUpIndicator()V
    .locals 3

    #@0
    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1441
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 1439
    :goto_0
    return-void

    #@c
    .line 1442
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1443
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@15
    move-result-object v1

    #@16
    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    #@18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1f
    goto :goto_0

    #@20
    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@22
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    #@24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@27
    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1476
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1460
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 1461
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public getStartOffset()I
    .locals 2

    #@0
    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x8

    #@8
    if-ne v0, v1, :cond_0

    #@a
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getUpWidth()I
    .locals 1

    #@0
    .prologue
    .line 1491
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    #@2
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1451
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 1452
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1454
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    #@a
    .line 1450
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    #@0
    .prologue
    .line 1481
    const v0, 0x102004b

    #@3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/widget/ImageView;

    #@9
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@b
    .line 1482
    const v0, 0x102002c

    #@e
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/widget/ImageView;

    #@14
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@16
    .line 1483
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@18
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    #@1e
    .line 1480
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1547
    sub-int v25, p5, p3

    #@2
    div-int/lit8 v23, v25, 0x2

    #@4
    .line 1548
    .local v23, "vCenter":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    #@7
    move-result v13

    #@8
    .line 1549
    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    #@b
    move-result v24

    #@c
    .line 1550
    .local v24, "width":I
    const/16 v19, 0x0

    #@e
    .line 1551
    .local v19, "upOffset":I
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@12
    move-object/from16 v25, v0

    #@14
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    #@17
    move-result v25

    #@18
    const/16 v26, 0x8

    #@1a
    move/from16 v0, v25

    #@1c
    move/from16 v1, v26

    #@1e
    if-eq v0, v1, :cond_0

    #@20
    .line 1552
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@24
    move-object/from16 v25, v0

    #@26
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@29
    move-result-object v18

    #@2a
    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    #@2c
    .line 1553
    .local v18, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@30
    move-object/from16 v25, v0

    #@32
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    #@35
    move-result v16

    #@36
    .line 1554
    .local v16, "upHeight":I
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@3a
    move-object/from16 v25, v0

    #@3c
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    #@3f
    move-result v22

    #@40
    .line 1555
    .local v22, "upWidth":I
    move-object/from16 v0, v18

    #@42
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@44
    move/from16 v25, v0

    #@46
    add-int v25, v25, v22

    #@48
    move-object/from16 v0, v18

    #@4a
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@4c
    move/from16 v26, v0

    #@4e
    add-int v19, v25, v26

    #@50
    .line 1556
    div-int/lit8 v25, v16, 0x2

    #@52
    sub-int v21, v23, v25

    #@54
    .line 1557
    .local v21, "upTop":I
    add-int v15, v21, v16

    #@56
    .line 1560
    .local v15, "upBottom":I
    if-eqz v13, :cond_1

    #@58
    .line 1561
    move/from16 v20, v24

    #@5a
    .line 1562
    .local v20, "upRight":I
    sub-int v17, v24, v22

    #@5c
    .line 1563
    .local v17, "upLeft":I
    sub-int p4, p4, v19

    #@5e
    .line 1569
    :goto_0
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@62
    move-object/from16 v25, v0

    #@64
    move-object/from16 v0, v25

    #@66
    move/from16 v1, v17

    #@68
    move/from16 v2, v21

    #@6a
    move/from16 v3, v20

    #@6c
    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/view/View;->layout(IIII)V

    #@6f
    .line 1572
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    :cond_0
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@73
    move-object/from16 v25, v0

    #@75
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@78
    move-result-object v9

    #@79
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    #@7b
    .line 1573
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@7f
    move-object/from16 v25, v0

    #@81
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    #@84
    move-result v7

    #@85
    .line 1574
    .local v7, "iconHeight":I
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@89
    move-object/from16 v25, v0

    #@8b
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    #@8e
    move-result v12

    #@8f
    .line 1575
    .local v12, "iconWidth":I
    sub-int v25, p4, p2

    #@91
    div-int/lit8 v5, v25, 0x2

    #@93
    .line 1576
    .local v5, "hCenter":I
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@95
    move/from16 v25, v0

    #@97
    div-int/lit8 v26, v7, 0x2

    #@99
    sub-int v26, v23, v26

    #@9b
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    #@9e
    move-result v11

    #@9f
    .line 1577
    .local v11, "iconTop":I
    add-int v6, v11, v7

    #@a1
    .line 1580
    .local v6, "iconBottom":I
    invoke-virtual {v9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    #@a4
    move-result v14

    #@a5
    .line 1581
    .local v14, "marginStart":I
    div-int/lit8 v25, v12, 0x2

    #@a7
    sub-int v25, v5, v25

    #@a9
    move/from16 v0, v25

    #@ab
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    #@ae
    move-result v4

    #@af
    .line 1582
    .local v4, "delta":I
    if-eqz v13, :cond_2

    #@b1
    .line 1583
    sub-int v25, v24, v19

    #@b3
    sub-int v10, v25, v4

    #@b5
    .line 1584
    .local v10, "iconRight":I
    sub-int v8, v10, v12

    #@b7
    .line 1589
    .local v8, "iconLeft":I
    :goto_1
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@bb
    move-object/from16 v25, v0

    #@bd
    move-object/from16 v0, v25

    #@bf
    invoke-virtual {v0, v8, v11, v10, v6}, Landroid/view/View;->layout(IIII)V

    #@c2
    .line 1546
    return-void

    #@c3
    .line 1565
    .end local v4    # "delta":I
    .end local v5    # "hCenter":I
    .end local v6    # "iconBottom":I
    .end local v7    # "iconHeight":I
    .end local v8    # "iconLeft":I
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "iconRight":I
    .end local v11    # "iconTop":I
    .end local v12    # "iconWidth":I
    .end local v14    # "marginStart":I
    .restart local v15    # "upBottom":I
    .restart local v16    # "upHeight":I
    .restart local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v21    # "upTop":I
    .restart local v22    # "upWidth":I
    :cond_1
    move/from16 v20, v22

    #@c5
    .line 1566
    .restart local v20    # "upRight":I
    const/16 v17, 0x0

    #@c7
    .line 1567
    .restart local v17    # "upLeft":I
    add-int p2, p2, v19

    #@c9
    goto :goto_0

    #@ca
    .line 1586
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    .restart local v4    # "delta":I
    .restart local v5    # "hCenter":I
    .restart local v6    # "iconBottom":I
    .restart local v7    # "iconHeight":I
    .restart local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "iconTop":I
    .restart local v12    # "iconWidth":I
    .restart local v14    # "marginStart":I
    :cond_2
    add-int v8, v19, v4

    #@cc
    .line 1587
    .restart local v8    # "iconLeft":I
    add-int v10, v8, v12

    #@ce
    .restart local v10    # "iconRight":I
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1496
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move v2, p1

    #@6
    move/from16 v4, p2

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@b
    .line 1497
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v10

    #@11
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    #@13
    .line 1498
    .local v10, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@15
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@17
    add-int v11, v0, v1

    #@19
    .line 1499
    .local v11, "upMargins":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@1b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    #@21
    .line 1500
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    #@23
    add-int/2addr v0, v11

    #@24
    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    #@26
    .line 1501
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@28
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@2b
    move-result v0

    #@2c
    const/16 v1, 0x8

    #@2e
    if-ne v0, v1, :cond_1

    #@30
    const/4 v3, 0x0

    #@31
    .line 1502
    .local v3, "width":I
    :goto_0
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@33
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@35
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@38
    move-result v1

    #@39
    add-int/2addr v0, v1

    #@3a
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@3c
    add-int v6, v0, v1

    #@3e
    .line 1504
    .local v6, "height":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@40
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@43
    move-result v0

    #@44
    const/16 v1, 0x8

    #@46
    if-eq v0, v1, :cond_2

    #@48
    .line 1505
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@4a
    const/4 v5, 0x0

    #@4b
    move-object v0, p0

    #@4c
    move v2, p1

    #@4d
    move/from16 v4, p2

    #@4f
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@52
    .line 1506
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@54
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@57
    move-result-object v9

    #@58
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    #@5a
    .line 1507
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@5c
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@5e
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@61
    move-result v1

    #@62
    add-int/2addr v0, v1

    #@63
    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@65
    add-int/2addr v0, v1

    #@66
    add-int/2addr v3, v0

    #@67
    .line 1509
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@69
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@6b
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@6e
    move-result v1

    #@6f
    add-int/2addr v0, v1

    #@70
    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@72
    add-int/2addr v0, v1

    #@73
    .line 1508
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    #@76
    move-result v6

    #@77
    .line 1515
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7a
    move-result v12

    #@7b
    .line 1516
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7e
    move-result v7

    #@7f
    .line 1517
    .local v7, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@82
    move-result v13

    #@83
    .line 1518
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@86
    move-result v8

    #@87
    .line 1520
    .local v8, "heightSize":I
    sparse-switch v12, :sswitch_data_0

    #@8a
    .line 1531
    :goto_2
    sparse-switch v7, :sswitch_data_1

    #@8d
    .line 1542
    :goto_3
    invoke-virtual {p0, v3, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    #@90
    .line 1495
    return-void

    #@91
    .line 1501
    .end local v3    # "width":I
    .end local v6    # "height":I
    .end local v7    # "heightMode":I
    .end local v8    # "heightSize":I
    .end local v12    # "widthMode":I
    .end local v13    # "widthSize":I
    :cond_1
    iget v3, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    #@93
    .restart local v3    # "width":I
    goto :goto_0

    #@94
    .line 1510
    .restart local v6    # "height":I
    :cond_2
    if-gez v11, :cond_0

    #@96
    .line 1512
    sub-int/2addr v3, v11

    #@97
    goto :goto_1

    #@98
    .line 1522
    .restart local v7    # "heightMode":I
    .restart local v8    # "heightSize":I
    .restart local v12    # "widthMode":I
    .restart local v13    # "widthSize":I
    :sswitch_0
    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    #@9b
    move-result v3

    #@9c
    goto :goto_2

    #@9d
    .line 1525
    :sswitch_1
    move v3, v13

    #@9e
    .line 1526
    goto :goto_2

    #@9f
    .line 1533
    :sswitch_2
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    #@a2
    move-result v6

    #@a3
    goto :goto_3

    #@a4
    .line 1536
    :sswitch_3
    move v6, v8

    #@a5
    .line 1537
    goto :goto_3

    #@a6
    .line 1520
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    #@b0
    .line 1531
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1466
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 1467
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    .line 1468
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1469
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 1465
    :cond_0
    return-void
.end method

.method public setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1429
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1430
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    #@5
    .line 1428
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 1418
    return-void
.end method

.method public setShowIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    #@0
    .prologue
    .line 1415
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    #@8
    .line 1414
    return-void

    #@9
    .line 1415
    :cond_0
    const/16 v0, 0x8

    #@b
    goto :goto_0
.end method

.method public setShowUp(Z)V
    .locals 2
    .param p1, "isUp"    # Z

    #@0
    .prologue
    .line 1411
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    #@8
    .line 1410
    return-void

    #@9
    .line 1411
    :cond_0
    const/16 v0, 0x8

    #@b
    goto :goto_0
.end method

.method public setUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1434
    iput p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    #@2
    .line 1435
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    #@5
    .line 1436
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    #@8
    .line 1433
    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1423
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1424
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    #@5
    .line 1425
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    #@8
    .line 1422
    return-void
.end method

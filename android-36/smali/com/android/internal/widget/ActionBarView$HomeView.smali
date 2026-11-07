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
.field private static final blacklist DEFAULT_TRANSITION_DURATION:J = 0x96L


# instance fields
.field private blacklist mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private blacklist mIconView:Landroid/widget/ImageView;

.field private blacklist mStartOffset:I

.field private blacklist mUpIndicator:Landroid/graphics/drawable/Drawable;

.field private blacklist mUpIndicatorRes:I

.field private blacklist mUpView:Landroid/widget/ImageView;

.field private blacklist mUpWidth:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1398
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1399
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1402
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1403
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1404
    .local v0, "t":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_e

    .line 1406
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1408
    :cond_e
    return-void
.end method

.method private blacklist updateUpIndicator()V
    .registers 4

    .line 1440
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1441
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    .line 1442
    :cond_c
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_20

    .line 1443
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    .line 1445
    :cond_20
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1447
    :goto_27
    return-void
.end method


# virtual methods
.method public whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1476
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1460
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1461
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStartOffset()I
    .registers 3

    .line 1487
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist getUpWidth()I
    .registers 2

    .line 1491
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    return v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1451
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1452
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_a

    .line 1454
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1456
    :cond_a
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 1481
    const v0, 0x10205dc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 1482
    const v0, 0x102002c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1483
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1484
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 25
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1547
    move-object/from16 v0, p0

    sub-int v1, p5, p3

    div-int/lit8 v1, v1, 0x2

    .line 1548
    .local v1, "vCenter":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->isLayoutRtl()Z

    move-result v2

    .line 1549
    .local v2, "isLayoutRtl":Z
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getWidth()I

    move-result v3

    .line 1550
    .local v3, "width":I
    const/4 v4, 0x0

    .line 1551
    .local v4, "upOffset":I
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_55

    .line 1552
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1553
    .local v5, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    .line 1554
    .local v6, "upHeight":I
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 1555
    .local v7, "upWidth":I
    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v7

    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v4, v8, v9

    .line 1556
    div-int/lit8 v8, v6, 0x2

    sub-int v8, v1, v8

    .line 1557
    .local v8, "upTop":I
    add-int v9, v8, v6

    .line 1560
    .local v9, "upBottom":I
    if-eqz v2, :cond_47

    .line 1561
    move v10, v3

    .line 1562
    .local v10, "upRight":I
    sub-int v11, v10, v7

    .line 1563
    .local v11, "upLeft":I
    sub-int v12, p4, v4

    move v13, v11

    move v11, v10

    move v10, v12

    move/from16 v12, p2

    .end local p4    # "r":I
    .local v12, "r":I
    goto :goto_4f

    .line 1565
    .end local v10    # "upRight":I
    .end local v11    # "upLeft":I
    .end local v12    # "r":I
    .restart local p4    # "r":I
    :cond_47
    move v10, v7

    .line 1566
    .restart local v10    # "upRight":I
    const/4 v11, 0x0

    .line 1567
    .restart local v11    # "upLeft":I
    add-int v12, p2, v4

    move v13, v11

    move v11, v10

    move/from16 v10, p4

    .line 1569
    .end local p2    # "l":I
    .end local p4    # "r":I
    .local v10, "r":I
    .local v11, "upRight":I
    .local v12, "l":I
    .local v13, "upLeft":I
    :goto_4f
    iget-object v14, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v14, v13, v8, v11, v9}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_59

    .line 1551
    .end local v5    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "upHeight":I
    .end local v7    # "upWidth":I
    .end local v8    # "upTop":I
    .end local v9    # "upBottom":I
    .end local v10    # "r":I
    .end local v11    # "upRight":I
    .end local v12    # "l":I
    .end local v13    # "upLeft":I
    .restart local p2    # "l":I
    .restart local p4    # "r":I
    :cond_55
    move/from16 v12, p2

    move/from16 v10, p4

    .line 1572
    .end local p2    # "l":I
    .end local p4    # "r":I
    .restart local v10    # "r":I
    .restart local v12    # "l":I
    :goto_59
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1573
    .local v5, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    .line 1574
    .local v6, "iconHeight":I
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 1575
    .local v7, "iconWidth":I
    sub-int v8, v10, v12

    div-int/lit8 v8, v8, 0x2

    .line 1576
    .local v8, "hCenter":I
    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v11, v6, 0x2

    sub-int v11, v1, v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1577
    .local v9, "iconTop":I
    add-int v11, v9, v6

    .line 1580
    .local v11, "iconBottom":I
    invoke-virtual {v5}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v13

    .line 1581
    .local v13, "marginStart":I
    div-int/lit8 v14, v7, 0x2

    sub-int v14, v8, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1582
    .local v14, "delta":I
    if-eqz v2, :cond_97

    .line 1583
    sub-int v15, v3, v4

    sub-int/2addr v15, v14

    .line 1584
    .local v15, "iconRight":I
    sub-int v16, v15, v7

    move/from16 v18, v16

    move/from16 v16, v1

    move/from16 v1, v18

    .local v16, "iconLeft":I
    goto :goto_a1

    .line 1586
    .end local v15    # "iconRight":I
    .end local v16    # "iconLeft":I
    :cond_97
    add-int v16, v4, v14

    .line 1587
    .restart local v16    # "iconLeft":I
    add-int v15, v16, v7

    move/from16 v18, v16

    move/from16 v16, v1

    move/from16 v1, v18

    .line 1589
    .local v1, "iconLeft":I
    .restart local v15    # "iconRight":I
    .local v16, "vCenter":I
    :goto_a1
    move/from16 v17, v2

    .end local v2    # "isLayoutRtl":Z
    .local v17, "isLayoutRtl":Z
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v9, v15, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1590
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1496
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    .local v2, "widthMeasureSpec":I
    .local v4, "heightMeasureSpec":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1497
    iget-object p1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1498
    .local p1, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr p2, v1

    .line 1499
    .local p2, "upMargins":I
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 1500
    iget v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    .line 1501
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_30

    const/4 v1, 0x0

    goto :goto_32

    :cond_30
    iget v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    :goto_32
    move v9, v1

    .line 1502
    .local v9, "width":I
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    iget v5, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    .line 1504
    .local v1, "height":I
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_76

    .line 1505
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    move-object v6, v0

    move v8, v2

    move v10, v4

    .end local v2    # "widthMeasureSpec":I
    .end local v4    # "heightMeasureSpec":I
    .local v8, "widthMeasureSpec":I
    .local v10, "heightMeasureSpec":I
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1506
    .end local v8    # "widthMeasureSpec":I
    .end local v10    # "heightMeasureSpec":I
    .restart local v2    # "widthMeasureSpec":I
    .restart local v4    # "heightMeasureSpec":I
    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1507
    .local v3, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    .line 1508
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1509
    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1508
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v3    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_7a

    .line 1510
    :cond_76
    if-gez p2, :cond_7a

    .line 1512
    sub-int/2addr v9, p2

    goto :goto_7b

    .line 1510
    :cond_7a
    :goto_7a
    nop

    .line 1515
    :goto_7b
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1516
    .local v3, "widthMode":I
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1517
    .local v5, "heightMode":I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1518
    .local v6, "widthSize":I
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 1520
    .local v7, "heightSize":I
    sparse-switch v3, :sswitch_data_a6

    goto :goto_96

    .line 1525
    :sswitch_8f
    move v9, v6

    .line 1526
    goto :goto_96

    .line 1522
    :sswitch_91
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1523
    nop

    .line 1531
    :goto_96
    sparse-switch v5, :sswitch_data_b0

    goto :goto_a1

    .line 1536
    :sswitch_9a
    move v1, v7

    .line 1537
    goto :goto_a1

    .line 1533
    :sswitch_9c
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1534
    nop

    .line 1542
    :goto_a1
    invoke-virtual {p0, v9, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1543
    return-void

    nop

    :sswitch_data_a6
    .sparse-switch
        -0x80000000 -> :sswitch_91
        0x40000000 -> :sswitch_8f
    .end sparse-switch

    :sswitch_data_b0
    .sparse-switch
        -0x80000000 -> :sswitch_9c
        0x40000000 -> :sswitch_9a
    .end sparse-switch
.end method

.method public blacklist onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1466
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1467
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1468
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1469
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    :cond_14
    return-void
.end method

.method public blacklist setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1429
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1430
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1431
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1419
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1420
    return-void
.end method

.method public blacklist setShowIcon(Z)V
    .registers 4
    .param p1, "showIcon"    # Z

    .line 1415
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1416
    return-void
.end method

.method public blacklist setShowUp(Z)V
    .registers 4
    .param p1, "isUp"    # Z

    .line 1411
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1412
    return-void
.end method

.method public blacklist setUpIndicator(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1434
    iput p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1436
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1437
    return-void
.end method

.method public blacklist setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1423
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1424
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1425
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1426
    return-void
.end method

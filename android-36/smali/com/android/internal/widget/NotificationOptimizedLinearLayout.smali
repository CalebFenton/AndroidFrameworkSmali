.class public Lcom/android/internal/widget/NotificationOptimizedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationOptimizedLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist DEBUG_LAYOUT:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "NotifOptimizedLinearLayout"

.field private static final blacklist TRACE_ONMEASURE:Z


# instance fields
.field private blacklist mShouldUseOptimizedLayout:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    .line 80
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    .line 85
    return-void
.end method

.method private blacklist getActiveChildren()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v0

    .line 447
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v1, "activeChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_21

    .line 449
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 450
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1b

    .line 451
    goto :goto_1e

    .line 453
    :cond_1b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    .end local v3    # "child":Landroid/view/View;
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 455
    .end local v2    # "i":I
    :cond_21
    return-object v1
.end method

.method private blacklist getDividerHeight()I
    .registers 3

    .line 556
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 557
    .local v0, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_8

    .line 558
    const/4 v1, 0x0

    return v1

    .line 560
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    return v1
.end method

.method private blacklist getSingleWeightedChild()Landroid/view/View;
    .registers 12

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 253
    .local v0, "isVertical":Z
    :goto_b
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v3

    .line 254
    .local v3, "activeChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 255
    .local v4, "singleWeightedChild":Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_53

    .line 256
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 257
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_50

    .line 258
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 259
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    const/4 v9, -0x1

    if-nez v0, :cond_33

    iget v10, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v10, v9, :cond_39

    :cond_33
    if-eqz v0, :cond_3f

    iget v10, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v10, v9, :cond_3f

    .line 261
    :cond_39
    const-string v1, "There is a match parent child in the related orientation."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 263
    return-object v8

    .line 265
    :cond_3f
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_50

    .line 266
    if-nez v4, :cond_4a

    .line 267
    move-object v4, v6

    goto :goto_50

    .line 269
    :cond_4a
    const-string v1, "There is more than one weighted child."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 270
    return-object v8

    .line 255
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_50
    :goto_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 275
    .end local v5    # "i":I
    :cond_53
    if-nez v4, :cond_5b

    .line 276
    const-string v1, "There is no weighted child in this layout."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    goto :goto_85

    .line 278
    :cond_5b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 279
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x2

    if-eq v6, v7, :cond_6d

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v6, :cond_6b

    goto :goto_6d

    :cond_6b
    move v6, v1

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v6, v2

    .line 281
    .local v6, "isHeightWrapContentOrZero":Z
    :goto_6e
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v8, v7, :cond_76

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v7, :cond_77

    :cond_76
    move v1, v2

    .line 283
    .local v1, "isWidthWrapContentOrZero":Z
    :cond_77
    if-eqz v0, :cond_7b

    if-eqz v6, :cond_7f

    :cond_7b
    if-nez v0, :cond_85

    if-nez v1, :cond_85

    .line 285
    :cond_7f
    const-string v2, "Single weighted child should be either WRAP_CONTENT or 0 in the related orientation"

    invoke-direct {p0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 288
    const/4 v4, 0x0

    .line 292
    .end local v1    # "isWidthWrapContentOrZero":Z
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "isHeightWrapContentOrZero":Z
    :cond_85
    :goto_85
    return-object v4
.end method

.method private blacklist isOptimizationPossible(II)Z
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getWeightSum()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 124
    .local v0, "hasWeightSum":Z
    :goto_e
    if-eqz v0, :cond_16

    .line 125
    const-string v1, "Has weightSum."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 126
    return v2

    .line 129
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresMatchParentRemeasureForVerticalLinearLayout(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 130
    const-string v1, "Vertical LinearLayout requires children width MATCH_PARENT remeasure "

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 132
    return v2

    .line 135
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v3

    if-nez v3, :cond_2a

    move v3, v1

    goto :goto_2b

    :cond_2a
    move v3, v2

    .line 136
    .local v3, "isHorizontal":Z
    :goto_2b
    if-eqz v3, :cond_3b

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v4, v5, :cond_3b

    .line 137
    const-string v1, "Horizontal LinearLayout\'s width should be measured EXACTLY"

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 139
    return v2

    .line 142
    :cond_3b
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresBaselineAlignmentForHorizontalLinearLayout()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 143
    const-string v1, "Need to apply baseline."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 144
    return v2

    .line 147
    :cond_47
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresNegativeMarginHandlingForHorizontalLinearLayout()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 148
    const-string v1, "Need to handle negative margins."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 149
    return v2

    .line 151
    :cond_53
    return v1
.end method

.method private blacklist isUseOptimizedLinearLayoutFlagEnabled()Z
    .registers 3

    .line 102
    invoke-static {}, Landroid/widget/flags/Flags;->notifLinearlayoutOptimized()Z

    move-result v0

    .line 103
    .local v0, "enabled":Z
    if-nez v0, :cond_b

    .line 104
    const-string v1, "enableNotifLinearlayoutOptimized flag is off."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 106
    :cond_b
    return v0
.end method

.method private blacklist layoutVerticalOptimized(IIII)V
    .registers 26
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 469
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingLeft:I

    .line 470
    .local v1, "paddingLeft":I
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 475
    .local v2, "mTotalLength":I
    sub-int v3, p3, p1

    .line 476
    .local v3, "width":I
    iget v4, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    sub-int v4, v3, v4

    .line 479
    .local v4, "childRight":I
    sub-int v5, v3, v1

    iget v6, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    .line 481
    .local v5, "childSpace":I
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v6

    .line 483
    .local v6, "count":I
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v7

    and-int/lit8 v7, v7, 0x70

    .line 484
    .local v7, "majorGravity":I
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v8

    const v9, 0x800007

    and-int/2addr v8, v9

    .line 486
    .local v8, "minorGravity":I
    sparse-switch v7, :sswitch_data_c8

    .line 499
    iget v9, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    .local v9, "childTop":I
    goto :goto_3c

    .line 489
    .end local v9    # "childTop":I
    :sswitch_2b
    iget v9, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    add-int v9, v9, p4

    sub-int v9, v9, p2

    sub-int/2addr v9, v2

    .line 490
    .restart local v9    # "childTop":I
    goto :goto_3c

    .line 494
    .end local v9    # "childTop":I
    :sswitch_33
    iget v9, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    sub-int v10, p4, p2

    sub-int/2addr v10, v2

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 495
    .restart local v9    # "childTop":I
    nop

    .line 502
    :goto_3c
    invoke-direct {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getDividerHeight()I

    move-result v10

    .line 503
    .local v10, "dividerHeight":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_41
    if-ge v11, v6, :cond_c6

    .line 504
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 505
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_b8

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_b8

    .line 506
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 507
    .local v13, "childWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 509
    .local v14, "childHeight":I
    nop

    .line 510
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 512
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v16, v1

    .end local v1    # "paddingLeft":I
    .local v16, "paddingLeft":I
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 513
    .local v1, "gravity":I
    if-gez v1, :cond_67

    .line 514
    move v1, v8

    .line 516
    :cond_67
    move/from16 v17, v2

    .end local v2    # "mTotalLength":I
    .local v17, "mTotalLength":I
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getLayoutDirection()I

    move-result v2

    .line 517
    .local v2, "layoutDirection":I
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v18

    .line 519
    .local v18, "absoluteGravity":I
    and-int/lit8 v19, v18, 0x7

    sparse-switch v19, :sswitch_data_d2

    .line 532
    move/from16 v20, v1

    .end local v1    # "gravity":I
    .local v20, "gravity":I
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v19, v16, v1

    move/from16 v1, v19

    .local v19, "childLeft":I
    goto :goto_a0

    .line 527
    .end local v19    # "childLeft":I
    .end local v20    # "gravity":I
    .restart local v1    # "gravity":I
    :sswitch_7f
    sub-int v19, v4, v13

    move/from16 v20, v1

    .end local v1    # "gravity":I
    .restart local v20    # "gravity":I
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v19, v19, v1

    .line 528
    .restart local v19    # "childLeft":I
    move/from16 v1, v19

    goto :goto_a0

    .line 521
    .end local v19    # "childLeft":I
    .end local v20    # "gravity":I
    .restart local v1    # "gravity":I
    :sswitch_8a
    move/from16 v20, v1

    .end local v1    # "gravity":I
    .restart local v20    # "gravity":I
    sub-int v1, v5, v13

    div-int/lit8 v1, v1, 0x2

    add-int v1, v16, v1

    move/from16 v19, v1

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v1, v19, v1

    move/from16 v19, v1

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v19, v19, v1

    .line 524
    .restart local v19    # "childLeft":I
    move/from16 v1, v19

    .line 536
    .end local v19    # "childLeft":I
    .local v1, "childLeft":I
    :goto_a0
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v19

    if-eqz v19, :cond_a7

    .line 537
    add-int/2addr v9, v10

    .line 540
    :cond_a7
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v0

    .line 541
    add-int v0, v1, v13

    move/from16 v19, v2

    .end local v2    # "layoutDirection":I
    .local v19, "layoutDirection":I
    add-int v2, v9, v14

    invoke-virtual {v12, v1, v9, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 543
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v14

    add-int/2addr v9, v0

    goto :goto_bc

    .line 505
    .end local v13    # "childWidth":I
    .end local v14    # "childHeight":I
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "paddingLeft":I
    .end local v17    # "mTotalLength":I
    .end local v18    # "absoluteGravity":I
    .end local v19    # "layoutDirection":I
    .end local v20    # "gravity":I
    .local v1, "paddingLeft":I
    .local v2, "mTotalLength":I
    :cond_b8
    move/from16 v16, v1

    move/from16 v17, v2

    .line 503
    .end local v1    # "paddingLeft":I
    .end local v2    # "mTotalLength":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v16    # "paddingLeft":I
    .restart local v17    # "mTotalLength":I
    :goto_bc
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_41

    .line 547
    .end local v11    # "i":I
    .end local v16    # "paddingLeft":I
    .end local v17    # "mTotalLength":I
    .restart local v1    # "paddingLeft":I
    .restart local v2    # "mTotalLength":I
    :cond_c6
    return-void

    nop

    :sswitch_data_c8
    .sparse-switch
        0x10 -> :sswitch_33
        0x50 -> :sswitch_2b
    .end sparse-switch

    :sswitch_data_d2
    .sparse-switch
        0x1 -> :sswitch_8a
        0x5 -> :sswitch_7f
    .end sparse-switch
.end method

.method private blacklist logSkipOptimizedOnMeasure(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 590
    return-void
.end method

.method private blacklist measureVerticalOptimized(Landroid/view/View;II)V
    .registers 20
    .param p1, "weightedChildView"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 367
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    const/4 v1, 0x0

    .line 368
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .line 369
    .local v2, "maxWidth":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 370
    .local v7, "availableHeight":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 373
    .local v8, "heightMode":I
    const/4 v3, 0x0

    move v9, v1

    move v10, v2

    move v11, v3

    .end local v1    # "totalLength":I
    .end local v2    # "maxWidth":I
    .local v9, "totalLength":I
    .local v10, "maxWidth":I
    .local v11, "i":I
    :goto_12
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v11, v1, :cond_7e

    .line 374
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2b

    .line 376
    move/from16 v1, p2

    goto :goto_7b

    .line 379
    :cond_2b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 381
    .local v12, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-ne v1, v6, :cond_4b

    .line 384
    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v3, :cond_48

    if-ne v8, v2, :cond_48

    .line 385
    iget v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v9

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v1, p2

    move v9, v2

    .end local v9    # "totalLength":I
    .local v2, "totalLength":I
    goto :goto_7b

    .line 384
    .end local v2    # "totalLength":I
    .restart local v9    # "totalLength":I
    :cond_48
    move/from16 v1, p2

    goto :goto_7b

    .line 391
    :cond_4b
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v2, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 394
    move v15, v2

    move-object v2, v1

    move v1, v15

    .line 395
    .end local v1    # "child":Landroid/view/View;
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v9

    iget v4, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 394
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 396
    .end local v9    # "totalLength":I
    .local v3, "totalLength":I
    nop

    .line 397
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 396
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v9, v3

    move v10, v4

    .end local v10    # "maxWidth":I
    .local v4, "maxWidth":I
    goto :goto_7b

    .line 375
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "totalLength":I
    .end local v4    # "maxWidth":I
    .end local v12    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "child":Landroid/view/View;
    .restart local v9    # "totalLength":I
    .restart local v10    # "maxWidth":I
    :cond_78
    move-object v2, v1

    move/from16 v1, p2

    .line 373
    .end local v1    # "child":Landroid/view/View;
    :goto_7b
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_7e
    move/from16 v1, p2

    .line 401
    .end local v11    # "i":I
    iget v3, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    iget v4, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v9, v3

    .line 404
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 407
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-ne v8, v2, :cond_90

    move v4, v2

    goto :goto_92

    :cond_90
    const/high16 v4, -0x80000000

    .line 412
    .local v4, "childHeightMeasureMode":I
    :goto_92
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v11, 0x0

    if-nez v5, :cond_a4

    if-ne v8, v2, :cond_a4

    .line 413
    sub-int v2, v7, v9

    .line 414
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 413
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v2, "childHeightMeasureSpec":I
    goto :goto_b5

    .line 416
    .end local v2    # "childHeightMeasureSpec":I
    :cond_a4
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v5

    add-int/2addr v2, v9

    .line 417
    .local v2, "usedHeight":I
    sub-int v5, v7, v2

    .line 418
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 417
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move v2, v5

    .line 420
    .local v2, "childHeightMeasureSpec":I
    :goto_b5
    iget v5, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingLeft:I

    iget v12, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    add-int/2addr v5, v12

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v12

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v12

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v5, v12}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildMeasureSpec(III)I

    move-result v5

    .line 424
    .local v5, "childWidthMeasureSpec":I
    invoke-virtual {v6, v5, v2}, Landroid/view/View;->measure(II)V

    .line 426
    nop

    .line 427
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v9

    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    .line 426
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 430
    nop

    .line 431
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    .line 430
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 434
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getPaddingLeft()I

    move-result v12

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getPaddingRight()I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 437
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSuggestedMinimumWidth()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v1, v11}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->resolveSizeAndState(III)I

    move-result v12

    .line 439
    .local v12, "finalWidth":I
    nop

    .line 440
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSuggestedMinimumHeight()I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 439
    move/from16 v14, p3

    invoke-static {v13, v14, v11}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->resolveSizeAndState(III)I

    move-result v11

    .line 441
    .local v11, "finalHeight":I
    invoke-virtual {v0, v12, v11}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setMeasuredDimension(II)V

    .line 442
    return-void
.end method

.method private blacklist onLayoutOptimized(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_10

    .line 350
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "b":I
    .local p2, "changed":Z
    .local p3, "l":I
    .local p4, "t":I
    .local p5, "r":I
    goto :goto_19

    .line 352
    .end local v0    # "b":I
    .restart local p1    # "changed":Z
    .local p2, "l":I
    .local p3, "t":I
    .local p4, "r":I
    .local p5, "b":I
    :cond_10
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .restart local v0    # "b":I
    .local p2, "changed":Z
    .local p3, "l":I
    .local p4, "t":I
    .local p5, "r":I
    invoke-direct {p0, p3, p4, p5, v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->layoutVerticalOptimized(IIII)V

    .line 354
    :goto_19
    return-void
.end method

.method private blacklist onMeasureOptimized(Landroid/view/View;II)V
    .registers 8
    .param p1, "weightedChildView"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 310
    :try_start_0
    sget-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_9

    .line 311
    const-string v0, "NotifOptimizedLinearLayout#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 314
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_28

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 316
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 317
    .local v1, "childWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isBaselineAligned()Z

    move-result v2

    .line 319
    .local v2, "isBaselineAligned":Z
    const/4 v3, 0x0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setBaselineAligned(Z)V

    .line 323
    invoke-super {p0, p2, p3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 326
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 327
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setBaselineAligned(Z)V

    .line 328
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "childWidth":I
    .end local v2    # "isBaselineAligned":Z
    goto :goto_2b

    .line 329
    :cond_28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->measureVerticalOptimized(Landroid/view/View;II)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_36

    .line 332
    :goto_2b
    sget-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_35

    .line 333
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->trackShouldUseOptimizedLayout()V

    .line 334
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 337
    :cond_35
    return-void

    .line 332
    :catchall_36
    move-exception v0

    sget-boolean v1, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v1, :cond_41

    .line 333
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->trackShouldUseOptimizedLayout()V

    .line 334
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 336
    :cond_41
    throw v0
.end method

.method private blacklist requiresBaselineAlignmentForHorizontalLinearLayout()Z
    .registers 12

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 206
    return v1

    .line 209
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isBaselineAligned()Z

    move-result v0

    if-nez v0, :cond_10

    .line 210
    return v1

    .line 213
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, "activeChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    .line 216
    .local v3, "minorGravity":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_55

    .line 217
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 218
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_52

    .line 219
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x1

    .line 222
    .local v7, "childBaseline":I
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3f

    .line 223
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v7

    .line 225
    :cond_3f
    if-ne v7, v9, :cond_42

    .line 227
    goto :goto_52

    .line 229
    :cond_42
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 230
    .local v8, "gravity":I
    if-gez v8, :cond_47

    .line 231
    move v8, v3

    .line 234
    :cond_47
    and-int/lit8 v9, v8, 0x70

    .line 235
    .local v9, "result":I
    const/16 v10, 0x30

    if-eq v9, v10, :cond_51

    const/16 v10, 0x50

    if-ne v9, v10, :cond_52

    .line 236
    :cond_51
    return v2

    .line 216
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "childBaseline":I
    .end local v8    # "gravity":I
    .end local v9    # "result":I
    :cond_52
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 240
    .end local v4    # "i":I
    :cond_55
    return v1
.end method

.method private blacklist requiresMatchParentRemeasureForVerticalLinearLayout(I)Z
    .registers 11
    .param p1, "widthMeasureSpec"    # I

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 182
    return v1

    .line 187
    :cond_8
    nop

    .line 188
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-eq v0, v2, :cond_14

    move v0, v3

    goto :goto_15

    :cond_14
    move v0, v1

    .line 189
    .local v0, "nonExactWidth":Z
    :goto_15
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v2

    .line 190
    .local v2, "activeChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_35

    .line 191
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 192
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 193
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_32

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_32

    .line 194
    return v3

    .line 190
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 197
    .end local v4    # "i":I
    :cond_35
    return v1
.end method

.method private blacklist requiresNegativeMarginHandlingForHorizontalLinearLayout()Z
    .registers 8

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 161
    return v1

    .line 164
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, "activeChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 166
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 167
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 168
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ltz v6, :cond_2c

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gez v6, :cond_29

    goto :goto_2c

    .line 165
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 169
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2c
    :goto_2c
    return v2

    .line 172
    .end local v3    # "i":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2d
    return v1
.end method

.method private blacklist trackShouldUseOptimizedLayout()V
    .registers 4

    .line 567
    sget-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_13

    .line 568
    nop

    .line 569
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    .line 568
    :goto_e
    const-string v2, "NotifOptimizedLinearLayout#shouldUseOptimizedLayout"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 571
    :cond_13
    return-void
.end method


# virtual methods
.method protected whitelist onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 341
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v0, :cond_8

    .line 342
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onLayoutOptimized(ZIIII)V

    goto :goto_b

    .line 344
    :cond_8
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 346
    :goto_b
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 89
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSingleWeightedChild()Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "weightedChildView":Landroid/view/View;
    nop

    .line 91
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isUseOptimizedLinearLayoutFlagEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isOptimizationPossible(II)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    .line 94
    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v1, :cond_20

    .line 95
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onMeasureOptimized(Landroid/view/View;II)V

    goto :goto_23

    .line 97
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 99
    :goto_23
    return-void
.end method

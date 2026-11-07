.class public Lcom/android/internal/widget/DialogViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "DialogViewAnimator.java"


# instance fields
.field private final blacklist mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .registers 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 43
    move-object/from16 v0, p0

    .line 44
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v1, v8, :cond_14

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v8, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    move v1, v7

    :goto_15
    move v9, v1

    .line 47
    .local v9, "measureMatchParentChildren":Z
    const/4 v1, 0x0

    .line 48
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 49
    .local v2, "maxWidth":I
    const/4 v3, 0x0

    .line 53
    .local v3, "childState":I
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getChildCount()I

    move-result v10

    .line 54
    .local v10, "count":I
    const/4 v4, 0x0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    .end local v1    # "maxHeight":I
    .end local v2    # "maxWidth":I
    .end local v3    # "childState":I
    .local v11, "maxHeight":I
    .local v12, "maxWidth":I
    .local v13, "childState":I
    .local v14, "i":I
    :goto_22
    const/4 v1, -0x1

    if-ge v14, v10, :cond_ab

    .line 55
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/DialogViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasureAllChildren()Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_38

    goto :goto_3e

    :cond_38
    move/from16 v2, p1

    move/from16 v4, p2

    goto/16 :goto_a7

    .line 57
    :cond_3e
    :goto_3e
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v1, :cond_4b

    move v3, v7

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    move/from16 v16, v3

    .line 59
    .local v16, "matchWidth":Z
    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v1, :cond_54

    move v1, v7

    goto :goto_55

    :cond_54
    const/4 v1, 0x0

    :goto_55
    move/from16 v17, v1

    .line 60
    .local v17, "matchHeight":Z
    if-eqz v9, :cond_62

    if-nez v16, :cond_5d

    if-eqz v17, :cond_62

    .line 61
    :cond_5d
    iget-object v1, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_62
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v4, p2

    move-object v1, v2

    move/from16 v2, p1

    .end local v2    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DialogViewAnimator;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 68
    const/4 v3, 0x0

    .line 70
    .local v3, "state":I
    if-eqz v9, :cond_87

    if-nez v16, :cond_87

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v5

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 76
    :cond_87
    if-eqz v9, :cond_a2

    if-nez v17, :cond_a2

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, -0x100

    or-int/2addr v3, v5

    .line 83
    :cond_a2
    invoke-static {v13, v3}, Lcom/android/internal/widget/DialogViewAnimator;->combineMeasuredStates(II)I

    move-result v5

    move v13, v5

    .line 54
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "state":I
    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "matchWidth":Z
    .end local v17    # "matchHeight":Z
    :goto_a7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_22

    :cond_ab
    move/from16 v2, p1

    move/from16 v4, p2

    .line 88
    .end local v14    # "i":I
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v12, v3

    .line 89
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v11, v3

    .line 92
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 93
    .end local v11    # "maxHeight":I
    .local v3, "maxHeight":I
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 96
    .end local v12    # "maxWidth":I
    .local v5, "maxWidth":I
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 97
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_e9

    .line 98
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 99
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 102
    :cond_e9
    invoke-static {v5, v2, v13}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v7

    shl-int/lit8 v11, v13, 0x10

    .line 103
    invoke-static {v3, v4, v11}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v11

    .line 102
    invoke-virtual {v0, v7, v11}, Lcom/android/internal/widget/DialogViewAnimator;->setMeasuredDimension(II)V

    .line 107
    iget-object v7, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 108
    .local v7, "matchCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_fd
    if-ge v11, v7, :cond_188

    .line 109
    iget-object v12, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 110
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v15, v1, :cond_12d

    .line 114
    nop

    .line 115
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v15, v1

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v15, v1

    .line 114
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childWidthMeasureSpec":I
    goto :goto_143

    .line 119
    .end local v1    # "childWidthMeasureSpec":I
    :cond_12d
    nop

    .line 120
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v15

    add-int/2addr v1, v15

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v15

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 119
    invoke-static {v2, v1, v15}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v1

    .line 125
    .restart local v1    # "childWidthMeasureSpec":I
    :goto_143
    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v15, v8, :cond_166

    .line 126
    nop

    .line 127
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v15, v8

    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v15, v8

    .line 126
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .local v15, "childHeightMeasureSpec":I
    goto :goto_17e

    .line 131
    .end local v15    # "childHeightMeasureSpec":I
    :cond_166
    const/high16 v8, 0x40000000    # 2.0f

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v15

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v17

    add-int v15, v15, v17

    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v8

    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v8

    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 131
    invoke-static {v4, v15, v8}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v15

    .line 136
    .restart local v15    # "childHeightMeasureSpec":I
    :goto_17e
    invoke-virtual {v12, v1, v15}, Landroid/view/View;->measure(II)V

    .line 108
    .end local v1    # "childWidthMeasureSpec":I
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15    # "childHeightMeasureSpec":I
    add-int/lit8 v11, v11, 0x1

    const/4 v1, -0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto/16 :goto_fd

    .line 139
    .end local v11    # "i":I
    :cond_188
    iget-object v1, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 140
    return-void
.end method

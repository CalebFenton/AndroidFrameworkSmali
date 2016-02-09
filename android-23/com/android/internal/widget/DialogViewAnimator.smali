.class public Lcom/android/internal/widget/DialogViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "DialogViewAnimator.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    #@3
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    #@b
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    #@b
    .line 37
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 44
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v2

    #@4
    const/high16 v4, 0x40000000    # 2.0f

    #@6
    if-ne v2, v4, :cond_6

    #@8
    .line 45
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result v2

    #@c
    const/high16 v4, 0x40000000    # 2.0f

    #@e
    if-eq v2, v4, :cond_7

    #@10
    const/16 v21, 0x1

    #@12
    .line 47
    .local v21, "measureMatchParentChildren":Z
    :goto_0
    const/16 v19, 0x0

    #@14
    .line 48
    .local v19, "maxHeight":I
    const/16 v20, 0x0

    #@16
    .line 49
    .local v20, "maxWidth":I
    const/4 v9, 0x0

    #@17
    .line 53
    .local v9, "childState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getChildCount()I

    #@1a
    move-result v11

    #@1b
    .line 54
    .local v11, "count":I
    const/4 v13, 0x0

    #@1c
    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_c

    #@1e
    .line 55
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v13}, Lcom/android/internal/widget/DialogViewAnimator;->getChildAt(I)Landroid/view/View;

    #@23
    move-result-object v3

    #@24
    .line 56
    .local v3, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasureAllChildren()Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_0

    #@2a
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@2d
    move-result v2

    #@2e
    const/16 v4, 0x8

    #@30
    if-eq v2, v4, :cond_5

    #@32
    .line 57
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@35
    move-result-object v15

    #@36
    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    #@38
    .line 58
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@3a
    const/4 v4, -0x1

    #@3b
    if-ne v2, v4, :cond_8

    #@3d
    const/16 v18, 0x1

    #@3f
    .line 59
    .local v18, "matchWidth":Z
    :goto_2
    iget v2, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@41
    const/4 v4, -0x1

    #@42
    if-ne v2, v4, :cond_9

    #@44
    const/16 v17, 0x1

    #@46
    .line 60
    .local v17, "matchHeight":Z
    :goto_3
    if-eqz v21, :cond_2

    #@48
    if-nez v18, :cond_1

    #@4a
    if-eqz v17, :cond_2

    #@4c
    .line 61
    :cond_1
    move-object/from16 v0, p0

    #@4e
    iget-object v2, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@53
    .line 64
    :cond_2
    const/4 v5, 0x0

    #@54
    const/4 v7, 0x0

    #@55
    move-object/from16 v2, p0

    #@57
    move/from16 v4, p1

    #@59
    move/from16 v6, p2

    #@5b
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/DialogViewAnimator;->measureChildWithMargins(Landroid/view/View;IIII)V

    #@5e
    .line 68
    const/16 v22, 0x0

    #@60
    .line 70
    .local v22, "state":I
    if-eqz v21, :cond_3

    #@62
    if-eqz v18, :cond_a

    #@64
    .line 76
    :cond_3
    :goto_4
    if-eqz v21, :cond_4

    #@66
    if-eqz v17, :cond_b

    #@68
    .line 83
    :cond_4
    :goto_5
    move/from16 v0, v22

    #@6a
    invoke-static {v9, v0}, Lcom/android/internal/widget/DialogViewAnimator;->combineMeasuredStates(II)I

    #@6d
    move-result v9

    #@6e
    .line 54
    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "matchHeight":Z
    .end local v18    # "matchWidth":Z
    .end local v22    # "state":I
    :cond_5
    add-int/lit8 v13, v13, 0x1

    #@70
    goto :goto_1

    #@71
    .line 44
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childState":I
    .end local v11    # "count":I
    .end local v13    # "i":I
    .end local v19    # "maxHeight":I
    .end local v20    # "maxWidth":I
    .end local v21    # "measureMatchParentChildren":Z
    :cond_6
    const/16 v21, 0x1

    #@73
    .restart local v21    # "measureMatchParentChildren":Z
    goto :goto_0

    #@74
    .line 45
    .end local v21    # "measureMatchParentChildren":Z
    :cond_7
    const/16 v21, 0x0

    #@76
    .restart local v21    # "measureMatchParentChildren":Z
    goto :goto_0

    #@77
    .line 58
    .restart local v3    # "child":Landroid/view/View;
    .restart local v9    # "childState":I
    .restart local v11    # "count":I
    .restart local v13    # "i":I
    .restart local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v19    # "maxHeight":I
    .restart local v20    # "maxWidth":I
    :cond_8
    const/16 v18, 0x0

    #@79
    .restart local v18    # "matchWidth":Z
    goto :goto_2

    #@7a
    .line 59
    :cond_9
    const/16 v17, 0x0

    #@7c
    .restart local v17    # "matchHeight":Z
    goto :goto_3

    #@7d
    .line 71
    .restart local v22    # "state":I
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@80
    move-result v2

    #@81
    .line 72
    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@83
    .line 71
    add-int/2addr v2, v4

    #@84
    .line 72
    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@86
    .line 71
    add-int/2addr v2, v4

    #@87
    move/from16 v0, v20

    #@89
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@8c
    move-result v20

    #@8d
    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidthAndState()I

    #@90
    move-result v2

    #@91
    const/high16 v4, -0x1000000

    #@93
    and-int/2addr v2, v4

    #@94
    or-int/lit8 v22, v2, 0x0

    #@96
    goto :goto_4

    #@97
    .line 77
    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@9a
    move-result v2

    #@9b
    .line 78
    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@9d
    .line 77
    add-int/2addr v2, v4

    #@9e
    .line 78
    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@a0
    .line 77
    add-int/2addr v2, v4

    #@a1
    move/from16 v0, v19

    #@a3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@a6
    move-result v19

    #@a7
    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeightAndState()I

    #@aa
    move-result v2

    #@ab
    shr-int/lit8 v2, v2, 0x10

    #@ad
    and-int/lit16 v2, v2, -0x100

    #@af
    or-int v22, v22, v2

    #@b1
    goto :goto_5

    #@b2
    .line 88
    .end local v3    # "child":Landroid/view/View;
    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "matchHeight":Z
    .end local v18    # "matchWidth":Z
    .end local v22    # "state":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    #@b5
    move-result v2

    #@b6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    #@b9
    move-result v4

    #@ba
    add-int/2addr v2, v4

    #@bb
    add-int v20, v20, v2

    #@bd
    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    #@c0
    move-result v2

    #@c1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    #@c4
    move-result v4

    #@c5
    add-int/2addr v2, v4

    #@c6
    add-int v19, v19, v2

    #@c8
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumHeight()I

    #@cb
    move-result v2

    #@cc
    move/from16 v0, v19

    #@ce
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@d1
    move-result v19

    #@d2
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumWidth()I

    #@d5
    move-result v2

    #@d6
    move/from16 v0, v20

    #@d8
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@db
    move-result v20

    #@dc
    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getForeground()Landroid/graphics/drawable/Drawable;

    #@df
    move-result-object v12

    #@e0
    .line 97
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_d

    #@e2
    .line 98
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    #@e5
    move-result v2

    #@e6
    move/from16 v0, v19

    #@e8
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@eb
    move-result v19

    #@ec
    .line 99
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    #@ef
    move-result v2

    #@f0
    move/from16 v0, v20

    #@f2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@f5
    move-result v20

    #@f6
    .line 102
    :cond_d
    move/from16 v0, v20

    #@f8
    move/from16 v1, p1

    #@fa
    invoke-static {v0, v1, v9}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    #@fd
    move-result v2

    #@fe
    .line 104
    shl-int/lit8 v4, v9, 0x10

    #@100
    .line 103
    move/from16 v0, v19

    #@102
    move/from16 v1, p2

    #@104
    invoke-static {v0, v1, v4}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    #@107
    move-result v4

    #@108
    .line 102
    move-object/from16 v0, p0

    #@10a
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/DialogViewAnimator;->setMeasuredDimension(II)V

    #@10d
    .line 107
    move-object/from16 v0, p0

    #@10f
    iget-object v2, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    #@111
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@114
    move-result v16

    #@115
    .line 108
    .local v16, "matchCount":I
    const/4 v13, 0x0

    #@116
    :goto_6
    move/from16 v0, v16

    #@118
    if-ge v13, v0, :cond_10

    #@11a
    .line 109
    move-object/from16 v0, p0

    #@11c
    iget-object v2, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    #@11e
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@121
    move-result-object v3

    #@122
    check-cast v3, Landroid/view/View;

    #@124
    .line 110
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@127
    move-result-object v14

    #@128
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    #@12a
    .line 113
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@12c
    const/4 v4, -0x1

    #@12d
    if-ne v2, v4, :cond_e

    #@12f
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredWidth()I

    #@132
    move-result v2

    #@133
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    #@136
    move-result v4

    #@137
    sub-int/2addr v2, v4

    #@138
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    #@13b
    move-result v4

    #@13c
    sub-int/2addr v2, v4

    #@13d
    .line 116
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@13f
    .line 115
    sub-int/2addr v2, v4

    #@140
    .line 116
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@142
    .line 115
    sub-int/2addr v2, v4

    #@143
    .line 117
    const/high16 v4, 0x40000000    # 2.0f

    #@145
    .line 114
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@148
    move-result v10

    #@149
    .line 125
    .local v10, "childWidthMeasureSpec":I
    :goto_7
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@14b
    const/4 v4, -0x1

    #@14c
    if-ne v2, v4, :cond_f

    #@14e
    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredHeight()I

    #@151
    move-result v2

    #@152
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    #@155
    move-result v4

    #@156
    sub-int/2addr v2, v4

    #@157
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    #@15a
    move-result v4

    #@15b
    sub-int/2addr v2, v4

    #@15c
    .line 128
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@15e
    .line 127
    sub-int/2addr v2, v4

    #@15f
    .line 128
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@161
    .line 127
    sub-int/2addr v2, v4

    #@162
    .line 129
    const/high16 v4, 0x40000000    # 2.0f

    #@164
    .line 126
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@167
    move-result v8

    #@168
    .line 136
    .local v8, "childHeightMeasureSpec":I
    :goto_8
    invoke-virtual {v3, v10, v8}, Landroid/view/View;->measure(II)V

    #@16b
    .line 108
    add-int/lit8 v13, v13, 0x1

    #@16d
    goto :goto_6

    #@16e
    .line 120
    .end local v8    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    #@171
    move-result v2

    #@172
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    #@175
    move-result v4

    #@176
    add-int/2addr v2, v4

    #@177
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@179
    add-int/2addr v2, v4

    #@17a
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@17c
    add-int/2addr v2, v4

    #@17d
    .line 121
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@17f
    .line 119
    move/from16 v0, p1

    #@181
    invoke-static {v0, v2, v4}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    #@184
    move-result v10

    #@185
    .restart local v10    # "childWidthMeasureSpec":I
    goto :goto_7

    #@186
    .line 132
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    #@189
    move-result v2

    #@18a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    #@18d
    move-result v4

    #@18e
    add-int/2addr v2, v4

    #@18f
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@191
    add-int/2addr v2, v4

    #@192
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@194
    add-int/2addr v2, v4

    #@195
    .line 133
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@197
    .line 131
    move/from16 v0, p2

    #@199
    invoke-static {v0, v2, v4}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    #@19c
    move-result v8

    #@19d
    .restart local v8    # "childHeightMeasureSpec":I
    goto :goto_8

    #@19e
    .line 139
    .end local v3    # "child":Landroid/view/View;
    .end local v8    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_10
    move-object/from16 v0, p0

    #@1a0
    iget-object v2, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    #@1a2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1a5
    .line 42
    return-void
.end method

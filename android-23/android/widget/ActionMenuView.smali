.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$LayoutParams;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method static synthetic -get0(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 77
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    #@7
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@e
    move-result-object v1

    #@f
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    #@11
    .line 79
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    #@13
    mul-float/2addr v1, v0

    #@14
    float-to-int v1, v1

    #@15
    iput v1, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    #@17
    .line 80
    const/high16 v1, 0x40800000    # 4.0f

    #@19
    mul-float/2addr v1, v0

    #@1a
    float-to-int v1, v1

    #@1b
    iput v1, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    #@1d
    .line 81
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    #@1f
    .line 82
    iput v2, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    #@21
    .line 75
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    #@0
    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v8

    #@4
    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    #@6
    .line 401
    .local v8, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@9
    move-result v11

    #@a
    sub-int v2, v11, p4

    #@c
    .line 403
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@f
    move-result v1

    #@10
    .line 404
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@13
    move-result v3

    #@14
    .line 406
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    #@16
    if-eqz v11, :cond_3

    #@18
    move-object v7, p0

    #@19
    .line 407
    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    #@1b
    .line 408
    :goto_0
    if-eqz v7, :cond_4

    #@1d
    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    #@20
    move-result v6

    #@21
    .line 410
    :goto_1
    const/4 v0, 0x0

    #@22
    .line 411
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    #@24
    if-eqz v6, :cond_0

    #@26
    const/4 v11, 0x2

    #@27
    if-lt p2, v11, :cond_2

    #@29
    .line 413
    :cond_0
    mul-int v11, p1, p2

    #@2b
    const/high16 v12, -0x80000000

    #@2d
    .line 412
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@30
    move-result v4

    #@31
    .line 414
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    #@34
    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@37
    move-result v9

    #@38
    .line 417
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    #@3a
    .line 418
    rem-int v11, v9, p1

    #@3c
    if-eqz v11, :cond_1

    #@3e
    add-int/lit8 v0, v0, 0x1

    #@40
    .line 419
    :cond_1
    if-eqz v6, :cond_2

    #@42
    const/4 v11, 0x2

    #@43
    if-ge v0, v11, :cond_2

    #@45
    const/4 v0, 0x2

    #@46
    .line 422
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@48
    if-nez v11, :cond_5

    #@4a
    move v5, v6

    #@4b
    .line 423
    :goto_2
    iput-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    #@4d
    .line 425
    iput v0, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@4f
    .line 426
    mul-int v10, v0, p1

    #@51
    .line 427
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    #@53
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@56
    move-result v11

    #@57
    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    #@5a
    .line 429
    return v0

    #@5b
    .line 407
    .end local v0    # "cellsUsed":I
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    #@5c
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    goto :goto_0

    #@5d
    .line 408
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    #@5e
    .local v6, "hasText":Z
    goto :goto_1

    #@5f
    .line 422
    .end local v6    # "hasText":Z
    .restart local v0    # "cellsUsed":I
    :cond_5
    const/4 v5, 0x0

    #@60
    .local v5, "expandable":Z
    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 173
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v17

    #@4
    .line 174
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result v37

    #@8
    .line 175
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@b
    move-result v19

    #@c
    .line 177
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    #@f
    move-result v38

    #@10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    #@13
    move-result v39

    #@14
    add-int v36, v38, v39

    #@16
    .line 178
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    #@19
    move-result v38

    #@1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    #@1d
    move-result v39

    #@1e
    add-int v18, v38, v39

    #@20
    .line 181
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    #@22
    .line 180
    move/from16 v0, p2

    #@24
    move/from16 v1, v18

    #@26
    move/from16 v2, v38

    #@28
    invoke-static {v0, v1, v2}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    #@2b
    move-result v22

    #@2c
    .line 183
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    #@2e
    .line 186
    move-object/from16 v0, p0

    #@30
    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    #@32
    move/from16 v38, v0

    #@34
    div-int v4, v37, v38

    #@36
    .line 187
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    #@38
    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    #@3a
    move/from16 v38, v0

    #@3c
    rem-int v6, v37, v38

    #@3e
    .line 189
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    #@40
    .line 191
    const/16 v38, 0x0

    #@42
    move-object/from16 v0, p0

    #@44
    move/from16 v1, v37

    #@46
    move/from16 v2, v38

    #@48
    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    #@4b
    .line 192
    return-void

    #@4c
    .line 195
    :cond_0
    move-object/from16 v0, p0

    #@4e
    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    #@50
    move/from16 v38, v0

    #@52
    div-int v39, v6, v4

    #@54
    add-int v5, v38, v39

    #@56
    .line 197
    .local v5, "cellSize":I
    move v8, v4

    #@57
    .line 198
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    #@59
    .line 199
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    #@5b
    .line 200
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    #@5c
    .line 201
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    #@5e
    .line 202
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    #@60
    .line 205
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    #@62
    .line 207
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    #@65
    move-result v12

    #@66
    .line 208
    .local v12, "childCount":I
    const/16 v20, 0x0

    #@68
    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    #@6a
    if-ge v0, v12, :cond_8

    #@6c
    .line 209
    move-object/from16 v0, p0

    #@6e
    move/from16 v1, v20

    #@70
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@73
    move-result-object v11

    #@74
    .line 210
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    #@77
    move-result v38

    #@78
    const/16 v39, 0x8

    #@7a
    move/from16 v0, v38

    #@7c
    move/from16 v1, v39

    #@7e
    if-ne v0, v1, :cond_2

    #@80
    .line 208
    :cond_1
    :goto_1
    add-int/lit8 v20, v20, 0x1

    #@82
    goto :goto_0

    #@83
    .line 212
    :cond_2
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    #@85
    move/from16 v21, v0

    #@87
    .line 213
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    #@89
    .line 215
    if-eqz v21, :cond_3

    #@8b
    .line 218
    move-object/from16 v0, p0

    #@8d
    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    #@8f
    move/from16 v38, v0

    #@91
    move-object/from16 v0, p0

    #@93
    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    #@95
    move/from16 v39, v0

    #@97
    const/16 v40, 0x0

    #@99
    const/16 v41, 0x0

    #@9b
    move/from16 v0, v38

    #@9d
    move/from16 v1, v40

    #@9f
    move/from16 v2, v39

    #@a1
    move/from16 v3, v41

    #@a3
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    #@a6
    .line 221
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a9
    move-result-object v23

    #@aa
    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    #@ac
    .line 222
    .local v23, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    #@ae
    move/from16 v0, v38

    #@b0
    move-object/from16 v1, v23

    #@b2
    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    #@b4
    .line 223
    const/16 v38, 0x0

    #@b6
    move/from16 v0, v38

    #@b8
    move-object/from16 v1, v23

    #@ba
    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    #@bc
    .line 224
    const/16 v38, 0x0

    #@be
    move/from16 v0, v38

    #@c0
    move-object/from16 v1, v23

    #@c2
    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@c4
    .line 225
    const/16 v38, 0x0

    #@c6
    move/from16 v0, v38

    #@c8
    move-object/from16 v1, v23

    #@ca
    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    #@cc
    .line 226
    const/16 v38, 0x0

    #@ce
    move/from16 v0, v38

    #@d0
    move-object/from16 v1, v23

    #@d2
    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@d4
    .line 227
    const/16 v38, 0x0

    #@d6
    move/from16 v0, v38

    #@d8
    move-object/from16 v1, v23

    #@da
    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@dc
    .line 228
    if-eqz v21, :cond_6

    #@de
    move-object/from16 v38, v11

    #@e0
    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    #@e2
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    #@e5
    move-result v38

    #@e6
    :goto_2
    move/from16 v0, v38

    #@e8
    move-object/from16 v1, v23

    #@ea
    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    #@ec
    .line 231
    move-object/from16 v0, v23

    #@ee
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@f0
    move/from16 v38, v0

    #@f2
    if-eqz v38, :cond_7

    #@f4
    const/4 v7, 0x1

    #@f5
    .line 233
    .local v7, "cellsAvailable":I
    :goto_3
    move/from16 v0, v22

    #@f7
    move/from16 v1, v18

    #@f9
    invoke-static {v11, v5, v7, v0, v1}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    #@fc
    move-result v9

    #@fd
    .line 236
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    #@ff
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    #@102
    move-result v24

    #@103
    .line 237
    move-object/from16 v0, v23

    #@105
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    #@107
    move/from16 v38, v0

    #@109
    if-eqz v38, :cond_4

    #@10b
    add-int/lit8 v14, v14, 0x1

    #@10d
    .line 238
    :cond_4
    move-object/from16 v0, v23

    #@10f
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@111
    move/from16 v38, v0

    #@113
    if-eqz v38, :cond_5

    #@115
    const/16 v16, 0x1

    #@117
    .line 240
    :cond_5
    sub-int/2addr v8, v9

    #@118
    .line 241
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    #@11b
    move-result v38

    #@11c
    move/from16 v0, v25

    #@11e
    move/from16 v1, v38

    #@120
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@123
    move-result v25

    #@124
    .line 242
    const/16 v38, 0x1

    #@126
    move/from16 v0, v38

    #@128
    if-ne v9, v0, :cond_1

    #@12a
    const/16 v38, 0x1

    #@12c
    shl-int v38, v38, v20

    #@12e
    move/from16 v0, v38

    #@130
    int-to-long v0, v0

    #@131
    move-wide/from16 v38, v0

    #@133
    or-long v32, v32, v38

    #@135
    goto/16 :goto_1

    #@137
    .line 228
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_6
    const/16 v38, 0x0

    #@139
    goto :goto_2

    #@13a
    .line 231
    :cond_7
    move v7, v8

    #@13b
    .restart local v7    # "cellsAvailable":I
    goto :goto_3

    #@13c
    .line 247
    .end local v7    # "cellsAvailable":I
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_8
    if-eqz v16, :cond_a

    #@13e
    const/16 v38, 0x2

    #@140
    move/from16 v0, v34

    #@142
    move/from16 v1, v38

    #@144
    if-ne v0, v1, :cond_a

    #@146
    const/4 v10, 0x1

    #@147
    .line 252
    .local v10, "centerSingleExpandedItem":Z
    :goto_4
    const/16 v30, 0x0

    #@149
    .line 253
    .local v30, "needsExpansion":Z
    :goto_5
    if-lez v14, :cond_e

    #@14b
    if-lez v8, :cond_e

    #@14d
    .line 254
    const v26, 0x7fffffff

    #@150
    .line 255
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    #@152
    .line 256
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    #@154
    .line 257
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    #@156
    :goto_6
    move/from16 v0, v20

    #@158
    if-ge v0, v12, :cond_d

    #@15a
    .line 258
    move-object/from16 v0, p0

    #@15c
    move/from16 v1, v20

    #@15e
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@161
    move-result-object v11

    #@162
    .line 259
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@165
    move-result-object v23

    #@166
    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    #@168
    .line 262
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    #@16a
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    #@16c
    move/from16 v38, v0

    #@16e
    if-nez v38, :cond_b

    #@170
    .line 257
    :cond_9
    :goto_7
    add-int/lit8 v20, v20, 0x1

    #@172
    goto :goto_6

    #@173
    .line 247
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_a
    const/4 v10, 0x0

    #@174
    .restart local v10    # "centerSingleExpandedItem":Z
    goto :goto_4

    #@175
    .line 265
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_b
    move-object/from16 v0, v23

    #@177
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@179
    move/from16 v38, v0

    #@17b
    move/from16 v0, v38

    #@17d
    move/from16 v1, v26

    #@17f
    if-ge v0, v1, :cond_c

    #@181
    .line 266
    move-object/from16 v0, v23

    #@183
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@185
    move/from16 v26, v0

    #@187
    .line 267
    const/16 v38, 0x1

    #@189
    shl-int v38, v38, v20

    #@18b
    move/from16 v0, v38

    #@18d
    int-to-long v0, v0

    #@18e
    move-wide/from16 v28, v0

    #@190
    .line 268
    const/16 v27, 0x1

    #@192
    goto :goto_7

    #@193
    .line 269
    :cond_c
    move-object/from16 v0, v23

    #@195
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@197
    move/from16 v38, v0

    #@199
    move/from16 v0, v38

    #@19b
    move/from16 v1, v26

    #@19d
    if-ne v0, v1, :cond_9

    #@19f
    .line 270
    const/16 v38, 0x1

    #@1a1
    shl-int v38, v38, v20

    #@1a3
    move/from16 v0, v38

    #@1a5
    int-to-long v0, v0

    #@1a6
    move-wide/from16 v38, v0

    #@1a8
    or-long v28, v28, v38

    #@1aa
    .line 271
    add-int/lit8 v27, v27, 0x1

    #@1ac
    goto :goto_7

    #@1ad
    .line 276
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_d
    or-long v32, v32, v28

    #@1af
    .line 278
    move/from16 v0, v27

    #@1b1
    if-le v0, v8, :cond_13

    #@1b3
    .line 307
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_e
    if-nez v16, :cond_18

    #@1b5
    const/16 v38, 0x1

    #@1b7
    move/from16 v0, v34

    #@1b9
    move/from16 v1, v38

    #@1bb
    if-ne v0, v1, :cond_18

    #@1bd
    const/16 v31, 0x1

    #@1bf
    .line 308
    .local v31, "singleItem":Z
    :goto_8
    if-lez v8, :cond_21

    #@1c1
    const-wide/16 v38, 0x0

    #@1c3
    cmp-long v38, v32, v38

    #@1c5
    if-eqz v38, :cond_21

    #@1c7
    .line 309
    add-int/lit8 v38, v34, -0x1

    #@1c9
    move/from16 v0, v38

    #@1cb
    if-lt v8, v0, :cond_f

    #@1cd
    if-nez v31, :cond_f

    #@1cf
    const/16 v38, 0x1

    #@1d1
    move/from16 v0, v24

    #@1d3
    move/from16 v1, v38

    #@1d5
    if-le v0, v1, :cond_21

    #@1d7
    .line 310
    :cond_f
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    #@1da
    move-result v38

    #@1db
    move/from16 v0, v38

    #@1dd
    int-to-float v13, v0

    #@1de
    .line 312
    .local v13, "expandCount":F
    if-nez v31, :cond_11

    #@1e0
    .line 314
    const-wide/16 v38, 0x1

    #@1e2
    and-long v38, v38, v32

    #@1e4
    const-wide/16 v40, 0x0

    #@1e6
    cmp-long v38, v38, v40

    #@1e8
    if-eqz v38, :cond_10

    #@1ea
    .line 315
    const/16 v38, 0x0

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    move/from16 v1, v38

    #@1f0
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@1f3
    move-result-object v38

    #@1f4
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f7
    move-result-object v23

    #@1f8
    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    #@1fa
    .line 316
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    #@1fc
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    #@1fe
    move/from16 v38, v0

    #@200
    if-nez v38, :cond_10

    #@202
    const/high16 v38, 0x3f000000    # 0.5f

    #@204
    sub-float v13, v13, v38

    #@206
    .line 318
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_10
    add-int/lit8 v38, v12, -0x1

    #@208
    const/16 v39, 0x1

    #@20a
    shl-int v38, v39, v38

    #@20c
    move/from16 v0, v38

    #@20e
    int-to-long v0, v0

    #@20f
    move-wide/from16 v38, v0

    #@211
    and-long v38, v38, v32

    #@213
    const-wide/16 v40, 0x0

    #@215
    cmp-long v38, v38, v40

    #@217
    if-eqz v38, :cond_11

    #@219
    .line 319
    add-int/lit8 v38, v12, -0x1

    #@21b
    move-object/from16 v0, p0

    #@21d
    move/from16 v1, v38

    #@21f
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@222
    move-result-object v38

    #@223
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@226
    move-result-object v23

    #@227
    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    #@229
    .line 320
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    #@22b
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    #@22d
    move/from16 v38, v0

    #@22f
    if-nez v38, :cond_11

    #@231
    const/high16 v38, 0x3f000000    # 0.5f

    #@233
    sub-float v13, v13, v38

    #@235
    .line 324
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x0

    #@237
    cmpl-float v38, v13, v38

    #@239
    if-lez v38, :cond_19

    #@23b
    .line 325
    mul-int v38, v8, v5

    #@23d
    move/from16 v0, v38

    #@23f
    int-to-float v0, v0

    #@240
    move/from16 v38, v0

    #@242
    div-float v38, v38, v13

    #@244
    move/from16 v0, v38

    #@246
    float-to-int v15, v0

    #@247
    .line 327
    .local v15, "extraPixels":I
    :goto_9
    const/16 v20, 0x0

    #@249
    :goto_a
    move/from16 v0, v20

    #@24b
    if-ge v0, v12, :cond_20

    #@24d
    .line 328
    const/16 v38, 0x1

    #@24f
    shl-int v38, v38, v20

    #@251
    move/from16 v0, v38

    #@253
    int-to-long v0, v0

    #@254
    move-wide/from16 v38, v0

    #@256
    and-long v38, v38, v32

    #@258
    const-wide/16 v40, 0x0

    #@25a
    cmp-long v38, v38, v40

    #@25c
    if-nez v38, :cond_1a

    #@25e
    .line 327
    :cond_12
    :goto_b
    add-int/lit8 v20, v20, 0x1

    #@260
    goto :goto_a

    #@261
    .line 281
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_13
    add-int/lit8 v26, v26, 0x1

    #@263
    .line 283
    const/16 v20, 0x0

    #@265
    :goto_c
    move/from16 v0, v20

    #@267
    if-ge v0, v12, :cond_17

    #@269
    .line 284
    move-object/from16 v0, p0

    #@26b
    move/from16 v1, v20

    #@26d
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@270
    move-result-object v11

    #@271
    .line 285
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@274
    move-result-object v23

    #@275
    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    #@277
    .line 286
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    #@279
    shl-int v38, v38, v20

    #@27b
    move/from16 v0, v38

    #@27d
    int-to-long v0, v0

    #@27e
    move-wide/from16 v38, v0

    #@280
    and-long v38, v38, v28

    #@282
    const-wide/16 v40, 0x0

    #@284
    cmp-long v38, v38, v40

    #@286
    if-nez v38, :cond_15

    #@288
    .line 288
    move-object/from16 v0, v23

    #@28a
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@28c
    move/from16 v38, v0

    #@28e
    move/from16 v0, v38

    #@290
    move/from16 v1, v26

    #@292
    if-ne v0, v1, :cond_14

    #@294
    const/16 v38, 0x1

    #@296
    shl-int v38, v38, v20

    #@298
    move/from16 v0, v38

    #@29a
    int-to-long v0, v0

    #@29b
    move-wide/from16 v38, v0

    #@29d
    or-long v32, v32, v38

    #@29f
    .line 283
    :cond_14
    :goto_d
    add-int/lit8 v20, v20, 0x1

    #@2a1
    goto :goto_c

    #@2a2
    .line 292
    :cond_15
    if-eqz v10, :cond_16

    #@2a4
    move-object/from16 v0, v23

    #@2a6
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    #@2a8
    move/from16 v38, v0

    #@2aa
    if-eqz v38, :cond_16

    #@2ac
    const/16 v38, 0x1

    #@2ae
    move/from16 v0, v38

    #@2b0
    if-ne v8, v0, :cond_16

    #@2b2
    .line 294
    move-object/from16 v0, p0

    #@2b4
    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    #@2b6
    move/from16 v38, v0

    #@2b8
    add-int v38, v38, v5

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    #@2be
    move/from16 v39, v0

    #@2c0
    const/16 v40, 0x0

    #@2c2
    const/16 v41, 0x0

    #@2c4
    move/from16 v0, v38

    #@2c6
    move/from16 v1, v40

    #@2c8
    move/from16 v2, v39

    #@2ca
    move/from16 v3, v41

    #@2cc
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    #@2cf
    .line 296
    :cond_16
    move-object/from16 v0, v23

    #@2d1
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@2d3
    move/from16 v38, v0

    #@2d5
    add-int/lit8 v38, v38, 0x1

    #@2d7
    move/from16 v0, v38

    #@2d9
    move-object/from16 v1, v23

    #@2db
    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@2dd
    .line 297
    const/16 v38, 0x1

    #@2df
    move/from16 v0, v38

    #@2e1
    move-object/from16 v1, v23

    #@2e3
    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    #@2e5
    .line 298
    add-int/lit8 v8, v8, -0x1

    #@2e7
    goto :goto_d

    #@2e8
    .line 301
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/16 v30, 0x1

    #@2ea
    goto/16 :goto_5

    #@2ec
    .line 307
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_18
    const/16 v31, 0x0

    #@2ee
    .restart local v31    # "singleItem":Z
    goto/16 :goto_8

    #@2f0
    .line 325
    .restart local v13    # "expandCount":F
    :cond_19
    const/4 v15, 0x0

    #@2f1
    .restart local v15    # "extraPixels":I
    goto/16 :goto_9

    #@2f3
    .line 330
    :cond_1a
    move-object/from16 v0, p0

    #@2f5
    move/from16 v1, v20

    #@2f7
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@2fa
    move-result-object v11

    #@2fb
    .line 331
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2fe
    move-result-object v23

    #@2ff
    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    #@301
    .line 332
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    #@303
    move/from16 v38, v0

    #@305
    if-eqz v38, :cond_1d

    #@307
    .line 334
    move-object/from16 v0, v23

    #@309
    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    #@30b
    .line 335
    const/16 v38, 0x1

    #@30d
    move/from16 v0, v38

    #@30f
    move-object/from16 v1, v23

    #@311
    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    #@313
    .line 336
    if-nez v20, :cond_1b

    #@315
    move-object/from16 v0, v23

    #@317
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    #@319
    move/from16 v38, v0

    #@31b
    if-eqz v38, :cond_1c

    #@31d
    .line 341
    :cond_1b
    :goto_e
    const/16 v30, 0x1

    #@31f
    goto/16 :goto_b

    #@321
    .line 339
    :cond_1c
    neg-int v0, v15

    #@322
    move/from16 v38, v0

    #@324
    div-int/lit8 v38, v38, 0x2

    #@326
    move/from16 v0, v38

    #@328
    move-object/from16 v1, v23

    #@32a
    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@32c
    goto :goto_e

    #@32d
    .line 342
    :cond_1d
    move-object/from16 v0, v23

    #@32f
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@331
    move/from16 v38, v0

    #@333
    if-eqz v38, :cond_1e

    #@335
    .line 343
    move-object/from16 v0, v23

    #@337
    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    #@339
    .line 344
    const/16 v38, 0x1

    #@33b
    move/from16 v0, v38

    #@33d
    move-object/from16 v1, v23

    #@33f
    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    #@341
    .line 345
    neg-int v0, v15

    #@342
    move/from16 v38, v0

    #@344
    div-int/lit8 v38, v38, 0x2

    #@346
    move/from16 v0, v38

    #@348
    move-object/from16 v1, v23

    #@34a
    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@34c
    .line 346
    const/16 v30, 0x1

    #@34e
    goto/16 :goto_b

    #@350
    .line 351
    :cond_1e
    if-eqz v20, :cond_1f

    #@352
    .line 352
    div-int/lit8 v38, v15, 0x2

    #@354
    move/from16 v0, v38

    #@356
    move-object/from16 v1, v23

    #@358
    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@35a
    .line 354
    :cond_1f
    add-int/lit8 v38, v12, -0x1

    #@35c
    move/from16 v0, v20

    #@35e
    move/from16 v1, v38

    #@360
    if-eq v0, v1, :cond_12

    #@362
    .line 355
    div-int/lit8 v38, v15, 0x2

    #@364
    move/from16 v0, v38

    #@366
    move-object/from16 v1, v23

    #@368
    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@36a
    goto/16 :goto_b

    #@36c
    .line 360
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_20
    const/4 v8, 0x0

    #@36d
    .line 364
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_21
    if-eqz v30, :cond_23

    #@36f
    .line 365
    const/16 v20, 0x0

    #@371
    :goto_f
    move/from16 v0, v20

    #@373
    if-ge v0, v12, :cond_23

    #@375
    .line 366
    move-object/from16 v0, p0

    #@377
    move/from16 v1, v20

    #@379
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@37c
    move-result-object v11

    #@37d
    .line 367
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@380
    move-result-object v23

    #@381
    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    #@383
    .line 369
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    #@385
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    #@387
    move/from16 v38, v0

    #@389
    if-nez v38, :cond_22

    #@38b
    .line 365
    :goto_10
    add-int/lit8 v20, v20, 0x1

    #@38d
    goto :goto_f

    #@38e
    .line 371
    :cond_22
    move-object/from16 v0, v23

    #@390
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    #@392
    move/from16 v38, v0

    #@394
    mul-int v38, v38, v5

    #@396
    move-object/from16 v0, v23

    #@398
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    #@39a
    move/from16 v39, v0

    #@39c
    add-int v35, v38, v39

    #@39e
    .line 372
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    #@3a0
    move/from16 v0, v35

    #@3a2
    move/from16 v1, v38

    #@3a4
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3a7
    move-result v38

    #@3a8
    move/from16 v0, v38

    #@3aa
    move/from16 v1, v22

    #@3ac
    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    #@3af
    goto :goto_10

    #@3b0
    .line 377
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_23
    const/high16 v38, 0x40000000    # 2.0f

    #@3b2
    move/from16 v0, v17

    #@3b4
    move/from16 v1, v38

    #@3b6
    if-eq v0, v1, :cond_24

    #@3b8
    .line 378
    move/from16 v19, v25

    #@3ba
    .line 381
    :cond_24
    move-object/from16 v0, p0

    #@3bc
    move/from16 v1, v37

    #@3be
    move/from16 v2, v19

    #@3c0
    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    #@3c3
    .line 171
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 604
    if-eqz p1, :cond_0

    #@2
    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    #@0
    .prologue
    .line 707
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 708
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    #@9
    .line 706
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 734
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    .line 577
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    #@6
    .line 579
    .local v0, "params":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    #@8
    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    #@a
    .line 580
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 576
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 585
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 590
    if-eqz p1, :cond_2

    #@2
    .line 591
    instance-of v1, p1, Landroid/widget/ActionMenuView$LayoutParams;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 592
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    #@8
    check-cast p1, Landroid/widget/ActionMenuView$LayoutParams;

    #@a
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    #@d
    .line 594
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    #@f
    if-gtz v1, :cond_0

    #@11
    .line 595
    const/16 v1, 0x10

    #@13
    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    #@15
    .line 597
    :cond_0
    return-object v0

    #@16
    .line 593
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    #@18
    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@1b
    .restart local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    goto :goto_0

    #@1c
    .line 599
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 584
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 589
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    #@0
    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 610
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    #@5
    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@7
    .line 611
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 638
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 639
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    .line 640
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    #@b
    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@e
    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@10
    .line 641
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@12
    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    #@14
    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$MenuBuilderCallback;)V

    #@17
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@1a
    .line 642
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    #@1c
    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    #@1f
    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@21
    .line 643
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@23
    const/4 v2, 0x1

    #@24
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    #@27
    .line 644
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@29
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2b
    if-eqz v1, :cond_1

    #@2d
    .line 645
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2f
    .line 644
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@32
    .line 646
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@34
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@36
    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    #@38
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@3b
    .line 647
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@3d
    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    #@40
    .line 650
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@42
    return-object v1

    #@43
    .line 645
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    #@45
    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;)V

    #@48
    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 561
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    #@3
    .line 562
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@5
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    #@2
    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    #@0
    .prologue
    .line 621
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 717
    if-nez p1, :cond_0

    #@3
    .line 718
    return v3

    #@4
    .line 720
    :cond_0
    add-int/lit8 v3, p1, -0x1

    #@6
    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    .line 721
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 722
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    #@f
    .line 723
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    #@12
    move-result v3

    #@13
    if-ge p1, v3, :cond_1

    #@15
    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 724
    check-cast v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    #@1b
    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    #@1e
    move-result v2

    #@1f
    .line 726
    .end local v2    # "result":Z
    :cond_1
    if-lez p1, :cond_2

    #@21
    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    #@23
    if-eqz v3, :cond_2

    #@25
    .line 727
    check-cast v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    #@27
    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    #@2a
    move-result v3

    #@2b
    or-int/2addr v2, v3

    #@2c
    .line 729
    :cond_2
    return v2
.end method

.method public hideOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 626
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    .line 625
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 616
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    #@0
    .prologue
    .line 695
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    #@0
    .prologue
    .line 567
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    #@2
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 125
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 126
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    #@d
    .line 128
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@f
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 129
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@17
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@1a
    .line 130
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@1c
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@1f
    .line 122
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 540
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    #@3
    .line 541
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    #@6
    .line 539
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 434
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    #@4
    move/from16 v30, v0

    #@6
    if-nez v30, :cond_0

    #@8
    .line 435
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    #@b
    .line 436
    return-void

    #@c
    .line 439
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    #@f
    move-result v6

    #@10
    .line 440
    .local v6, "childCount":I
    sub-int v30, p5, p3

    #@12
    div-int/lit8 v15, v30, 0x2

    #@14
    .line 441
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    #@17
    move-result v7

    #@18
    .line 442
    .local v7, "dividerWidth":I
    const/16 v18, 0x0

    #@1a
    .line 443
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    #@1c
    .line 444
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    #@1e
    .line 445
    .local v16, "nonOverflowCount":I
    sub-int v30, p4, p2

    #@20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    #@23
    move-result v31

    #@24
    sub-int v30, v30, v31

    #@26
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    #@29
    move-result v31

    #@2a
    sub-int v29, v30, v31

    #@2c
    .line 446
    .local v29, "widthRemaining":I
    const/4 v8, 0x0

    #@2d
    .line 447
    .local v8, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    #@30
    move-result v11

    #@31
    .line 448
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    #@32
    .local v10, "i":I
    :goto_0
    if-ge v10, v6, :cond_6

    #@34
    .line 449
    move-object/from16 v0, p0

    #@36
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@39
    move-result-object v27

    #@3a
    .line 450
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    #@3d
    move-result v30

    #@3e
    const/16 v31, 0x8

    #@40
    move/from16 v0, v30

    #@42
    move/from16 v1, v31

    #@44
    if-ne v0, v1, :cond_1

    #@46
    .line 448
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@48
    goto :goto_0

    #@49
    .line 454
    :cond_1
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4c
    move-result-object v19

    #@4d
    check-cast v19, Landroid/widget/ActionMenuView$LayoutParams;

    #@4f
    .line 455
    .local v19, "p":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    #@51
    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@53
    move/from16 v30, v0

    #@55
    if-eqz v30, :cond_4

    #@57
    .line 456
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    #@5a
    move-result v18

    #@5b
    .line 457
    move-object/from16 v0, p0

    #@5d
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    #@60
    move-result v30

    #@61
    if-eqz v30, :cond_2

    #@63
    .line 458
    add-int v18, v18, v7

    #@65
    .line 461
    :cond_2
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    #@68
    move-result v9

    #@69
    .line 464
    .local v9, "height":I
    if-eqz v11, :cond_3

    #@6b
    .line 465
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    #@6e
    move-result v30

    #@6f
    move-object/from16 v0, v19

    #@71
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@73
    move/from16 v31, v0

    #@75
    add-int v12, v30, v31

    #@77
    .line 466
    .local v12, "l":I
    add-int v20, v12, v18

    #@79
    .line 471
    .local v20, "r":I
    :goto_2
    div-int/lit8 v30, v9, 0x2

    #@7b
    sub-int v26, v15, v30

    #@7d
    .line 472
    .local v26, "t":I
    add-int v5, v26, v9

    #@7f
    .line 473
    .local v5, "b":I
    move-object/from16 v0, v27

    #@81
    move/from16 v1, v26

    #@83
    move/from16 v2, v20

    #@85
    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    #@88
    .line 475
    sub-int v29, v29, v18

    #@8a
    .line 476
    const/4 v8, 0x1

    #@8b
    goto :goto_1

    #@8c
    .line 468
    .end local v5    # "b":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    #@8f
    move-result v30

    #@90
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    #@93
    move-result v31

    #@94
    sub-int v30, v30, v31

    #@96
    move-object/from16 v0, v19

    #@98
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@9a
    move/from16 v31, v0

    #@9c
    sub-int v20, v30, v31

    #@9e
    .line 469
    .restart local v20    # "r":I
    sub-int v12, v20, v18

    #@a0
    .restart local v12    # "l":I
    goto :goto_2

    #@a1
    .line 478
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    :cond_4
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    #@a4
    move-result v30

    #@a5
    move-object/from16 v0, v19

    #@a7
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@a9
    move/from16 v31, v0

    #@ab
    add-int v30, v30, v31

    #@ad
    move-object/from16 v0, v19

    #@af
    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@b1
    move/from16 v31, v0

    #@b3
    add-int v21, v30, v31

    #@b5
    .line 479
    .local v21, "size":I
    add-int v17, v17, v21

    #@b7
    .line 480
    sub-int v29, v29, v21

    #@b9
    .line 481
    move-object/from16 v0, p0

    #@bb
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    #@be
    move-result v30

    #@bf
    if-eqz v30, :cond_5

    #@c1
    .line 482
    add-int v17, v17, v7

    #@c3
    .line 484
    :cond_5
    add-int/lit8 v16, v16, 0x1

    #@c5
    goto :goto_1

    #@c6
    .line 488
    .end local v19    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v27    # "v":Landroid/view/View;
    :cond_6
    const/16 v30, 0x1

    #@c8
    move/from16 v0, v30

    #@ca
    if-ne v6, v0, :cond_7

    #@cc
    if-eqz v8, :cond_9

    #@ce
    .line 500
    :cond_7
    if-eqz v8, :cond_a

    #@d0
    const/16 v30, 0x0

    #@d2
    :goto_3
    sub-int v22, v16, v30

    #@d4
    .line 501
    .local v22, "spacerCount":I
    if-lez v22, :cond_b

    #@d6
    div-int v30, v29, v22

    #@d8
    :goto_4
    const/16 v31, 0x0

    #@da
    move/from16 v0, v31

    #@dc
    move/from16 v1, v30

    #@de
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@e1
    move-result v23

    #@e2
    .line 503
    .local v23, "spacerSize":I
    if-eqz v11, :cond_d

    #@e4
    .line 504
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    #@e7
    move-result v30

    #@e8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    #@eb
    move-result v31

    #@ec
    sub-int v25, v30, v31

    #@ee
    .line 505
    .local v25, "startRight":I
    const/4 v10, 0x0

    #@ef
    :goto_5
    if-ge v10, v6, :cond_10

    #@f1
    .line 506
    move-object/from16 v0, p0

    #@f3
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@f6
    move-result-object v27

    #@f7
    .line 507
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@fa
    move-result-object v13

    #@fb
    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    #@fd
    .line 508
    .local v13, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    #@100
    move-result v30

    #@101
    const/16 v31, 0x8

    #@103
    move/from16 v0, v30

    #@105
    move/from16 v1, v31

    #@107
    if-eq v0, v1, :cond_8

    #@109
    iget-boolean v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@10b
    move/from16 v30, v0

    #@10d
    if-eqz v30, :cond_c

    #@10f
    .line 505
    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    #@111
    goto :goto_5

    #@112
    .line 490
    .end local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v27    # "v":Landroid/view/View;
    :cond_9
    const/16 v30, 0x0

    #@114
    move-object/from16 v0, p0

    #@116
    move/from16 v1, v30

    #@118
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@11b
    move-result-object v27

    #@11c
    .line 491
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    #@11f
    move-result v28

    #@120
    .line 492
    .local v28, "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    #@123
    move-result v9

    #@124
    .line 493
    .restart local v9    # "height":I
    sub-int v30, p4, p2

    #@126
    div-int/lit8 v14, v30, 0x2

    #@128
    .line 494
    .local v14, "midHorizontal":I
    div-int/lit8 v30, v28, 0x2

    #@12a
    sub-int v12, v14, v30

    #@12c
    .line 495
    .restart local v12    # "l":I
    div-int/lit8 v30, v9, 0x2

    #@12e
    sub-int v26, v15, v30

    #@130
    .line 496
    .restart local v26    # "t":I
    add-int v30, v12, v28

    #@132
    add-int v31, v26, v9

    #@134
    move-object/from16 v0, v27

    #@136
    move/from16 v1, v26

    #@138
    move/from16 v2, v30

    #@13a
    move/from16 v3, v31

    #@13c
    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    #@13f
    .line 497
    return-void

    #@140
    .line 500
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_a
    const/16 v30, 0x1

    #@142
    goto :goto_3

    #@143
    .line 501
    .restart local v22    # "spacerCount":I
    :cond_b
    const/16 v30, 0x0

    #@145
    goto :goto_4

    #@146
    .line 512
    .restart local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v27    # "v":Landroid/view/View;
    :cond_c
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@148
    move/from16 v30, v0

    #@14a
    sub-int v25, v25, v30

    #@14c
    .line 513
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    #@14f
    move-result v28

    #@150
    .line 514
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    #@153
    move-result v9

    #@154
    .line 515
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    #@156
    sub-int v26, v15, v30

    #@158
    .line 516
    .restart local v26    # "t":I
    sub-int v30, v25, v28

    #@15a
    add-int v31, v26, v9

    #@15c
    move-object/from16 v0, v27

    #@15e
    move/from16 v1, v30

    #@160
    move/from16 v2, v26

    #@162
    move/from16 v3, v25

    #@164
    move/from16 v4, v31

    #@166
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    #@169
    .line 517
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@16b
    move/from16 v30, v0

    #@16d
    add-int v30, v30, v28

    #@16f
    add-int v30, v30, v23

    #@171
    sub-int v25, v25, v30

    #@173
    goto :goto_6

    #@174
    .line 520
    .end local v9    # "height":I
    .end local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    #@177
    move-result v24

    #@178
    .line 521
    .local v24, "startLeft":I
    const/4 v10, 0x0

    #@179
    :goto_7
    if-ge v10, v6, :cond_10

    #@17b
    .line 522
    move-object/from16 v0, p0

    #@17d
    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@180
    move-result-object v27

    #@181
    .line 523
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@184
    move-result-object v13

    #@185
    check-cast v13, Landroid/widget/ActionMenuView$LayoutParams;

    #@187
    .line 524
    .restart local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    #@18a
    move-result v30

    #@18b
    const/16 v31, 0x8

    #@18d
    move/from16 v0, v30

    #@18f
    move/from16 v1, v31

    #@191
    if-eq v0, v1, :cond_e

    #@193
    iget-boolean v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    #@195
    move/from16 v30, v0

    #@197
    if-eqz v30, :cond_f

    #@199
    .line 521
    :cond_e
    :goto_8
    add-int/lit8 v10, v10, 0x1

    #@19b
    goto :goto_7

    #@19c
    .line 528
    :cond_f
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@19e
    move/from16 v30, v0

    #@1a0
    add-int v24, v24, v30

    #@1a2
    .line 529
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    #@1a5
    move-result v28

    #@1a6
    .line 530
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    #@1a9
    move-result v9

    #@1aa
    .line 531
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    #@1ac
    sub-int v26, v15, v30

    #@1ae
    .line 532
    .restart local v26    # "t":I
    add-int v30, v24, v28

    #@1b0
    add-int v31, v26, v9

    #@1b2
    move-object/from16 v0, v27

    #@1b4
    move/from16 v1, v24

    #@1b6
    move/from16 v2, v26

    #@1b8
    move/from16 v3, v30

    #@1ba
    move/from16 v4, v31

    #@1bc
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    #@1bf
    .line 533
    iget v0, v13, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@1c1
    move/from16 v30, v0

    #@1c3
    add-int v30, v30, v28

    #@1c5
    add-int v30, v30, v23

    #@1c7
    add-int v24, v24, v30

    #@1c9
    goto :goto_8

    #@1ca
    .line 433
    .end local v9    # "height":I
    .end local v13    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v24    # "startLeft":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 142
    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    #@4
    .line 143
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v6

    #@8
    const/high16 v9, 0x40000000    # 2.0f

    #@a
    if-ne v6, v9, :cond_2

    #@c
    move v6, v7

    #@d
    :goto_0
    iput-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    #@f
    .line 145
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    #@11
    if-eq v4, v6, :cond_0

    #@13
    .line 146
    iput v8, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    #@15
    .line 151
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@18
    move-result v5

    #@19
    .line 152
    .local v5, "widthSize":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    #@1b
    if-eqz v6, :cond_1

    #@1d
    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1f
    if-eqz v6, :cond_1

    #@21
    iget v6, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    #@23
    if-eq v5, v6, :cond_1

    #@25
    .line 153
    iput v5, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    #@27
    .line 154
    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@29
    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@2c
    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    #@2f
    move-result v1

    #@30
    .line 158
    .local v1, "childCount":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    #@32
    if-eqz v6, :cond_3

    #@34
    if-lez v1, :cond_3

    #@36
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    #@39
    .line 140
    :goto_1
    return-void

    #@3a
    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    #@3b
    .line 143
    goto :goto_0

    #@3c
    .line 162
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    #@3d
    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    #@3f
    .line 163
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    #@42
    move-result-object v0

    #@43
    .line 164
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    #@49
    .line 165
    .local v3, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    #@4b
    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    #@4d
    .line 162
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_2

    #@50
    .line 167
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@53
    goto :goto_1
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    #@0
    .prologue
    .line 739
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    #@5
    .line 738
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@0
    .prologue
    .line 658
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    .line 659
    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@4
    .line 657
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    #@0
    .prologue
    .line 136
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    #@2
    .line 135
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    #@3
    .line 551
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 549
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    #@0
    .prologue
    .line 572
    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    #@2
    .line 571
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 94
    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    #@6
    .line 95
    if-nez p1, :cond_1

    #@8
    .line 96
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    #@a
    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    #@c
    .line 92
    :cond_0
    :goto_0
    return-void

    #@d
    .line 98
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@f
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    #@11
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@14
    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    #@16
    goto :goto_0
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/widget/ActionMenuPresenter;

    #@0
    .prologue
    .line 117
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    .line 118
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@4
    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    #@7
    .line 116
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 676
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method
